package in.sp.main.controller;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import in.sp.main.entities.User;
import in.sp.main.services.UserService;


@Controller
public class MyController {

    
	@Autowired
	private UserService userService;

	
	@GetMapping("/regPage")
	public String OpenRegPage(Model model) {
		model.addAttribute("user",new User());
		return "register";
	}
	@PostMapping("/regForm")
	public String submitRegForm(@ModelAttribute("user")User user,Model model) {
		
		boolean status=userService.registerUser(user);
		if(status) {
			model.addAttribute("successMsg", "User registered successfully");
		}
		else {
			model.addAttribute("errorMsg","User not registered due to some error");
		}
		return "register";
	}
	@GetMapping("/loginpage")
	public String openLoginPage(Model model) {
		model.addAttribute("user", new  User());
		return "login";
	}
	@PostMapping("/loginForm")
	public String submitLoginForm(@ModelAttribute("user")User user,Model model) {
		User u=userService.loginUser(user.getEmail(), user.getPassword());
		if(u!=null) {
			model.addAttribute("modelName", u.getName());
			return "profile";
		}
		else {
			model.addAttribute("errorMsg","email and password didnt match ");
			return "login";
		}
		
	}
	@GetMapping("/logout")
	public String logoutUser(HttpServletRequest request) {
		HttpSession session=request.getSession();
		if(session!=null) {
			session.invalidate();
		}
		return "login";
	}
	
}
