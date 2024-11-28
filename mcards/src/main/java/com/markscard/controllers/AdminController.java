package com.markscard.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.markscard.services.UserService;

@Controller
public class AdminController {

	@Autowired private UserService userService;
	
	@GetMapping("/users")
	public String allusers(Model model) {
		model.addAttribute("list", userService.allUsers());
		return "students";
	}
	
	@GetMapping("/updatestatus/{id}")
	public String updateStatus(@PathVariable("id") int id,String status,RedirectAttributes ra) {
		userService.updateCardStatus(id,status);
		ra.addFlashAttribute("msg", "Status updated successfully");
		return "redirect:/users";
	}

	
}
