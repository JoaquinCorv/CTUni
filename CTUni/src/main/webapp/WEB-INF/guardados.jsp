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

<title>CTUni</title>

<link rel="stylesheet"
	href="/webjars/bootstrap/5.2.3/css/bootstrap.min.css">
<link rel="stylesheet" href="./css/bootstrap.min.css">


<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>

<link rel="stylesheet" href="css/guardados.css">

<link rel="icon" href="imagenes/gorra-de-posgrado.png">

<script type="text/javascript" src="js/app.js"></script>

</head>
<body>
	<header>
		<div class="container-fluid" id="encabezado">
			<div class="container">
				<nav class="navbar navbar-expand-lg navbar-dark">
					<div class="container-fluid">
						<a class="navbar-brand" href="/"> <img class=""
							src="./imagenes/Logo_blanco.png" alt="Logo del Proyecto"
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

							<div class="list-group pt-2 w-50 ">
							<c:forEach var="uni" items="${usuario.guardaruni}">
                        <h4>
                            <a href="/universidades/${uni.id}">
                            <img class="logoguardar" src="/imagenes/guardados.png">
                                <c:out value="${uni.universidadName}" />
                            </a>
                        </h4>
                    </c:forEach>
                    </div>



<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm"
		crossorigin="anonymous"></script>
				<footer>
		<div class="list-group pt-2">
			<div class="row">
				<div class="col-3 me-3 ms-5">
					<p>
						<ins> Integrantes</ins>: Ailin Lell <br> Luciano Altamirano <br> Joaqu&iacuten
						Corval&aacuten <br> Francisco Encalada <br> Tom&oacutes Petrucci <br>
						Juli&aacuten Albornoz
					</p>
				</div>
				<div class="col-3 ms-5">
					<a href="/"> Inicio </a> <br> 
					<a href="/acercaDeNosotros"> Acerca de Nosotros </a> <br>
					 <a> Universidades </a><br> 
					 <a> Carreras </a> <br> 
<a
									href="<c:if test='${isLoggedIn}'>/cuenta</c:if><c:if test='${!isLoggedIn}'>/CTUniRegister</c:if>">
										<c:choose>
											<c:when test="${isLoggedIn}"><img class="usuario rounded-circle" src="/imagenes/usuarioinicio.jpg" width="35"></c:when>
											<c:otherwise>Login/Registro</c:otherwise>
										</c:choose>
								</a>
				</div>
				<div class="col-3 ">
					<p>CTUni fue dise&ntildeado y construido con todo el amor del mundo por
						el equipo de Camino a Tu Universidad.</p>
				</div>
			</div>
		</div>
	</footer>
</body>
</html>