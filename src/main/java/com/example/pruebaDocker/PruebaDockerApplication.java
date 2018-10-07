package com.example.pruebaDocker;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@SpringBootApplication
@RestController("/dockerApp")
public class PruebaDockerApplication {

	public static void main(String[] args) {
		SpringApplication.run(PruebaDockerApplication.class, args);
	}

	@GetMapping
    public String metodo(){
	    return "Bienvenido a la aplicacion REST";
    }
}
