package com.davalt.backend.model;

import jakarta.persistence.*;
import java.time.LocalDate;
import java.time.LocalDateTime;

@Entity
@Table(name = "reservation_artist")
public class ReservationArtist {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(nullable = false, length = 150)
    private String nom;

    @Column(nullable = false, length = 150)
    private String email;

    @Column(name = "type_event", nullable = false, length = 100)
    private String typeEvent;

    @Column(name = "date_event", nullable = false)
    private LocalDate dateEvent;

    @Column(nullable = false, length = 255)
    private String lieu;

    @Column(nullable = false, length = 100)
    private String duree;

    @Column(length = 100)
    private String budget;

    @Column(columnDefinition = "TEXT")
    private String description;

    @ManyToOne
    @JoinColumn(name = "talent_id", nullable = false)
    private Talent talent;  // assuming you have an entity Talent

    @Column(length = 50)
    private String status = "en_attente";

    @Column(name = "date_creation")
    private LocalDateTime dateCreation = LocalDateTime.now();

    // ===== Getters et Setters =====
    public Long getId() { return id; }
    public void setId(Long id) { this.id = id; }

    public String getNom() { return nom; }
    public void setNom(String nom) { this.nom = nom; }

    public String getEmail() { return email; }
    public void setEmail(String email) { this.email = email; }

    public String getTypeEvent() { return typeEvent; }
    public void setTypeEvent(String typeEvent) { this.typeEvent = typeEvent; }

    public LocalDate getDateEvent() { return dateEvent; }
    public void setDateEvent(LocalDate dateEvent) { this.dateEvent = dateEvent; }

    public String getLieu() { return lieu; }
    public void setLieu(String lieu) { this.lieu = lieu; }

    public String getDuree() { return duree; }
    public void setDuree(String duree) { this.duree = duree; }

    public String getBudget() { return budget; }
    public void setBudget(String budget) { this.budget = budget; }

    public String getDescription() { return description; }
    public void setDescription(String description) { this.description = description; }

    public Talent getTalent() { return talent; }
    public void setTalent(Talent talent) { this.talent = talent; }

    public String getStatus() { return status; }
    public void setStatus(String status) { this.status = status; }

    public LocalDateTime getDateCreation() { return dateCreation; }
    public void setDateCreation(LocalDateTime dateCreation) { this.dateCreation = dateCreation; }
}