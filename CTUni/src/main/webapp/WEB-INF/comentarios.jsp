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
<link rel="stylesheet" href="/css/bootstrap.min.css">


<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>

<link rel="stylesheet" href="/css/Comentarios.css">

<link rel="icon" href="/imagenes/gorra-de-posgrado.png">

<script type="text/javascript" src="js/app.js"></script>

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
														value="${uni.universidadName}" />
											</a></li>
										</c:forEach>
									</ul></li>
								<li class="nav-item dropdown"><a
									class="nav-link dropdown-toggle" href="#" role="button"
									data-bs-toggle="dropdown" aria-expanded="false"> Carreras </a>
									<ul class="dropdown-menu">
										<li><a class="dropdown-item" href="#">NombreUni</a></li>
									</ul></li>
								<li class="nav-item"><a class="nav-link active"
									href="<c:if test='${isLoggedIn}'>/cuenta</c:if><c:if test='${!isLoggedIn}'>/CTUniRegister</c:if>">
										<c:choose>
											<c:when test="${isLoggedIn}">Cuenta</c:when>
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
	<div class="list-group m-2 w-50 ">
    <form:form method="POST" action="/comentario/${universidad.id}" modelAttribute="newcomment"> 
			<form:input type="hidden" path="autor" value="${userId}" />
				<div>
					<form:label id="comentar" path="comentario"> Comentar:</form:label>
					<div class="col-sm-10 m-2">
						<form:textarea type="text" path="comentario" class="form-control" />
					</div>
					<form:errors class="text-danger form-control" path="comentario" />
				</div>
        <div class="form-group row mb-2">
            <form:label path="rating" class="col-sm-2 col-form-label m-2">Estrellas</form:label>
            <div class="col-sm-10">
                <form:select path="rating" class="form-select m-2">
                    <form:option value="0">Seleccione una calificación</form:option>
                    <form:option value="1">1</form:option>
                    <form:option value="2">2</form:option>
                    <form:option value="3">3</form:option>
                    <form:option value="4">4</form:option>
                    <form:option value="5">5</form:option>
                </form:select>
            </div>
        </div>
	<input id="boton" type="submit" value="Aceptar" />
</div>
</form:form>




</body>