package com.davalt.backend.model;

import jakarta.persistence.*;

@Entity
@Table(name = "projects")
public class Project {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String title;
    private String category;
    private String year;
    private String client;
    private String thumbnail;
    private String video;

    @Column(length = 2000)
    private String synopsis;

    @Column(length = 1000)
    private String role;

    private String duration;
    private boolean awarded;

    // Constructeur vide
    public Project() {}

    // Constructeur complet
    public Project(Long id, String title, String category, String year, String client,
                   String thumbnail, String video, String synopsis, String role,
                   String duration, boolean awarded) {
        this.id = id;
        this.title = title;
        this.category = category;
        this.year = year;
        this.client = client;
        this.thumbnail = thumbnail;
        this.video = video;
        this.synopsis = synopsis;
        this.role = role;
        this.duration = duration;
        this.awarded = awarded;
    }

    // Getters et Setters
    public Long getId() { return id; }
    public void setId(Long id) { this.id = id; }

    public String getTitle() { return title; }
    public void setTitle(String title) { this.title = title; }

    public String getCategory() { return category; }
    public void setCategory(String category) { this.category = category; }

    public String getYear() { return year; }
    public void setYear(String year) { this.year = year; }

    public String getClient() { return client; }
    public void setClient(String client) { this.client = client; }

    public String getThumbnail() { return thumbnail; }
    public void setThumbnail(String thumbnail) { this.thumbnail = thumbnail; }

    public String getVideo() { return video; }
    public void setVideo(String video) { this.video = video; }

    public String getSynopsis() { return synopsis; }
    public void setSynopsis(String synopsis) { this.synopsis = synopsis; }

    public String getRole() { return role; }
    public void setRole(String role) { this.role = role; }

    public String getDuration() { return duration; }
    public void setDuration(String duration) { this.duration = duration; }

    public boolean isAwarded() { return awarded; }
    public void setAwarded(boolean awarded) { this.awarded = awarded; }
}