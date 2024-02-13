package ch.fhnw.bzStreaming;

import ch.fhnw.bzStreaming.controller.AnimeController;
import ch.fhnw.bzStreaming.model.User;
import ch.fhnw.bzStreaming.repositories.AnimeRepo;
import ch.fhnw.bzStreaming.repositories.UserRepo;
import ch.fhnw.bzStreaming.model.Anime;
import ch.fhnw.bzStreaming.services.TokenService;
import ch.fhnw.bzStreaming.services.UserService;
import org.checkerframework.checker.units.qual.A;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.web.servlet.AutoConfigureMockMvc;
import org.springframework.boot.test.autoconfigure.web.servlet.WebMvcTest;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.boot.test.mock.mockito.MockBean;
import org.springframework.http.HttpHeaders;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.ResultMatcher;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Optional;

import static net.bytebuddy.matcher.ElementMatchers.is;
import static org.assertj.core.api.AssertionsForClassTypes.not;
import static org.hamcrest.Matchers.containsString;
import static org.hamcrest.Matchers.hasSize;
import static org.junit.jupiter.api.Assertions.*;
import static org.mockito.Mockito.*;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.get;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.*;

@WebMvcTest(AnimeController.class)
@AutoConfigureMockMvc(addFilters = false)
public class AnimeControllerTest {

    @Autowired
    private MockMvc mockMvc;

    @MockBean
    private AnimeRepo animeRepo;

    @MockBean
    private AnimeController animeController;

    @MockBean
    private TokenService tokenService;

    @MockBean
    private UserService userService;

    private Anime anime1;
    private Anime anime2;
    private Anime anime3;
    private String token;
    private User user1 = new User();


    @BeforeEach
    void setup() {
        user1.setId(1);
        token = tokenService.createToken("1");
        anime1 = new Anime();
        anime1.setTitle("Naruto");
        anime2 = new Anime();
        anime2.setTitle("Dragonball Z");
        anime3 = new Anime();
        List<Anime> mockAnimes = Arrays.asList(anime1, anime2, anime3);
        when(animeRepo.findAll()).thenReturn(mockAnimes);
    }


/*    @Test
    public void testfindAll() throws Exception {

        mockMvc.perform(get("/api/anime/all")
                        .header(HttpHeaders.AUTHORIZATION, token))
                .andExpect(status().isOk())
                .andExpect(content().string(containsString("Naruto")));

        this.mockMvc.perform(get("/api/anime/all"));
        assertEquals(3, animeController.getAllAnimes("USER").size());
        assertNotEquals(2,animeController.getAllAnimes("USER").size());
        verify(this.animeController, times(1)).getAllAnimes("USER");


    }

    @Test
    public void testFindById() throws Exception {
        anime1.setId(1);
        anime2.setId(2);
        anime3.setId(3);

        when(animeRepo.findById(1)).thenReturn(Optional.of(anime1));
        when(animeRepo.findById(2)).thenReturn(Optional.of(anime2));

        mockMvc.perform(get("/api/anime/2"))
                .andExpect(status().isOk())
                .andExpect(content().string(containsString("Dragonball Z")));

        mockMvc.perform(get("/api/anime/1"))
                .andExpect(status().isOk())
                .andExpect((ResultMatcher) jsonPath("$.id", is(1)))
                .andExpect((ResultMatcher) jsonPath("$.id", not(2)));
    }*/
}
