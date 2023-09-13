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

<title>login and register</title>


<link rel="stylesheet" href="css/logreg.css">

<script type="text/javascript" src="js/app.js"></script>

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

<div class="grupo">
    <h2>Registrate</h2>
    <form:form class="border p-3" method="POST" action="/registration" modelAttribute="user">
        <div class="form-group row mb-3">
            <form:label path="nombre">Name:
                <form:errors path="nombre" cssClass="text-danger" />
            </form:label>
            <form:input type="text" path="nombre" />
        </div>
        <div class="form-group row mb-3">
            <form:label path="email">Email:
                <form:errors path="email" cssClass="text-danger" />
            </form:label>
            <form:input type="email" path="email" />
        </div>
        <div class="form-group row mb-3">
            <form:label path="password">Password:
                <form:errors path="password" cssClass="text-danger" />
            </form:label>
            <form:password path="password" />
        </div>
        <div class="form-group row mb-3">
            <form:label path="passwordConfirmation">Password Confirmation:
                <form:errors path="passwordConfirmation" cssClass="text-danger" />
            </form:label>
            <form:password path="passwordConfirmation" />
        </div>
        <input type="submit" value="Register!" />
    </form:form>
    <p class="text-success">
        <c:out value="${registro }"></c:out>
    </p>
</div>

<div class="grupo">
    <h2>inicia sesion</h2>
    <form:form class="border p-3" method="POST" action="/login" modelAttribute="login">
        <div class="form-group row mb-3">
            <form:label path="email">Email:
                <form:errors path="email" cssClass="text-danger" />
            </form:label>
            <form:input type="email" path="email" />
        </div>
        <div class="form-group row mb-3">
            <form:label path="password">Password:
                <form:errors path="password" cssClass="text-danger" />
            </form:label>
            <form:password path="password" />
        </div>
        <input type="submit" value="Login!" />
    </form:form>
</div>

		








</body>