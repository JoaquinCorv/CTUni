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


    <form method="post" action="/test">
                <div class="form-group">
            <label>Pregunta 1: &iquestTe gusta trabajar en equipo o prefieres trabajar solo?</label>
            <select class="form-control" id="question1" name="answers[0]">
            <option value="">Selecciona una opci&oacuten</option>
                 <option value="A">A. Siempre en equipo.</option>
                <option value="B">B. Generalmente en equipo.</option>
                <option value="C">C. Depende de la situaci&oacuten.</option>
                <option value="D">D. Generalmente solo.</option>
                <option value="E">E. Siempre solo.</option>
                <option value="F">F. No estoy seguro.</option>
            </select>
        </div>
        <br>
        <div>
            <label>Pregunta 2: &iquestTe consideras una persona creativa?</label>
			    <select class="form-control" id="question2" name="answers[1]">
			    <option value="">Selecciona una opci&oacuten</option>
                <option value="A">A. Siempre.</option>
                <option value="B">B. Generalmente.</option>
                <option value="C">C. A veces.</option>
                <option value="D">D. Raramente.</option>
                <option value="E">E. Nunca.</option>
                <option value="F">F. No estoy seguro.</option>
            </select>
        </div>
        <br>
        <div>
            <label>Pregunta 3: &iquestDisfrutas resolviendo problemas matem&aacuteticos?</label>
            <select class="form-control" id="question3" name="answers[2]">
             <option value="">Selecciona una opci&oacuten</option>
                <option value="A">A. Siempre.</option>
                <option value="B">B. Generalmente.</option>
                <option value="C">C. A veces.</option>
                <option value="D">D. Raramente.</option>
                <option value="E">E. Nunca.</option>
                <option value="F">F. No estoy seguro.</option>
            </select>
        </div>
        <br>
        <div>
            <label>Pregunta 4: &iquestTe gusta ayudar a los dem&aacutes?</label>
            <select class="form-control" id="question4" name="answers[3]">
            <option value="">Selecciona una opci&oacuten</option>
                <option value="A">A. S&iacute, siempre busco formas de ayudar a los dem&aacutes.</option>
                <option value="B">B. A veces, depende de la situaci&oacuten.</option>
                <option value="C">C. No estoy seguro, nunca lo he pensado.</option>
                <option value="D">D. Prefiero concentrarme en mis propias necesidades.</option>
                <option value="E">E. No, prefiero trabajar solo.</option>
                <option value="F">F. No, no me sientoc&oacutemodo en esa posici&oacuten.</option>
            </select>
        </div>
        <br>
        <div>
            <label>Pregunta 5: &iquestDisfrutas leyendo y escribiendo?</label>
            <select class="form-control" id="question5" name="answers[4]">
            <option value="">Selecciona una opci&oacuten</option>
                <option value="A">A. S&iacute, me encanta leer y escribir.</option>
                <option value="B">B. Me gusta leer, pero no escribir.</option>
                <option value="C">C. Me gusta escribir, pero no leer.</option>
                <option value="D">D. Solo si es necesario para el trabajo o la escuela.</option>
                <option value="E">E. No estoy seguro, nunca lo he considerado.</option>
                <option value="F">F. No, no disfruto ni leyendo ni escribiendo.</option>
            </select>
        </div>
        <br>
        <div>
            <label>Problema 6: &iquestTe interesa c&oacutemo funciona el cuerpo humano?</label>
            <select class="form-control" id="question6" name="answers[5]">
            <option value="">Selecciona una opci&oacuten</option>
                <option value="A">A. S&iacute, me fascina la complejidad del cuerpo humano.</option>
                <option value="B">B. Un poco, pero no es mi principal inter&eacutes.</option>
                <option value="C">C. No estoy seguro, nunca lo he considerado.</option>
                <option value="D">D. No particularmente, pero respeto a quienes s&iacute.</option>
                <option value="E">E. No, prefiero centrarme en otros aspectos de la ciencia.</option>
                <option value="F">F. No, no me interesa en absoluto.</option>
            </select>
        </div>
        <br>
        <div>
            <label>Pregunta 7: &iquestTe gustar&iacutea trabajar en un laboratorio o realizar experimentos?</label>
            <select class="form-control" id="question7" name="answers[6]">
            <option value="">Selecciona una opci&oacuten</option>
                <option value="A">A. S&iacute, me encanta la idea de hacer descubrimientos en un laboratorio.</option>
                <option value="B">B. Tal vez, si los experimentos est&aacuten relacionados con mis intereses.</option>
                <option value="C">C. No estoy seguro, depende del tipo de laboratorio y experimentos.</option>
                <option value="D">D. No, prefiero trabajar en un entorno mas pr&aacutectico.</option>
                <option value="E">E. No, los laboratorios no son lo m&iacuteo.</option>
                <option value="F">F. No, no me gusta la idea de realizar experimentos.</option>
            </select>
        </div>
        <br>
        <div>
            <label>Pregunta 8: &iquestDisfrutas construyendo o dise&ntildeando cosas?</label>
            <select class="form-control" id="question8" name="answers[7]">
            <option value="">Selecciona una opci&oacuten</option>
                <option value="A">A. S&iacute, me encanta crear y dise&ntildear cosas nuevas.</option>
                <option value="B">B. A veces, depende de lo que est&eacute construyendo o dise&ntildeando.</option>
                <option value="C">C. No estoy seguro, nunca lo he intentado.</option>
                <option value="D">D. No particularmente, pero puedo hacerlo si es necesario.</option>
                <option value="E">E. No, prefiero las tareas que implican an&aacutelisis en lugar de creaci&oacuten.</option>
                <option value="F">F. No, no disfruto construyendo ni dise&ntildeando cosas.</option>
            </select>
        </div>
        <br>
        <div>
            <label>Pregunta 9: &iquestTe gustar&iacutea trabajar al aire libre?</label>
            <select class="form-control" id="question9" name="answers[8]">
            <option value="">Selecciona una opci&oacuten</option>
                <option value="A">A. S&iacute, me encanta estar en contacto con la naturaleza.</option>
                <option value="B">B. A veces, depende del clima y la tarea.</option>
                <option value="C">C. No estoy seguro, nunca he trabajado al aire libre.</option>
                <option value="D">D. No particularmente, pero no me molestar&iacutea.</option>
                <option value="E">E. No, prefiero trabajar en interiores.</option>
                <option value="F">F. No, no me gusta trabajar al aire libre.</option>
            </select>
        </div>
        <br>
        <div>
            <label>Pregunta 10: &iquestTe interesa la tecnolog&iacutea y los &uacuteltimos avances en este campo?</label>
            <select class="form-control" id="question10" name="answers[9]">
            <option value="">Selecciona una opci&oacuten</option>
                <option value="A">A. S&iacute, siempre estoy al tanto de las &uacuteltimas tendencias tecnol&oacutegicas.</option>
                <option value="B">B. Un poco, pero no es mi principal inter&eacutes.</option>
                <option value="C">C. No estoy seguro, nunca lo he considerado.</option>
                <option value="D">D. No particularmente, pero uso la tecnolog&oacutea cuando es necesario.</option>
                <option value="E">E. No, prefiero centrarme en carreras no tecnol&oacutegicas.</option>
                <option value="F">F. No, no me interesa la tecnolog&iacutea.</option>
            </select>
        </div>
        <br>
        <div>
            <label>Pregunta 11: &iquestDisfrutas aprendiendo sobre diferentes culturas e historias?</label>
            <select class="form-control"  id="question11" name="answers[10]">
            option value="">Selecciona una opci&oacuten</option>
                <option value="A">A. S&iacute, me encanta aprender sobre diferentes culturas e historias.</option>
                <option value="B">B. A veces, depende de la cultura o historia.</option>
                <option value="C">C. No estoy seguro, nunca lo he considerado.</option>
                <option value="D">D. No particularmente, pero no me molesta.</option>
                <option value="E">E. No, prefiero aprender sobre otros temas.</option>
                <option value="F">F. No, no me interesa aprender sobre diferentes culturas e historias.</option>
            </select>
        </div>
        <br>
        <div>
            <label>Pregunta 12: &iquestTe gustaria trabajar en el campo de la m&uacutesica o el arte?</label>
            <select class="form-control" id="question12" name="answers[11]">
            option value="">Selecciona una opci&oacuten</option>
                <option value="A">A. S&iacute, me encantar&iacutea trabajar en m&uacutesica o arte.</option>
                <option value="B">B. Tal vez, si pudiera combinarlo con otros intereses.</option>
                <option value="C">C. No estoy seguro, nunca he trabajado en ese campo.</option>
                <option value="D">D. No particularmente, pero aprecio la m&uacutesica y el arte.</option>
                <option value="E">E. No, prefiero trabajar en un campo m&aacutes pr&aacutectico.</option>
                <option value="F">F. No, no me interesa la m&uacutesica ni el arte.</option>
            </select>
        </div>
        <br>
        <div>
            <label>Pregunta 13: &iquestTe interesa la econom&iacutea y los negocios?</label>
            <select class="form-control" id="question13" name="answers[12]">
            option value="">Selecciona una opci&oacuten</option>
                <option value="A">A. S&iacute, siempre estoy interesado en la econom&iacutea y los negocios.</option>
                <option value="B">B. Un poco, pero no es mi principal inter&iacutes.</option>
                <option value="C">C. No estoy seguro, nunca lo he considerado.</option>
                <option value="D">D. No particularmente, pero entiendo su importancia.</option>
                <option value="E">E. No, prefiero centrarme en &aacutereas no comerciales.</option>
                <option value="F">F. No, no me interesa la econom&iacutea ni los negocios.</option>
            </select>
        </div>
        <br>
        <div>
            <label>Pregunta 14: &iquestTe gustar&iacutea ense&ntildear o compartir tus conocimientos con los dem&aacutes?</label>
            <select class="form-control" id="question14" name="answers[13]">
            option value="">Selecciona una opci&oacuten</option>
                <option value="A">A. S&iacute, me encanta ense&ntildear y compartir lo que s&eacute.</option>
                <option value="B">B. A veces, depende del tema y la audiencia.</option>
                <option value="C">C. No estoy seguro, nunca he tenido la oportunidad.</option>
                <option value="D">D. No particularmente, pero no me molesta.</option>
                <option value="E">E. No, prefiero aprender en lugar de ense&ntildear.</option>
                <option value="F">F. No, no me siento c&iacutemodo ense&ntildeando o compartiendo mis conocimientos.</option>
            </select>
        </div>
        <br>
        <div>
            <label>Pregunta 15: &iquestDisfrutas trabajando con n&uacutemeros y datos?</label>
            <select class="form-control" id="question15" name="answers[14]">
            option value="">Selecciona una opci&oacuten</option>
                <option value="A">A. S&iacute, me encanta analizar n&uacutemeros y datos.</option>
                <option value="B">B. A veces, depende de la naturaleza de los datos.</option>
                <option value="C">C. No estoy seguro, nunca he trabajado mucho con n&uacutemeros o datos.</option>
                <option value="D">D. No particularmente, pero puedo hacerlo si es necesario.</option>
                <option value="E">E. No, prefiero trabajar con ideas en lugar de datos.</option>
                <option value="F">F. No, no disfruto trabajando con n&uacutemeros ni datos.</option>
            </select>
        </div>
        <br>
        <div>
            <label>Pregunta 16: &iquestTe gustar&iacutea trabajar en el campo de la ley y el orden?</label>
            <select class="form-control" id="question16" name="answers[15]">
            option value="">Selecciona una opci&oacuten</option>
                <option value="A">A. S&iacute, me gustar&iacutea trabajar en el campo de la ley y el orden.</option>
                <option value="B">B. Tal vez, si pudiera hacer una diferencia positiva.</option>
                <option value="C">C. No estoy seguro, nunca lo he considerado.</option>
                <option value="D">D. No particularmente, pero respeto a quienes lo hacen.</option>
                <option value="E">E. No, prefiero trabajar en un campo menos estructurado.</option>
                <option value="F">F. No, no me interesa la ley ni el orden.</option>
            </select>
        </div>
        <br>
        <div>
            <label>Pregunta 17: &iquestDisfrutas de los debates y discusiones sobre temas actuales?</label>
            <select class="form-control" id="question17" name="answers[16]">
            option value="">Selecciona una opci&oacuten</option>
                <option value="A">A. S&iacute, siempre estoy listo para un buen debate.</option>
                <option value="B">B. A veces, depende del tema y las personas involucradas.</option>
                <option value="C">C. No estoy seguro, nunca he participado en un debate formal.</option>
                <option value="D">D. No particularmente, pero puedo hacerlo si es necesario.</option>
                <option value="E">E. No, prefiero evitar los debates y discusiones.</option>
                <option value="F">F. No, no disfruto debatiendo ni discutiendo temas actuales.</option>
            </select>
        </div>
        <br>
        <div>
            <label>Pregunta 18: &iquestTe gustar&iacutea trabajar en el campo de la psicolog&iacutea o el asesoramiento?</label>
            <select class="form-control" id="question18" name="answers[17]">
            option value="">Selecciona una opci&oacuten</option>
                <option value="A">A. S&iacute, me encantar&iacutea ayudar a las personas a trav&eacutes de la psicolog&iacutea o el asesoramiento.</option>
                <option value="B">B. Tal vez, si pudiera combinarlo con otros intereses.</option>
                <option value="C">C. No estoy seguro, nunca he trabajado en ese campo.</option>
                <option value="D">D. No particularmente, pero respeto a quienes lo hacen.</option>
                <option value="E">E. No, prefiero trabajar en un campo m&aacutes pr&aacutectico.</option>
                <option value="F">F. No, no me interesa la psicolog&iacutea ni el asesoramiento.</option>
            </select>
        </div>
        <br>
        <div>
            <label>Pregunta 19: &iquestTe interesa aprender sobre el medio ambiente y c&oacutemo protegerlo?</label>
            <select class="form-control" id="question19" name="answers[18]">
            option value="">Selecciona una opci&oacuten</option>
                <option value="A">A. S&iacute, me preocupa mucho el medio ambiente y siempre busco formas de protegerlo.</option>
                <option value="B">B. A veces, depende del tema espec&iacutefico.</option>
                <option value="C">C. No estoy seguro, nunca lo he considerado.</option>
                <option value="D">D. No particularmente, pero entiendo su importancia.</option>
                <option value="E">E. No, prefiero centrarme en &aacutereas no ambientales.</option>
                <option value="F">F. No, no me interesa aprender sobre el medio ambiente ni c&oacutemo protegerlo.</option>
            </select>
        </div>
        <br>
        <div>
            <label>Pregunta 20: &iquestDisfrutas de las actividades f&iacutesicas y te gustar&iacutea trabajar en el campo del deporte?</label>
            <select class="form-control" id="question20" name="answers[19]">
            option value="">Selecciona una opci&oacuten</option>
                <option value="A">A. S&iacute, me encanta estar activo y me gustar&iacutea trabajar en deportes.</option>
                <option value="B">B. A veces, depende del deporte o la actividad f&iacutesica.</option>
                <option value="C">C. No estoy seguro, nunca he trabajado en ese campo.</option>
                <option value="D">D. No particularmente, pero disfruto viendo deportes.</option>
                <option value="E">E. No, prefiero trabajar en un campo menos f&iacutesico.</option>
                <option value="F">F. No, no disfruto de las actividades f&iacutesicas ni me gustar&iacutea trabajar en deportes.</option>
            </select>
        </div>
           <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.2/dist/js/bootstrap.bundle.min.js"></script>
        <br>
        <button type="submit" class="btn btn-success">Finalizar</button>
    </form>
    </div>
    <br>
</body>
</html>