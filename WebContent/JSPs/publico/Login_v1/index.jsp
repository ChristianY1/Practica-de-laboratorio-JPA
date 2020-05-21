<?xml version="1.0" encoding="ISO-8859-1" ?>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>Login</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->	
	<link rel="icon" type="image/png" href="/-Pr-ctica-de-laboratorio-01-Servlets-JSP-y-JDBC/JSPs/publico/Login_v1/images/icons/favicon.ico"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="/-Pr-ctica-de-laboratorio-01-Servlets-JSP-y-JDBC/JSPs/publico/Login_v1/vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="/-Pr-ctica-de-laboratorio-01-Servlets-JSP-y-JDBC/JSPs/publico/Login_v1/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="/-Pr-ctica-de-laboratorio-01-Servlets-JSP-y-JDBC/JSPs/publico/Login_v1/vendor/animate/animate.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="/-Pr-ctica-de-laboratorio-01-Servlets-JSP-y-JDBC/JSPs/publico/Login_v1/vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="/-Pr-ctica-de-laboratorio-01-Servlets-JSP-y-JDBC/JSPs/publico/Login_v1/vendor/select2/select2.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="/-Pr-ctica-de-laboratorio-01-Servlets-JSP-y-JDBC/JSPs/publico/Login_v1/css/util.css">
	<link rel="stylesheet" type="text/css" href="/-Pr-ctica-de-laboratorio-01-Servlets-JSP-y-JDBC/JSPs/publico/Login_v1/css/main.css">
<!--===============================================================================================-->
</head>
<body>
	<div class="limiter">
		<div class="container-login100">
			<div class="wrap-login100">
				<div class="login100-pic js-tilt" data-tilt>
					<img src="/-Pr-ctica-de-laboratorio-01-Servlets-JSP-y-JDBC/JSPs/publico/Login_v1/images/img-01.png" alt="IMG">
				</div>

				<form class="login100-form validate-form" action = "/-Pr-ctica-de-laboratorio-01-Servlets-JSP-y-JDBC/
																	SessionController">
					<span class="login100-form-title">
						Login
					</span>

					<div class="wrap-input100 validate-input" data-validate = "Valid email is required: ex@abc.xyz">
						<input class="input100" type="text" name="email" placeholder="Email">
						<span class="focus-input100"></span>
						<span class="symbol-input100">
							<i class="fa fa-envelope" aria-hidden="true"></i>
						</span>
					</div>

					<div class="wrap-input100 validate-input" data-validate = "Password is required">
						<input class="input100" type="password" name="pass" placeholder="Password">
						<span class="focus-input100"></span>
						<span class="symbol-input100">
							<i class="fa fa-lock" aria-hidden="true"></i>
						</span>
					</div>
					
					<div class="container-login100-form-btn">
						<button class="login100-form-btn" type="submit">
							Login
						</button>
					</div>

					<div class="text-center p-t-12">
						<span class="txt1">
							Forgot
						</span>
						<a class="txt2" href="#">
							Username / Password?
						</a>
					</div>

					<div class="text-center p-t-136">
						<a class="txt2" href="/-Pr-ctica-de-laboratorio-01-Servlets-JSP-y-JDBC/JSPs/publico/colorlib-regform-4/formulario.jsp">
							Create your Account
							<i class="fa fa-long-arrow-right m-l-5" aria-hidden="true"></i>
						</a>
					</div>
				</form>
			</div>
		</div>
	</div>
	
	

	
<!--===============================================================================================-->	
	<script src="/-Pr-ctica-de-laboratorio-01-Servlets-JSP-y-JDBC/JSPs/publico/Login_v1/vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="/-Pr-ctica-de-laboratorio-01-Servlets-JSP-y-JDBC/JSPs/publico/Login_v1/vendor/bootstrap/js/popper.js"></script>
	<script src="/-Pr-ctica-de-laboratorio-01-Servlets-JSP-y-JDBC/JSPs/publico/Login_v1/vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="/-Pr-ctica-de-laboratorio-01-Servlets-JSP-y-JDBC/JSPs/publico/Login_v1/vendor/select2/select2.min.js"></script>
<!--===============================================================================================-->
	<script src="/-Pr-ctica-de-laboratorio-01-Servlets-JSP-y-JDBC/JSPs/publico/Login_v1/vendor/tilt/tilt.jquery.min.js"></script>
	<script >
		$('.js-tilt').tilt({
			scale: 1.1
		})
	</script>
<!--===============================================================================================-->
	<script src="/-Pr-ctica-de-laboratorio-01-Servlets-JSP-y-JDBC/JSPs/publico/Login_v1/js/main.js"></script>

</body>
</html>