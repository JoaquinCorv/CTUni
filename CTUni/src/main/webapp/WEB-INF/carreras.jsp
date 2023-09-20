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
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css">
<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
<!--Cambiar para que coincida con tu archivo/estructura de nombres-->
<link rel="stylesheet" href="/css/carreras.css">
<link rel="icon" href="/css/carreras.css">
<script type="text/javascript" src="/js/app.js"></script>
<link rel="icon" href="imagenes/gorra-de-posgrado.png">
</head>
<body>
<header>
		<div class="container-fluid">
			<div class="logo">
				<a href="/"> <img src="./imagenes/logo_blanco.png"
					alt="Logo del Proyecto">
				</a>
			</div>
			
			<div class="slogan">
			<h1>Camino a Tu Universidad</h1>
			</div>
			
			<nav>
				<ul class="listaPrincipal">
					<li class="listaItem" onclick="menuDesplegable"><a
						class="listaItemLink" href="#">Carreras</a>
						<ul class="categorias">
										<c:forEach var="uni" items="${universidades}">
											<li><a class="dropdown-item"
												href="/universidades/${uni.id}"> <c:out
														value="${uni.siglas}" />
											</a></li>
										</c:forEach>
						</ul></li>
					<li class="listaItem" onclick="menuDesplegable"><a
						class="listaItemLink" href="#">Universidades</a>
						<ul class="categorias">
										<c:forEach var="uni" items="${universidades}">
											<li><a class="dropdown-item"
												href="/universidades/${uni.id}"> <c:out
														value="${uni.siglas}" />
											</a></li>
										</c:forEach>

							<li><a href="#">NombreUni</a></li>
							<li><a href="#">NombreUni</a></li>
						</ul></li>
					<li class="listaItem" onclick="menuDesplegable"><a
						class="listaItemLink" href="#">Rellenar</a></li>
				        <li class="listaItem">
            <a class="listaItemLink" href="<c:if test='${isLoggedIn}'>/cuenta</c:if><c:if test='${!isLoggedIn}'>/CTUniRegister</c:if>">
                <c:choose>
                    <c:when test="${isLoggedIn}">Cuenta</c:when>
                    <c:otherwise>Login/Register</c:otherwise>
                </c:choose>
            </a>

        </li>
			</nav>
		</div>
	</header>
	<main>
	<section>
			<div class="d-inline-block p-5 pt-5">
				<h1>${Carreras.carreraName}</h1>
			</div>
			<br>
		<div class="p-3"><h5>duracion: ${Carreras.duracion}</h5>
		</div>

		<br>
		<div class="p-3"><h5>Plan de estudio: ${Carreras.planDeEstudio}</h5>
		</div>

			<br>
		<br>
		<div class="p-3"><h5>tipo: ${Carreras.tipo}</h5>
		</div>

			<br>
		<br>
		<div class="p-3"><h5>costo: ${Carreras.costo}</h5>
		</div>
		
		</section>
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