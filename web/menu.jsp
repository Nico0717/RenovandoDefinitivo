<%-- 
    Document   : menu
    Created on : 07-sep-2016, 11:48:50
    Author     : APRENDIZ
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="NavBar.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Menu Principal</title>
        <LINK REL="stylesheet" TYPE="text/css" HREF="style.css">
        
    </head>
    <body>
        
        <form action="ServletPersona">
        
            <button><input type="hidden" value="3" name="textOpcion" />Consultar</button>
        
        </form>
    </body>
</html>
