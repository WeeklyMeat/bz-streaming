package ch.fhnw.bzStreaming.controller;


import ch.fhnw.bzStreaming.model.Anime;
import ch.fhnw.bzStreaming.repositories.AnimeRepo;
import ch.fhnw.bzStreaming.services.TokenService;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Optional;

@RestController
@RequestMapping("/api/anime")
public class AnimeController {

    private final AnimeRepo animeRepo;

    @Autowired
    public AnimeController(AnimeRepo animeRepo) {
        this.animeRepo = animeRepo;
    }

    @CrossOrigin(origins = "*")
    @GetMapping("/all")
    public List<Anime> getAllAnimes(@RequestHeader(HttpHeaders.AUTHORIZATION) String auth) {
        return animeRepo.findAll();
    }

    @CrossOrigin(origins = "*")
    @GetMapping("/{id}")
    public Optional<Anime> getAnimeById(@RequestHeader(HttpHeaders.AUTHORIZATION) String auth, @PathVariable int id) {
        return animeRepo.findById(id);
    }

}
