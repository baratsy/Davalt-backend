package com.davalt.backend.repository;


import com.davalt.backend.model.ReservationAutre;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface ReservationAutreRepository extends JpaRepository<ReservationAutre, Long> {

    // Trouver toutes les réservations d'un talent
    List<ReservationAutre> findByTalentId(Long talentId);

    // Trouver par email
    List<ReservationAutre> findByEmail(String email);

    // Optionnel : chercher par type de projet
    List<ReservationAutre> findByTypeProjet(String typeProjet);
}