<%-- 
    Document   : CodIngreso
    Created on : 22/02/2017, 05:20:16 PM
    Author     : josec
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="EstiloLogin.css" rel="stylesheet" type="text/css"/>
        <title>Ingreso</title>
    </head>
    <body>
        
        <div id="cabecera">
                <h1>Codigo Usuario</h1><br><br>
            </div>
        
        
        <div id="cuerpo">
                <form id="formulario2" method="post" action="ServletProducto">
                    <table width="500" height="79" border="1">
                        
                        <tr>
                        
                            <th width="140" style="padding-right: 50px; padding-left: 50px; ">
                                IdUsuario: <br>
                            <input type="text" name="Usuario_idUsuario"><br>
                        </th>
                        </tr> 
                        </table> <br><br> 
                        
                        <button style="padding-right: 30px; padding-left: 30px; padding-top: 10px; padding-bottom: 10px;">
                        Iniciar Registro    
                        </button><br><br>
                        <input type="hidden" name="textOpcion" value="2">  
                    </form>
                
            </div>
            <div id="pie">
            
            <%if (request.getAttribute("error") !=null) { %>
            
                 ${error}
                 
                 <% }else{ %>
                 ${exito}
                 <% } %> 
                 </div>
                 
                </center>
                 <center> <a href="index.html">volver</a></center>
    </body>
</html>
