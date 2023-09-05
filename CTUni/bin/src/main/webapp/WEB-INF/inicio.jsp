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

<title>Pagina Principal</title>

<link rel="stylesheet"
	href="/webjars/bootstrap/5.2.3/css/bootstrap.min.css">


<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>

<link rel="stylesheet" href="css/style.css">

<script type="text/javascript" src="js/app.js"></script>

</head>
<body>
	<div class="container">
		<header>
			<div class="logo-loginReg">
				<div class="logo">
					<img src="./imagenes/logoProyecto.png" alt="logoimg">
				</div>
				<div class="loginReg">
					<div class="login">
						<a href="#">Login</a>
					</div>
					<div class="reg">
						<a href="#">Registrarse</a>
					</div>
				</div>
			</div>
			<nav class="menu">
				<ul class="listaNav">
					<li class="listaItem" onclick="menuDesplegable"><a
						class="listaItemLink" href="#">Facultades</a>
						<ul class="categorias">
							<li><a href="#">abogacia</a></li>
							<li><a href="#">abogacia</a></li>
							<li><a href="#">abogacia</a></li>
						</ul></li>

					<li class="listaItem" onclick="menuDesplegable"><a
						class="listaItemLink" href="#">Carreras</a>
						<ul class="categorias">
							<li><a href="#">abogacia</a></li>
							<li><a href="#">abogacia</a></li>
							<li><a href="#">abogacia</a></li>
						</ul></li>
					<li class="listaItem" onclick="menuDesplegable"><a
						class="listaItemLink" href="#">Localidad</a>
						<ul class="categorias">
							<li><a href="#">abogacia</a></li>
							<li><a href="#">abogacia</a></li>
							<li><a href="#">abogacia</a></li>
						</ul></li>
				</ul>
			</nav>
		</header>
		<main>
			<div class="row">
				<h2>Ranking de Universidades</h2>
			</div>
			<div class="row">
				<div class="col-8">
					<table class="table table-hover border">
						<thead>
							<tr>
								<th>Posicion</th>
								<th>Universidad</th>
								<th>Popularidad</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<th>Item one</th>
								<th>Item two</th>
								<th>Item three</th>
							</tr>
						</tbody>
					</table>
				</div>
				<div class="col-4 pr-3">
				<p>aca van los anuncios</p>
				</div>
			</div>
			<div class="row mt-4">
			<h2>Ranking de Carreras</h2>
			<table class="table table-hover border">
						<thead>
							<tr>
								<th>Carrera</th>
								<th>Numero de ingresantes</th>
								<th>requerimiento</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<th>Item one</th>
								<th>Item two</th>
								<th>Item three</th>
							</tr>
						</tbody>
					</table>
			</div>
		</main>
		<footer>
		<div class="row">
		<div class="col-3">
		<p>integrantes</p></div>
		<div class="col-3">otros apartados</div>
		<div class="col-3">otros apartados</div>
		</div>
		</footer>
		</div>
</body>
</html>