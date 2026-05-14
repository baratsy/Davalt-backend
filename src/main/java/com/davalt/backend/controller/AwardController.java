package com.davalt.backend.controller;

import com.davalt.backend.model.Award;
import com.davalt.backend.repository.AwardRepository;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@CrossOrigin(origins = "http://localhost:5173")
@RestController
@RequestMapping("/api/awards")
public class AwardController {

    private final AwardRepository awardRepository;

    public AwardController(AwardRepository awardRepository) {
        this.awardRepository = awardRepository;
    }

    @GetMapping
    public List<Award> getAwards(){
        return awardRepository.findAll();
    }

    @PostMapping
    public Award saveAward(@RequestBody Award award){
        return awardRepository.save(award);
    }

    @DeleteMapping("/{id}")
    public void deleteAward(@PathVariable Long id){
        awardRepository.deleteById(id);
    }
    @PutMapping("/{id}")
    public Award updateAward(@PathVariable Long id, @RequestBody Award updatedAward){

        return awardRepository.findById(id)
                .map(award -> {
                    award.setTitle(updatedAward.getTitle());
                    award.setYear(updatedAward.getYear());
                    award.setCategory(updatedAward.getCategory());
                    award.setImage(updatedAward.getImage());

                    return awardRepository.save(award);
                })
                .orElseThrow();
    }
}