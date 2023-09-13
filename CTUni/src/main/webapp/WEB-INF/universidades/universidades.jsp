<!-- c:out ; c:forEach etc. -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!--Formateo fechas (date)-->
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!--Formulario form:form -->
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!--Para errores de renderizado en rutas PUT-->
<%@ page isErrorPage="true"%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Nombre de la Universidad</title>
<!--Bootstrap-->
<!--<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css">-->
<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
<!--Cambiar para que coincida con tu archivo/estructura de nombres-->
<link rel="stylesheet" href="/css/universidades.css">
<script type="text/javascript" src="/js/app.js"></script>
<link rel="icon" href="imagenes/gorra-de-posgrado.png">
</head>
<body>
<header>


		<div class="container-fluid">
			<div class="logo">
				<a href="/"> <img src="./imagenes/Logo_azul.png"
					alt="Logo del Proyecto">
				</a>
			</div>
			<nav>
				<ul class="listaPrincipal">
					<li class="listaItem" onclick="menuDesplegable"><a
						class="listaItemLink" href="#">Carreras</a>
						<ul class="categorias">
							<li><a href="/carreras">NombreCarrera</a></li>
							<li><a href="#">NombreCarrera</a></li>
							<li><a href="#">NombreCarrera</a></li>
						</ul></li>
					<li class="listaItem" onclick="menuDesplegable"><a
						class="listaItemLink" href="#">Universidades</a>
						<ul class="categorias">

							<li><a href="#">NombreUni</a></li>
							<li><a href="#">NombreUni</a></li>
						</ul></li>
					<li class="listaItem" onclick="menuDesplegable"><a
						class="listaItemLink" href="#">Rellenar</a></li>
					<li class="listaItem"><a class="listaItemLink"
						href="/CTUniRegister">Login/Register</a></li>
				</ul>
			</nav>
		</div>
	</header>
	<main>
		<h1>
		Bienvenid@
		<c:out value="${usuario.autor }"></c:out>
	</h1>
	
		<div class="d-flex justify-content-center pt-5">
			<h1>${universidad.universidadName}</h1>
		</div>
		<br>
		<div class="d-flex justify-content-center pt-2">
			<p class="nroIngresantes"><ins>Localidad</ins>: ${universidad.localidad }</p>
		</div>
		<br>
		<div class="d-flex justify-content-center pt-2">
			<p class="nroIngresantes"><ins>Institución:</ins> </p>
		</div>
		<br>
		<div class="d-flex justify-content-center pt-2">
			<p class="nroIngresantes"><ins>Ranking</ins>: a Determinar</p>
		</div>
<c:choose>
    <c:when test="${ guardaruni.contains(Usuario) }">
        <a href="/universidades/noguardar/${universidad.id}">
            No Guardar
        </a>
    </c:when>
    <c:otherwise>
        <a href="/universidades/guardar/${universidad.id}">
            Guardar
        </a>
    </c:otherwise>
</c:choose>


		
		<div class="text-end">
			<a href="/comentario/">deja tu opinion</a>
		</div>
	</main>
</body>
</html>