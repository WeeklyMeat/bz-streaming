package ch.fhnw.bzStreaming.controller;

import ch.fhnw.bzStreaming.model.Anime;
import ch.fhnw.bzStreaming.model.Episode;
import ch.fhnw.bzStreaming.model.Season;
import ch.fhnw.bzStreaming.repositories.AnimeRepo;
import ch.fhnw.bzStreaming.repositories.EpisodeRepo;
import ch.fhnw.bzStreaming.repositories.SeasonRepo;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Optional;

@RestController
@RequestMapping("/api/season")
public class SeasonController {

    private final SeasonRepo seasonRepo;

    public SeasonController(SeasonRepo seasonRepo) {
        this.seasonRepo = seasonRepo;
    }

    @CrossOrigin(origins = "*")
    @GetMapping("/{id}")
    public Optional<Season> getSeasonById(@PathVariable int id) {
        return seasonRepo.findById(id);
    }
}
