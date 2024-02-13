package ch.fhnw.bzStreaming.services;

import ch.fhnw.bzStreaming.model.User;
import ch.fhnw.bzStreaming.model.Watchlist;
import ch.fhnw.bzStreaming.repositories.UserRepo;
import ch.fhnw.bzStreaming.repositories.WatchlistRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional
public class UserService {

    private final UserRepo userRepo;
    private final WatchlistRepo watchlistRepo;
    private final BCryptPasswordEncoder bCryptPasswordEncoder;

    @Autowired
    public UserService(UserRepo userRepo, WatchlistRepo watchlistRepo) {
        this.userRepo = userRepo;
        this.watchlistRepo = watchlistRepo;
        this.bCryptPasswordEncoder = new BCryptPasswordEncoder();
    }

    public User createUser(String username, String email, String password) {
        String hashedPassword = bCryptPasswordEncoder.encode(password);
        User newUser = new User();
        newUser.setAvatar_Url("http://localhost:8080/images/placeholder.png");
        newUser.setUsername(username);
        newUser.setEmail(email);
        newUser.setPassword(hashedPassword);

        Watchlist newWatchlist = new Watchlist();
        newWatchlist.setUser(newUser);
        newUser.setWatchlist(newWatchlist);

        userRepo.save(newUser);
        watchlistRepo.save(newWatchlist);
        System.out.println("User registered: " + username);
        return newUser;
    }

    public boolean validateUser(String username, String password) {
        User user = userRepo.findByUsername(username);
        if (user != null) {
            return bCryptPasswordEncoder.matches(password, user.getPassword());
        }
        return false;
    }

    public boolean updateUserPassword(int userId, String currentPassword, String newPassword) {
        User user = userRepo.findById(userId).orElse(null);

        if (user != null && bCryptPasswordEncoder.matches(currentPassword, user.getPassword())) {
            String encodedNewPassword = bCryptPasswordEncoder.encode(newPassword);
            user.setPassword(encodedNewPassword);
            userRepo.save(user);
            return true;
        } else {
            return false;
        }
    }


    public boolean usernameExists(String username) {
        return userRepo.findByUsername(username) != null;
    }
}
