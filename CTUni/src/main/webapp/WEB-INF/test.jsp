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

<title>Realiz&aacute tu Test Vocacional</title>

<link rel="stylesheet" href="/webjars/bootstrap/5.2.3/css/bootstrap.min.css">

<link rel="stylesheet" href="./css/bootstrap.min.css">

<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>

<link rel="stylesheet" href="/css/test.css">


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
			<h1 class="p-2 text-center  background-color-red">Test Vocacional</h1>
    <form method="post" action="/test">
                <div class="form-group">
            <label for="question1">Pregunta 1: &iquestQue tipo de actividades prefieres realizar en tu tiempo libre?</label>
            <select class="form-control" id="question1" name="answers[0]">
                <option value="A">A. Leer un libro.</option>
                <option value="B">B. Practicar deportes.</option>
                <option value="C">C. Hacer manualidades.</option>
                <option value="D">D. Programar o resolver problemas tecnicos.</option>
                <option value="E">E. Ver peliculas o series.</option>
                <option value="F">F. Socializar con amigos.</option>
            </select>
        </div>
        <br>
        <div>
            <label for="question2">Pregunta 2: &iquestQue tipo de temas te interesan mas?</label>
			    <select class="form-control" id="question2" name="answers[1]">
                <option value="A">A. Ciencias y tecnolog&iacutea.</option>
                <option value="B">B. Deportes y actividades f&iacutesicas.</option>
                <option value="C">C. Arte y creatividad.</option>
                <option value="D">D. Programaci&oacuten y tecnolog&iacutea.</option>
                <option value="E">E. Cine y entretenimiento.</option>
                <option value="F">F. Relaciones sociales y comunicaci&oacuten.</option>
            </select>
        </div>
        <br>
        <div>
            <label for="question3">Pregunta 3: &iquestQue ambiente laboral prefieres?</label>
            <select class="form-control" id="question3" name="answers[2]">
                <option value="A">A. Un laboratorio cientifico.</option>
                <option value="B">B. Un gimnasio o campo deportivo.</option>
                <option value="C">C. Un estudio de arte.</option>
                <option value="D">D. Una oficina con computadoras.</option>
                <option value="E">E. Un cine o estudio de grabacion.</option>
                <option value="F">F. Un entorno social y colaborativo.</option>
            </select>
        </div>
        <br>
        <div>
            <label for="question4">Pregunta 4: &iquestCual de las siguientes actividades te atrae mas?</label>
            <select class="form-control" id="question4" name="answers[3]">
                <option value="A">A. Investigar y descubrir cosas nuevas.</option>
                <option value="B">B. Practicar deportes y estar activo.</option>
                <option value="C">C. Crear arte y expresarte creativamente.</option>
                <option value="D">D. Trabajar con computadoras y tecnolog&iacutea.</option>
                <option value="E">E. Disfrutar de pel&iacuteculas y entretenimiento.</option>
                <option value="F">F. Pasar tiempo con amigos y socializar.</option>
            </select>
        </div>
        <br>
        <div>
            <label for="question5">Pregunta 5: &iquestQue tipo de libros o revistas sueles leer?</label>
            <select class="form-control" id="question5" name="answers[4]">
                <option value="A">A. Libros cient&iacuteficos y t&eacutecnicos.</option>
                <option value="B">B. Revistas deportivas y de salud.</option>
                <option value="C">C. Revistas de arte y dise&ntildeo.</option>
                <option value="D">D. Revistas de tecnolog&iacutesa y programaci&oacuten.</option>
                <option value="E">E. Novelas y libros de ficci&oacutesn.</option>
                <option value="F">F. Revistas de entretenimiento y sociales.</option>
            </select>
        </div>
        <br>
        <div>
             <label for="question6">Pregunta 6: &iquestC&uacuteal de estas palabras te describe mejor?</label>
            <select class="form-control" id="question6" name="answers[5]">
                <option value="A">A. Curioso(a).</option>
                <option value="B">B. Activo(a).</option>
                <option value="C">C. Creativo(a).</option>
                <option value="D">D. L&oacutegico(a).</option>
                <option value="E">E. Imaginativo(a).</option>
                <option value="F">F. Sociable.</option>
            </select>
        </div>
        <br>
        <div>
           <label for="question7">Pregunta 7: &iquestCu&aacutel de las siguientes actividades disfrutas mas en tu tiempo libre?</label>
            <select class="form-control" id="question7" name="answers[6]">
                 <option value="A">A. Leer libros cient&iacuteficos.</option>
                <option value="B">B. Practicar deportes o ejercicios f&iacutesicos.</option>
                <option value="C">C. Dibujar o pintar.</option>
                <option value="D">D. Programar o resolver problemas t&eacutecnicos.</option>
                <option value="E">E. Ver pel&iacuteculas o series.</option>
                <option value="F">F. Salir con amigos o conocer gente nueva.</option>
            </select>
        </div>
        <br>
        <div>
             <label for="question8">Pregunta 8: &iquestQue te gustar&iacutea aprender o mejorar en el futuro?</label>
            <select class="form-control" id="question8" name="answers[7]">
                <option value="A">A. Conocimientos cient&iacuteficos.</option>
                <option value="B">B. Habilidades deportivas.</option>
                <option value="C">C. Habilidades artisticas.</option>
                <option value="D">D. Habilidades tecnol&oacutegicas.</option>
                <option value="E">E. Conocimiento del cine y entretenimiento.</option>
                <option value="F">F. Habilidades sociales y comunicaci&oacuten.</option>
            </select>
        </div>
        <br>
        
                <div>
            <label for="question9">Pregunta 9: &iquestEn que tipo de proyecto te gustar&iacutea trabajar?</label>
            <select class="form-control" id="question9" name="answers[8]">
                <option value="A">A. Proyecto de investigaci&oacuten cient&iacutefica.</option>
                <option value="B">B. Equipo deportivo o actividad f&iacutesica.</option>
                <option value="C">C. Proyecto art&iacutestico o creativo.</option>
                <option value="D">D. Desarrollo de software o tecnologia.</option>
                <option value="E">E. Producci&oacutesn de pel&iacuteculas o contenido multimedia.</option>
                <option value="F">F. Proyecto comunitario o social.</option>
            </select>
        </div>
        <br>
        
        <div>
              <label for="question10">Pregunta 10: &iquestCu&aacutesl de las siguientes actividades disfrutas m&aacutes en grupo?</label>
            <select class="form-control" id="question9" name="answers[9]">
                <option value="A">A. Participar en un proyecto de investigaci&oacuten.</option>
                <option value="B">B. Jugar en un equipo deportivo.</option>
                <option value="C">C. Colaborar en un proyecto art&iacutestico.</option>
                <option value="D">D. Trabajar en un proyecto de programaci&oacuten.</option>
                <option value="E">E. Organizar un evento de cine o entretenimiento.</option>
                <option value="F">F. Participar en actividades sociales o voluntariado.</option>
            </select>
        </div>
        <br>
        <div>
   
           <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.2/dist/js/bootstrap.bundle.min.js"></script>
        <br>
        <button type="submit" class="btn btn-success">Finalizar</button>
    </form>
    </div>
    <br>
</body>
</html>