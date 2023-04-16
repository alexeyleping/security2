package com.example.security2;

import com.example.security2.service.AppUserService;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
public class Security2Application {

    private final AppUserService appUserService;

    public Security2Application(AppUserService appUserService) {
        this.appUserService = appUserService;
    }

    public static void main(String[] args) {
        SpringApplication.run(Security2Application.class, args);
    }
}
