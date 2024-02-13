package ch.fhnw.bzStreaming.repositories;

import ch.fhnw.bzStreaming.model.Watchlist;
import org.springframework.data.jpa.repository.JpaRepository;

public interface WatchlistRepo extends JpaRepository<Watchlist, Integer> {
}
