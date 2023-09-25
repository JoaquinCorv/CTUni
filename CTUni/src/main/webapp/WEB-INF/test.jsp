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

<title>Realizá tu Test Vocacional</title>

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
            <label for="question1">1. ¿Te gusta trabajar en equipo o prefieres trabajar solo?</label>
            <select id="question1" name="answers[0]">
                <option value="A">A. Siempre en equipo.</option>
                <option value="B">B. Generalmente en equipo.</option>
                <option value="C">C. Depende de la situación.</option>
                <option value="D">D. Generalmente solo.</option>
                <option value="E">E. Siempre solo.</option>
                <option value="F">F. No estoy seguro.</option>
            </select>
        </div>
        <br>
        <div>
            <label for="question2">2. ¿Te consideras una persona creativa?</label>
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
            <label for="question3">3. ¿Disfrutas resolviendo problemas matemáticos?</label>
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
            <label for="question4">4. ¿Te gusta ayudar a los demás?</label>
            <select id="question4" name="answers[3]">
                <option value="A">A. Sí, siempre busco formas de ayudar a los demás.</option>
                <option value="B">B. A veces, depende de la situación.</option>
                <option value="C">C. No estoy seguro, nunca lo he pensado.</option>
                <option value="D">D. Prefiero concentrarme en mis propias necesidades.</option>
                <option value="E">E. No, prefiero trabajar solo.</option>
                <option value="F">F. No, no me siento cómodo en esa posición.</option>
            </select>
        </div>
        <br>
        <div>
            <label for="question5">5. ¿Disfrutas leyendo y escribiendo?</label>
            <select id="question5" name="answers[4]">
                <option value="A">A. Sí, me encanta leer y escribir.</option>
                <option value="B">B. Me gusta leer, pero no escribir.</option>
                <option value="C">C. Me gusta escribir, pero no leer.</option>
                <option value="D">D. Solo si es necesario para el trabajo o la escuela.</option>
                <option value="E">E. No estoy seguro, nunca lo he considerado.</option>
                <option value="F">F. No, no disfruto ni leyendo ni escribiendo.</option>
            </select>
        </div>
        <br>
        <div>
            <label for="question6">6. ¿Te interesa cómo funciona el cuerpo humano?</label>
            <select id="question6" name="answers[5]">
                <option value="A">A. Sí, me fascina la complejidad del cuerpo humano.</option>
                <option value="B">B. Un poco, pero no es mi principal interés.</option>
                <option value="C">C. No estoy seguro, nunca lo he considerado.</option>
                <option value="D">D. No particularmente, pero respeto a quienes sí.</option>
                <option value="E">E. No, prefiero centrarme en otros aspectos de la ciencia.</option>
                <option value="F">F. No, no me interesa en absoluto.</option>
            </select>
        </div>
        <br>
        <div>
            <label for="question7">7. ¿Te gustaría trabajar en un laboratorio o realizar experimentos?</label>
            <select id="question7" name="answers[6]">
                <option value="A">A. Sí, me encanta la idea de hacer descubrimientos en un laboratorio.</option>
                <option value="B">B. Tal vez, si los experimentos están relacionados con mis intereses.</option>
                <option value="C">C. No estoy seguro, depende del tipo de laboratorio y experimentos.</option>
                <option value="D">D. No, prefiero trabajar en un entorno más práctico.</option>
                <option value="E">E. No, los laboratorios no son lo mío.</option>
                <option value="F">F. No, no me gusta la idea de realizar experimentos.</option>
            </select>
        </div>
        <br>
        <div>
            <label for="question8">8. ¿Disfrutas construyendo o diseñando cosas?</label>
            <select id="question8" name="answers[7]">
                <option value="A">A. Sí, me encanta crear y diseñar cosas nuevas.</option>
                <option value="B">B. A veces, depende de lo que esté construyendo o diseñando.</option>
                <option value="C">C. No estoy seguro, nunca lo he intentado.</option>
                <option value="D">D. No particularmente, pero puedo hacerlo si es necesario.</option>
                <option value="E">E. No, prefiero las tareas que implican análisis en lugar de creación.</option>
                <option value="F">F. No, no disfruto construyendo ni diseñando cosas.</option>
            </select>
        </div>
        <br>
        <div>
            <label for="question9">9. ¿Te gustaría trabajar al aire libre?</label>
            <select id="question9" name="answers[8]">
                <option value="A">A. Sí, me encanta estar en contacto con la naturaleza.</option>
                <option value="B">B. A veces, depende del clima y la tarea.</option>
                <option value="C">C. No estoy seguro, nunca he trabajado al aire libre.</option>
                <option value="D">D. No particularmente, pero no me molestaría.</option>
                <option value="E">E. No, prefiero trabajar en interiores.</option>
                <option value="F">F. No, no me gusta trabajar al aire libre.</option>
            </select>
        </div>
        <br>
        <div>
            <label for="question10">10. ¿Te interesa la tecnología y los últimos avances en este campo?</label>
            <select id="question10" name="answers[9]">
                <option value="A">A. Sí, siempre estoy al tanto de las últimas tendencias tecnológicas.</option>
                <option value="B">B. Un poco, pero no es mi principal interés.</option>
                <option value="C">C. No estoy seguro, nunca lo he considerado.</option>
                <option value="D">D. No particularmente, pero uso la tecnología cuando es necesario.</option>
                <option value="E">E. No, prefiero centrarme en áreas no tecnológicas.</option>
                <option value="F">F. No, no me interesa la tecnología.</option>
            </select>
        </div>
        <br>
        <div>
            <label for="question11">11. ¿Disfrutas aprendiendo sobre diferentes culturas e historias?</label>
            <select id="question11" name="answers[10]">
                <option value="A">A. Sí, me encanta aprender sobre diferentes culturas e historias.</option>
                <option value="B">B. A veces, depende de la cultura o historia.</option>
                <option value="C">C. No estoy seguro, nunca lo he considerado.</option>
                <option value="D">D. No particularmente, pero no me molesta.</option>
                <option value="E">E. No, prefiero aprender sobre otros temas.</option>
                <option value="F">F. No, no me interesa aprender sobre diferentes culturas e historias.</option>
            </select>
        </div>
        <br>
        <div>
            <label for="question12">12. ¿Te gustaría trabajar en el campo de la música o el arte?</label>
            <select id="question12" name="answers[11]">
                <option value="A">A. Sí, me encantaría trabajar en música o arte.</option>
                <option value="B">B. Tal vez, si pudiera combinarlo con otros intereses.</option>
                <option value="C">C. No estoy seguro, nunca he trabajado en ese campo.</option>
                <option value="D">D. No particularmente, pero aprecio la música y el arte.</option>
                <option value="E">E. No, prefiero trabajar en un campo más práctico.</option>
                <option value="F">F. No, no me interesa la música ni el arte.</option>
            </select>
        </div>
        <br>
        <div>
            <label for="question13">13. ¿Te interesa la economía y los negocios?</label>
            <select id="question13" name="answers[12]">
                <option value="A">A. Sí, siempre estoy interesado en la economía y los negocios.</option>
                <option value="B">B. Un poco, pero no es mi principal interés.</option>
                <option value="C">C. No estoy seguro, nunca lo he considerado.</option>
                <option value="D">D. No particularmente, pero entiendo su importancia.</option>
                <option value="E">E. No, prefiero centrarme en áreas no comerciales.</option>
                <option value="F">F. No, no me interesa la economía ni los negocios.</option>
            </select>
        </div>
        <br>
        <div>
            <label for="question14">14. ¿Te gustaría enseñar o compartir tus conocimientos con los demás?</label>
            <select id="question14" name="answers[13]">
                <option value="A">A. Sí, me encanta enseñar y compartir lo que sé.</option>
                <option value="B">B. A veces, depende del tema y la audiencia.</option>
                <option value="C">C. No estoy seguro, nunca he tenido la oportunidad.</option>
                <option value="D">D. No particularmente, pero no me molesta.</option>
                <option value="E">E. No, prefiero aprender en lugar de enseñar.</option>
                <option value="F">F. No, no me siento cómodo enseñando o compartiendo mis conocimientos.</option>
            </select>
        </div>
        <br>
        <div>
            <label for="question15">15. ¿Disfrutas trabajando con números y datos?</label>
            <select id="question15" name="answers[14]">
                <option value="A">A. Sí, me encanta analizar números y datos.</option>
                <option value="B">B. A veces, depende de la naturaleza de los datos.</option>
                <option value="C">C. No estoy seguro, nunca he trabajado mucho con números o datos.</option>
                <option value="D">D. No particularmente, pero puedo hacerlo si es necesario.</option>
                <option value="E">E. No, prefiero trabajar con ideas en lugar de datos.</option>
                <option value="F">F. No, no disfruto trabajando con números ni datos.</option>
            </select>
        </div>
        <br>
        <div>
            <label for="question16">16. ¿Te gustaría trabajar en el campo de la ley y el orden?</label>
            <select id="question16" name="answers[15]">
                <option value="A">A. Sí, me gustaría trabajar en el campo de la ley y el orden.</option>
                <option value="B">B. Tal vez, si pudiera hacer una diferencia positiva.</option>
                <option value="C">C. No estoy seguro, nunca lo he considerado.</option>
                <option value="D">D. No particularmente, pero respeto a quienes lo hacen.</option>
                <option value="E">E. No, prefiero trabajar en un campo menos estructurado.</option>
                <option value="F">F. No, no me interesa la ley ni el orden.</option>
            </select>
        </div>
        <br>
        <div>
            <label for="question17">17. ¿Disfrutas de los debates y discusiones sobre temas actuales?</label>
            <select id="question17" name="answers[16]">
                <option value="A">A. Sí, siempre estoy listo para un buen debate.</option>
                <option value="B">B. A veces, depende del tema y las personas involucradas.</option>
                <option value="C">C. No estoy seguro, nunca he participado en un debate formal.</option>
                <option value="D">D. No particularmente, pero puedo hacerlo si es necesario.</option>
                <option value="E">E. No, prefiero evitar los debates y discusiones.</option>
                <option value="F">F. No, no disfruto debatiendo ni discutiendo temas actuales.</option>
            </select>
        </div>
        <br>
        <div>
            <label for="question18">18. ¿Te gustaría trabajar en el campo de la psicología o el asesoramiento?</label>
            <select id="question18" name="answers[17]">
                <option value="A">A. Sí, me encantaría ayudar a las personas a través de la psicología o el asesoramiento.</option>
                <option value="B">B. Tal vez, si pudiera combinarlo con otros intereses.</option>
                <option value="C">C. No estoy seguro, nunca he trabajado en ese campo.</option>
                <option value="D">D. No particularmente, pero respeto a quienes lo hacen.</option>
                <option value="E">E. No, prefiero trabajar en un campo más práctico.</option>
                <option value="F">F. No, no me interesa la psicología ni el asesoramiento.</option>
            </select>
        </div>
        <br>
        <div>
            <label for="question19">19. ¿Te interesa aprender sobre el medio ambiente y cómo protegerlo?</label>
            <select id="question19" name="answers[18]">
                <option value="A">A. Sí, me preocupa mucho el medio ambiente y siempre busco formas de protegerlo.</option>
                <option value="B">B. A veces, depende del tema específico.</option>
                <option value="C">C. No estoy seguro, nunca lo he considerado.</option>
                <option value="D">D. No particularmente, pero entiendo su importancia.</option>
                <option value="E">E. No, prefiero centrarme en áreas no ambientales.</option>
                <option value="F">F. No, no me interesa aprender sobre el medio ambiente ni cómo protegerlo.</option>
            </select>
        </div>
        <br>
        <div>
            <label for="question20">20. ¿Disfrutas de las actividades físicas y te gustaría trabajar en el campo del deporte?</label>
            <select id="question20" name="answers[19]">
                <option value="A">A. Sí, me encanta estar activo y me gustaría trabajar en deportes.</option>
                <option value="B">B. A veces, depende del deporte o la actividad física.</option>
                <option value="C">C. No estoy seguro, nunca he trabajado en ese campo.</option>
                <option value="D">D. No particularmente, pero disfruto viendo deportes.</option>
                <option value="E">E. No, prefiero trabajar en un campo menos físico.</option>
                <option value="F">F. No, no disfruto de las actividades físicas ni me gustaría trabajar en deportes.</option>
            </select>
        </div>
        <br>
        <button type="submit" class="btn btn-success">Finalizar</button>
    </form>
    </div>
    <br>
</body>
</html>