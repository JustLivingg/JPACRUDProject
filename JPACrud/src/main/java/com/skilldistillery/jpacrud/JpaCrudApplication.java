package com.skilldistillery.jpacrud;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.web.servlet.support.SpringBootServletInitializer;

@SpringBootApplication
public class JpaCrudApplication extends SpringBootServletInitializer {
	  @Override
	  protected SpringApplicationBuilder configure(SpringApplicationBuilder application) {
	    return application.sources(JpaCrudApplication.class);
	  }
	
	public static void main(String[] args) {
		SpringApplication.run(JpaCrudApplication.class, args);
	}

}