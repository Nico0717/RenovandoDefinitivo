<%-- 
    Document   : index
    Created on : 07-sep-2016, 11:03:35
    Author     : APRENDIZ
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registrar Usuario</title>
         <LINK REL="stylesheet" TYPE="text/css" HREF="style.css">
    </head>
    <body>
    <center>
        <div id ="cabecera" 
             <h1>Registrar Usuario</h1><br><br> 
        </div>
        <div id ="cuerpo ">
            <form id="formulario" method ="post" action ="Validar">
                <table width ="400" height ="79" border="3">
                    <tr>
                        <th width="140" style ="pádding-right: 50px; padding-left: 50px">
                    
                            Usuario: <br>
                            <input type="text" name ="textusuario"><br><br>
                            contraseña:<br>
                            <input type="password" name ="textclave"><br><br>
                   
                            </th>
                    </tr>
                </table><br><br>

                <button style="padding-right: 30px; padding-left: 30px; padding-top: 10px; padding-bottom: 10px;">
                    REGISTRAR
                </button><br><br>

                <input type="hidden" name="textOpcion" value="1"> 
                

            </form>

        </div>
        <div id="pie">  </div>
        <% if (request.getAttribute("error") != null) {%>
        ${error}
        <% }else{ %>
        ${exito}
        <% } %>
    </div>    
        


</center>
    <center>
        <a href="index.jsp"> Volver </a></center>
</body>
</html>
