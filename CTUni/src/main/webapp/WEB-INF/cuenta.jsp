<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page isErrorPage="true"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<title>Cuenta de <c:out value="${usuario.nombre}" /></title>

<link rel="stylesheet"
	href="/webjars/bootstrap/5.2.3/css/bootstrap.min.css">

<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>

<link rel="stylesheet" href="/css/main.css">

<script type="text/javascript" src="/js/app.js"></script>

</head>

<body>
	<div class="ps-3 pt-3">
		<h1>Bienvenido a tu cuenta!</h1>
		<br>

		<c:if test="${not empty usuario}">
			<p>
				Nombre de usuario:
				<c:out value="${usuario.nombre}"></c:out>
			</p>
			<p>
				Email:
				<c:out value="${usuario.email}"></c:out>
			</p>
			<br>

		</c:if>

		<a href="/">Volver a la Página Principal</a> <br> <br> 
		<a href="/guardados">Guardados</a> <br> <br> 
		<a href="/logout">Cerrar sesión</a>
	</div>
</body>
</html>