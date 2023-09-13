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
<!-- 			<nav> -->
<!-- 				<ul class="listaPrincipal"> -->
<!-- 					<li class="listaItem" onclick="menuDesplegable"><a -->
<!-- 						class="listaItemLink" href="#">Carreras</a> -->
<!-- 						<ul class="categorias"> -->
<!-- 							<li><a href="/carreras">NombreCarrera</a></li> -->
<!-- 							<li><a href="#">NombreCarrera</a></li> -->
<!-- 							<li><a href="#">NombreCarrera</a></li> -->
<!-- 						</ul></li> -->
<!-- 					<li class="listaItem" onclick="menuDesplegable"><a -->
<!-- 						class="listaItemLink" href="#">Universidades</a> -->
<!-- 						<ul class="categorias"> -->
<%-- 									<c:forEach var="uni" items="${universidades}"> --%>
<!--                         <li> -->
<%--                             <a href="/universidades/${uni.id}"> --%>
<%--                                 <c:out value="${uni.universidadName}" /> --%>
<!--                             </a> -->
<!--                         </li> -->
<%--                     </c:forEach> --%>

<!-- 							<li><a href="#">NombreUni</a></li> -->
<!-- 							<li><a href="#">NombreUni</a></li> -->
<!-- 						</ul> -->
<!-- 						</li> -->
<!-- 					<li class="listaItem" onclick="menuDesplegable"><a -->
<!-- 						class="listaItemLink" href="#">Rellenar</a></li> -->
<!-- 				        <li class="listaItem"> -->
<%--             <a class="listaItemLink" href="<c:if test='${isLoggedIn}'>/cuenta</c:if><c:if test='${!isLoggedIn}'>/CTUniRegister</c:if>"> --%>
<%--                 <c:choose> --%>
<%--                     <c:when test="${isLoggedIn}">Cuenta</c:when> --%>
<%--                     <c:otherwise>Login/Register</c:otherwise> --%>
<%--                 </c:choose> --%>
<!--             </a> -->

<!--         </li> -->
			</nav>
		</div>
	</header>
		<main>
			<div class="row-1">
				<h2>Ranking de Universidades</h2>
			</div>
			<div class="row">
				<div class="col-8">
					<table class="table table-hover border">
						<thead>
							<tr>
								<th>Ranking</th>
								<th>Universidad</th>
								<th>Modalidad</th>
								<th>Localidad</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<th>Que ranking es</th>
								<th>Nombre uni</th>
								<th>publica o privada</th>
								<th>Capital(ponele)</th>
							</tr>
						</tbody>
					</table>
				</div>
				<div class="col-4 pr-3">
				<p>aca van los anuncios</p>
				</div>
			</div>
			<div class="row mt-4">
			<h2>Ranking de Carreras</h2>
			<div class="col-8">
			<table class="table table-hover border">
						<thead>
							<tr>
								<th>Carrera</th>
								<th>Numero de ingresantes</th>
								<th>Duracion</th>
								<th>Salida laboral</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<th>Nombre de la carrera</th>
								<th>Cuantos ingresantes por a�o</th>
								<th>Dura tantos a�os</th>
								<th>Es requerida, no tanto, poco</th>
							</tr>
						</tbody>
					</table>
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