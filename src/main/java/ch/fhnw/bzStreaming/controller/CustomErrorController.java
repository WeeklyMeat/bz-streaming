package ch.fhnw.bzStreaming.controller;

import org.springframework.boot.web.servlet.error.ErrorAttributes;
import org.springframework.boot.web.servlet.error.ErrorController;
import org.springframework.core.io.ClassPathResource;
import org.springframework.core.io.Resource;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.context.request.WebRequest;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.util.Map;

@Controller
public class CustomErrorController implements ErrorController {

    private final ErrorAttributes errorAttributes;

    public CustomErrorController(ErrorAttributes errorAttributes) {
        this.errorAttributes = errorAttributes;
    }

    @RequestMapping("/error")
    public ResponseEntity<String> handleError(WebRequest webRequest, Map<String, Object> model) throws IOException  {
        Resource resource = new ClassPathResource("templates/index.html");
        Path path = resource.getFile().toPath();
        String content = Files.readString(path);
        return ResponseEntity.ok().body(content);
    }

    public String getErrorPath() {
        return "/error";
    }
}
