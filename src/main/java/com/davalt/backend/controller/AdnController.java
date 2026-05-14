package com.davalt.backend.controller;

import com.davalt.backend.model.Adn;
import com.davalt.backend.repository.AdnRepository;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@CrossOrigin(origins = "http://localhost:5173")
@RestController
@RequestMapping("/api/adns")
public class AdnController {

    private final AdnRepository adnRepository;

    public AdnController(AdnRepository adnRepository) {
        this.adnRepository = adnRepository;
    }

    @GetMapping
    public List<Adn> getAll() {
        return adnRepository.findAll();
    }

    @PostMapping
    public Adn create(@RequestBody Adn adn) {
        return adnRepository.save(adn);
    }

    @PutMapping("/{id}")
    public Adn update(@PathVariable Long id, @RequestBody Adn adn) {
        adn.setId(id);
        return adnRepository.save(adn);
    }

    @DeleteMapping("/{id}")
    public void delete(@PathVariable Long id) {
        adnRepository.deleteById(id);
    }
}