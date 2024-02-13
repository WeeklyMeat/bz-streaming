package ch.fhnw.bzStreaming;

import ch.fhnw.bzStreaming.services.TokenService;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.springframework.http.HttpMethod;
import org.springframework.stereotype.Component;
import org.springframework.web.servlet.HandlerInterceptor;

import java.util.Enumeration;

@Component
public class JWTInterceptor implements HandlerInterceptor {

    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) {

        if (request.getMethod().equals(HttpMethod.OPTIONS.name())) {
            return true;
        }

        TokenService ts = new TokenService();
        if (ts.validateToken(request.getHeader("Authorization"))) {
            String userId = ts.getUserIdFromToken(request.getHeader("Authorization"));
            request.setAttribute("userId", userId);
            return true;
        } else {
            response.setStatus(HttpServletResponse.SC_UNAUTHORIZED);
            return false;
        }
    }
}
