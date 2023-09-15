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

<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
<!--Cambiar para que coincida con tu archivo/estructura de nombres-->
<link rel="stylesheet" href="/css/bootstrap.min.css">
<link rel="stylesheet" href="/css/universidades.css">
<script type="text/javascript" src="/js/app.js"></script>
<link rel="icon" href="imagenes/gorra-de-posgrado.png">
</head>
<body>
<header>
		<div class="container-fluid" id="encabezado">
        <div class="container">
            <nav class="navbar navbar-expand-lg navbar-dark">
                <div class="container-fluid">
                  <a class="navbar-brand" href="/">
                    <img class="" src="/imagenes/Logo_blanco.png"alt="Logo del Proyecto" id="logo" width="130">
                  </a>
                  <h2>Camino a Tu Universidad</h2>
                  <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                  </button>
                  <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
                      <li class="nav-item">
                        <a class="nav-link" href="/acercaDeNosotros">Acerca de nosotros</a>
                      </li>
                      <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                        Universidades
                        </a>
                        <ul class="dropdown-menu">
                        
							<c:forEach var="uni" items="${universidades}">
		                        <li><a class="dropdown-item" href="/universidades/${uni.id}">
		                                <c:out value="${uni.universidadName}" />
		                            </a>
		                        </li>
                    		</c:forEach>
						</ul>
						</li>
                      <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                            Carreras
                        </a>
                        <ul class="dropdown-menu">
                          <li><a class="dropdown-item" href="#">NombreUni</a></li>
                        </ul>
                      </li>
                      <li class="nav-item">
                        <a class="nav-link active" href="<c:if test='${isLoggedIn}'>/cuenta</c:if><c:if test='${!isLoggedIn}'>/CTUniRegister</c:if>">
			                <c:choose>
			                    <c:when test="${isLoggedIn}">Cuenta</c:when>
			                    <c:otherwise>Login/Register</c:otherwise>
			                </c:choose>
           			 	</a>
                      </li>
                    </ul>
                    
                  </div>
		</div>
	</header>
	<main>
			<c:if test="${not empty errorMessage}">
    <div class="alert alert-danger">
        ${errorMessage}
    </div>
</c:if>
		<div class="d-flex justify-content-center pt-2">
			<h1>${universidad.universidadName}</h1>
		</div>
		<br>
		<div class="d-flex justify-content-center pt-2">
			<p class="nroIngresantes"><ins>Localidad</ins>: ${universidad.localidad}</p>
		</div>
		<br>
		<div class="d-flex justify-content-center pt-2">
			<p class="nroIngresantes"><ins>direccion</ins>: ${universidad.direccion}</p>
		</div>
		<br>
		<div class="d-flex justify-content-center pt-2">
			<p class="nroIngresantes"><ins>Institución:</ins> ${universidad.publicOrPrivate}</p>
		</div>
		<br>
		<div class="d-flex justify-content-center pt-2">
			<p class="nroIngresantes"><ins>Ranking</ins> :${universidad.ranking}</p>
		</div>
				<div class="d-flex justify-content-center pt-2">
			<p class="nroIngresantes"><ins>Calificación de Usuarios</ins> :${universidad.rating}</p>
		</div>
		
		
			<c:choose>
			    <c:when test="${ guardaruni.contains(Usuario) }">
			        <a href="/universidades/noguardar/${universidad.id}">
			            No Guardar
			        </a>
			    </c:when>
			    <c:otherwise>
			    <input class="checkbox" type="checkbox">
			        <a href="/universidades/guardar/${universidad.id}">
			            <div class="guardar">
							<img class="logoguardar" src="/imagenes/el-logo.png" width="130"></div>
			        </a>
			    </c:otherwise>
			</c:choose>
		

		
		<div>
			<h4>Comentarios:</h4>
			
		</div>
		<c:forEach var="comentario" items="${comentarios}">
		    <c:if test="${comentario.universidades.id == universidad.id}">
		    		<h7>Comentario: <c:out value="${comentario.comentario}" /></h7>
		    		<br>
		            <h7>Usuario <c:out value="${comentario.autor.nombre}" /></h7> <!-- Accede al atributo 'nombre' del objeto 'autor' -->
		            <h5>Puntaje <c:out value="${comentario.rating}" /></h5>
		            
		            <br>
		            
		    </c:if>
		</c:forEach>
		<div class="container">
			<div class="row">
				<div class="col-6">
					<form action="" class="form_comentarios">
					<textarea name="" id="" placeholder="comentario"></textarea>
					</form>
				</div>
			</div>
		</div>
		<a href="/comentario/${universidad.id}">deja tu opinion</a>
	
	</main>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>
	
</body>
</html>