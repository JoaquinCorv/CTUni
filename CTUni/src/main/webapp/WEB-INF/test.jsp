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

<title>Realiz� tu Test Vocacional</title>

<link rel="stylesheet" href="/webjars/bootstrap/5.2.3/css/bootstrap.min.css">

<link rel="stylesheet" href="./css/bootstrap.min.css">

<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>

<link rel="stylesheet" href="/css/main.css">

<script type="text/javascript" src="/js/app.js"></script>

<link rel="icon" href="imagenes/gorra-de-posgrado.png">

</head>

<body>
<div class="ps-3">
    <h1 class="pt-2">Test Vocacional</h1>
    <form method="post" action="/test">
        <div>
            <label for="question1">1. �Te gusta trabajar en equipo o prefieres trabajar solo?</label>
            <select id="question1" name="answers[0]">
                <option value="A">A. Siempre en equipo.</option>
                <option value="B">B. Generalmente en equipo.</option>
                <option value="C">C. Depende de la situaci�n.</option>
                <option value="D">D. Generalmente solo.</option>
                <option value="E">E. Siempre solo.</option>
                <option value="F">F. No estoy seguro.</option>
            </select>
        </div>
        <br>
        <div>
            <label for="question2">2. �Te consideras una persona creativa?</label>
            <select id="question2" name="answers[1]">
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
            <label for="question3">3. �Disfrutas resolviendo problemas matem�ticos?</label>
            <select id="question3" name="answers[2]">
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
            <label for="question4">4. �Te gusta ayudar a los dem�s?</label>
            <select id="question4" name="answers[3]">
                <option value="A">A. S�, siempre busco formas de ayudar a los dem�s.</option>
                <option value="B">B. A veces, depende de la situaci�n.</option>
                <option value="C">C. No estoy seguro, nunca lo he pensado.</option>
                <option value="D">D. Prefiero concentrarme en mis propias necesidades.</option>
                <option value="E">E. No, prefiero trabajar solo.</option>
                <option value="F">F. No, no me siento c�modo en esa posici�n.</option>
            </select>
        </div>
        <br>
        <div>
            <label for="question5">5. �Disfrutas leyendo y escribiendo?</label>
            <select id="question5" name="answers[4]">
                <option value="A">A. S�, me encanta leer y escribir.</option>
                <option value="B">B. Me gusta leer, pero no escribir.</option>
                <option value="C">C. Me gusta escribir, pero no leer.</option>
                <option value="D">D. Solo si es necesario para el trabajo o la escuela.</option>
                <option value="E">E. No estoy seguro, nunca lo he considerado.</option>
                <option value="F">F. No, no disfruto ni leyendo ni escribiendo.</option>
            </select>
        </div>
        <br>
        <div>
            <label for="question6">6. �Te interesa c�mo funciona el cuerpo humano?</label>
            <select id="question6" name="answers[5]">
                <option value="A">A. S�, me fascina la complejidad del cuerpo humano.</option>
                <option value="B">B. Un poco, pero no es mi principal inter�s.</option>
                <option value="C">C. No estoy seguro, nunca lo he considerado.</option>
                <option value="D">D. No particularmente, pero respeto a quienes s�.</option>
                <option value="E">E. No, prefiero centrarme en otros aspectos de la ciencia.</option>
                <option value="F">F. No, no me interesa en absoluto.</option>
            </select>
        </div>
        <br>
        <div>
            <label for="question7">7. �Te gustar�a trabajar en un laboratorio o realizar experimentos?</label>
            <select id="question7" name="answers[6]">
                <option value="A">A. S�, me encanta la idea de hacer descubrimientos en un laboratorio.</option>
                <option value="B">B. Tal vez, si los experimentos est�n relacionados con mis intereses.</option>
                <option value="C">C. No estoy seguro, depende del tipo de laboratorio y experimentos.</option>
                <option value="D">D. No, prefiero trabajar en un entorno m�s pr�ctico.</option>
                <option value="E">E. No, los laboratorios no son lo m�o.</option>
                <option value="F">F. No, no me gusta la idea de realizar experimentos.</option>
            </select>
        </div>
        <br>
        <div>
            <label for="question8">8. �Disfrutas construyendo o dise�ando cosas?</label>
            <select id="question8" name="answers[7]">
                <option value="A">A. S�, me encanta crear y dise�ar cosas nuevas.</option>
                <option value="B">B. A veces, depende de lo que est� construyendo o dise�ando.</option>
                <option value="C">C. No estoy seguro, nunca lo he intentado.</option>
                <option value="D">D. No particularmente, pero puedo hacerlo si es necesario.</option>
                <option value="E">E. No, prefiero las tareas que implican an�lisis en lugar de creaci�n.</option>
                <option value="F">F. No, no disfruto construyendo ni dise�ando cosas.</option>
            </select>
        </div>
        <br>
        <div>
            <label for="question9">9. �Te gustar�a trabajar al aire libre?</label>
            <select id="question9" name="answers[8]">
                <option value="A">A. S�, me encanta estar en contacto con la naturaleza.</option>
                <option value="B">B. A veces, depende del clima y la tarea.</option>
                <option value="C">C. No estoy seguro, nunca he trabajado al aire libre.</option>
                <option value="D">D. No particularmente, pero no me molestar�a.</option>
                <option value="E">E. No, prefiero trabajar en interiores.</option>
                <option value="F">F. No, no me gusta trabajar al aire libre.</option>
            </select>
        </div>
        <br>
        <div>
            <label for="question10">10. �Te interesa la tecnolog�a y los �ltimos avances en este campo?</label>
            <select id="question10" name="answers[9]">
                <option value="A">A. S�, siempre estoy al tanto de las �ltimas tendencias tecnol�gicas.</option>
                <option value="B">B. Un poco, pero no es mi principal inter�s.</option>
                <option value="C">C. No estoy seguro, nunca lo he considerado.</option>
                <option value="D">D. No particularmente, pero uso la tecnolog�a cuando es necesario.</option>
                <option value="E">E. No, prefiero centrarme en �reas no tecnol�gicas.</option>
                <option value="F">F. No, no me interesa la tecnolog�a.</option>
            </select>
        </div>
        <br>
        <div>
            <label for="question11">11. �Disfrutas aprendiendo sobre diferentes culturas e historias?</label>
            <select id="question11" name="answers[10]">
                <option value="A">A. S�, me encanta aprender sobre diferentes culturas e historias.</option>
                <option value="B">B. A veces, depende de la cultura o historia.</option>
                <option value="C">C. No estoy seguro, nunca lo he considerado.</option>
                <option value="D">D. No particularmente, pero no me molesta.</option>
                <option value="E">E. No, prefiero aprender sobre otros temas.</option>
                <option value="F">F. No, no me interesa aprender sobre diferentes culturas e historias.</option>
            </select>
        </div>
        <br>
        <div>
            <label for="question12">12. �Te gustar�a trabajar en el campo de la m�sica o el arte?</label>
            <select id="question12" name="answers[11]">
                <option value="A">A. S�, me encantar�a trabajar en m�sica o arte.</option>
                <option value="B">B. Tal vez, si pudiera combinarlo con otros intereses.</option>
                <option value="C">C. No estoy seguro, nunca he trabajado en ese campo.</option>
                <option value="D">D. No particularmente, pero aprecio la m�sica y el arte.</option>
                <option value="E">E. No, prefiero trabajar en un campo m�s pr�ctico.</option>
                <option value="F">F. No, no me interesa la m�sica ni el arte.</option>
            </select>
        </div>
        <br>
        <div>
            <label for="question13">13. �Te interesa la econom�a y los negocios?</label>
            <select id="question13" name="answers[12]">
                <option value="A">A. S�, siempre estoy interesado en la econom�a y los negocios.</option>
                <option value="B">B. Un poco, pero no es mi principal inter�s.</option>
                <option value="C">C. No estoy seguro, nunca lo he considerado.</option>
                <option value="D">D. No particularmente, pero entiendo su importancia.</option>
                <option value="E">E. No, prefiero centrarme en �reas no comerciales.</option>
                <option value="F">F. No, no me interesa la econom�a ni los negocios.</option>
            </select>
        </div>
        <br>
        <div>
            <label for="question14">14. �Te gustar�a ense�ar o compartir tus conocimientos con los dem�s?</label>
            <select id="question14" name="answers[13]">
                <option value="A">A. S�, me encanta ense�ar y compartir lo que s�.</option>
                <option value="B">B. A veces, depende del tema y la audiencia.</option>
                <option value="C">C. No estoy seguro, nunca he tenido la oportunidad.</option>
                <option value="D">D. No particularmente, pero no me molesta.</option>
                <option value="E">E. No, prefiero aprender en lugar de ense�ar.</option>
                <option value="F">F. No, no me siento c�modo ense�ando o compartiendo mis conocimientos.</option>
            </select>
        </div>
        <br>
        <div>
            <label for="question15">15. �Disfrutas trabajando con n�meros y datos?</label>
            <select id="question15" name="answers[14]">
                <option value="A">A. S�, me encanta analizar n�meros y datos.</option>
                <option value="B">B. A veces, depende de la naturaleza de los datos.</option>
                <option value="C">C. No estoy seguro, nunca he trabajado mucho con n�meros o datos.</option>
                <option value="D">D. No particularmente, pero puedo hacerlo si es necesario.</option>
                <option value="E">E. No, prefiero trabajar con ideas en lugar de datos.</option>
                <option value="F">F. No, no disfruto trabajando con n�meros ni datos.</option>
            </select>
        </div>
        <br>
        <div>
            <label for="question16">16. �Te gustar�a trabajar en el campo de la ley y el orden?</label>
            <select id="question16" name="answers[15]">
                <option value="A">A. S�, me gustar�a trabajar en el campo de la ley y el orden.</option>
                <option value="B">B. Tal vez, si pudiera hacer una diferencia positiva.</option>
                <option value="C">C. No estoy seguro, nunca lo he considerado.</option>
                <option value="D">D. No particularmente, pero respeto a quienes lo hacen.</option>
                <option value="E">E. No, prefiero trabajar en un campo menos estructurado.</option>
                <option value="F">F. No, no me interesa la ley ni el orden.</option>
            </select>
        </div>
        <br>
        <div>
            <label for="question17">17. �Disfrutas de los debates y discusiones sobre temas actuales?</label>
            <select id="question17" name="answers[16]">
                <option value="A">A. S�, siempre estoy listo para un buen debate.</option>
                <option value="B">B. A veces, depende del tema y las personas involucradas.</option>
                <option value="C">C. No estoy seguro, nunca he participado en un debate formal.</option>
                <option value="D">D. No particularmente, pero puedo hacerlo si es necesario.</option>
                <option value="E">E. No, prefiero evitar los debates y discusiones.</option>
                <option value="F">F. No, no disfruto debatiendo ni discutiendo temas actuales.</option>
            </select>
        </div>
        <br>
        <div>
            <label for="question18">18. �Te gustar�a trabajar en el campo de la psicolog�a o el asesoramiento?</label>
            <select id="question18" name="answers[17]">
                <option value="A">A. S�, me encantar�a ayudar a las personas a trav�s de la psicolog�a o el asesoramiento.</option>
                <option value="B">B. Tal vez, si pudiera combinarlo con otros intereses.</option>
                <option value="C">C. No estoy seguro, nunca he trabajado en ese campo.</option>
                <option value="D">D. No particularmente, pero respeto a quienes lo hacen.</option>
                <option value="E">E. No, prefiero trabajar en un campo m�s pr�ctico.</option>
                <option value="F">F. No, no me interesa la psicolog�a ni el asesoramiento.</option>
            </select>
        </div>
        <br>
        <div>
            <label for="question19">19. �Te interesa aprender sobre el medio ambiente y c�mo protegerlo?</label>
            <select id="question19" name="answers[18]">
                <option value="A">A. S�, me preocupa mucho el medio ambiente y siempre busco formas de protegerlo.</option>
                <option value="B">B. A veces, depende del tema espec�fico.</option>
                <option value="C">C. No estoy seguro, nunca lo he considerado.</option>
                <option value="D">D. No particularmente, pero entiendo su importancia.</option>
                <option value="E">E. No, prefiero centrarme en �reas no ambientales.</option>
                <option value="F">F. No, no me interesa aprender sobre el medio ambiente ni c�mo protegerlo.</option>
            </select>
        </div>
        <br>
        <div>
            <label for="question20">20. �Disfrutas de las actividades f�sicas y te gustar�a trabajar en el campo del deporte?</label>
            <select id="question20" name="answers[19]">
                <option value="A">A. S�, me encanta estar activo y me gustar�a trabajar en deportes.</option>
                <option value="B">B. A veces, depende del deporte o la actividad f�sica.</option>
                <option value="C">C. No estoy seguro, nunca he trabajado en ese campo.</option>
                <option value="D">D. No particularmente, pero disfruto viendo deportes.</option>
                <option value="E">E. No, prefiero trabajar en un campo menos f�sico.</option>
                <option value="F">F. No, no disfruto de las actividades f�sicas ni me gustar�a trabajar en deportes.</option>
            </select>
        </div>
        <br>
        <button type="submit" class="btn btn-success">Finalizar</button>
    </form>
    </div>
    <br>
</body>
</html>