<%-- 
    Document   : NavBar
    Created on : 22/02/2017, 07:42:03 AM
    Author     : APRENDIZ
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="shortcut icon" href="Imagenes/favicon.ico" type="image/x-icon">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

        <link href="NAVbar.css" rel="stylesheet" type="text/css"/>
        <link href="source/css/bootstrap-theme.css" rel="stylesheet" type="text/css"/>
        <link href="source/css/bootstrap-theme.min.css" rel="stylesheet" type="text/css"/>
        <link href="source/css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <link href="source/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <nav class="navbar  navbar-inverse  navbar-fixed-top">
            <div class="container">
                <button type="button" class="navbar-toggle"
                        data-toggle="collapse"
                        data-target=".navbar-collapse"
                        >
                    <span class="sr-only"> Toggle navigation</span>
                    <span class="icon-bar"> </span>
                    <span class="icon-bar"> </span>
                    <span class="icon-bar"> </span>
                </button>

                <a class="navbar-brand" href="menu.jsp"> Renovando</a>

                <div class="navbar-collapse collapse">
                    <ul class="nav navbar-nav navbar-right">
                        <li class=""><a href="menu.jsp">Menu</a> </li>
                        <li> <a href="Consultar.jsp">Consultar Personas</a> </li>
                        <li><a href="index.jsp"> Cerrar Sesion</a></li>

                    </ul>
                </div>
            </div>
        </nav>


        <div class="navbar  navbar-inverse navbar-fixed-bottom"> 
            <div class="container">
                <div class="navbar-text pull-left">
                    <p> ©Renovando 2017</p>
                </div>

            </div>
        </div>

        <br><br><br>
    </body>
</html>
