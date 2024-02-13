package ch.fhnw.bzStreaming;

import ch.fhnw.bzStreaming.model.Anime;
import ch.fhnw.bzStreaming.model.Season;
import ch.fhnw.bzStreaming.repositories.AnimeRepo;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.orm.jpa.DataJpaTest;
import org.springframework.boot.test.autoconfigure.orm.jpa.TestEntityManager;
import org.springframework.test.context.ActiveProfiles;

import java.util.*;

import static org.junit.jupiter.api.Assertions.*;

@ActiveProfiles("test")
@DataJpaTest
public class AnimeRepoTest {

    @Autowired
    private TestEntityManager entityManager;

    @Autowired
    private AnimeRepo animeRepo;

    private Anime preSavedAnime;
    private Anime anime;

    @BeforeEach
    void setUp() {
        anime = new Anime();
        anime.setTitle("Test Anime");
        anime.setDescription("Test Description");
        anime.setEpisodeCount(10);
        anime.setImageUrl("http://example.com/image.png");
        anime.setLink("http://example.com");

        Season season1 = new Season();
        season1.setAnime(anime);
        Season season2 = new Season();
        season2.setAnime(anime);
        anime.setSeasons(new HashSet<>(Arrays.asList(season1, season2)));
        preSavedAnime = entityManager.persistFlushFind(anime);
    }



    @Test
    public void testSaveAndRetrieveAnime() {
        Anime savedAnime = animeRepo.save(anime);

        Optional<Anime> retrievedAnime = animeRepo.findById(savedAnime.getId());
        assertTrue(retrievedAnime.isPresent());
        assertEquals("Test Anime", retrievedAnime.get().getTitle());
    }

    @Test
    public void testUpdateAnime() {
        Anime anime = new Anime();
        anime.setTitle("Original Title");
        Anime savedAnime = animeRepo.save(anime);

        savedAnime.setTitle("Updated Title");
        animeRepo.save(savedAnime);

        Anime updatedAnime = animeRepo.findById(savedAnime.getId()).get();
        assertEquals("Updated Title", updatedAnime.getTitle());
    }

    @Test
    public void testDeleteAnime() {
        Anime anime = new Anime();
        anime.setTitle("Test Anime");
        Anime savedAnime = animeRepo.save(anime);

        animeRepo.delete(savedAnime);

        Optional<Anime> deletedAnime = animeRepo.findById(savedAnime.getId());
        assertFalse(deletedAnime.isPresent());
    }

    @Test
    public void testFindAnimeById() {
        Optional<Anime> foundAnime = animeRepo.findById(anime.getId());

        assertTrue(foundAnime.isPresent(), "Anime should be found with the given ID");
        assertEquals("Test Anime", foundAnime.get().getTitle(), "Retrieved anime title should match the saved title");
    }

    @Test
    public void testLazyLoadingOfSeasons() {
        Anime anime = animeRepo.findById(preSavedAnime.getId()).get();
        Set<Season> seasons = anime.getSeasons();
        assertNotNull(seasons);
        assertFalse(seasons.isEmpty());
    }
}
