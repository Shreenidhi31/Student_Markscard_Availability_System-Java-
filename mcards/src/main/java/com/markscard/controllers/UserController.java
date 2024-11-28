package com.markscard.controllers;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.markscard.models.Admin;
import com.markscard.models.User;
import com.markscard.services.AdminService;
import com.markscard.services.UserService;

@Controller
public class UserController {

	@Autowired private UserService userService;
	@Autowired private HttpSession session;
	@Autowired private AdminService adminService;
	
	@GetMapping("")
	public String home() {
		return "index";
	}

	@PostMapping("/")
	public String Validate(String userid,String pwd, String role,RedirectAttributes redirAttrs) {
		if(role.equals("Admin")) {
			Admin admin = adminService.validate(userid, pwd);
			if(admin!=null) {
				session.setAttribute("uname", "Administrator");
				session.setAttribute("role", role);
				return "redirect:/users";
			}else {
				redirAttrs.addFlashAttribute("error", "Invalid username or password..!!");
				return "redirect:/";
			}
		}else {
			User user=userService.validate(userid, pwd);	
			if(user!=null) {
				session.setAttribute("uname", user.getSname());
				session.setAttribute("id", user.getRegno());
				session.setAttribute("role", role);
				return "redirect:/profile";
			}else {
				redirAttrs.addFlashAttribute("error", "Invalid username or password..!!");
				return "redirect:/";
			}
		}	
	}
	

	@GetMapping("/profile")
	public String profile(Model model) {
		model.addAttribute("user", userService.findUser(Integer.parseInt(session.getAttribute("id").toString())));
		return "profile";
	}

	@GetMapping("/register")
	public String register() {
		return "register";
	}

	@PostMapping("/register")
	public String registerprocess(User user, RedirectAttributes ra) {
		userService.saveUser(user);
		ra.addFlashAttribute("msg", "Registered successfully");
		return "redirect:/";
	}

	@GetMapping("/logout")
	public String logout() {
		session.invalidate();
		return "redirect:/";
	}
}
