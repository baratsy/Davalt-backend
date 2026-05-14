package com.davalt.backend.repository;

import com.davalt.backend.model.Slogan;
import org.springframework.data.jpa.repository.JpaRepository;

public interface SloganRepository extends JpaRepository<Slogan, Long> {
}