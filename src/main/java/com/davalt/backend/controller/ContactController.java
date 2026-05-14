package com.davalt.backend.controller;

import com.davalt.backend.model.Contact;
import com.davalt.backend.repository.ContactRepository;

import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/contacts")
@RequiredArgsConstructor
@CrossOrigin("*")
public class ContactController {

    private final ContactRepository contactRepository;

    // 📌 GET ALL
    @GetMapping
    public List<Contact> getAllContacts() {
        return contactRepository.findAll();
    }

    // 📌 GET BY ID
    @GetMapping("/{id}")
    public Contact getContactById(@PathVariable Long id) {
        return contactRepository.findById(id)
                .orElseThrow(() -> new RuntimeException("Contact non trouvé"));
    }

    // 📌 CREATE
    @PostMapping
    public Contact createContact(@RequestBody Contact contact) {
        return contactRepository.save(contact);
    }

    // 📌 UPDATE
    @PutMapping("/{id}")
    public Contact updateContact(@PathVariable Long id, @RequestBody Contact updatedContact) {

        Contact contact = contactRepository.findById(id)
                .orElseThrow(() -> new RuntimeException("Contact non trouvé"));

        contact.setLabel(updatedContact.getLabel());
        contact.setValue(updatedContact.getValue());

        return contactRepository.save(contact);
    }

    // 📌 DELETE
    @DeleteMapping("/{id}")
    public void deleteContact(@PathVariable Long id) {
        contactRepository.deleteById(id);
    }
}