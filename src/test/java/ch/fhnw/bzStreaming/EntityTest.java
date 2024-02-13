package ch.fhnw.bzStreaming;

import ch.fhnw.bzStreaming.model.Anime;
import ch.fhnw.bzStreaming.model.User;
import ch.fhnw.bzStreaming.model.Watchlist;
import org.junit.jupiter.api.Test;

import java.util.HashSet;
import java.util.Set;

import static org.junit.jupiter.api.Assertions.*;


public class EntityTest {

    @Test
    public void testSetAndGetId() {
        Watchlist watchlist = new Watchlist();
        watchlist.setId(1);
        assertEquals(1, watchlist.getId());
    }

    @Test
    public void testSetAndGetUser() {
        Watchlist watchlist = new Watchlist();
        User user = new User();
        user.setId(1);
        watchlist.setUser(user);
        assertEquals(user, watchlist.getUser());
        assertEquals(1, watchlist.getUser().getId());
    }

    @Test
    public void testSetAndGetAnimes() {
        Watchlist watchlist = new Watchlist();
        Set<Anime> animes = new HashSet<>();
        Anime anime1 = new Anime();
        Anime anime2 = new Anime();
        animes.add(anime1);
        animes.add(anime2);
        watchlist.setAnimes(animes);
        assertEquals(animes, watchlist.getAnimes());
        assertTrue(watchlist.getAnimes().contains(anime1));
        assertTrue(watchlist.getAnimes().contains(anime2));
    }

    @Test
    public void testAddAnimeToWatchlist() {
        Watchlist watchlist = new Watchlist();
        Set<Anime> animes = new HashSet<>();
        Anime anime = new Anime();
        animes.add(anime);
        watchlist.setAnimes(animes);
        assertTrue(watchlist.getAnimes().contains(anime));
    }

    @Test
    public void testRemoveAnimeFromWatchlist() {
        Watchlist watchlist = new Watchlist();
        Set<Anime> animes = new HashSet<>();
        Anime anime = new Anime();
        animes.add(anime);
        watchlist.setAnimes(animes);
        animes.remove(anime);
        watchlist.setAnimes(animes);
        assertFalse(watchlist.getAnimes().contains(anime));
    }
}
