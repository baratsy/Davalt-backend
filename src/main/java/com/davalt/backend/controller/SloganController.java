package com.davalt.backend.controller;

import com.davalt.backend.model.Slogan;
import com.davalt.backend.repository.SloganRepository;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@CrossOrigin(origins = "http://localhost:5173")
@RestController
@RequestMapping("/api/slogan")
public class SloganController {

    private final SloganRepository sloganRepository;

    public SloganController(SloganRepository sloganRepository) {
        this.sloganRepository = sloganRepository;
    }

    // récupérer le slogan
    @GetMapping
    public List<Slogan> getSlogan(){
        return sloganRepository.findAll();
    }

    // créer ou modifier
    @PostMapping
    public Slogan save(@RequestBody Slogan slogan){
        return sloganRepository.save(slogan);
    }

    // supprimer
    @DeleteMapping("/{id}")
    public void delete(@PathVariable Long id){
        sloganRepository.deleteById(id);
    }

}