package com.vastika.userinfomanagement3.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class helloController
{
    @GetMapping("/greet")
    public String sayHello()
    {
        return "hello";
    }
}
