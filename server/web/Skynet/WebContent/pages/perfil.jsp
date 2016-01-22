<%@ page import="domain.User" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"  %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"   %>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<title>Mi perfil - Skynet</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1" />
		<link rel="stylesheet" href="<%=request.getContextPath()%>/css/main.css" />
	</head>
	<body>
		<jsp:include page="../includes/header.jsp"/>
		<div id="wrapper">
			<div id="main">
				<section id="two">
					<div class="container">
						<header class="major">
							<h2>Mi perfil</h2>
							<p>Edita tu perfil.</p>
						</header>
						<% HttpSession s = (HttpSession) request.getAttribute("s"); %>
						<% if (s != null) { %>
						<% User u = (User) s.getAttribute("editedUser"); %>
						<form method="post" action="<%=request.getContextPath()%>/Editar">
							<h4>Usuario:</h4>
							<input required type="text" maxlength="15" placeholder="Usuario" id="user" class="registerText" name="user" size="30" value="<%= u.getUsername()  %>"/> 
							<br /><h4>Contrase�a:</h4>
							<input required type="password" maxlength="20" placeholder="Contrase�a" id="password" class="registerText" name="password" size="30" value="<%= u.getPassword() %>"/> 
							<br /><h4>Repetir contrase�a:</h4>
							<input required type="password" maxlength="20" placeholder="Repetir Contrase�a" id="password2" class="registerText" name="password2" size="30" value="<%= u.getPassword() %>" /> 
							<br /><h4>Nombre:</h4>
							<input required type="text" maxlength="20" placeholder="Nombre" id="nombre" class="registerText" name="nombre" size="30" value="<%= u.getNombre() %>" /> 
							<br /><h4>Apellido:</h4>
							<input required type="text" maxlength="20" placeholder="Apellido" id="apellido" class="registerText" name="apellido" size="30" value="<%= u.getApellido() %>"/> 
							<br /><h4>Direcci�n:</h4>
							<input required type="text" maxlength="40" placeholder="Direcci�n" id="direccion" class="registerText" name="direccion" size="30" value="<%= u.getDireccion() %>"/> 
							<br /><h4>Tel�fono:</h4>
							<input type="text" pattern="[0-9]{9}" required="true" title="El numero de telefono no es valido" placeholder="Tel�fono" id="telefono" class="registerText" name="telefono" size="30" value="<%= u.getTelefono() %>"/> 
							<br /><h4>DNI:</h4>
							<input pattern="[0-9]{8}[A-Z]{1}" required="true" title="El DNI no es valido" type="text" placeholder="DNI" id="DNI" class="registerText" name="DNI" size="30" value="<%= u.getDNI() %>"/> 
							<br /><h4>Notas:</h4>
							<textarea placeholder="Notas" maxlenght="350" id="notas" class="registerText" name="notas" rows=8 cols=57 ><%= u.getNotas() %></textarea> 
							</br>
							<input type="submit" class="registerButton" name="action" value="Editar"/> 
						</form>
						<% } else { %>
						<p>Inicia sesion o registrate para poder editar tu perfil.</p>
						<% } %>
					</div>
				</section>
			</div>
		</div>
		<jsp:include page="../includes/footer.jsp"/>
	</body>
</html>