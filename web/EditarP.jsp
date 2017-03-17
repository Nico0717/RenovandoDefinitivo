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
        <title>Editar</title>
        <link href="source/css/bootstrap-theme.css" rel="stylesheet" type="text/css"/>
        <link href="source/css/bootstrap-theme.min.css" rel="stylesheet" type="text/css"/>
        <link href="source/css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <link href="source/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        
    </head>
    <body>
        <div class="well">
            <table class="table" id="LISTAR">
                <thead>
                    <tr>
                        <th>#</th>
                        <th>Documento</th>
                        <th>Primer Nombre</th>
                        <th>Segundo Nombre</th>
                        <th>Primer Apellido</th>
                        <th>Segundo Apellido</th>
                        <th>Fecha de Nacimiento</th>
                        <th>Guardar</th>


                        
                    </tr>
                </thead>
                <tbody>
                        <%

                            BeanPersona BPBP = new BeanPersona();
                            DaoPersona DPDP = new DaoPersona(BPBP);
                            String Documento = DPDP.Documento;
                            ArrayList<BeanPersona> Lista = DPDP.EditarPersona(Documento);

                            
                                BPBP = Lista.get(BPBP.getIdPersona());
                                

                        %>

                        <tr>

                            <td><%=BPBP.getIdPersona()%></td>
                            <td><input value="<%=BPBP.getDocumento()%>"></td>
                            <td><input value="<%=BPBP.getNombre()%>"></td>
                            <td><input value="<%=BPBP.getNombre_2()%>"></td>
                            <td><input value="<%=BPBP.getApellido_1()%>"></td>
                            <td><input value="<%=BPBP.getApellido_2()%>"></td>
                            <td><input value="<%=BPBP.getFecha_De_Nacimiento()%>"></td>
                            <td><a href="Consultar.jsp" class=""><button type="submit" class="btn btn-primary glyphicon glyphicon-save"></button></a></td>
                        </tr>
                        

                </tbody>
            </table>
        </div>



    </body>
</html>
