package ch.fhnw.bzStreaming.repositories;
import ch.fhnw.bzStreaming.model.Anime;
import org.springframework.data.jpa.repository.JpaRepository;

public interface AnimeRepo extends JpaRepository<Anime, Integer>{
}
