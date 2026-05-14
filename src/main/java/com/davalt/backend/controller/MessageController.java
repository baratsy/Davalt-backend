package com.davalt.backend.controller;

import com.davalt.backend.model.Message;
import com.davalt.backend.repository.MessageRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/messages")
@RequiredArgsConstructor
@CrossOrigin("*")
public class MessageController {

    private final MessageRepository messageRepository;

    // 📌 GET ALL MESSAGES
    @GetMapping
    public List<Message> getAllMessages() {
        return messageRepository.findAll();
    }

    // 📌 GET MESSAGE BY ID
    @GetMapping("/{id}")
    public Message getMessageById(@PathVariable Long id) {
        return messageRepository.findById(id)
                .orElseThrow(() -> new RuntimeException("Message non trouvé"));
    }

    // 📌 CREATE MESSAGE
    @PostMapping
    public Message createMessage(@RequestBody Message message) {
        return messageRepository.save(message);
    }

    // 📌 DELETE MESSAGE
    @DeleteMapping("/{id}")
    public void deleteMessage(@PathVariable Long id) {
        messageRepository.deleteById(id);
    }
}