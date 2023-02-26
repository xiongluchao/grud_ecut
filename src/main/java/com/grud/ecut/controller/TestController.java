package com.grud.ecut.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController("/testController")
public class TestController {

    @RequestMapping("/test")
    public String test() {
        System.out.println("hello world");
        return "hello world";
    }
}
