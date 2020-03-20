package com.example.controller;

import com.example.modals.Users;
import com.example.services.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

/**
 * Created by ken on 7/3/2019.
 */
public class RestController {
    @Autowired
    private UserService userService;

    @GetMapping("/")
    public String hello() {
        return "This is Home page";
    }

    @GetMapping("/save-user")
    public String saveUser(@RequestParam String username, @RequestParam String firstname, @RequestParam String lastname, @RequestParam int age, @RequestParam String password) {
        Users user = new Users(username, firstname, lastname, age, password);
        userService.saveUser(user);
        return "User Saved";
    }
}
