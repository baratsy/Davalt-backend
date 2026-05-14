package com.davalt.backend.model;



import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;


@Entity
@Table(name = "calendrier")
public class Calendrier {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;


    private String date;            // "2026-03-25" format texte
    // Alternative recommandée : 
    // private LocalDate date;

    private String status;          // busy, confirmed, option

    private String location;

    private String projet;

    private String imageUrl;



    
        private Integer talentId;
    
        // Constructeur vide requis par JPA
        public Calendrier() {
        }
    
        // Constructeur utile pour tests/insertion rapide
        public Calendrier(Integer talentId, String date, 
                          String status, String projet, String location, String imageUrl) {
            this.talentId = talentId;
        this.date = date;
        this.status = status;
        this.location = location;
        this.projet = projet;
        this.imageUrl = imageUrl;
    }

    // Getters & Setters

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Integer getTalentId() {
        return talentId;
    }

    public void setTalentId(Integer talentId) {
        this.talentId = talentId;
    }

    public String getProjet() {
        return projet;
    }

    public void setProjet(String projet) {
        this.projet = projet;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String getImageUrl() {
        return imageUrl;
    }
    
    public void setImageUrl(String imageUrl) {
        this.imageUrl = imageUrl;
    }

    public String getLocation() {
        return location;
    }

    public void setLocation(String location) {
        this.location = location;
    }



    @Override
    public String toString() {
        return "Calendrier{" +
                "id=" + id +
                ", talentId=" + talentId +
                ", date='" + date + '\'' +
                ", imageUrl='" + imageUrl + '\'' +
                ", status='" + status + '\'' +
                ", location='" + location + '\'' +
                '}';
    }
}