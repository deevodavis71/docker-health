package com.sjd.dockerhealth;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/api")
public class TestController {

    @RequestMapping("/hello")
    public String hello () {
        return "Hello World";
    }

    @RequestMapping("/world")
    public String world () {
        return "World";
    }
}