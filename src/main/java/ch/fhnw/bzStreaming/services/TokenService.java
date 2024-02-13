package ch.fhnw.bzStreaming.services;

import io.jsonwebtoken.Claims;
import io.jsonwebtoken.Jws;
import io.jsonwebtoken.Jwts;
import io.jsonwebtoken.SignatureAlgorithm;

import javax.crypto.SecretKey;
import javax.crypto.spec.SecretKeySpec;
import java.util.Date;

public class TokenService {

    private final SecretKey secretKey = new SecretKeySpec("crabbyPattyFormulaWithExtraSaltExtraKetchupNoOnions".getBytes(), SignatureAlgorithm.HS256.getJcaName());

    public String createToken(String userId) {

        return Jwts.builder()
                .setSubject(userId)
                .setIssuedAt(new Date())
                .setExpiration(new Date(System.currentTimeMillis() + 1000L * 60 * 60 * 24 * 30)) // 30 days
                .signWith(secretKey)
                .compact();
    }

    public boolean validateToken(String token) {

        try {
            Jws<Claims> claimsJws = Jwts.parserBuilder()
                    .setSigningKey(secretKey)
                    .build()
                    .parseClaimsJws(token);

            Claims body = claimsJws.getBody();
            String subject = body.getSubject();

            System.out.println("User with id: " + subject + " validated");
            return true;
        } catch (Exception e) {
            System.out.println(e.getMessage());
            return false;
        }
    }

    public String getUserIdFromToken(String token) {
        Jws<Claims> claimsJws = Jwts.parserBuilder()
                .setSigningKey(secretKey)
                .build()
                .parseClaimsJws(token);

        Claims body = claimsJws.getBody();
        return body.getSubject();
    }
}
