package com.jspiders.smswithspringmvc4.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.jspiders.smswithspringmvc4.pojo.AdminPOJO;
import com.jspiders.smswithspringmvc4.service.AdminService;

@Controller
public class AdminController {
	
	@Autowired
	private AdminService adminService;
	
	@RequestMapping(path="/add_admin",method = RequestMethod.GET)
	public String addAdminPage(ModelMap modelMap) {
		List<AdminPOJO> admins=adminService.getAllAdmin();
		if(admins.size()<3) {
			return "add_admin"; 
		}else {
			modelMap.addAttribute("message2", "admin already exists");
			return "log_in";
		}
		
		
	}
	
	
	@RequestMapping(path="/add_admin",method = RequestMethod.POST)
	public String addAdmin(@RequestParam String userName,@RequestParam String email,@RequestParam String password,ModelMap modelMap) {
		adminService.addAdmin(userName, email, password);
		modelMap.addAttribute("message", "sign up sucessfully");
		return "log_in";
		
		
	}
	
	@RequestMapping(path="/log_in",method = RequestMethod.GET)
	public String logInPage() {
		
		return "log_in";
		
	}
	
	@RequestMapping(path="/log_in",method = RequestMethod.POST)
	public String LogIn(@RequestParam String email,@RequestParam String password,ModelMap modelMap,HttpSession httpSession) {
		AdminPOJO admin=adminService.logIn(email,password);
		if(admin!=null) {
			httpSession.setAttribute("admin",admin );
			//httpSession.setMaxInactiveInterval(10);
			modelMap.addAttribute("message","login sucessfully");
			modelMap.addAttribute("admin", email);
			return "welcome";
		}else {
			modelMap.addAttribute("message2", "Invalid Email or Password");
			return "log_in";
		}
	}
	
	
	@RequestMapping(path="/delete_admin",method = RequestMethod.GET)
	public String deleteAdmin(@RequestParam String email,ModelMap modelMap,HttpSession httpSession) {
		AdminPOJO admin=(AdminPOJO)httpSession.getAttribute("admin");
		if(admin!=null) {
			adminService.deleteAdmin(email);
			modelMap.addAttribute("message", "admin deleted");
			return "log_in";
		}else {
			return "log_in";
		}
		
		
		
		
		
		
	}
	
	@RequestMapping(path="/log_out",method = RequestMethod.GET)
	public String logOut(HttpSession httpSession) {
		httpSession.invalidate();
		return "log_in";
		
	}

}
