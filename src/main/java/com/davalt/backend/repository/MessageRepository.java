package com.davalt.backend.repository;

import com.davalt.backend.model.Message;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface MessageRepository extends JpaRepository<Message, Long> {
    // Tu peux ajouter des méthodes personnalisées si besoin plus tard
}