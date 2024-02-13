package ch.fhnw.bzStreaming.repositories;

import ch.fhnw.bzStreaming.model.Season;
import org.springframework.data.jpa.repository.JpaRepository;

public interface SeasonRepo extends JpaRepository<Season, Integer> {
}
