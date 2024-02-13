package ch.fhnw.bzStreaming.services;

import ch.fhnw.bzStreaming.model.Anime;
import ch.fhnw.bzStreaming.model.User;
import ch.fhnw.bzStreaming.model.Watchlist;
import ch.fhnw.bzStreaming.repositories.AnimeRepo;
import ch.fhnw.bzStreaming.repositories.UserRepo;
import ch.fhnw.bzStreaming.repositories.WatchlistRepo;
import org.springframework.stereotype.Service;

import java.util.Optional;

@Service
public class WatchlistService {

    private final WatchlistRepo watchlistRepo;
    private final AnimeRepo animeRepo;
    private final UserRepo userRepo;

    public WatchlistService(WatchlistRepo watchlistRepo, AnimeRepo animeRepo, UserRepo userRepo) {
        this.watchlistRepo = watchlistRepo;
        this.animeRepo = animeRepo;
        this.userRepo = userRepo;
    }


    public void removeAnimeFromWatchlist(int userId, int animeId) {
        Anime anime = animeRepo.findById(animeId).orElseThrow(() -> new RuntimeException("Anime not found"));
        Optional<User> userOpt = userRepo.findById(userId);
        if (userOpt.isPresent()) {
            Watchlist watchlist = userOpt.get().getWatchlist();
            watchlist.getAnimes().remove(anime);
            watchlistRepo.save(watchlist);
        }
        else {
            throw new RuntimeException("Watchlist not found for user id: " + userId);
        }
    }

    public void addAnimeToWatchlist(int userId, int animeId) {
        Anime anime = animeRepo.findById(animeId).orElseThrow(() -> new RuntimeException("Anime not found"));
        Optional<User> userOpt = userRepo.findById(userId);
        if (userOpt.isPresent()) {
            Watchlist watchlist = userOpt.get().getWatchlist();
            watchlist.getAnimes().add(anime);
            watchlistRepo.save(watchlist);
        }
        else {
            throw new RuntimeException("Watchlist not found for user id: " + userId);
        }
    }
}
