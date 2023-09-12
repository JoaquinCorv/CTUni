package com.dojo.workspace.CTUni.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import com.dojo.workspace.CTUni.models.Carreras;
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
		return "inicio.jsp";
	}

	@GetMapping("/cuenta")
	public String cuenta(Model model, HttpSession session) {
		Long userId = (Long) session.getAttribute("userID");

		if (userId == null) {

			return "redirect:/login";
		}

		Usuario usuario = userservices.encontrarUserPorId(userId);
		model.addAttribute("usuario", usuario);

		return "cuenta.jsp";
	}

	@GetMapping("/carreras")
	public String carreras() {
		return "carreras.jsp";
	}

	@GetMapping("/universidades")
	public String universidades() {
		return "/universidades/universidades.jsp";
	}
	
	@GetMapping("/guardados")
	public String guardados() {
		return "guardados.jsp";
	}

	// GUARDAR O QUITAR DE GUARDADOS UNA CARRERA
	@GetMapping("/carreras/{idCarrera}/{idUsuario}/{option}")
	public String guardarDesguardarCarrera(@PathVariable("idCarrera") Long idCarrera,
			@PathVariable("idCarrera") Long idUsuario, @PathVariable("option") String option, HttpSession sesion) {
		// VALIDAR SI LA SESION DEL USUARIO ESTA ACTIVA
		Long userId = (Long) sesion.getAttribute("userID");
		if (userId == null) {
			return "redirect:/CTUniRegister";
		}
		Carreras unaCarrera = ctuniServices.unaCarrera(idCarrera);
		boolean guardarDesguardar = (option.equals("guardar"));
		Usuario usuario = userservices.encontrarUsuarioPorID(userId);

		ctuniServices.guardarDesguardarCarrera(unaCarrera, usuario, guardarDesguardar);

		return "redirect:/carreras";
	}

	// GUARDAR O QUITAR DE GUARDADOS UNA UNIVERSIDAD
	@GetMapping("/universidades/{idUniversidad}/{idUsuario}/{option}")
	public String guardarDesguardarUniversidad(@PathVariable("idUniversidad") Long idUniversidad,
			@PathVariable("idUniversidad") Long idUsuario, @PathVariable("option") String option, HttpSession sesion) {
		// VALIDAR SI LA SESION DEL USUARIO ESTA ACTIVA
		Long userId = (Long) sesion.getAttribute("userID");
		if (userId == null) {
			return "redirect:/CTUniRegister";
		}
		Universidades unaUniversidad = ctuniServices.unaUniversidad(idUniversidad);
		boolean guardarDesguardar = (option.equals("guardar"));
		Usuario usuario = userservices.encontrarUsuarioPorID(userId);

		ctuniServices.guardarDesguardarUniversidad(unaUniversidad, usuario, guardarDesguardar);

		return "redirect:/universidades";
	}

	@GetMapping("/comentario/{idUni}")
	public String verDetalleUniversidad(@PathVariable("idUni") Long id, Model model, HttpSession session,
			@ModelAttribute("newcomment") Comentarios newcomment) {

		Long userId = (Long) session.getAttribute("userID");
		if (userId == null) {
			return "redirect:/";
		}

		Universidades universidad = ctuniServices.obtenerUniversidadesPorId(id);

		model.addAttribute("universidad", universidad);
		model.addAttribute("userId", userId);

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
			return "comentarios.jsp";
		}

		// Consulta si ya usuario comento uni
		Long usuarioYaComento = commentService.restriccioncomentario(userLog);
		if (usuarioYaComento == 1) {
			return "redirect:/";

		}
		newcomment.setUniversidades(Universidad);
		commentService.agregarComentario(newcomment);
		Universidad.setRating(ctuniServices.obtenerPromedio(id));

		ctuniServices.actualizarUniversidad(Universidad);

		return "redirect:/";
	}
}