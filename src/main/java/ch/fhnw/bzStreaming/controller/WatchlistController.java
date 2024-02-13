package ch.fhnw.bzStreaming.controller;
import ch.fhnw.bzStreaming.model.Anime;
import ch.fhnw.bzStreaming.model.User;
import ch.fhnw.bzStreaming.repositories.UserRepo;
import ch.fhnw.bzStreaming.repositories.WatchlistRepo;
import ch.fhnw.bzStreaming.services.TokenService;
import ch.fhnw.bzStreaming.services.WatchlistService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.web.bind.annotation.*;

import java.util.Optional;
import java.util.Set;

import static java.lang.Integer.parseInt;

@RestController
@RequestMapping("/api/watchlist")
public class WatchlistController {

    private final WatchlistRepo watchlistRepo;
    private final UserRepo userRepo;
    private final WatchlistService watchlistService;

    @Autowired
    public WatchlistController(WatchlistRepo watchlistRepo, UserRepo userRepo, WatchlistService watchlistService) {
        this.watchlistRepo = watchlistRepo;
        this.userRepo = userRepo;
        this.watchlistService = watchlistService;
    }

    @CrossOrigin(origins = "*")
    @GetMapping("")
    public Set<Anime> getWatchlistById(@RequestHeader(HttpHeaders.AUTHORIZATION) String auth) {
        TokenService ts = new TokenService();
        String userId = ts.getUserIdFromToken(auth);
        Optional<User> ou = userRepo.findById(parseInt(userId));
        return ou.map(user -> user.getWatchlist().getAnimes()).orElse(null);
    }

    @CrossOrigin(origins = "*")
    @DeleteMapping("/{animeId}")
    public void removeAnimeFromWatchlist(@RequestHeader(HttpHeaders.AUTHORIZATION) String auth, @PathVariable int animeId) {
        TokenService ts = new TokenService();
        String userId = ts.getUserIdFromToken(auth);
        watchlistService.removeAnimeFromWatchlist(Integer.parseInt(userId),animeId);

    }

    @CrossOrigin(origins = "*")
    @PostMapping("/{animeId}")
    public void addAnimetoWatchlist(@RequestHeader(HttpHeaders.AUTHORIZATION) String auth, @PathVariable int animeId) {
        TokenService ts = new TokenService();
        String userId = ts.getUserIdFromToken(auth);
        watchlistService.addAnimeToWatchlist(Integer.parseInt(userId), animeId);
    }

}
