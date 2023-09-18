package com.dojo.workspace.CTUni.controllers;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.dojo.workspace.CTUni.models.Comentarios;
import com.dojo.workspace.CTUni.models.Universidades;
import com.dojo.workspace.CTUni.models.Usuario;
import com.dojo.workspace.CTUni.services.CTuniServices;
import com.dojo.workspace.CTUni.services.CommentService;
import com.dojo.workspace.CTUni.services.Userservices;

import jakarta.servlet.http.HttpSession;
import jakarta.validation.Valid;

@Controller
public class MainController {

	private final CommentService commentService;
	private final CTuniServices ctuniServices;
	private final Userservices userservices;

	public MainController(CTuniServices ctuniServices, Userservices userservices, CommentService commentService) {
		this.ctuniServices = ctuniServices;
		this.userservices = userservices;
		this.commentService = commentService;
	}

	@GetMapping("/")
	public String main(Model viewModel, HttpSession session) {
		boolean isLoggedIn = (session.getAttribute("userID") != null);
		viewModel.addAttribute("isLoggedIn", isLoggedIn);

		List<Universidades> universidades = ctuniServices.obtenerTodasLasUniversidades();
		viewModel.addAttribute("universidades", universidades);

		return "inicio.jsp";
	}

	@GetMapping("/acercaDeNosotros")
	public String nosotros(Model viewModel) {
		List<Universidades> universidades = ctuniServices.obtenerTodasLasUniversidades();
		viewModel.addAttribute("universidades", universidades);
		return "/universidades/Nosotros.jsp";
	}

	@GetMapping("/cuenta")
	public String cuenta(Model model, HttpSession session) {

		boolean isLoggedIn = (session.getAttribute("userID") != null);
		model.addAttribute("isLoggedIn", isLoggedIn);
		Long userId = (Long) session.getAttribute("userID");

		if (userId == null) {

			return "redirect:/login";
		}

		Usuario usuario = userservices.encontrarUserPorId(userId);
		model.addAttribute("usuario", usuario);

		List<Universidades> universidades = ctuniServices.obtenerTodasLasUniversidades();
		model.addAttribute("universidades", universidades);

		return "cuenta.jsp";
	}

	@GetMapping("/carreras")
	public String carreras(Model model, HttpSession sesion) {
		boolean isLoggedIn = (sesion.getAttribute("userID") != null);
		model.addAttribute("isLoggedIn", isLoggedIn);
		List<Universidades> universidades = ctuniServices.obtenerTodasLasUniversidades();
		model.addAttribute("universidades", universidades);

		return "carreras.jsp";
	}

	@GetMapping("/universidades/{idUni}")
	public String universidadesc(@PathVariable("idUni") Long idUni, Model model, HttpSession sesion) {
		boolean isLoggedIn = (sesion.getAttribute("userID") != null);
		model.addAttribute("isLoggedIn", isLoggedIn);
		Universidades universidad = ctuniServices.obtenerUniversidadesPorId(idUni);
		// Servicio para buscar una universidad por id
		// agregar la universidad encontrada al modelo
		model.addAttribute("universidad", universidad);

		List<Universidades> universidades = ctuniServices.obtenerTodasLasUniversidades();
		model.addAttribute("universidades", universidades);
		List<Comentarios> comentarios = commentService.obtenerTodasLasUniversidades();
		model.addAttribute("comentarios", comentarios);
		if (model.containsAttribute("error")) {
			String error = (String) model.getAttribute("error");
			model.addAttribute("errorMessage", error);
		}

		return "/universidades/universidades.jsp";
	}

	@GetMapping("/guardados")
	public String guardados(Model model, HttpSession sesion) {
		boolean isLoggedIn = (sesion.getAttribute("userID") != null);
		model.addAttribute("isLoggedIn", isLoggedIn);
		Long userId = (Long) sesion.getAttribute("userID");
		if (userId == null) {
			return "redirect:/CTUniRegister";
		}
		Usuario usuario = userservices.encontrarUserPorId(userId);
		model.addAttribute("usuario", usuario);

		List<Universidades> universidades = ctuniServices.obtenerTodasLasUniversidades();
		model.addAttribute("universidades", universidades);

		return "guardados.jsp";
	}

	// GUARDAR O QUITAR DE GUARDADOS UNA UNIVERSIDAD
	@GetMapping("/universidades/{opcion}/{idUni}")
	public String guardarDesguardarUniversidad(Model model, @PathVariable("idUni") Long idUniversidad,
			@PathVariable("opcion") String opcion, HttpSession sesion, RedirectAttributes redirectAttributes) {
		// VALIDAR SI LA SESION DEL USUARIO ESTA ACTIVA
		Long userId = (Long) sesion.getAttribute("userID");
		if (userId == null) {
			return "redirect:/CTUniRegister";
		}

		Long usuarioYaGuardo = ctuniServices.restriccionguardado(userId);
		if (usuarioYaGuardo == 5) {
			redirectAttributes.addFlashAttribute("error", "Llegó al límite máximo de 5 universidades guardadas.");
			return "redirect:/universidades/" + idUniversidad;

		}

		Universidades unaUniversidad = ctuniServices.unauni(idUniversidad);
		boolean guardarDesguardar = (opcion.equals("guardar"));
		Usuario usuario = userservices.encontrarUserPorId(userId);
		ctuniServices.guardarDesguardarCarrera(unaUniversidad, usuario, guardarDesguardar);

		return "redirect:/universidades/" + idUniversidad;

	}

	@GetMapping("/comentario/{idUni}")
	public String verDetalleUniversidad(@PathVariable("idUni") Long id, Model model, HttpSession session,
			@ModelAttribute("newcomment") Comentarios newcomment) {
		boolean isLoggedIn = (session.getAttribute("userID") != null);
		model.addAttribute("isLoggedIn", isLoggedIn);
		Long userId = (Long) session.getAttribute("userID");
		if (userId == null) {
			return "redirect:/CTUniRegister";
		}

		Universidades universidad = ctuniServices.obtenerUniversidadesPorId(id);
		model.addAttribute("userId", userId);
		model.addAttribute("universidad", universidad);

		List<Universidades> universidades = ctuniServices.obtenerTodasLasUniversidades();
		model.addAttribute("universidades", universidades);

		return "comentarios.jsp";
	}

	@PostMapping("/comentario/{idUni}")
	public String nuevoComment(@Valid @ModelAttribute("newcomment") Comentarios newcomment, BindingResult resultado,
			HttpSession sesion, Model viewModel, @PathVariable("idUni") Long id) {
		Long userLog = (Long) sesion.getAttribute("userID");
		Usuario usuario = userservices.encontrarUserPorId(userLog);
		Universidades Universidad = ctuniServices.obtenerUniversidadesPorId(id);
		if (userLog == null) {
			return "redirect:/";
		}
		if (resultado.hasErrors()) {
			viewModel.addAttribute("usuario", usuario);
			viewModel.addAttribute("Universidad", Universidad);
			return "redirect:/comentario/" + id;

		}

		// Consulta si ya usuario comento uni
		Long usuarioYaComento = commentService.restriccioncomentario(userLog);
		if (usuarioYaComento == 3) {
			return "redirect:/";

		}
		newcomment.setUniversidades(Universidad);
		commentService.agregarComentario(newcomment);
		Universidad.setRating(ctuniServices.obtenerPromedio(id));

		ctuniServices.actualizarUniversidad(Universidad);

		return "redirect:/";
	}

	private String[] topics = { "Ciencia", "Deportes", "Arte", "Tecnologia", "Literatura", "Politica" };

	@GetMapping("/test")
	public String showTestPage(Model model) {

		return "test.jsp";
	}

	@PostMapping("/test")
	public String processTestResults(@RequestParam("answers[0]") String answer0,
			@RequestParam("answers[1]") String answer1, @RequestParam("answers[2]") String answer2,
			@RequestParam("answers[3]") String answer3, @RequestParam("answers[4]") String answer4,
			@RequestParam("answers[5]") String answer5, @RequestParam("answers[6]") String answer6,
			@RequestParam("answers[7]") String answer7, @RequestParam("answers[8]") String answer8,
			@RequestParam("answers[9]") String answer9, Model model) {
		String[] answers = { answer0, answer1, answer2, answer3, answer4, answer5, answer6, answer7, answer8, answer9 };

		// aca se guardan las respuestas
		String selectedTopic = calculateSelectedTopic(answers);

		// esto te lleva al topico en cuestion
		return "redirect:/test/result?topic=" + selectedTopic;
	}

	@GetMapping("/test/result")
	public String showResultPage(@RequestParam(name = "topic") String topic, Model model) {
		model.addAttribute("topic", topic);
		return "results.jsp";
	}

	private String calculateSelectedTopic(String[] answers) {

		int[] counts = new int[6]; // opciones (A, B, C, D, E, F)

		for (String answer : answers) {
			if (answer != null && !answer.isEmpty()) {
				char selectedOption = answer.charAt(0); // la opcion se guarda en letras (A, B, C, etc)
				if (selectedOption >= 'A' && selectedOption <= 'F') {
					counts[selectedOption - 'A']++;
				}
			}
		}

		// esto nos muestra la opcion que mas se repitio en el formulario
		int maxCount = counts[0];
		char selectedLetter = 'A';

		for (int i = 1; i < counts.length; i++) {
			if (counts[i] > maxCount) {
				maxCount = counts[i];
				selectedLetter = (char) ('A' + i);
			}
		}

		// lo que mas se repite se muestra aca
		switch (selectedLetter) {
		case 'A':
			return topics[0];
		case 'B':
			return topics[1];
		case 'C':
			return topics[2];
		case 'D':
			return topics[3];
		case 'E':
			return topics[4];
		case 'F':
			return topics[5];
		// Agrega mas topicos aca
		default:
			return "Tema no identificado";
		}
	}
}