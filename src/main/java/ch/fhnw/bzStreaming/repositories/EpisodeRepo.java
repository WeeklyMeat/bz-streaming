package ch.fhnw.bzStreaming.repositories;

import ch.fhnw.bzStreaming.model.Episode;
import org.springframework.data.jpa.repository.JpaRepository;

public interface EpisodeRepo extends JpaRepository<Episode, Integer> {
}
