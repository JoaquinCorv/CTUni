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
    <h1>Test Vocacional</h1>
    <form method="post" action="/test">
        <div>
            <label for="question1">1. ¿Qué tipo de actividades prefieres realizar en tu tiempo libre?</label>
            <select id="question1" name="answers[0]">
                <option value="A">A. Leer un libro.</option>
                <option value="B">B. Practicar deportes.</option>
                <option value="C">C. Hacer manualidades.</option>
                <option value="D">D. Programar o resolver problemas técnicos.</option>
                <option value="E">E. Ver películas o series.</option>
                <option value="F">F. Socializar con amigos.</option>
            </select>
        </div>
        <div>
            <label for="question2">2. ¿Qué tipo de temas te interesan más?</label>
            <select id="question2" name="answers[1]">
                <option value="A">A. Ciencias y tecnología.</option>
                <option value="B">B. Deportes y actividades físicas.</option>
                <option value="C">C. Arte y creatividad.</option>
                <option value="D">D. Programación y tecnología.</option>
                <option value="E">E. Cine y entretenimiento.</option>
                <option value="F">F. Relaciones sociales y comunicación.</option>
            </select>
        </div>
        <div>
            <label for="question3">3. ¿Qué ambiente laboral prefieres?</label>
            <select id="question3" name="answers[2]">
                <option value="A">A. Un laboratorio científico.</option>
                <option value="B">B. Un gimnasio o campo deportivo.</option>
                <option value="C">C. Un estudio de arte.</option>
                <option value="D">D. Una oficina con computadoras.</option>
                <option value="E">E. Un cine o estudio de grabación.</option>
                <option value="F">F. Un entorno social y colaborativo.</option>
            </select>
        </div>
        <div>
            <label for="question4">4. ¿Cuál de las siguientes actividades te atrae más?</label>
            <select id="question4" name="answers[3]">
                <option value="A">A. Investigar y descubrir cosas nuevas.</option>
                <option value="B">B. Practicar deportes y estar activo.</option>
                <option value="C">C. Crear arte y expresarte creativamente.</option>
                <option value="D">D. Trabajar con computadoras y tecnología.</option>
                <option value="E">E. Disfrutar de películas y entretenimiento.</option>
                <option value="F">F. Pasar tiempo con amigos y socializar.</option>
            </select>
        </div>
        <div>
            <label for="question5">5. ¿Qué tipo de libros o revistas sueles leer?</label>
            <select id="question5" name="answers[4]">
                <option value="A">A. Libros científicos y técnicos.</option>
                <option value="B">B. Revistas deportivas y de salud.</option>
                <option value="C">C. Revistas de arte y diseño.</option>
                <option value="D">D. Revistas de tecnología y programación.</option>
                <option value="E">E. Novelas y libros de ficción.</option>
                <option value="F">F. Revistas de entretenimiento y sociales.</option>
            </select>
        </div>
        <div>
            <label for="question6">6. ¿Cuál de estas palabras te describe mejor?</label>
            <select id="question6" name="answers[5]">
                <option value="A">A. Curioso(a).</option>
                <option value="B">B. Activo(a).</option>
                <option value="C">C. Creativo(a).</option>
                <option value="D">D. Lógico(a).</option>
                <option value="E">E. Imaginativo(a).</option>
                <option value="F">F. Sociable.</option>
            </select>
        </div>
        <div>
            <label for="question7">7. ¿Cuál de las siguientes actividades disfrutas más en tu tiempo libre?</label>
            <select id="question7" name="answers[6]">
                <option value="A">A. Leer libros científicos.</option>
                <option value="B">B. Practicar deportes o ejercicios físicos.</option>
                <option value="C">C. Dibujar o pintar.</option>
                <option value="D">D. Programar o resolver problemas técnicos.</option>
                <option value="E">E. Ver películas o series.</option>
                <option value="F">F. Salir con amigos o conocer gente nueva.</option>
            </select>
        </div>
        <div>
            <label for="question8">8. ¿Qué te gustaría aprender o mejorar en el futuro?</label>
            <select id="question8" name="answers[7]">
                <option value="A">A. Conocimientos científicos.</option>
                <option value="B">B. Habilidades deportivas.</option>
                <option value="C">C. Habilidades artísticas.</option>
                <option value="D">D. Habilidades tecnológicas.</option>
                <option value="E">E. Conocimiento del cine y entretenimiento.</option>
                <option value="F">F. Habilidades sociales y comunicación.</option>
            </select>
        </div>
        <div>
            <label for="question9">9. ¿En qué tipo de proyecto te gustaría trabajar?</label>
            <select id="question9" name="answers[8]">
                <option value="A">A. Proyecto de investigación científica.</option>
                <option value="B">B. Equipo deportivo o actividad física.</option>
                <option value="C">C. Proyecto artístico o creativo.</option>
                <option value="D">D. Desarrollo de software o tecnología.</option>
                <option value="E">E. Producción de películas o contenido multimedia.</option>
                <option value="F">F. Proyecto comunitario o social.</option>
            </select>
        </div>
        <div>
            <label for="question10">10. ¿Cuál de las siguientes actividades disfrutas más en grupo?</label>
            <select id="question10" name="answers[9]">
                <option value="A">A. Participar en un proyecto de investigación.</option>
                <option value="B">B. Jugar en un equipo deportivo.</option>
                <option value="C">C. Colaborar en un proyecto artístico.</option>
                <option value="D">D. Trabajar en un proyecto de programación.</option>
                <option value="E">E. Organizar un evento de cine o entretenimiento.</option>
                <option value="F">F. Participar en actividades sociales o voluntariado.</option>
            </select>
        </div>
        <input type="submit" value="Enviar">
    </form>
</body>