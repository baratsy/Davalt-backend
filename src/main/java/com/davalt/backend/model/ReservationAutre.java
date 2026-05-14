package com.davalt.backend.model;

import jakarta.persistence.*;
import lombok.*;
import java.time.LocalDateTime;

@Entity
@Table(name = "reservation_autre")
@Getter
@Setter

@NoArgsConstructor
@AllArgsConstructor
@Builder
public class ReservationAutre {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(nullable = false, length = 150)
    private String nom;

    @Column(nullable = false, length = 150)
    private String email;

    @Column(name = "type_projet", nullable = false, length = 100)
    private String typeProjet;

    @Column(nullable = false, columnDefinition = "TEXT")
    private String synopsis;

    @Column(nullable = false, length = 100)
    private String duree;

    @ManyToOne
    @JoinColumn(name = "talent_id", nullable = false)
    private Talent talent;

    @Column(name = "date_creation", updatable = false)
    private LocalDateTime dateCreation;

    @PrePersist
    protected void onCreate() {
        this.dateCreation = LocalDateTime.now();
    }
}