package ch.fhnw.bzStreaming;

import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.cors.CorsConfiguration;
import org.springframework.web.cors.CorsConfigurationSource;
import org.springframework.web.cors.UrlBasedCorsConfigurationSource;
import org.springframework.web.filter.CorsFilter;

import java.util.Arrays;
import java.util.List;

@Configuration
@ConfigurationProperties(prefix = "app")
public class AppConfigProperties {
    private String access;
    private String url;
    private static final String SEPARATOR = ",";

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    public String getAccess() {
        return access;
    }

    public void setAccess(String access) {
        this.access = access;
    }

    public String[] getAccessEndpoints() {
        if(access == null) return new String[]{};
        return access.split(SEPARATOR);
    }

    @Bean
    public CorsConfigurationSource corsConfigurationSource() {
        if (this.url == null) return new UrlBasedCorsConfigurationSource();
        CorsConfiguration configuration = new CorsConfiguration();
        configuration.setAllowedOriginPatterns(List.of(this.url, "*"));
        configuration.addAllowedHeader("*");
        configuration.addAllowedMethod("*");
        configuration.setAllowCredentials(true);
        configuration.setAllowCredentials(true);
        UrlBasedCorsConfigurationSource source = new UrlBasedCorsConfigurationSource();
        for (String endpoint : getAccessEndpoints()) {
            source.registerCorsConfiguration(endpoint, configuration);
        }
        return source;
    }


}
