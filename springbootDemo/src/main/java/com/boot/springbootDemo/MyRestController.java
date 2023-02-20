package com.boot.springbootDemo;

import java.time.LocalDateTime;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class MyRestController {
@GetMapping("/")
public String sayHello() {
	return "hello world! the server time is: "+LocalDateTime.now();
}
}
