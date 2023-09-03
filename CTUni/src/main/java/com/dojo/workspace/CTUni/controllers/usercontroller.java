package com.dojo.workspace.CTUni.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.dojo.workspace.CTUni.models.Usuario;
import com.dojo.workspace.CTUni.models.logreg;
import com.dojo.workspace.CTUni.services.Userservices;

import jakarta.servlet.http.HttpSession;
import jakarta.validation.Valid;

@Controller
public class usercontroller {
	
	private final Userservices userServ;
	public usercontroller(Userservices uSer) {
		this.userServ = uSer;

	}
	
	@GetMapping("/")
	public String main(Model viewModel) {
		return "inicio.jsp";
	}
	
	@GetMapping("/CTUniRegister")
	public String raiz(Model viewModel) {
		viewModel.addAttribute("user", new Usuario());
		viewModel.addAttribute("login", new logreg());
		return "logreg.jsp";
	}
	
	
	@PostMapping("/registration")
	public String registro(@Valid @ModelAttribute("user") Usuario usuario,
			BindingResult resultado, Model viewModel ) {
		if(resultado.hasErrors()) {
			viewModel.addAttribute("login", new logreg());
			
			return "logreg.jsp";
		}
		Usuario usuarioRegistrado = userServ.registroUsuario(usuario, resultado);
		viewModel.addAttribute("login", new logreg());
		if(usuarioRegistrado != null) {
			viewModel.addAttribute("registro", "Gracias por registrarte, ahora login por favor");
			
		}
		return "logreg.jsp";
	}
	
	@PostMapping("/login")
	public String login(@Valid @ModelAttribute("login") logreg loginuser,
			BindingResult resultado, Model viewModel, HttpSession sesion) {
		if (resultado.hasErrors()) {
			viewModel.addAttribute("user", new Usuario());
			return "logreg.jsp";
		}
		
		if(userServ.authenthicateUser(
				loginuser.getEmail(), 
				loginuser.getPassword(), 
				resultado )) {
			Usuario usuarioLog = userServ.encontrarPorEmail(loginuser.getEmail());
			sesion.setAttribute("userID",usuarioLog.getId());
			return "redirect:/index";
		}else {
			viewModel.addAttribute("errorLog", "Por favor intenta de nuevo");
			viewModel.addAttribute("user", new Usuario());
			return "logreg.jsp";
		}
	}

	
	
	@GetMapping("/logout")
	public String logout(HttpSession sesion) {
		sesion.setAttribute("userID", null);
		return "redirect:/";
	}

}