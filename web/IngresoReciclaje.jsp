<%-- 
    Document   : IngresoReciclaje
    Created on : 22/02/2017, 05:34:21 PM
    Author     : josec
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Reciclar</title>
    </head>
    <body>


        <title>Registrar Reciclaje</title>
    </head>
<body>
<center>
    <div id="cabecera">
        <h1>Registrar Reciclaje</h1><br><br>
    </div>

    <div id="cuerpo">
        <form id="formulario2" method="post" action="ServletEntrada">
            <table width="500" height="79" border="1">

                <tr>

                    <th width="140" style="padding-right: 50px; padding-left: 50px; ">
                        IdMaterial: <br>
                        <input type="text" name="textidmaterial"><br><br>
                        Peso: <br>
                        <input type="text" name="textpeso"><br><br>
                        Precio: <br>
                        <input type="text" name="textprecio"><br><br>
                    </th>
                </tr> 
            </table> <br><br> 

            <button style="padding-right: 30px; padding-left: 30px; padding-top: 10px; padding-bottom: 10px;">
                Guardar
            </button><br><br>

            <input type="hidden" name="textOpcion" value="1">

        </form>

    </div>
    <div id="pie">

        <%if (request.getAttribute("error") != null) { %>

        ${error}

        <% } else { %>
        ${exito}
        <% }%> 
    </div>

</center>



</body>
</html>
