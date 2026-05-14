package com.davalt.backend.service;

import com.davalt.backend.model.Project;
import com.davalt.backend.repository.ProjectRepository;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ProjectService {

    private final ProjectRepository repo;

    public ProjectService(ProjectRepository repo) {
        this.repo = repo;
    }

    public List<Project> getAll() {
        return repo.findAll();
    }

    public Project create(Project project) {
        return repo.save(project);
    }

    public Project update(Long id, Project project) {
        project.setId(id);
        return repo.save(project);
    }

    public void delete(Long id) {
        repo.deleteById(id);
    }
}