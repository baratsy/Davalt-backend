package com.davalt.backend.repository;

import com.davalt.backend.model.Adn;
import org.springframework.data.jpa.repository.JpaRepository;

public interface AdnRepository extends JpaRepository<Adn, Long> {
}