package ch.fhnw.bzStreaming.controller;
import ch.fhnw.bzStreaming.model.Episode;
import ch.fhnw.bzStreaming.repositories.EpisodeRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Optional;

@RestController
@RequestMapping("/api/episodes")
public class EpisodeController {

    private final EpisodeRepo episodeRepo;

    @Autowired
    public EpisodeController(EpisodeRepo episodeRepo) {
        this.episodeRepo = episodeRepo;
    }

    @GetMapping("/all")
    @CrossOrigin(origins = "*")
    public List<Episode> getEpisodes() {
        return episodeRepo.findAll();
    }

    @GetMapping("/{id}")
    @CrossOrigin(origins = "*")
    public Optional<Episode> getEpisodeById(@PathVariable int id) {
        return episodeRepo.findById(id);
    }
}
