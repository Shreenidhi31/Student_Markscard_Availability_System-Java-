package com.markscard;

import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Bean;

import com.markscard.services.AdminService;

@SpringBootApplication
public class MarksCardApplication {

	public static void main(String[] args) {
		SpringApplication.run(MarksCardApplication.class, args);
	}
	
	@Bean
	public CommandLineRunner demo(AdminService srv) {
	    return (args) -> {
    		srv.createAdmin();
	    };
	}

}
