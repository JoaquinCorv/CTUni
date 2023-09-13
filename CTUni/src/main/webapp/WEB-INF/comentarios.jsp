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

<title>Crea tu libro</title>

<link rel="stylesheet" href="/webjars/bootstrap/5.2.3/css/bootstrap.min.css">

<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>

<link rel="stylesheet" href="/css/main.css">

<script type="text/javascript" src="/js/app.js"></script>

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
    <form:form method="POST" action="/comentario/${universidad.id}"
               modelAttribute="newcomment"> 
			<form:input type="hidden" path="autor" value="${userId}" />
				<div>
					<form:label path="comentario">Leave a comment:</form:label>
					<div class="col-sm-10">
						<form:textarea type="text" path="comentario" class="form-control" />
					</div>
					<form:errors class="text-danger form-control" path="comentario" />
				</div>
        <div class="form-group row mb-3">
            <form:label path="rating" class="col-sm-2 col-form-label">Rating</form:label>
            <div class="col-sm-10">
                <form:select path="rating" class="form-select">
                    <form:option value="0">Select</form:option>
                    <form:option value="1">1</form:option>
                    <form:option value="2">2</form:option>
                    <form:option value="3">3</form:option>
                    <form:option value="4">4</form:option>
                    <form:option value="5">5</form:option>
                </form:select>
            </div>
        </div>
<input type="submit" value="Submit Review" />
</form:form>




</body>