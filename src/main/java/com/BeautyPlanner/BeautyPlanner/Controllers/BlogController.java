package com.BeautyPlanner.BeautyPlanner.Controllers;

import org.springframework.web.bind.annotation.*;
import com.BeautyPlanner.BeautyPlanner.models.Post;
import com.BeautyPlanner.BeautyPlanner.repo.PostRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

@Controller
public class BlogController {
    @Autowired
    private PostRepository postRepository;

    @GetMapping("/blog")
    public String blogMain(Model model) {
        //tablica danych pkazuje wszytskie posty
        Iterable<Post> post = postRepository.findAll();
        model.addAttribute("posts", post);
        return "blog-main";
    }

    @GetMapping("/blog/add")
    public String blogAdd(Model model) {
        return "blog-add";
    }

    @PostMapping("/blog/add")
    public String blogPostAdd(@RequestParam String title, @RequestParam String anons, @RequestParam String full_text, Model model) {
        //Tworzenie objektu na podstawie klasy post
        Post post = new Post(title, anons, full_text);
        //zwracam się do postRepository aby zapisać objekt do bazy danych
        postRepository.save(post);
        //na jaką stronę skierować po wysłaniu do bazy danych
        return "redirect:/blog";
    }

    //Odczytanie id posta {dynamiczny parametr}
    @GetMapping("/blog/{id}")
    public String blogDetails(@PathVariable(value = "id") Long id, Model model) {
        Optional<Post> postOptional = postRepository.findById(id);
        if (postOptional.isEmpty()) {
            return "404"; // Możesz utworzyć stronę 404.html lub przekierować gdziekolwiek indziej
        }

        Post post = postOptional.get();
        model.addAttribute("post", post);
        return "post-details"; // Twój widok do wyświetlenia szczegółów posta
    }

    // Metoda usuwania postu
    @PostMapping("/blog/delete/{id}")
    public String deletePost(@PathVariable(value = "id") Long id) {
        // Usunięcie postu z repozytorium
        postRepository.deleteById(id);
        // Przekierowanie na stronę główną bloga
        return "redirect:/blog";
    }

}


