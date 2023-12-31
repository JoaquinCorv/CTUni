<!-- c:out ; c:forEach etc. -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!--Formateo fechas (date)-->
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!--Formulario form:form -->
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!--Para errores de renderizado en rutas PUT-->
<%@ page isErrorPage="true"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<title>Carreras</title>

<!--Bootstrap-->
<link rel="stylesheet"
	href="/webjars/bootstrap/5.2.3/css/bootstrap.min.css">
<link rel="stylesheet" href="/css/bootstrap.min.css">


<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
<!--Cambiar para que coincida con tu archivo/estructura de nombres-->
<link rel="stylesheet" href="/css/carreras.css">
<script type="text/javascript" src="/js/app.js"></script>
<link rel="icon" href="./imagenes/gorra-de-posgrado.png">
</head>
<body>
<header>
		<div class="container-fluid" id="encabezado">
			<div class="container">
				<nav class="navbar navbar-expand-lg navbar-dark">
					<div class="container-fluid">
						<a class="navbar-brand" href="/"> <img class=""
							src="/imagenes/Logo_blanco.png" alt="Logo del Proyecto"
							id="logo" width="130">
						</a>
						<h2>Camino a Tu Universidad</h2>
						<button class="navbar-toggler" type="button"
							data-bs-toggle="collapse"
							data-bs-target="#navbarSupportedContent"
							aria-controls="navbarSupportedContent" aria-expanded="false"
							aria-label="Toggle navigation">
							<span class="navbar-toggler-icon"></span>
						</button>
						<div class="collapse navbar-collapse" id="navbarSupportedContent">
							<ul class="navbar-nav ms-auto mb-2 mb-lg-0">
								<li class="nav-item"><a class="nav-link"
									href="/acercaDeNosotros">Acerca de Nosotros</a></li>
								<li class="nav-item dropdown"><a
									class="nav-link dropdown-toggle" href="#" role="button"
									data-bs-toggle="dropdown" aria-expanded="false">
										Universidades </a>
									<ul class="dropdown-menu">

										<c:forEach var="uni" items="${universidades}">
											<li><a class="dropdown-item"
												href="/universidades/${uni.id}"> <c:out
														value="${uni.siglas}" />
											</a></li>
										</c:forEach>
									</ul></li>
								<li class="nav-item dropdown"><a
									class="nav-link dropdown-toggle" href="#" role="button"
									data-bs-toggle="dropdown" aria-expanded="false"> Carreras </a>
									<ul class="dropdown-menu">
										<c:forEach var="uni" items="${carreras}">
											<li><a class="dropdown-item"
												href="/carreras/${uni.id}"> <c:out
														value="${uni.carreraName}" />
											</a></li>
										</c:forEach>
									</ul></li>
								<li class="nav-item"><a class="nav-link active"
									href="<c:if test='${isLoggedIn}'>/cuenta</c:if><c:if test='${!isLoggedIn}'>/CTUniRegister</c:if>">
										<c:choose>
											<c:when test="${isLoggedIn}"><img class="usuario rounded-circle" src="/imagenes/usuarioinicio.jpg" width="35"></c:when>
											<c:otherwise>Login/Registro</c:otherwise>
										</c:choose>
								</a></li>
							</ul>

						</div>
					</div>
					</nav>
					</div>
					</div>
	</header>
	<main>
	<div class="list-group pt-1">
		<div class="d-flex flex-column mb-1">
			<div class="p-2">
			<h1>Informaci&oacuten de Sedes y Carreras</h1>
			<h2>Detalles de la Carrera</h2>
			</div>
		</div>
		<br>
		<div class="p-3"><h5>Nombre de la Carrera: ${carrera.carreraName}</h5>
		</div>
		<div class="p-3"><h5>Duraci&oacuten: ${carrera.duracion}</h5>
		</div>
		<div class="p-3"><h5>Tipo: ${carrera.tipo}</h5>
		</div>
		<div class="p-3"><h5>Costo: ${carrera.costo}</h5>
		</div>
		<div class="p-3"><h5>Plan de Estudio: <a href="${carrera.planDeEstudio}" target="_blank">Ver plan de estudio</a></h5>
		</div>
		<div class="p-2">
			<h2>Universidad que da la carrera</h2>
			</div>
		<c:forEach var="sede" items="${Sedes}">
			<div class="p-3"><h5>${sede.sedesName}</h5>
			</div>
			<div class="p-3"><h5>Localidad: ${sede.localidad}</h5>
			</div>
			<div class="p-3"><h5>Direcci&oacuten: ${sede.direccion}</h5>
			</div>
			<div class="p-3"><h5>Contacto Gmail: ${sede.contactoGmail}</h5>
			</div>
			<div class="p-3"><h5>Contacto Telefono: ${sede.contactoTelefono}</h5>
			</div>
		</c:forEach>
		</div>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>
	</main>
</body>
