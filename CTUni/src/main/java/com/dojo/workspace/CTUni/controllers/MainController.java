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
	
	@GetMapping("/universidades/{idUni}")
	public String universidadesc(@PathVariable("idUni") Long idUni,Model model) {
		
		Universidades universidad = ctuniServices.obtenerUniversidadesPorId(idUni);
		//Servicio para buscar una universidad por id
		//agregar la universidad encontrada al modelo
		model.addAttribute("universidad", universidad);
		
		
		return "/universidades/universidades.jsp";
	}
	
	@GetMapping("/guardados")
	public String guardados(Model model, HttpSession sesion) {
		
		Long userId = (Long) sesion.getAttribute("userID");
		if (userId == null) {
			return "redirect:/CTUniRegister";
		}
		Usuario usuario = userservices.encontrarUserPorId(userId);
		model.addAttribute("usuario", usuario);
		
		
		
		return "guardados.jsp";
	}

	
	// GUARDAR O QUITAR DE GUARDADOS UNA UNIVERSIDAD
	@GetMapping("/universidades/{opcion}/{idUni}")
	public String guardarDesguardarUniversidad(Model model, @PathVariable("idUni") Long idUniversidad,
			@PathVariable("opcion") String opcion, HttpSession sesion) {
		// VALIDAR SI LA SESION DEL USUARIO ESTA ACTIVA
		Long userId = (Long) sesion.getAttribute("userID");
		if (userId == null) {
			return "redirect:/CTUniRegister";
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