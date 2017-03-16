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
            <table class="table">
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

                        try {
                            Conexion conex = new Conexion();
                            Connection con = conex.ObtenerConexion();
                            Statement st = con.createStatement();
                             String Query = "SELECT idPersona, Documento, Nombre, Nombre_2, Apellido_1, Apellido_2, Fecha_De_Nacimiento from persona  where idPersona=";
                            for (int b = 1; b <= 7; b++) {
                                ResultSet rs = st.executeQuery(Query+b );
                                

                    %>
                    <tr>
                        <th>
                            <%                                if (!rs.next()) {

                                            out.println("<option value=\"" + rs.getString(1) + "Selected>No hay datos</option>");

                                        } else {
                                            for (int a = 1; a <= 7; a++) {
                                                
                                                out.print("<input type='text' class='form-control' value=\"" + rs.getString(a) + "\"><th>");
                                                
                                            }

                                            out.print("<a href='Consultar.jsp'><button class='btn btn-info' id='GuardarPersona'><icon class='glyphicon glyphicon-save'></icon></button></a></th></tr>");
                                        }

                                        rs.close();
                                    }
                                    st.close();
                                    System.out.print("Conexion Ralizada");

                                } catch (Exception ex) {
                                    out.print("<option value=\"0\" selected> No hay mas datos </option>");
                                    System.out.println("No hay conexion");
                                    ex.printStackTrace(System.err);
                                }


                            %>







                </tbody>
            </table>
        </div>



    </body>
</html>
