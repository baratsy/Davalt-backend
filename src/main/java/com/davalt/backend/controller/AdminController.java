package com.davalt.backend.controller;

import com.davalt.backend.model.Admin;
import com.davalt.backend.repository.AdminRepository;
import org.springframework.web.bind.annotation.*;

import java.util.Map;

@CrossOrigin(origins = "http://localhost:5173")
@RestController
@RequestMapping("/api/admin")
public class AdminController {

    private final AdminRepository adminRepository;

    public AdminController(AdminRepository adminRepository) {
        this.adminRepository = adminRepository;
    }

    @PostMapping("/login")
    public Map<String, Object> login(@RequestBody Map<String, String> body) {

        String username = body.get("username");
        String password = body.get("password");

        Admin admin = adminRepository.findByUsername(username);

        if(admin != null && admin.getPassword().equals(password)){
            return Map.of(
                    "success", true,
                    "message", "Connexion réussie"
            );
        }

        return Map.of(
                "success", false,
                "message", "Identifiants incorrects"
        );
    }
}