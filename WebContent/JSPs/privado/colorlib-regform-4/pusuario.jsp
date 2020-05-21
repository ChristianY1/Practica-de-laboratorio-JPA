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
    <title>Agenda Telefonica</title>

    <!-- Icons font CSS-->
    <link type = "text/css" href="/-Pr-ctica-de-laboratorio-01-Servlets-JSP-y-JDBC/JSPs/publico/colorlib-regform-4/vendor/mdi-font/css/material-design-iconic-font.min.css" rel="stylesheet" media="all">
    <link type = "text/css"  href="/-Pr-ctica-de-laboratorio-01-Servlets-JSP-y-JDBC/JSPs/publico/colorlib-regform-4/vendor/font-awesome-4.7/css/font-awesome.min.css" rel="stylesheet" media="all">
    <!-- Font special for pages-->
    <link  type = "text/css" href="https://fonts.googleapis.com/css?family=Poppins:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

    <!-- Vendor CSS-->
    <link type = "text/css" href="/-Pr-ctica-de-laboratorio-01-Servlets-JSP-y-JDBC/JSPs/publico/colorlib-regform-4/vendor/select2/select2.min.css" rel="stylesheet" media="all">
    <link type = "text/css" href="/-Pr-ctica-de-laboratorio-01-Servlets-JSP-y-JDBC/JSPs/publico/colorlib-regform-4/vendor/datepicker/daterangepicker.css" rel="stylesheet" media="all">

    <!-- Main CSS-->
    <link type = "text/css" href="/-Pr-ctica-de-laboratorio-01-Servlets-JSP-y-JDBC/JSPs/publico/colorlib-regform-4/css/main.css" rel="stylesheet" media="all">
</head>
<body>
<style type = "text/css">
	.buscar{
		margin-left: auto;
  margin-right: auto;
	}

</style>
<div class="page-wrapper bg-gra-02 p-t-130 p-b-100 font-poppins">
	<div class="wrapper wrapper--w680">
		<div class = "card card-4">
			<div class = "card-body">
				
			   <div id="navigation">
    				<a class="txt2" href="/-Pr-ctica-de-laboratorio-01-Servlets-JSP-y-JDBC/JSPs/publico/Login_v1/index.jsp"> 
    				<i class="fa fa-long-arrow-left m-l-5" aria-hidden="true"></i>
											Cerrar Sesión</a>
				
				</div>
				
				<div id="search-panel" class="panel">

	
			<div class="p-t-15">
				 <label class = "label">Buscar Contactos:</label>
			</div>
   
    	<form id="search" action="/-Pr-ctica-de-laboratorio-01-Servlets-JSP-y-JDBC/buscarController">
    
    	<label>
        	<input type="text" name="search" class="input--style-4" placeholder="Buscar..." />
        </label>
        	<div id="results">
        		<c:set var = "lista" scope="request" value = "${datosUsuario}"/>
        		<c:set var = "lista2" scope="request" value = "${datosTelefono}"/>
        		<label class = "label"> Usuario</label>
       
		<c:forEach var="p" items="${lista}">
			<label class = "label ">
                    Cedula: &nbsp;  ${p.cedula}
            </label>
            <label class = "label ">
                    Nombre: &nbsp;  ${p.nombre}
            </label>
            <label class = "label ">
                    Apellido: &nbsp;  ${p.apellido}
            </label>
            <label class = "label ">
                    correo: &nbsp;  ${p.correo} &nbsp; <a href="mailto:${p.correo}">Escribir un correo</a>
            </label>
		</c:forEach>
		<c:forEach var="t" items="${lista2}">
			
            <label class = "label ">
                    numero: &nbsp;  ${t.numero} &nbsp; <a href= "tel:${t.numero}" >llamar</a>
            </label>
              <label class = "label ">
                    Operadora: &nbsp;  ${t.operadora}
                    
            </label>
            
		</c:forEach>
	
        	 
        		
        	</div>
       			 
        		 <div class="p-t-15">
        		 	<button class="btn btn--radius-2 btn--blue" type="submit" maxlength="10" required>Buscar</button>
        		 </div>
                	
    </form>
</div>
    <div  class="p-t-15">
        <form id="contact" action="/-Pr-ctica-de-laboratorio-01-Servlets-JSP-y-JDBC/SesionController">
        <label class ="title">Mis Datos</label>
            <h1></h1>
            <div class = "p-t-15" name = "datosUsuario">
                <label class = "label " > 
                      Cedula: &nbsp; ${cedula} 
                </label>
                <label class = "label">
                    Nombre: &nbsp; ${nombre}
                </label>
                <label class = "label ">
                    Apellido: &nbsp;  ${apellido}
                </label>
                <label class = "label ">
                    Correo: &nbsp; ${correo}
                </label>
                <label >
                    Contraseña: &nbsp; ${contrasenia}
                </label>
            </div>
            <div class = "p-t-15">
            	<label class ="title">Mis Teléfonos</label>
            </div>
            
            <div class = "p-t-15" name = "datosTelefonos">
                <label class="label">
                    Número: &nbsp; ${numero}
                </label>
                <label class="label">
                	Tipo: &nbsp; ${tipo}
                    
                </label>
                <label class="label">
                     Operadora: &nbsp; ${operadora}
                     
                </label>
            </div>
            
        </form>
    </div>
    <br />
    <br />
    
    <div  class="p-t-15">
        <form id="contact" action="/-Pr-ctica-de-laboratorio-01-Servlets-JSP-y-JDBC/ListarTelefonos">
        <label class ="title">Modificar numero</label>
        <input type="text" name = "cedula" value = ${cedula}>
        <br />
            	
            		<c:set var="listaTelefonos" scope="request" value="${telefonos}" />
	

	<table>
	<tr>	<td><strong>Codigo</strong></td>
			<td><strong>Números</strong></td>
			<td><strong>Tipo</strong></td>
			<td><strong>Operadora</strong></td>
			<td><strong>Acción</strong></td>
			
		</tr>
		
		<c:forEach var="p" items="${listaTelefonos}">
		<tr>
			<form action = "/-Pr-ctica-de-laboratorio-01-Servlets-JSP-y-JDBC/ModificarController">
			
			<td><input type = "text" name = "codigo" value = ${p.codigo}></td>
			<td><input type = "text" name = "numero" value = ${p.numero}></td>
			<td><input type = "text" name = "tipo2" value =${p.tipo} ></td>
			<td><input type = "text" name = "operadora2" value=${p.operadora}></td>
			<td><button class="btn btn--radius-2 btn--blue" type = "submit">Modificar</button></td>
			</form>
			
			
		</tr>
			
			
		</c:forEach>
	</table>
            	
            	
               
            
            <div class="p-t-15">
        		 	<button class="btn btn--radius-2 btn--blue" type="submit" name = "bMultiusos">listar </button>
           </div>
        </form>
    </div>
    
    
    <br />
    <br />
    
    <div  class="p-t-15">
        <form id="contact" action="/-Pr-ctica-de-laboratorio-01-Servlets-JSP-y-JDBC/AgregarTelefono">
        <label class ="title">Agregar un telefono</label>
        <br />
        
           <div class="row row-space">
                             <div class="col-2">
                                <div class="input-group">
                                	<input type = text name = "cedula" value = ${cedula}>
                                    <label class="label">Número de teléfono</label>
                                    <input  class="input--style-4" type="text" name="numero2" maxlength="10" required>
                                </div>
                            </div>
                               <div class="input-group">
                           			 <label class="label">Tipo de teléfono</label>
                           				 <div class="rs-select2 js-select-simple select--no-search">
                                <select name="tipo2" required>
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
                             					<select name= "operadora2" required>
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

                            
                        </div>
                     
                        </div>
            
            <div class="p-t-15">
        		 	<button class="btn btn--radius-2 btn--blue" type="submit" name = "bMultiusos">Agregar Teléfono</button>
           </div>
        </form>
    </div>
    
    <div  class="p-t-15">
        <form id="contact" action="/-Pr-ctica-de-laboratorio-01-Servlets-JSP-y-JDBC/ListarTelefonos">
        <label class ="title">Eliminar numero</label>
        <input type="text" name = "cedula" value = ${cedula}>
        <br />
            	
            		<c:set var="listaTelefonos" scope="request" value="${telefonos}" />
	

	<table>
	<tr>	<td><strong>Codigo</strong></td>
			<td><strong>Números</strong></td>
			<td><strong>Tipo</strong></td>
			<td><strong>Operadora</strong></td>
			<td><strong>Acción</strong></td>
			
		</tr>
		
		<c:forEach var="p" items="${listaTelefonos}">
		<tr>
			<form action = "/-Pr-ctica-de-laboratorio-01-Servlets-JSP-y-JDBC/EliminarController">
			
			<td><input type = "text" name = "codigo" value = ${p.codigo}></td>
			<td><input type = "text" name = "numero2" value = ${p.numero}></td>
			<td><input type = "text" name = "tipo2" value =${p.tipo} ></td>
			<td><input type = "text" name = "operadora2" value=${p.operadora}></td>
			<td><button class="btn btn--radius-2 btn--blue" type = "submit">Borrar</button></td>
			</form>
			
			
		</tr>
			
			
		</c:forEach>
	</table>
            	
            	
               
            
            <div class="p-t-15">
        		 	<button class="btn btn--radius-2 btn--blue" type="submit" name = "bMultiusos">listar </button>
           </div>
        </form>
    </div>
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
<div id = "show-panel" class="panel">
  
</div>
			
			</div>
		</div>
	</div>
</div>


 	<!-- Jquery JS-->
    <script src="vendor/jquery/jquery.min.js"></script>
    <!-- Vendor JS-->
    <script src="vendor/select2/select2.min.js"></script>
    <script src="vendor/datepicker/moment.min.js"></script>
    <script src="vendor/datepicker/daterangepicker.js"></script>

    <!-- Main JS-->
    <script src="js/global.js"></script>

</body>
</html>