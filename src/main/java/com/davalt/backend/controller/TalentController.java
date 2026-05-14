package com.davalt.backend.controller;

import java.util.List;

import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.davalt.backend.model.Talent;
import com.davalt.backend.repository.TalentRepository;
import org.springframework.web.bind.annotation.RequestMethod;

@RestController
@RequestMapping("/api/talents")
@CrossOrigin(
    origins = "http://localhost:5173",
    methods = { RequestMethod.GET, RequestMethod.POST, RequestMethod.PUT, RequestMethod.DELETE }
)
public class TalentController {

    private final TalentRepository talentRepository;

    public TalentController(TalentRepository talentRepository) {
        this.talentRepository = talentRepository;
    }

    @GetMapping
    public List<Talent> getAllTalents() {
        return talentRepository.findAll();
    }

    @GetMapping("/{id}")
    public Talent getTalentById(@PathVariable Long id) {
        return talentRepository.findById(id).orElse(null);
    }

    @PutMapping("/{id}")
    public Talent updateTalent(@PathVariable Long id, @RequestBody Talent talent) {
        talent.setId(id);
        return talentRepository.save(talent);
    }

    @PostMapping
    public Talent createTalent(@RequestBody Talent talent) {
        return talentRepository.save(talent);
    }

    @DeleteMapping("/{id}")
    public void deleteTalent(@PathVariable Long id) {
        talentRepository.deleteById(id);
    }
}
