package com.davalt.backend.repository;


import com.davalt.backend.model.ReservationArtist;


import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface ReservationArtistRepository extends JpaRepository<ReservationArtist, Long> {
    List<ReservationArtist> findByTalentId(Long talentId);
    List<ReservationArtist> findByStatus(String status);
}