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


<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>

<link rel="stylesheet" href="css/inicio.css">

<link rel="icon" href="imagenes/gorra-de-posgrado.png">

<script type="text/javascript" src="js/app.js"></script>

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
                  <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
                      <li class="nav-item">
                        <a class="nav-link" href="<c:if test='${isLoggedIn}'>/cuenta</c:if><c:if test='${!isLoggedIn}'>/CTUniRegister</c:if>">
			                <c:choose>
			                    <c:when test="${isLoggedIn}">Cuenta</c:when>
			                    <c:otherwise>Login/Register</c:otherwise>
			                </c:choose>
           			 	</a>
                      </li>
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
                    </ul>
                  </div>
		</div>
	</header>
		<main>
			<div id="carouselExampleCaptions" class="carousel slide w-75  m-2 d-inline-block">
        <div class="carousel-indicators ">
          <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
          <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="1" aria-label="Slide 2"></button>
          <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="2" aria-label="Slide 3"></button>
        </div>
        <div class="container-fluid ">
            <div class="carousel-inner" style="height: 30rem;">
                <div class="carousel-item active">
                  <img src="./imagenes/UBA.jpg" class="d-block w-100" alt="...">
                  <div class="carousel-caption d-none d-md-block opacity-50 h-25 bg-black">
                    <h5>Ranking 1</h5>
                    <p>UBA-Universidad de Buenos Aires.</p>
                  </div>
                </div>
                <div class="carousel-item">
                  <img src="./imagenes/UCA.jpg" class="d-block w-100" alt="...">
                  <div class="carousel-caption d-none d-md-block opacity-50 bg-black">
                    <h5>Ranking 2</h5>
                    <p>UCA-Universidad Católica Argentina</p>
                  </div>
                </div>
                
                <div class="carousel-item">
                  <img src="./imagenes/UTDT.jpg" class="d-block w-100" alt="...">
                  <div class="carousel-caption d-none d-md-block opacity-50 bg-black">
                    <h5>Ranking 3</h5>
                    <p>Universidad Torcuato Di Tella.</p>
                  </div>
                </div>
              </div>
              <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Previous</span>
              </button>
              <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Next</span>
              </button>
            </div>
            
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
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>
</body>
</html>