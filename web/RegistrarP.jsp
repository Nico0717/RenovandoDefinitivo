<%-- 
    Document   : Form
    Created on : 22/02/2017, 07:58:02 AM
    Author     : APRENDIZ
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head> 
        <meta name="viewport" content="width=device-width, initial-scale=1">


        <!-- Website CSS style -->
        <link href="css/bootstrap.min.css" rel="stylesheet">

        <!-- Website Font style -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.1/css/font-awesome.min.css">
        <link rel="stylesheet" href="style.css">
        <!-- Google Fonts -->
        <link href='https://fonts.googleapis.com/css?family=Passion+One' rel='stylesheet' type='text/css'>
        <link href='https://fonts.googleapis.com/css?family=Oxygen' rel='stylesheet' type='text/css'>
        <link href="StyleForm.css" rel="stylesheet" type="text/css"/>
        <title>Formulario de Registro</title>
    </head>
    <body>
        <div class="container">
            <div class="row main">
                <div class="main-login main-center">
                    <h5>Registrar Persona</h5>
                    <form class="" method="post" action="ServletPersona">

                        <div class="form-group">
                            <!--<label for="name" class="cols-sm-2 control-label">Nombre</label>-->
                            <div class="cols-sm-10">
                                <div class="input-group">
                                    <span class="input-group-addon"><i class="fa fa-user fa" aria-hidden="true"></i></span>
                                    <input type="text" class="form-control" name="Nombre" id="name"  placeholder="Escribe tu Primer Nombre"/>
                                </div>
                            </div>
                        </div>

                        <div class="form-group">
                            <!--<label for="name" class="cols-sm-2 control-label">Nombre</label>-->
                            <div class="cols-sm-10">
                                <div class="input-group">
                                    <span class="input-group-addon"><i class="fa fa-user fa" aria-hidden="true"></i></span>
                                    <input type="text" class="form-control" name="Nombre_2" id="name"  placeholder="Escribe tu Segundo Nombre"/>
                                </div>
                            </div>
                        </div>

                        <div class="form-group">
                            <!--<label for="name" class="cols-sm-2 control-label">Nombre</label>-->
                            <div class="cols-sm-10">
                                <div class="input-group">
                                    <span class="input-group-addon"><i class="fa fa-user fa" aria-hidden="true"></i></span>
                                    <input type="text" class="form-control" name="Apellido_1" id="name"  placeholder="Escribe tu Primer Apellido"/>
                                </div>
                            </div>
                        </div>

                        <div class="form-group">
                            <!--<label for="name" class="cols-sm-2 control-label">Nombre</label>-->
                            <div class="cols-sm-10">
                                <div class="input-group">
                                    <span class="input-group-addon"><i class="fa fa-user fa" aria-hidden="true"></i></span>
                                    <input type="text" class="form-control" name="Apellido_2" id="name"  placeholder="Escribe tu Segundo Apellido"/>
                                </div>
                            </div>
                        </div>

                        <div class="form-group">
                            <!--<label for="email" class="cols-sm-2 control-label">Email</label>-->
                            <div class="cols-sm-10">
                                <div class="input-group">
                                    <span class="input-group-addon"><i class="fa fa-envelope fa" aria-hidden="true"></i></span>
                                    <input type="text" class="form-control" name="Correo" id="email"  placeholder="Escribe tu Correo"/>
                                </div>
                            </div>
                        </div>

                        <div class="form-group">
                            <!--<label for="username" class="cols-sm-2 control-label">Usuario</label>-->
                            <div class="cols-sm-10">
                                <div class="input-group">
                                    <span class="input-group-addon"><i class="fa fa-users fa" aria-hidden="true"></i></span>
                                    <input type="text" class="form-control" name="Usuario" id="username"  placeholder="Escribe tu Usuario"/>
                                </div>
                            </div>
                        </div>

                        <div class="form-group">
                            <!--<label for="password" class="cols-sm-2 control-label">Contraseña</label>-->
                            <div class="cols-sm-10">
                                <div class="input-group">
                                    <span class="input-group-addon"><i class="fa fa-lock fa-lg" aria-hidden="true"></i></span>
                                    <input type="password" class="form-control" name="password" id="password"  placeholder="Escribe tu contraseña"/>
                                </div>
                            </div>
                        </div>

                        <div class="form-group">
                            <!--<label for="confirm" class="cols-sm-2 control-label">Confirmar contraseña</label>-->
                            <div class="cols-sm-10">
                                <div class="input-group">
                                    <span class="input-group-addon"><i class="fa fa-lock fa-lg" aria-hidden="true"></i></span>
                                    <input type="password" class="form-control" name="confirm" id="confirm"  placeholder="Confirma tu contraseña"/>
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <!--<label for="BornDate" class="cols-sm-2 control-label">Fecha de Nacimiento</label>-->
                            <div class="cols-sm-10">
                                <div class="input-group">
                                    <span class="input-group-addon"><i class="fa fa-calendar fa-lg" aria-hidden="true"></i></span>
                                    <input type="date" class="form-control" name="BornDate" id="BornDate"  placeholder="Introduce tu Fecha de Nacimiento"/>
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <!--	<label for="Sex" class="cols-sm-2 control-label">Genero</label> -->
                            <div class="cols-sm-10">
                                <div class="input-group">
                                    <span class="input-group-addon"><i class="fa fa-venus fa-lg" aria-hidden="true"></i></span>
                                    <input type="list" class="form-control" name="sex" id="sex"  placeholder="Selecciona el Genero"/>
                                </div>
                            </div>
                        </div>


                        <div class="form-group ">
                            <a href="http://deepak646.blogspot.in" target="_blank" type="button" id="button" class="btn btn-primary btn-lg btn-block login-button">Registrate</a>
                        </div>

                    </form>
                </div>
            </div>
        </div>

        <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
        <!-- Include all compiled plugins (below), or include individual files as needed -->
        <script src="js/bootstrap.min.js"></script>
    </body>
</html>