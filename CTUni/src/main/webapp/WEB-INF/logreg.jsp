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
<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="./css/bootstrap.min.css">
<link rel="stylesheet" href="css/logreg.css">

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

<div class="grupo">
    <h2>Registrate</h2>
    <form:form class="border p-3 pt-0 pb-0" method="POST" action="/registration" modelAttribute="user">
        <div class="form-group row mb-1">
            <form:label path="nombre">Name:
                <form:errors path="nombre" cssClass="text-danger" />
            </form:label>
            <form:input type="text" path="nombre" />
        </div>
        <div class="form-group row mb-1">
            <form:label path="email">Email:
                <form:errors path="email" cssClass="text-danger" />
            </form:label>
            <form:input type="email" path="email" />
        </div>
        <div class="form-group row mb-1">
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
    <h2>Inicia sesion</h2>
    <form:form class="border p-3 pt-0 pb-0" method="POST" action="/login" modelAttribute="login">
        <div class="form-group row mb-1">
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

		







<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>

</body>
</html>