package com.davalt.backend.repository;

import com.davalt.backend.model.Calendrier;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import java.util.List;

@Repository
public interface CalendrierRepository extends JpaRepository<Calendrier, Long> {

    // Quelques méthodes utiles selon tes besoins fréquents

    List<Calendrier> findByDate(String date);

    List<Calendrier> findByDateAndStatus(String date, String status);

    List<Calendrier> findByTalentId(Integer talentId);

    List<Calendrier> findByStatus(String status);

    List<Calendrier> findByProjet(String projet);

    List<Calendrier> findByImageUrl(String imageUrl);

    // Pour une plage de dates (si tu passes à LocalDate plus tard)
    // List<Calendrier> findByDateBetween(LocalDate start, LocalDate end);

    // Exemple recherche texte
}