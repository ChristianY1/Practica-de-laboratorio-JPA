<?xml version="1.0" encoding="ISO-8859-1" ?>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>Modificar</title>
 <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="Colorlib Templates">
    <meta name="author" content="Colorlib">
    <meta name="keywords" content="Colorlib Templates">

    <!-- Title Page-->
    <title>Formulario de registro</title>

    <!-- Icons font CSS-->
    <link href="/-Pr-ctica-de-laboratorio-01-Servlets-JSP-y-JDBC/JSPs/publico/colorlib-regform-4/vendor/mdi-font/css/material-design-iconic-font.min.css" rel="stylesheet" media="all">
    <link href="/-Pr-ctica-de-laboratorio-01-Servlets-JSP-y-JDBC/JSPs/publico/colorlib-regform-4/vendor/font-awesome-4.7/css/font-awesome.min.css" rel="stylesheet" media="all">
    <!-- Font special for pages-->
    <link href="https://fonts.googleapis.com/css?family=Poppins:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

    <!-- Vendor CSS-->
    <link href="/-Pr-ctica-de-laboratorio-01-Servlets-JSP-y-JDBC/JSPs/publico/colorlib-regform-4/vendor/select2/select2.min.css" rel="stylesheet" media="all">
    <link href="/-Pr-ctica-de-laboratorio-01-Servlets-JSP-y-JDBC/JSPs/publico/colorlib-regform-4/vendor/datepicker/daterangepicker.css" rel="stylesheet" media="all">

    <!-- Main CSS-->
    <link href="/-Pr-ctica-de-laboratorio-01-Servlets-JSP-y-JDBC/JSPs/publico/colorlib-regform-4/css/main.css" rel="stylesheet" media="all">
</head>
<body>
	<form action="/-Pr-ctica-de-laboratorio-01-Servlets-JSP-y-JDBC/ModificarController">
		<label class = "title">Mis Datos</label> <br />
		
		<c:set var = "lista" scope="request" value = "${datosUsuario}"/>
		<c:forEach var="p" items="${lista}">
		<label class = "label">Cedula:</label>
		<input class="input--style-4" type="text" name="cedula" value = ${p.cedula}>
		</c:forEach>
		
		<label class = "label">Nombre:</label>
		<input  class="input--style-4" type = "text" name = "nombre"/>
		<label class = "label">Apellido:</label>
		<input  class="input--style-4" type = "text" name = "apellido">
		<label class = "label">Correo:</label>
		<input class="input--style-4" type = "text" name = "correo">
		<label class = "label">Contrasenia:</label>
		<input  class="input--style-4"type = "text" name = "contrasenia">
		<br/>
		<br/>
		<label class = "title">Teléfono</label>
		<br/>
		<br/>
		<labeL class = "label">Número:</labeL>
		<input  class="input--style-4"type = "text" name = "numero">
		<lanel class = "label">Tipo:</lanel>
		<input class="input--style-4" type = "text" name = "tipo">
		<label class = "label">Operadora:</label>
		<input class="input--style-4" type = "text" name = "operadora">
	
	 
                           <div class="row row-space">
                             <div class="col-2">
                                <div class="input-group">
                                     <div class="p-t-15">
                            		 	<button class="btn btn--radius-2 btn--blue" type="submit">Modificar</button>
                        			</div>
                                </div>
                             </div>
                               <div class="row row-space">
                             
	</form>
</body>
</html>