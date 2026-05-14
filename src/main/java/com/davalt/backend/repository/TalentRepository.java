package com.davalt.backend.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.davalt.backend.model.Talent;


    public interface TalentRepository extends JpaRepository<Talent, Long> {
}

