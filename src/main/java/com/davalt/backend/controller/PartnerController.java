package com.davalt.backend.controller;

import com.davalt.backend.model.Partner;
import com.davalt.backend.repository.PartnerRepository;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@CrossOrigin(origins = "http://localhost:5173")
@RestController
@RequestMapping("/api/partners")
public class PartnerController {

    private final PartnerRepository partnerRepository;

    public PartnerController(PartnerRepository partnerRepository) {
        this.partnerRepository = partnerRepository;
    }

    @GetMapping
    public List<Partner> getPartners() {
        return partnerRepository.findAll();
    }

    @PostMapping
    public Partner savePartner(@RequestBody Partner partner) {
        return partnerRepository.save(partner);
    }

    @PutMapping("/{id}")
    public Partner updatePartner(@PathVariable Long id, @RequestBody Partner updatedPartner) {
        return partnerRepository.findById(id)
                .map(partner -> {
                    partner.setName(updatedPartner.getName());
                    return partnerRepository.save(partner);
                })
                .orElseThrow();
    }

    @DeleteMapping("/{id}")
    public void deletePartner(@PathVariable Long id) {
        partnerRepository.deleteById(id);
    }
}