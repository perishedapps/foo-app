package com.example.foo.controller;

import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class RootController {

    @GetMapping("/*")
    public ResponseEntity foo() {
        return ResponseEntity.ok("Hello s2i!");
    }
}
