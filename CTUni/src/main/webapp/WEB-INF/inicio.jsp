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

	<main>
		<c:if test="${not empty errorMessage}">
			<div class="alert alert-danger">${errorMessage}</div>
		</c:if>
		<div id="carouselExampleCaptions"
			class="carousel slide w-75  m-2 d-inline-block">
			<div class="carousel-indicators ">
				<button type="button" data-bs-target="#carouselExampleCaptions"
					data-bs-slide-to="0" class="active" aria-current="true"
					aria-label="Slide 1"></button>
				<button type="button" data-bs-target="#carouselExampleCaptions"
					data-bs-slide-to="1" aria-label="Slide 2"></button>
				<button type="button" data-bs-target="#carouselExampleCaptions"
					data-bs-slide-to="2" aria-label="Slide 3"></button>
				<button type="button" data-bs-target="#carouselExampleCaptions"
					data-bs-slide-to="3" aria-label="Slide 4"></button>
				<button type="button" data-bs-target="#carouselExampleCaptions"
					data-bs-slide-to="4" aria-label="Slide 5"></button>
				<button type="button" data-bs-target="#carouselExampleCaptions"
					data-bs-slide-to="5" aria-label="Slide 6"></button>
				<button type="button" data-bs-target="#carouselExampleCaptions"
					data-bs-slide-to="6" aria-label="Slide 7"></button>
				<button type="button" data-bs-target="#carouselExampleCaptions"
					data-bs-slide-to="7" aria-label="Slide 8"></button>
				<button type="button" data-bs-target="#carouselExampleCaptions"
					data-bs-slide-to="8" aria-label="Slide 9"></button>
				<button type="button" data-bs-target="#carouselExampleCaptions"
					data-bs-slide-to="9" aria-label="Slide 10"></button>
				<button type="button" data-bs-target="#carouselExampleCaptions"
					data-bs-slide-to="10" aria-label="Slide 11"></button>
				<button type="button" data-bs-target="#carouselExampleCaptions"
					data-bs-slide-to="11" aria-label="Slide 12"></button>
				<button type="button" data-bs-target="#carouselExampleCaptions"
					data-bs-slide-to="12" aria-label="Slide 13"></button>
				<button type="button" data-bs-target="#carouselExampleCaptions"
					data-bs-slide-to="13" aria-label="Slide 14"></button>
				<button type="button" data-bs-target="#carouselExampleCaptions"
					data-bs-slide-to="14" aria-label="Slide 15"></button>
				<button type="button" data-bs-target="#carouselExampleCaptions"
					data-bs-slide-to="15" aria-label="Slide 16"></button>
				<button type="button" data-bs-target="#carouselExampleCaptions"
					data-bs-slide-to="16" aria-label="Slide 17"></button>
				<button type="button" data-bs-target="#carouselExampleCaptions"
					data-bs-slide-to="17" aria-label="Slide 18"></button>
				<button type="button" data-bs-target="#carouselExampleCaptions"
					data-bs-slide-to="18" aria-label="Slide 19"></button>
				<button type="button" data-bs-target="#carouselExampleCaptions"
					data-bs-slide-to="19" aria-label="Slide 20"></button>
				<button type="button" data-bs-target="#carouselExampleCaptions"
					data-bs-slide-to="20" aria-label="Slide 21"></button>
				<button type="button" data-bs-target="#carouselExampleCaptions"
					data-bs-slide-to="21" aria-label="Slide 22"></button>
				<button type="button" data-bs-target="#carouselExampleCaptions"
					data-bs-slide-to="22" aria-label="Slide 23"></button>
				<button type="button" data-bs-target="#carouselExampleCaptions"
					data-bs-slide-to="23" aria-label="Slide 24"></button>
				<button type="button" data-bs-target="#carouselExampleCaptions"
					data-bs-slide-to="24" aria-label="Slide 25"></button>
				<button type="button" data-bs-target="#carouselExampleCaptions"
					data-bs-slide-to="25" aria-label="Slide 26"></button>
				<button type="button" data-bs-target="#carouselExampleCaptions"
					data-bs-slide-to="26" aria-label="Slide 27"></button>
				<button type="button" data-bs-target="#carouselExampleCaptions"
					data-bs-slide-to="27" aria-label="Slide 28"></button>
				<button type="button" data-bs-target="#carouselExampleCaptions"
					data-bs-slide-to="28" aria-label="Slide 29"></button>
				<button type="button" data-bs-target="#carouselExampleCaptions"
					data-bs-slide-to="29" aria-label="Slide 30"></button>
				<button type="button" data-bs-target="#carouselExampleCaptions"
					data-bs-slide-to="30" aria-label="Slide 31"></button>
			</div>
			<div class="container-fluid ">
				<div class="carousel-inner" style="height: 30rem;">
					<div class="carousel-item active">
						<img src="./imagenes/UBA.jpg" class="d-block w-100" alt="...">
						<div
							class="carousel-caption d-none d-md-block opacity-50 h-25 bg-black">
							<h5>Ranking 1</h5>
							<p>UBA-Universidad de Buenos Aires.</p>
						</div>
					</div>
					<div class="carousel-item">
						<img src="./imagenes/UCA.jpg" class="d-block w-100" alt="...">
						<div
							class="carousel-caption d-none d-md-block opacity-50 h-25 bg-black">
							<h5>Ranking 2</h5>
							<p>UCA-Universidad Católica Argentina</p>
						</div>
					</div>

					<div class="carousel-item">
						<img src="./imagenes/Austral.jpg" class="d-block w-100" alt="...">
						<div
							class="carousel-caption d-none d-md-block opacity-50 h-25 bg-black">
							<h5>Ranking 3</h5>
							<p>UA-Universidad Austral.</p>
						</div>
					</div>
					<div class="carousel-item">
						<img src="./imagenes/utn2.jpg" class="d-block w-100" alt="...">
						<div
							class="carousel-caption d-none d-md-block opacity-50 h-25 bg-black">
							<h5>Ranking 4</h5>
							<p>UTN-Universidad Tecnológica Nacional.</p>
						</div>
					</div>
					<div class="carousel-item">
						<img src="./imagenes/UTDT.jpg" class="d-block w-100" alt="...">
						<div
							class="carousel-caption d-none d-md-block opacity-50 h-25 bg-black">
							<h5>Ranking 5</h5>
							<p>UTDT-Universidad Torcuato Di Tella.</p>
						</div>
					</div>
					<div class="carousel-item">
						<img src="./imagenes/Palermo.jpg" class="d-block w-100" alt="...">
						<div
							class="carousel-caption d-none d-md-block opacity-50 h-25 bg-black">
							<h5>Ranking 6</h5>
							<p>UP-Universidad de Palermo.</p>
						</div>
					</div>
					<div class="carousel-item">
						<img src="./imagenes/ITBA.jpg" class="d-block w-100" alt="...">
						<div
							class="carousel-caption d-none d-md-block opacity-50 h-25 bg-black">
							<h5>Ranking 7</h5>
							<p>ITBA-Instituto Tecnológico de Buenos Aires.</p>
						</div>
					</div>
					<div class="carousel-item">
						<img src="./imagenes/BELGRANO.jpg" class="d-block w-100" alt="...">
						<div
							class="carousel-caption d-none d-md-block opacity-50 h-25 bg-black">
							<h5>Ranking 8</h5>
							<p>UB-Universidad de Belgrano.</p>
						</div>
					</div>
					<div class="carousel-item">
						<img src="./imagenes/Salvador.jpg" class="d-block w-100" alt="...">
						<div
							class="carousel-caption d-none d-md-block opacity-50 h-25 bg-black">
							<h5>Ranking 9</h5>
							<p>USAL-Universidad del Salvador Buenos Aires.</p>
						</div>
					</div>
					<div class="carousel-item">
						<img src="./imagenes/UADE.jpg" class="d-block w-100" alt="...">
						<div
							class="carousel-caption d-none d-md-block opacity-50 h-25 bg-black">
							<h5>Ranking 10</h5>
							<p>UADE-Universidad Argentina de la Empresa.</p>
						</div>
					</div>
					<div class="carousel-item">
						<img src="./imagenes/Febrero.jpg" class="d-block w-100" alt="...">
						<div
							class="carousel-caption d-none d-md-block opacity-50 h-25 bg-black">
							<h5>Ranking 11</h5>
							<p>UNTREF-Universidad Nacional de Tres de Febrero.</p>
						</div>
					</div>
					<div class="carousel-item">
						<img src="./imagenes/UCES.jpg" class="d-block w-100" alt="...">
						<div
							class="carousel-caption d-none d-md-block opacity-50 h-25 bg-black">
							<h5>Ranking 12</h5>
							<p>UCES-Universidad de Ciencias Empresariales y Sociales.</p>
						</div>
					</div>
					<div class="carousel-item">
						<img src="./imagenes/flasco.jpg" class="d-block w-100" alt="...">
						<div
							class="carousel-caption d-none d-md-block opacity-50 h-25 bg-black">
							<h5>Ranking 13</h5>
							<p>FLACSO-Facultad Latinoamericana de Ciencias Sociales
								Argentina.</p>
						</div>
					</div>
					<div class="carousel-item">
						<img src="./imagenes/ucema.jpg" class="d-block w-100" alt="...">
						<div
							class="carousel-caption d-none d-md-block opacity-50 h-25 bg-black">
							<h5>Ranking 14</h5>
							<p>UCEMA-Universidad del CEMA.</p>
						</div>
					</div>
					<div class="carousel-item">
						<img src="./imagenes/uai.jpg" class="d-block w-100" alt="...">
						<div
							class="carousel-caption d-none d-md-block opacity-50 h-25 bg-black">
							<h5>Ranking 15</h5>
							<p>UAI-Universidad Abierta Interamericana.</p>
						</div>
					</div>
					<div class="carousel-item">
						<img src="./imagenes/Hospital.jpg" class="d-block w-100" alt="...">
						<div
							class="carousel-caption d-none d-md-block opacity-50 h-25 bg-black">
							<h5>Ranking 16</h5>
							<p>IUHIBA-Instituto Universitario del Hospital Italiano.</p>
						</div>
					</div>
					<div class="carousel-item">
						<img src="./imagenes/universidad-favaloro.jpg"
							class="d-block w-100" alt="...">
						<div
							class="carousel-caption d-none d-md-block opacity-50 h-25 bg-black">
							<h5>Ranking 17</h5>
							<p>UF-Universidad Favaloro.</p>
						</div>
					</div>
					<div class="carousel-item">
						<img src="./imagenes/cemic.jpg" class="d-block w-100" alt="...">
						<div
							class="carousel-caption d-none d-md-block opacity-50 h-25 bg-black">
							<h5>Ranking 18</h5>
							<p>IUC-Instituto Universitario CEMIC.</p>
						</div>
					</div>
					<div class="carousel-item">
						<img src="./imagenes/Maimonides.jpg" class="d-block w-100"
							alt="...">
						<div
							class="carousel-caption d-none d-md-block opacity-50 h-25 bg-black">
							<h5>Ranking 19</h5>
							<p>UMAI-Universidad Maimónides.</p>
						</div>
					</div>
					<div class="carousel-item">
						<img src="./imagenes/KENNEDY.jpg" class="d-block w-100" alt="...">
						<div
							class="carousel-caption d-none d-md-block opacity-50 h-25 bg-black">
							<h5>Ranking 20</h5>
							<p>UK-Universidad Argentina John F Kennedy.</p>
						</div>
					</div>
					<div class="carousel-item">
						<img src="./imagenes/ceunib.jpg" class="d-block w-100" alt="...">
						<div
							class="carousel-caption d-none d-md-block opacity-50 h-25 bg-black">
							<h5>Ranking 21</h5>
							<p>CEUNIB-Instituto Universitario de Ciencias de la Salud.</p>
						</div>
					</div>
					<div class="carousel-item">
						<img src="./imagenes/caece.jpg" class="d-block w-100" alt="...">
						<div
							class="carousel-caption d-none d-md-block opacity-50 h-25 bg-black">
							<h5>Ranking 22</h5>
							<p>CAECE-Universidad CAECE.</p>
						</div>
					</div>
					<div class="carousel-item">
						<img src="./imagenes/artes.jpg" class="d-block w-100" alt="...">
						<div
							class="carousel-caption d-none d-md-block opacity-50 h-25 bg-black">
							<h5>Ranking 23</h5>
							<p>UNA-Universidad Nacional de las Artes.</p>
						</div>
					</div>
					<div class="carousel-item">
						<img src="./imagenes/UNIPE.jpg" class="d-block w-100" alt="...">
						<div
							class="carousel-caption d-none d-md-block opacity-50 h-25 bg-black">
							<h5>Ranking 24</h5>
							<p>UNIPE-Universidad Pedagógica Nacional Argentina.</p>
						</div>
					</div>
					<div class="carousel-item">
						<img src="./imagenes/ISALUD.jpg" class="d-block w-100" alt="...">
						<div
							class="carousel-caption d-none d-md-block opacity-50 h-25 bg-black">
							<h5>Ranking 25</h5>
							<p>ISALUD-Universidad Isalud.</p>
						</div>
					</div>
					<div class="carousel-item">
						<img src="./imagenes/ESEADE.jpg" class="d-block w-100" alt="...">
						<div
							class="carousel-caption d-none d-md-block opacity-50 h-25 bg-black">
							<h5>Ranking 26</h5>
							<p>ESEADE-Escuela de Economía y Administración de Empresas.</p>
						</div>
					</div>
					<div class="carousel-item">
						<img src="./imagenes/Museo.jpg" class="d-block w-100" alt="...">
						<div
							class="carousel-caption d-none d-md-block opacity-50 h-25 bg-black">
							<h5>Ranking 27</h5>
							<p>UMSA-Universidad del Museo Social Argentino.</p>
						</div>
					</div>
					<div class="carousel-item">
						<img src="./imagenes/Flores.jpg" class="d-block w-100" alt="...">
						<div
							class="carousel-caption d-none d-md-block opacity-50 h-25 bg-black">
							<h5>Ranking 28</h5>
							<p>UFLO-Universidad de Flores.</p>
						</div>
					</div>
					<div class="carousel-item">
						<img src="./imagenes/udemm.jpg" class="d-block w-100" alt="...">
						<div
							class="carousel-caption d-none d-md-block opacity-50 h-25 bg-black">
							<h5>Ranking 29</h5>
							<p>UDEMM-Universidad de la Marina Mercante.</p>
						</div>
					</div>
					<div class="carousel-item">
						<img src="./imagenes/cine.jpg" class="d-block w-100" alt="...">
						<div
							class="carousel-caption d-none d-md-block opacity-50 h-25 bg-black">
							<h5>Ranking 30</h5>
							<p>UCINE-Universidad del Cine.</p>
						</div>
					</div>
					<div class="carousel-item">
						<img src="./imagenes/idea.jpg" class="d-block w-100" alt="...">
						<div
							class="carousel-caption d-none d-md-block opacity-50 h-25 bg-black">
							<h5>Ranking 31</h5>
							<p>IDEA-Instituto para el Desarrollo Empresarial de la
								Argentina.</p>
						</div>
					</div>
				</div>
				<button class="carousel-control-prev" type="button"
					data-bs-target="#carouselExampleCaptions" data-bs-slide="prev">
					<span class="carousel-control-prev-icon" aria-hidden="true"></span>
					<span class="visually-hidden">Previous</span>
				</button>
				<button class="carousel-control-next" type="button"
					data-bs-target="#carouselExampleCaptions" data-bs-slide="next">
					<span class="carousel-control-next-icon" aria-hidden="true"></span>
					<span class="visually-hidden">Next</span>
				</button>
			</div>
		</div>
		<div id="carousel-ads-1"
			class="carousel slide m-1 d-inline-block carousel-ads "
			data-bs-ride="carousel">
			<div class="carousel-inner " style="height: 30rem;">
				<div class="carousel-item active  h-100" data-bs-interval="1500">
					<div id="fondodepalabra"
						class="carousel-caption d-none d-md-block opacity-75 text-white text-opacity-100">
						<h5>Universidades Destacadas</h5>
					</div>
					<img src="./imagenes/logoUBA.jpg" class="d-block  h-100" alt="...">

				</div>
				<div class="carousel-item h-100" data-bs-interval="1500">
					<div id="fondodepalabra"
						class="carousel-caption d-none d-md-block opacity-75 text-white text-opacity-100">
						<h5>Universidades Destacadas</h5>
					</div>
					<img src="./imagenes/logoUNICEN.jpg" class="d-block h-100"
						alt="...">
				</div>
				<div class="carousel-item h-100" data-bs-interval="1500">
					<img src="./imagenes/logoAustral.jpg" class="d-block h-100"
						alt="...">
					<div id="fondodepalabra"
						class="carousel-caption d-none d-md-block opacity-75 text-white text-opacity-100">
						<h5>Universidades Destadacas</h5>
					</div>
				</div>
			</div>
		</div>
	</main>
	<footer>
		<div class="list-group pt-2">
			<div class="row">
				<div class="col-3 me-3 ms-5">
					<p>
						<ins> Integrantes</ins>: Ailin Lell <br> Luciano Altamirano <br> Joaquín
						Corvalán <br> Francisco Encalada <br> Tomás Petrucci <br>
						Julián Albornoz
					</p>
				</div>
				<div class="col-3 me-5">
					<p>CTUni fue diseñado y construido con todo el amor del mundo por
						el equipo de Camino a Tu Universidad.</p>
				</div>
				<div class="col-3">
					<a href="/"> Inicio </a> <br> 
					<a href="/acercaDeNosotros"> Acerca de Nosotros </a> <br>
					 <a> Universidades </a><br> 
					 <a> Carreras </a> <br> 
					 <a href="/CTUniRegister"> Login/Registro </a> <br> 
					 <a> Cuenta</a>
				</div>
				
			</div>
		</div>
	</footer>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm"
		crossorigin="anonymous"></script>
</body>
</html>