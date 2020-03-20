package com.example.controller;

import com.example.modals.Users;
import com.example.services.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;

/**
 * Created by ken on 7/2/2019.
 */
@Controller
public class ApplicationController
{
    @Autowired
    private UserService userService;

    @RequestMapping("/welcome")
    public String Welcome(HttpServletRequest request){
        request.setAttribute("mode","MODE_HOME");
        return "welcomepage";
    }
    @RequestMapping("/register")
    public String registration(HttpServletRequest request){
        request.setAttribute("mode", "MODE_REGISTER");
        return "welcomepage";
    }
    @PostMapping("/save-user")
    public String registerUser(@ModelAttribute Users user, BindingResult bindingResult, HttpServletRequest request){
        userService.saveUser(user);
        request.setAttribute("mode","MODE_HOME");
        return "welcomepage";
    }
    @GetMapping("/all-users")
	public String showAllUsers(HttpServletRequest request) {
		request.setAttribute("users", userService.showAllUsers());
		request.setAttribute("mode", "ALL_USERS");
		return "welcomepage";
	}
    @RequestMapping("/delete-user")
    public String deleteUser(@RequestParam int id, HttpServletRequest request){
        userService.deleteUser(id);
        request.setAttribute("user",userService.showAllUsers());
        request.setAttribute("mode","ALL_USERS");
        return "welcomepage";
    }
    @RequestMapping("/edit-user")
    public String editUser(@RequestParam int id, HttpServletRequest request){
        request.setAttribute("user",userService.editUser(id));
        request.setAttribute("mode","MODE_UPDATE");
        return "welcomepage";
    }
    @RequestMapping("/login")
    public String login(HttpServletRequest request){
        request.setAttribute("mode","MODE_LOGIN");
        return "welcomepage";
    }
    @RequestMapping("/login-user")
    public String loginUser(@ModelAttribute Users users, HttpServletRequest request){
        if (userService.findByUsernameAndPassword(users.getUsername(),users.getPassword()) !=null){
            return "homepage";
        }else {
            request.setAttribute("error","Invalid Username or Password");
            request.setAttribute("mode","MODE_LOGIN");
            return "welcomepage";
        }
    }
}
