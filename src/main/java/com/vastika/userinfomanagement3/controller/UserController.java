package com.vastika.userinfomanagement3.controller;

import com.vastika.userinfomanagement3.model.User;
import com.vastika.userinfomanagement3.service.UserService;
//import org.apache.catalina.User;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class UserController
{
    private final UserService userService;

    public UserController(UserService userService) {
        this.userService = userService;
    }
    @GetMapping("/add_user")
    public String getUserForm()
    {
        return "addUser";
    }
    @GetMapping("/edit_user")
    public String getEditUserForm(@RequestParam int id,Model model)
    {
        model.addAttribute("user", userService.getUser(id));
        return "editUser";
    }
    @PostMapping("/save_user")
    public String saveUser(@ModelAttribute User user)
    {
        userService.saveUser(user);
        return "redirect:/list_user";
    }
    @GetMapping("/list_user")
    public String getAllUser(Model model)
    {
        model.addAttribute("users",userService.getAllUser());
        return "listUser";
    }
    @PostMapping("/update_user")
    public String updateUser(@ModelAttribute User user)
    {
        userService.updateUser(user);
        return "redirect:/list_user";
    }
    @GetMapping("/delete_user")
    public String deleteUser(@RequestParam int id)
    {
        userService.deleteUser(id);
        return "redirect:/list_user";
    }
}
