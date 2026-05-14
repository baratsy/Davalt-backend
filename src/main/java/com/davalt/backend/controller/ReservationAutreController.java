package com.davalt.backend.controller;

import com.davalt.backend.model.ReservationAutre;
import com.davalt.backend.model.Talent;
import com.davalt.backend.repository.ReservationAutreRepository;
import com.davalt.backend.repository.TalentRepository;

import java.util.Optional;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Map;

@CrossOrigin(origins = "*")
@RestController
@RequestMapping("/api/reservation-autre")
public class ReservationAutreController {

    @Autowired
    private ReservationAutreRepository reservationRepo;

    @Autowired
    private TalentRepository talentRepo;

    // ==================== POST - Style identique à ReservationArtist ====================
    @PostMapping
    public ResponseEntity<?> create(@RequestBody Map<String, Object> payload) {
        try {
            // Extraction des champs
            String nom = (String) payload.get("nom");
            String email = (String) payload.get("email");
            String typeProjet = (String) payload.get("typeProjet");
            String synopsis = (String) payload.get("synopsis");
            String duree = (String) payload.get("duree");

            // Récupération de l'ID du talent (envoyé en flat : talentId)
            Integer talentId = null;
            if (payload.get("talentId") instanceof Integer) {
                talentId = (Integer) payload.get("talentId");
            } else if (payload.get("talentId") instanceof Long) {
                talentId = ((Long) payload.get("talentId")).intValue();
            } else if (payload.get("talentId") != null) {
                talentId = Integer.valueOf(payload.get("talentId").toString());
            }

            if (talentId == null) {
                return ResponseEntity.badRequest().body("talentId est obligatoire");
            }

            // Vérifier que le talent existe
            Optional<Talent> talentOpt = talentRepo.findById(talentId.longValue());
            if (talentOpt.isEmpty()) {
                return ResponseEntity.badRequest().body("Talent avec l'ID " + talentId + " introuvable");
            }

            // Création de la réservation
            ReservationAutre reservation = new ReservationAutre();
            reservation.setNom(nom);
            reservation.setEmail(email);
            reservation.setTypeProjet(typeProjet);
            reservation.setSynopsis(synopsis);
            reservation.setDuree(duree);
            reservation.setTalent(talentOpt.get());
            // dateCreation est gérée automatiquement par @PrePersist

            ReservationAutre saved = reservationRepo.save(reservation);

            return ResponseEntity.status(HttpStatus.CREATED).body(saved);

        } catch (Exception e) {
            e.printStackTrace();
            return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR)
                    .body("Erreur lors de la création : " + e.getMessage());
        }
    }

    // ==================== Autres méthodes (gardées telles quelles) ====================
    @GetMapping
    public List<ReservationAutre> getAll() {
        return reservationRepo.findAll();
    }

    @GetMapping("/{id}")
    public ResponseEntity<ReservationAutre> getById(@PathVariable Long id) {
        return reservationRepo.findById(id)
                .map(ResponseEntity::ok)
                .orElse(ResponseEntity.notFound().build());
    }

    @GetMapping("/talent/{talentId}")
    public ResponseEntity<List<ReservationAutre>> getReservationsByTalent(@PathVariable Long talentId) {
        List<ReservationAutre> reservations = reservationRepo.findByTalentId(talentId);
        return ResponseEntity.ok(reservations);
    }

    @DeleteMapping("/{id}")
    public ResponseEntity<Void> deleteReservation(@PathVariable Long id) {
        if (!reservationRepo.existsById(id)) {
            return ResponseEntity.notFound().build();
        }
        reservationRepo.deleteById(id);
        return ResponseEntity.noContent().build();
    }
}