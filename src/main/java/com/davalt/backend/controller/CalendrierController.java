package com.davalt.backend.controller;

import com.davalt.backend.model.Calendrier;
import com.davalt.backend.repository.CalendrierRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import java.util.List;
import java.util.Optional;

@CrossOrigin(origins = "*") // à sécuriser en prod !
@RestController
@RequestMapping("/api/calendrier")
public class CalendrierController {

    @Autowired
    private CalendrierRepository calendrierRepository;

    // 1. Récupérer tous les événements
    @GetMapping
    public List<Calendrier> getAll() {
        return calendrierRepository.findAll();
    }

    // 2. Récupérer un événement par ID
    @GetMapping("/{id}")
    public ResponseEntity<Calendrier> getById(@PathVariable Long id) {
        Optional<Calendrier> evt = calendrierRepository.findById(id);
        return evt.map(ResponseEntity::ok)
                  .orElseGet(() -> ResponseEntity.notFound().build());
    }

    // 3. Créer un nouvel événement
    @PostMapping
    public Calendrier create(@RequestBody Calendrier calendrier) {
        return calendrierRepository.save(calendrier);
    }

    // 4. Modifier un événement
    @PutMapping("/{id}")
    public ResponseEntity<Calendrier> update(@PathVariable Long id, 
                                             @RequestBody Calendrier updated) {
        Optional<Calendrier> existing = calendrierRepository.findById(id);
        if (existing.isEmpty()) {
            return ResponseEntity.notFound().build();
        }

        Calendrier evt = existing.get();
        evt.setTalentId(updated.getTalentId());
        evt.setProjet(updated.getProjet());
        evt.setDate(updated.getDate());
        evt.setStatus(updated.getStatus());
        evt.setLocation(updated.getLocation());
        evt.setImageUrl(updated.getImageUrl());

        Calendrier saved = calendrierRepository.save(evt);
        return ResponseEntity.ok(saved);
    }

    // 5. Supprimer
    @DeleteMapping("/{id}")
    public ResponseEntity<Void> delete(@PathVariable Long id) {
        if (!calendrierRepository.existsById(id)) {
            return ResponseEntity.notFound().build();
        }
        calendrierRepository.deleteById(id);
        return ResponseEntity.noContent().build();
    }

    // Bonus : par date
    @GetMapping("/date/{date}")
    public List<Calendrier> getByDate(@PathVariable String date) {
        return calendrierRepository.findByDate(date);
    }

    // Bonus : par statut
    @GetMapping("/status/{status}")
    public List<Calendrier> getByStatus(@PathVariable String status) {
        return calendrierRepository.findByStatus(status);
    }
}