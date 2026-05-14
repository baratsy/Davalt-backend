package com.davalt.backend.model;

import jakarta.persistence.*;

@Entity
@Table(name = "service")
public class Service {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String title;

    @Column(length = 2000)
    private String description;

    @Column(length = 5000)
    private String fullDescription;

    @Column(length = 10)
    private String icon;

    // Constructeur vide
    public Service() {}

    // Constructeur complet
    public Service(Long id, String title, String description, 
                        String fullDescription, String icon) {
        this.id = id;
        this.title = title;
        this.description = description;
        this.fullDescription = fullDescription;
        this.icon = icon;
    }

    // Getters et Setters
    public Long getId() { 
        return id; 
    }
    
    public void setId(Long id) { 
        this.id = id; 
    }

    public String getTitle() { 
        return title; 
    }
    
    public void setTitle(String title) { 
        this.title = title; 
    }

    public String getDescription() { 
        return description; 
    }
    
    public void setDescription(String description) { 
        this.description = description; 
    }

    public String getFullDescription() { 
        return fullDescription; 
    }
    
    public void setFullDescription(String fullDescription) { 
        this.fullDescription = fullDescription; 
    }

    public String getIcon() { 
        return icon; 
    }
    
    public void setIcon(String icon) { 
        this.icon = icon; 
    }
}