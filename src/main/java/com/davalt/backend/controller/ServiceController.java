package com.davalt.backend.controller;

import com.davalt.backend.model.Service;
import com.davalt.backend.repository.ServiceRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.server.ResponseStatusException;

import java.util.List;

@RestController
@RequestMapping("/api/services")
@CrossOrigin(origins = "*")
public class ServiceController {

    @Autowired
    private ServiceRepository serviceRepository;

    // GET - Récupérer tous les services
    @GetMapping
    public List<Service> getAllServices() {
        return serviceRepository.findAll();
    }

    // GET - Récupérer un service par ID
    @GetMapping("/{id}")
    public ResponseEntity<Service> getServiceById(@PathVariable Long id) {
        Service service = serviceRepository.findById(id)
                .orElseThrow(() -> new ResponseStatusException(
                    HttpStatus.NOT_FOUND, "Service non trouvé avec l'id: " + id));
        return ResponseEntity.ok(service);
    }

    // GET - Récupérer un service par titre
    @GetMapping("/title/{title}")
    public ResponseEntity<Service> getServiceByTitle(@PathVariable String title) {
        Service service = serviceRepository.findByTitle(title)
                .orElseThrow(() -> new ResponseStatusException(
                    HttpStatus.NOT_FOUND, "Service non trouvé avec le titre: " + title));
        return ResponseEntity.ok(service);
    }

    // GET - Rechercher des services par mot-clé
    @GetMapping("/search")
    public List<Service> searchServices(@RequestParam String keyword) {
        List<Service> results = serviceRepository.findByTitleContainingIgnoreCase(keyword);
        results.addAll(serviceRepository.findByDescriptionContainingIgnoreCase(keyword));
        results.addAll(serviceRepository.findByFullDescriptionContainingIgnoreCase(keyword));
        return results.stream().distinct().toList();
    }

    // POST - Créer un nouveau service
    @PostMapping
    public ResponseEntity<Service> createService(@RequestBody Service service) {
        // Vérifier si le titre existe déjà
        if (serviceRepository.existsByTitle(service.getTitle())) {
            throw new ResponseStatusException(
                HttpStatus.BAD_REQUEST, "Un service avec ce titre existe déjà");
        }
        
        Service savedService = serviceRepository.save(service);
        return new ResponseEntity<>(savedService, HttpStatus.CREATED);
    }

    // PUT - Mettre à jour un service
    @PutMapping("/{id}")
    public ResponseEntity<Service> updateService(
            @PathVariable Long id, 
            @RequestBody Service serviceDetails) {
        
        Service service = serviceRepository.findById(id)
                .orElseThrow(() -> new ResponseStatusException(
                    HttpStatus.NOT_FOUND, "Service non trouvé avec l'id: " + id));
        
        // Mise à jour des champs
        service.setTitle(serviceDetails.getTitle());
        service.setDescription(serviceDetails.getDescription());
        service.setFullDescription(serviceDetails.getFullDescription());
        service.setIcon(serviceDetails.getIcon());
        
        Service updatedService = serviceRepository.save(service);
        return ResponseEntity.ok(updatedService);
    }

    // DELETE - Supprimer un service
    @DeleteMapping("/{id}")
    public ResponseEntity<Void> deleteService(@PathVariable Long id) {
        Service service = serviceRepository.findById(id)
                .orElseThrow(() -> new ResponseStatusException(
                    HttpStatus.NOT_FOUND, "Service non trouvé avec l'id: " + id));
        
        serviceRepository.delete(service);
        return ResponseEntity.noContent().build();
    }

    // DELETE - Supprimer tous les services
    @DeleteMapping
    public ResponseEntity<Void> deleteAllServices() {
        serviceRepository.deleteAll();
        return ResponseEntity.noContent().build();
    }
}