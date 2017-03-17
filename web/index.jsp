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
        <title>Login</title>        
        <link href="EstiloLogin.css" rel="stylesheet" type="text/css"/>
        <link rel="shortcut icon" href="Imagenes/favicon.ico" type="image/x-icon">
    </head>
    <body>
    <center>
        <div> 
            <h1></h1><br><br><br><br>
        </div>
        <div id ="cuerpo ">
            <img src="Imagenes/Renovando.png" alt=""/>
            <form id="formulario" method ="post" action ="Validar">
                <table id="tabla1">         
                    <tr>
                        <th>
                            <br>
                            <h3> Iniciar Sesion </h3>

                            <br><br>
                            Usuario: <br>
                            <input type="text" name ="textusuario" required="true"><br><br>
                            contraseña:<br>
                            <input type="password" name ="textclave" required="true"><br><br>
                            <br><button id="BotonIngresar"> 
                                Ingresar
                            </button><br><br>

                            <a href=""> Olvidaste tu Contraseña? </a>

                            <input type="hidden" name="textOpcion" value="2"> 
                            <a href="Registrar_usuario.jsp" >Registrar</a><br><br>

                        </th>
                    </tr>
                </table><br><br>





            </form>

        </div>
        <div id="pie">  </div>
    </center>
    <% if (request.getAttribute("error") != null) {%>
    ${error}
    <% } else { %>
    ${Exito}
    <% }%>
</div>    
</body>
</html>
