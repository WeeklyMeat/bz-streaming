package ch.fhnw.bzStreaming.controller;


import ch.fhnw.bzStreaming.model.User;
import ch.fhnw.bzStreaming.repositories.UserRepo;
import ch.fhnw.bzStreaming.services.TokenService;
import ch.fhnw.bzStreaming.services.UserService;
import jakarta.servlet.http.HttpServletResponse;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/auth")
public class AuthController {

    private final UserRepo userRepo;
    private final UserService userService;

    @Autowired
    public AuthController(UserRepo userRepo, UserService userService) {
        this.userRepo = userRepo;
        this.userService = userService;
    }

    @CrossOrigin(origins = "*")
    @PostMapping("/login")
    public ResponseEntity<JSONMessage> login(@RequestBody User user, HttpServletResponse response) {
        boolean isValidUser = userService.validateUser(user.getUsername(), user.getPassword());
        if (isValidUser) {
            User validatedUser = userRepo.findByUsername(user.getUsername());
            TokenService ts = new TokenService();
            String token = ts.createToken(String.valueOf(validatedUser.getId()));
            return ResponseEntity.ok(new JSONMessage(token));
        } else {
            response.setStatus(HttpServletResponse.SC_UNAUTHORIZED);
            return ResponseEntity.status(HttpStatus.UNAUTHORIZED).body(new JSONMessage("Invalid username or password"));
        }
    }

    @CrossOrigin(origins = "*")
    @PostMapping("/register")
    public ResponseEntity<JSONMessage> register(@RequestBody User user, HttpServletResponse response) {
        try {
            System.out.println("Registering user: " + user.getUsername() + " " + user.getEmail() + " " + user.getPassword());
            User newUser = userService.createUser(user.getUsername(), user.getEmail(), user.getPassword());
            return ResponseEntity.ok(new JSONMessage("User created successfully with ID: " + newUser.getId()));
        } catch (Exception e) {
            return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).body(new JSONMessage("Error creating user: " + e.getMessage()));
        }
    }

    class JSONMessage {
        public String message;
        public JSONMessage(String message) {
            this.message = message;
        }
    }
}
