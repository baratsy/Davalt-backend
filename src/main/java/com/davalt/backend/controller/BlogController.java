package com.davalt.backend.controller;

import com.davalt.backend.model.Blog;
import com.davalt.backend.model.Talent;
import com.davalt.backend.repository.BlogRepository;
import com.davalt.backend.repository.TalentRepository;

import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/blogs")
@RequiredArgsConstructor
@CrossOrigin("*")
public class BlogController {

    private final BlogRepository blogRepository;
    private final TalentRepository talentRepository;

    // 📌 GET ALL
    @GetMapping
    public List<Blog> getAllBlogs() {
        return blogRepository.findAllByOrderByDatePublicationDesc();
    }

    // 📌 GET BY ID
    @GetMapping("/{id}")
    public Blog getBlogById(@PathVariable Long id) {
        return blogRepository.findById(id)
                .orElseThrow(() -> new RuntimeException("Article non trouvé"));
    }

    // 📌 CREATE
    @PostMapping
    public Blog createBlog(@RequestBody Blog blog) {

        if (blog.getTalent() != null && blog.getTalent().getId() != null) {
            Talent talent = talentRepository.findById(blog.getTalent().getId())
                    .orElseThrow(() -> new RuntimeException("Talent non trouvé"));

            blog.setTalent(talent);
        }

        return blogRepository.save(blog);
    }

    // 📌 UPDATE
    @PutMapping("/{id}")
    public Blog updateBlog(@PathVariable Long id, @RequestBody Blog updatedBlog) {

        Blog blog = blogRepository.findById(id)
                .orElseThrow(() -> new RuntimeException("Article non trouvé"));

        blog.setTitle(updatedBlog.getTitle());
        blog.setExcerpt(updatedBlog.getExcerpt());
        blog.setContent(updatedBlog.getContent());
        blog.setImage(updatedBlog.getImage());
        blog.setCategory(updatedBlog.getCategory());

        if (updatedBlog.getTalent() != null) {
            Talent talent = talentRepository.findById(updatedBlog.getTalent().getId())
                    .orElseThrow(() -> new RuntimeException("Talent non trouvé"));

            blog.setTalent(talent);
        }

        return blogRepository.save(blog);
    }

    // 📌 DELETE
    @DeleteMapping("/{id}")
    public void deleteBlog(@PathVariable Long id) {
        blogRepository.deleteById(id);
    }
}