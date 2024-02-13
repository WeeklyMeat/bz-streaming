package ch.fhnw.bzStreaming.controller;
import ch.fhnw.bzStreaming.model.Anime;
import ch.fhnw.bzStreaming.model.User;
import ch.fhnw.bzStreaming.repositories.UserRepo;
import ch.fhnw.bzStreaming.services.TokenService;
import ch.fhnw.bzStreaming.services.UserPasswordUpdateRequest;
import ch.fhnw.bzStreaming.services.UserService;
import jakarta.servlet.http.HttpServletResponse;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Optional;

@RestController
@RequestMapping("/api/user")
public class UserController {
    private final UserRepo userRepo;
    private final UserService userService;

    @Autowired
    public UserController(UserRepo userRepo, UserService userService) {
        this.userRepo = userRepo;
        this.userService = userService;
    }

    @CrossOrigin(origins = "*")
    @GetMapping("")
    public ResponseEntity<User> getUser(@RequestHeader(HttpHeaders.AUTHORIZATION) String auth) {
        TokenService ts = new TokenService();
        String userId = ts.getUserIdFromToken(auth);
        Optional<User> ou = userRepo.findById(Integer.parseInt(userId));
        if (ou.isPresent()) {
            return ResponseEntity.ok(ou.get());
        } else {
            return ResponseEntity.status(HttpStatus.NOT_FOUND).body(null);
        }
    }

    @CrossOrigin(origins = "*")
    @PatchMapping("")
    public ResponseEntity<String> updateUserPassword(@RequestHeader(HttpHeaders.AUTHORIZATION) String auth, @RequestBody UserPasswordUpdateRequest updateRequest, HttpServletResponse response) {
        TokenService ts = new TokenService();
        String userId = ts.getUserIdFromToken(auth);
        try {
            boolean isUpdated = userService.updateUserPassword(Integer.parseInt(userId), updateRequest.getCurrentPassword(), updateRequest.getNewPassword());
            if (isUpdated) {
                return ResponseEntity.ok("Password updated successfully");
            } else {
                response.setStatus(HttpServletResponse.SC_UNAUTHORIZED);
                return ResponseEntity.status(HttpStatus.UNAUTHORIZED).body("Invalid current password or user ID");
            }
        } catch (Exception e) {
            return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).body("Error updating password: " + e.getMessage());
        }
    }
}
