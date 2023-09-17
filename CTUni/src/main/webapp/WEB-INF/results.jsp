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

<title>Su resultado es...</title>

<link rel="stylesheet"
	href="/webjars/bootstrap/5.2.3/css/bootstrap.min.css">

<link rel="stylesheet" href="../css/bootstrap.min.css">

<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>

<link rel="stylesheet" href="/css/main.css">

<script type="text/javascript" src="/js/app.js"></script>

<link rel="icon" href="../imagenes/gorra-de-posgrado.png">

</head>

<body>
	<div class="d-flex justify-content-end pt-2 pe-2">
		<div class="pe-1">
			<a href="/test" class="btn btn-info text-white"> Volver a
				realizar el Test</a>
		</div>
		<div>
			<a href="/" class="btn btn-success text-white"> Volver a la
				Página Principal</a>
		</div>
	</div>
	<div class="pt-2 ps-3">
		<h1>Resultados del Test Vocacional</h1>
		<p>Tu tema vocacional más común es:</p>
		<h2>${topic}</h2>
		<br>
	</div>
</body>
</html>