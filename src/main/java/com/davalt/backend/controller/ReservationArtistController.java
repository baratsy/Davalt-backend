package com.davalt.backend.controller;

import com.davalt.backend.model.ReservationArtist;
import com.davalt.backend.model.Talent;
import com.davalt.backend.repository.ReservationArtistRepository;
import com.davalt.backend.repository.TalentRepository;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.time.LocalDate;
import java.util.List;
import java.util.Map;
import java.util.Optional;

@CrossOrigin(origins = "*")
@RestController
@RequestMapping("/api/reservations-artist")
public class ReservationArtistController {

    @Autowired
    private ReservationArtistRepository reservationRepo;

    @Autowired
    private TalentRepository talentRepo;

    // Liste toutes les réservations
    @GetMapping
    public List<ReservationArtist> getAll() {
        return reservationRepo.findAll();
    }

    // Récupérer une réservation par ID
    @GetMapping("/{id}")
    public ResponseEntity<ReservationArtist> getById(@PathVariable Long id) {
        Optional<ReservationArtist> res = reservationRepo.findById(id);
        return res.map(ResponseEntity::ok)
                  .orElse(ResponseEntity.notFound().build());
    }

    // Créer une nouvelle réservation
@PostMapping
public ResponseEntity<?> create(@RequestBody Map<String, Object> payload) {
    try {
        // Récupérer les données du payload
        String nom = (String) payload.get("nom");
        String email = (String) payload.get("email");
        String typeEvent = (String) payload.get("typeEvent");
        String dateStr = (String) payload.get("dateEvent");
        String lieu = (String) payload.get("lieu");
        String duree = (String) payload.get("duree");
        String budget = (String) payload.get("budget");
        String description = (String) payload.get("description");
        
        // Récupérer l'ID du talent
        Map<String, Object> talentMap = (Map<String, Object>) payload.get("talent");
        Integer talentId = (Integer) talentMap.get("id");
        
        // Valider et convertir la date
        LocalDate dateEvent = LocalDate.parse(dateStr);
        
        // Vérifier l'existence du talent
        Optional<Talent> talentOpt = talentRepo.findById(talentId.longValue());
        if (talentOpt.isEmpty()) {
            return ResponseEntity.badRequest().body("Talent introuvable");
        }
        
        // Créer la réservation avec les bons setters
        ReservationArtist reservation = new ReservationArtist();
        reservation.setNom(nom);
        reservation.setEmail(email);
        reservation.setTypeEvent(typeEvent);
        reservation.setDateEvent(dateEvent);  // ← Utiliser setDateEvent()
        reservation.setLieu(lieu);
        reservation.setDuree(duree);
        reservation.setBudget(budget);
        reservation.setDescription(description);
        reservation.setTalent(talentOpt.get());
        reservation.setStatus("en_attente");  // Correspond au statut par défaut
        
        ReservationArtist saved = reservationRepo.save(reservation);
        return ResponseEntity.ok(saved);
        
    } catch (Exception e) {
        e.printStackTrace();
        return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR)
                .body("Erreur: " + e.getMessage());
    }
}

    // Mettre à jour le status
    @PutMapping("/{id}/status")
    public ResponseEntity<?> updateStatus(@PathVariable Long id, @RequestParam String status) {
        Optional<ReservationArtist> resOpt = reservationRepo.findById(id);
        if (resOpt.isEmpty()) return ResponseEntity.notFound().build();
        ReservationArtist res = resOpt.get();
        res.setStatus(status);
        reservationRepo.save(res);
        return ResponseEntity.ok(res);
    }

    // Supprimer une réservation
    @DeleteMapping("/{id}")
    public ResponseEntity<?> delete(@PathVariable Long id) {
        if (!reservationRepo.existsById(id)) return ResponseEntity.notFound().build();
        reservationRepo.deleteById(id);
        return ResponseEntity.ok().build();
    }
}