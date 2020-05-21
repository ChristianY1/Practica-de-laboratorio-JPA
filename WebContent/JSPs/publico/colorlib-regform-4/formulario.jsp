<?xml version="1.0" encoding="ISO-8859-1" ?>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>Insert title here</title>

 <!-- Required meta tags-->
    <meta charset="UTF-8">
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

	 <div class="page-wrapper bg-gra-02 p-t-130 p-b-100 font-poppins">
        <div class="wrapper wrapper--w680">
            <div class="card card-4">
                <div class="card-body">
                    <h2 class="title">Formulario de registro</h2>
                    <form action = "/-Pr-ctica-de-laboratorio-01-Servlets-JSP-y-JDBC/CrearPersonaController"  >
                    <div class="row row-space">
                            <div class="col-2">
                                <div class="input-group">
                                    <label class="label">Cedula</label>
                                    <input class="input--style-4" type="text" name="cedula" maxlength="10" required>
                                </div>
                            </div>
                          </div>
<!--                     <div class="col-3"> -->
<!--                                 <div class="input-group"> -->
<!--                                     <label class="label">Cedula</label> -->
<!--                                     <input class="input--style-4" type="text" name="last_name"> -->
<!--                                 </div> -->
<!--                             </div> -->
<!--                         </div> -->
                    
                        <div class="row row-space">
                            <div class="col-2">
                                <div class="input-group">
                                    <label class="label">Nombre</label>
                                    <input class="input--style-4" type="text" name="first_name" required>
                                </div>
                            </div>
                            
                            <div class="col-2">
                                <div class="input-group">
                                    <label class="label">Apellido</label>
                                    <input class="input--style-4" type="text" name="last_name" required>
                                </div>
                            </div>
                        </div>
                        
                        <div class="row row-space">
                             <div class="col-2">
                                <div class="input-group">
                                    <label class="label">Contraseña</label>
                                    <input class="input--style-4" type="text" name="password" required>
                                </div>
                            </div>
                            
                            <div class="col-2">
                                <div class="input-group">
                                    <label class="label">E-mail</label>
                                    <input class="input--style-4" type="email" name="email" required>
                                </div>
                            </div>
                        </div>
                        
                        <div class="row row-space">
                             <div class="col-2">
                                <div class="input-group">
                                    <label class="label">Número de teléfono</label>
                                    <input class="input--style-4" type="text" name="telefono" maxlength="10" required>
                                </div>
                            </div>
                               <div class="input-group">
                           			 <label class="label">Tipo de teléfono</label>
                           				 <div class="rs-select2 js-select-simple select--no-search">
                                <select name="tipo" required>
                                    <option disabled="disabled" selected="TT"> </option>
                                    <option>Celular</option>
                                    <option>Convencional</option>
                                 
                                </select>
                             <div class="select-dropdown"></div>
                             
                             
                             <div class = "row row-space">
                             	<div class = "col-1">
                             		<div class = "input-group">
                             			<label class = "label">Tipo de operadora</label>
                             				<div class = "rs-select2 js-select-simple select--no-search">
                             					<select name= "operadora" required>
                             						<option disabled = "disabled" selected = "TO"> </option>
                             						<option>Movistar</option>
                             						<option>Claro</option>
                             						<option>CNT</option>
                             					
                             					</select>
                             						<div class = "select-dropdown"></div>
                             				
                             				</div>
                             		
                             		
                             		</div>
                             	
                             	</div>
                             
                             
                             </div>
                             
                         </div>
                           <br>
                           
                           
                           
                           <div class="row row-space">
                             <div class="col-2">
                                <div class="input-group">
                                     <div class="p-t-15">
                            		 	<button class="btn btn--radius-2 btn--blue" type="submit">Registrarse</button>
                        			</div>
                                </div>
                             </div>

                         </div>
                         <div class = "row row-space">
                         	<div class = "col-2">
                         		<div class = "input-group">
                         		 	<div class="text-center p-t-136">
										<a class="txt2" href="/-Pr-ctica-de-laboratorio-01-Servlets-JSP-y-JDBC/JSPs/publico/Login_v1/index.jsp">
										<i class="fa fa-long-arrow-left m-l-5" aria-hidden="true"></i>
											Regresar
											
										</a>
									</div>
                         		
                         		</div>
                         	</div>
                         </div>
                         

                        
                     
                           
                            
                            
                            
                        </div>
                     
                        </div>
                       
                        
                        
                    </form>
                </div>
            </div>
        </div>
    </div>

    <!-- Jquery JS-->
    <script src="/-Pr-ctica-de-laboratorio-01-Servlets-JSP-y-JDBC/JSPs/publico/colorlib-regform-4/vendor/jquery/jquery.min.js"></script>
    <!-- Vendor JS-->
    <script src="/-Pr-ctica-de-laboratorio-01-Servlets-JSP-y-JDBC/JSPs/publico/colorlib-regform-4/vendor/select2/select2.min.js"></script>
    <script src="/-Pr-ctica-de-laboratorio-01-Servlets-JSP-y-JDBC/JSPs/publico/colorlib-regform-4/vendor/datepicker/moment.min.js"></script>
    <script src="/-Pr-ctica-de-laboratorio-01-Servlets-JSP-y-JDBC/JSPs/publico/colorlib-regform-4/vendor/datepicker/daterangepicker.js"></script>

    <!-- Main JS-->
    <script src="/-Pr-ctica-de-laboratorio-01-Servlets-JSP-y-JDBC/JSPs/publico/colorlib-regform-4/js/global.js"></script>

</body>
</html>