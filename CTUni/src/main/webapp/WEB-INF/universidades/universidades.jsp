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
                  </nav>
                  </div>
		</div>
	</header>
	
	<div id="carousel-ads-1"
			class="carousel slide mt-1 d-inline-block carousel-ads"
			data-bs-ride="carousel">
			<div class="carousel-inner m-2">
				<div class="carousel-item active  h-25" data-bs-interval="2000">
					<div id="fondodepalabra"
						class="carousel-caption d-none d-md-block opacity-75 text-white text-opacity-100">
						<h5>Universidades Destacadas</h5>
					</div>
					<img src="/imagenes/itbaa.jpg" class="d-block h-100"
						alt="...">

				</div>
				<div class="carousel-item h-25" data-bs-interval="2000">
					<div id="fondodepalabra"
						class="carousel-caption d-none d-md-block opacity-75 text-white text-opacity-100">
						<h5>Universidades Destacadas</h5>
					</div>
					<img src="/imagenes/ucess.jpg" class="d-block h-100"
						alt="...">
				</div>
				<div class="carousel-item h-25" data-bs-interval="2000">
					<img src="/imagenes/logo4.jpg" class="d-block h-100"
						alt="...">
					<div id="fondodepalabra"
						class="carousel-caption d-none d-md-block opacity-75 text-white text-opacity-100">
						<h5>Universidades Destadacas</h5>
					</div>
				</div>
			</div>
		</div>
		<main>
			<c:if test="${not empty errorMessage}">
    <div class="alert alert-danger">
        ${errorMessage}
    </div>
</c:if>
		<div class="list-group pt-2">
		<div class="d-flex flex-column mb-3">
			<div class="p-2">
			<h2>${universidad.universidadName}</h2>
			</div>
		</div>
		<br>
		<div class="p-3"><h5>Localidad: ${universidad.localidad}</h5>
		</div>
		<div class="p-3"><h5>Direccion: ${universidad.direccion}</h5>
		</div>
		<div class="p-3"><h5>Institución: ${universidad.publicOrPrivate}</h5>
		</div>
		<div class="p-3"><h5>Ranking: ${universidad.ranking}</h5>
		</div>
				<div class="p-3"><h5>Calificación de Usuarios:${universidad.rating}</h5>
		</div>
		
		<div class="guardar">
			<c:choose>
			    <c:when test="${ guardaruni.contains(Usuario) }">
			        <a href="/universidades/noguardar/${universidad.id}">
			            No Guardar
			        </a>
			    </c:when>
			    <c:otherwise>
			    	
			        <a href="/universidades/guardar/${universidad.id}">
			            <img class="logoguardar float-end" src="/imagenes/logodeguardarsi.png">
			        </a>
			    </c:otherwise>
			</c:choose>
			</div>
			</div>
		<div class="container w-25 float-end my-4 me-5" id="coment">
			<div class="row">
				<div class="col-112">
					<h4>Comentarios:</h4>
									<div class="tuOpinion px-2 float-end">
						            <a id="opinion" href="/comentario/${universidad.id}">Comentar</a>
						            </div>
						<c:forEach var="comentario" items="${comentarios}">
						    <c:if test="${comentario.universidades.id == universidad.id}">
						    		<br>
						    		<h6><img class="usuario" src="/imagenes/usuario.jpg" width="25"> <c:out value="${comentario.autor.nombre}" /> </h6><!-- Accede al atributo 'nombre' del objeto 'autor' -->
						            <c:out value="${comentario.comentario}" />
						            <br>
						            <br>
						            <h7>Estrellas <c:out value="${comentario.rating}" /></h7>
						            <br>
						            <hr>
						    </c:if>
						</c:forEach>
				</div>
			</div>
		</div>
					
		
	
	</main>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>
	
</body>
</html>