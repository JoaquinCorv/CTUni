package com.dojo.workspace.CTUni.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class MainController {
	@GetMapping("/")
	public String main(Model viewModel) {
		return "inicio.jsp";
	}
	
	@GetMapping("/carreras")
	public String carreras() {
		return "carreras.jsp";
	}
	
	@GetMapping("/universidades")
	public String universidades() {
		return "universidades.jsp";
	}
}