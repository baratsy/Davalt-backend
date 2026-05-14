package com.davalt.backend.repository;

import com.davalt.backend.model.Service;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import java.util.List;
import java.util.Optional;

@Repository
public interface ServiceRepository extends JpaRepository<Service, Long> {
    
    // Recherche par titre (exact)
    Optional<Service> findByTitle(String title);
    
    // Recherche par titre contenant un mot-clé (insensible à la casse)
    List<Service> findByTitleContainingIgnoreCase(String keyword);
    
    // Recherche dans la description
    List<Service> findByDescriptionContainingIgnoreCase(String keyword);
    
    // Recherche dans la description complète
    List<Service> findByFullDescriptionContainingIgnoreCase(String keyword);
    
    // Vérifier si un service existe avec ce titre
    boolean existsByTitle(String title);
}