<%-- 
    Document   : Consultar
    Created on : 22/02/2017, 08:51:58 AM
    Author     : APRENDIZ
--%>


<%@page import="Modelo.DAO.DaoPersona"%>
<%@page import="java.sql.*"%>
<%@page import="util.Conexion"%>
<%@page import="modeloBEAN.BeanPersona"%>
<%@page import="java.util.ArrayList"%>
<%@include file="NavBar.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Consultar</title>
        <link href="source/css/bootstrap-theme.css" rel="stylesheet" type="text/css"/>
        <link href="source/css/bootstrap-theme.min.css" rel="stylesheet" type="text/css"/>
        <link href="source/css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <link href="source/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <script src="source/js/jquery-3.1.1.min.js" type="text/javascript"></script>
        <link href="source/css/jquery.dataTables.min.css" rel="stylesheet" type="text/css"/>
        <script src="source/js/jquery.dataTables.min.js" type="text/javascript"></script>
        <script>
            $(document).ready(function () {
                $('#LISTARUSU').DataTable({
                    "oLanguage": {
                        "sProcessing": "Procesando...",
                        "sLengthMenu": "Mostrar _MENU_ registros",
                        "sZeroRecords": "No se encontraron resultados",
                        "sEmptyTable": "Ningún dato disponible en esta tabla",
                        "sInfo": "Mostrando registros del _START_ al _END_ de un total de _TOTAL_ registros",
                        "sInfoEmpty": "Mostrando registros del 0 al 0 de un total de 0 registros",
                        "sInfoFiltered": "(filtrado de un total de _MAX_ registros)",
                        "sInfoPostFix": "",
                        "sSearch": "Buscar:",
                        "sUrl": "",
                        "sInfoThousands": ",",
                        "sLoadingRecords": "Cargando...",
                        "oPaginate": {
                            "sFirst": "Primero",
                            "sLast": "Último",
                            "sNext": "Siguiente",
                            "sPrevious": "Anterior"
                        },
                        "oAria": {
                            "sSortAscending": ": Activar para ordenar la columna de manera ascendente",
                            "sSortDescending": ": Activar para ordenar la columna de manera descendente"
                        }
                    }
                }
                );
            });
        </script>
    </head>
    <body>
        <div class="well">

            <h1 class="text-center text-primary">Lista De Personas</h1>




            <div class="well">

                <table class="table" id="LISTARUSU">
                    <thead>
                        <tr>
                            <th>#</th>
                            <th>Documento</th>
                            <th>Primer Nombre</th>
                            <th>Segundo Nombre</th>
                            <th>Primer Apellido</th>
                            <th>Segundo Apellido</th>
                            <th>Fecha de Nacimiento</th>
                            <th>Actualizar</th>



                        </tr>
                    </thead>
                    <tbody>
                        <%

                            BeanPersona BPBP = new BeanPersona();
                            DaoPersona DPDP = new DaoPersona(BPBP);
                            ArrayList<BeanPersona> Lista = DPDP.ConsultarPersona();

                            for (int a = 0; a < Lista.size(); a++) {
                                BPBP = Lista.get(a);

                        %>

                        <tr>

                            <td><%=a%></td>
                            <td><%=BPBP.getDocumento()%></td>
                            <td><%=BPBP.getNombre()%></td>
                            <td><%=BPBP.getNombre_2()%></td>
                            <td><%=BPBP.getApellido_1()%></td>
                            <td><%=BPBP.getApellido_2()%></td>
                            <td><%=BPBP.getFecha_De_Nacimiento()%></td>
                            <td><form action="ServletPersona" method="Post">
                        <input type="hidden" name="textOpcion" value="4">
                        <a href=""><button type="submit" class="btn btn-primary glyphicon glyphicon-pencil"></button></a>
                    </form></td>
                    </tr>
                    <%}%>                        
                    </tbody>
                    
                    <input type="hidden" name="#" value="1">
                    <input type="hidden" name="Documento" value="2">
                    <input type="hidden" name="Nombre" value="3">
                    <input type="hidden" name="Nombre_2" value="4">
                    <input type="hidden" name="Apellido_1" value="5">
                    <input type="hidden" name="Apellido_2" value="6">
                    <input type="hidden" name="Fecha_De_Nacimiento" value="7">
                    
                    
                    
                </table>
            </div>
        </div>



    </body>
</html>
