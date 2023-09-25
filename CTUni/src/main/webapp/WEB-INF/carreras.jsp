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
<title>Nombre de la Carrera</title>
<!--Bootstrap-->

<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
<!--Cambiar para que coincida con tu archivo/estructura de nombres-->
<link rel="stylesheet" href="/css/carreras.css">
<link rel="icon" href="/css/carreras.css">
<script type="text/javascript" src="/js/app.js"></script>
<link rel="icon" href="imagenes/gorra-de-posgrado.png">
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
	<main>
<h1>Informaci�n de Sedes y Carreras</h1>



<div class="container">
    <h1>Detalles de la Carrera</h1>

    <h2>Nombre de la Carrera: ${carrera.carreraName}</h2>
    <p>Duraci�n: ${carrera.duracion}</p>
    <p>Tipo: ${carrera.tipo}</p>
    <p>Costo: ${carrera.costo}</p>
<p>Plan de Estudio: <a href="${carrera.planDeEstudio}" target="_blank">Ver plan de estudio</a></p>


    <h2>Universidad que da la carrera</h2>
    <ul>
        <c:forEach var="sede" items="${Sedes}">
            <li>${sede.sedesName}</li>
            <li>Localidad: ${sede.localidad}</li>
            <li>Direcci�n: ${sede.direccion}</li>
            <li>Contacto Gmail: ${sede.contactoGmail}</li>
            <li>Contacto Tel�fono: ${sede.contactoTelefono}</li>
        </c:forEach>
    </ul>
</div>


		<footer>
			<div id="carouselExampleCaptions" class="carousel slide w-75  mt-2">
        <div class="carousel-indicators ">
          <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
          <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="1" aria-label="Slide 2"></button>
          <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="2" aria-label="Slide 3"></button>
        </div>
        <div class="container-fluid ">
            <div class="carousel-inner"  style="height: 30rem;">
                <div class="carousel-item active">
                  <img src="./UCA.jpg" class="d-block w-100" alt="...">
                  <div class="carousel-caption d-none d-md-block opacity-50 h-25">
                    <h5>ejemplos</h5>
                    <p>Aca van imagenes relacionadas con la Carrera</p>
                  </div>
                </div>
                <div class="carousel-item">
                  <img src="src/main/resources/static/css/imagenes/fotoProvicional.jpeg" class="d-block w-100" alt="auto">
                  <div class="carousel-caption d-none d-md-block opacity-50">
                    <h5>Ranking 2</h5>
                    <p>Aca van imagenes relacionadas con la Carrera</p>
                  </div>
                </div>
                
                <div class="carousel-item">
                  <img src="./UCA.jpg" class="d-block w-100" alt="...">
                  <div class="carousel-caption d-none d-md-block opacity-50 ">
                    <h5>Ranking 3</h5>
                    <p>Aca van imagenes relacionadas con la Carrera</p>
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
		</footer>
	</main>
</body>
</html>