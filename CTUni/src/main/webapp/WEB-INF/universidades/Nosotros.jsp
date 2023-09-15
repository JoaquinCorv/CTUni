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

<title>Acerca de Nosotros</title>
<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="./css/bootstrap.min.css">
<link rel="stylesheet" href="css/logreg.css">
<link rel="stylesheet" href="css/Nosotros.css">
<script type="text/javascript" src="js/app.js"></script>

<link rel="icon" href="imagenes/gorra-de-posgrado.png">
</head>

<body>





<header>
		<div class="container-fluid" id="encabezado">
        <div class="container">
            <nav class="navbar navbar-expand-lg navbar-dark">
                <div class="container-fluid">
                  <a class="navbar-brand" href="/">
                    <img class="" src="./imagenes/Logo_blanco.png"alt="Logo del Proyecto" id="logo" width="130">
                  </a>
                  <h2>Camino a Tu Universidad</h2>
                  <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                  </button>
                  <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
                      <li class="nav-item">
                        <a class="nav-link" href="#">Acerca de nosotros</a>
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
	
	<footer>
	<div class="cuerpo">
		<h2>�Te has preguntado qu� estudiar y d�nde?</h2>
		
		<h4>En nuestra P�gina web te ayudaremos a elegir una carrera conforme con lo que estas buscando.</h4>
		
		<p>Para eso te brindaremos:</p>
		<ul>
		<li>Universidades de tu provincia y sus carreras.</li>
		<li>El rainking de universidades en la provincia de Buenos Aries.</li>
		<li>Un apartado de universidades destacadas.</li>
		<li>Comentarios y puntajes de cada universidad.</li>
		</ul>
		<h6>Si sos un usuario registrado tambien podes comentar y dar una puntuacion a las universidades.</h6>
	</div>
	<br>
		
		<div class="list-group">
		<div class="row">
		<div class="col-4">
		<p>
		CTUNI
		Dise�ado y construido con todo el amor del mundo por el equipo
		de Camino a Tu Universidad.</p></div>
		<div class="col-4">
		<p>
		ENLACES
		Inicio
		Acerca de nosotros
		Universidades
		Carreras
		Registro
		Cuenta</p></div>
		<div class="col-4 ">
		<p>
		Integrantes
		Ailin Lell.
		Luciano Altamirano.
		Joaqu�n Corval�n.
		Fancisco Encalada.
		Tom�s Petrucci.</p></div>
		</div>
		</div>
		</footer>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>

</body>
</html>