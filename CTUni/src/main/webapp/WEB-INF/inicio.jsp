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

<title>CTUni #AilinLaMejor</title>

<link rel="stylesheet"
	href="/webjars/bootstrap/5.2.3/css/bootstrap.min.css">


<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>

<link rel="stylesheet" href="css/inicio.css">

<link rel="icon" href="imagenes/gorra-de-posgrado.png">

<script type="text/javascript" src="js/app.js"></script>

</head>
<body>
<header>
		<div class="container-fluid">
			<div class="logo">
				<a href="/"> <img src="./imagenes/logo_blanco.png"
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
							<li><a href="/universidades">NombreUni</a></li>
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
			<div class="row-1">
				<h2>Ranking de Universidades</h2>
			</div>
			<div class="row">
				<div class="col-8">
					<table class="table table-hover border">
						<thead>
							<tr>
								<th>Ranking</th>
								<th>Universidad</th>
								<th>Modalidad</th>
								<th>Localidad</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<th>Que ranking es</th>
								<th>Nombre uni</th>
								<th>publica o privada</th>
								<th>Capital(ponele)</th>
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
			<div class="col-8">
			<table class="table table-hover border">
						<thead>
							<tr>
								<th>Carrera</th>
								<th>Numero de ingresantes</th>
								<th>Duracion</th>
								<th>Salida laboral</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<th>Nombre de la carrera</th>
								<th>Cuantos ingresantes por a�o</th>
								<th>Dura tantos a�os</th>
								<th>Es requerida, no tanto, poco</th>
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