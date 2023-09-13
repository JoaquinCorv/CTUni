<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
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
<title>Tus Guardados</title>
<!--Bootstrap-->
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css">
<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
<!--Cambiar para que coincida con tu archivo/estructura de nombres-->
<link rel="stylesheet" href="/css/main.css">
<script type="text/javascript" src="/js/app.js"></script>
<link rel="icon" href="/img/imagen.png">
</head>
<body>
<header>
		<div class="container-fluid">
			<div class="logo">
				<a href="/"> <img src="./imagenes/logo_blanco.png"
					alt="Logo del Proyecto">
				</a>
			</div>
			
			<nav>
				<ul class="listaPrincipal">
					<li class="listaItem" onclick="menuDesplegable"><a
						class="listaItemLink" href="#">Carreras</a>
						<ul class="categorias">
							<li><a href="/carreras">NombreCarrera</a></li>
							<li><a href="#">NombreCarrera</a></li>
							<li><a href="#">NombreCarrera</a></li>
						</ul></li>
					<li class="listaItem" onclick="menuDesplegable"><a
						class="listaItemLink" href="#">Universidades</a>
						<ul class="categorias">
									<c:forEach var="uni" items="${universidades}">
                        <li>
                            <a href="/universidades/${uni.id}">
                                <c:out value="${uni.universidadName}" />
                            </a>
                        </li>
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

							<c:forEach var="uni" items="${usuario.guardaruni}">
                        <li>
                            <a href="/universidades/${uni.id}">
                                <c:out value="${uni.universidadName}" />
                            </a>
                        </li>
                    </c:forEach>




</body>
</html>