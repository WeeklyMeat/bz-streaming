package ch.fhnw.bzStreaming.controller;

import org.springframework.core.io.ClassPathResource;
import org.springframework.core.io.Resource;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;

@Controller
@RequestMapping("")
public class IndexController {

    @GetMapping(value = "", produces = MediaType.TEXT_HTML_VALUE)
    @ResponseBody
    public ResponseEntity<String> index() throws IOException {
        Resource resource = new ClassPathResource("templates/index.html");
        Path path = resource.getFile().toPath();
        String content = Files.readString(path);
        return ResponseEntity.ok().body(content);
    }

    @ResponseBody
    @GetMapping(value = "/watch/**", produces = MediaType.TEXT_HTML_VALUE) // no idea
    public ResponseEntity<String> watch() throws IOException {
        Resource resource = new ClassPathResource("templates/index.html");
        Path path = resource.getFile().toPath();
        String content = Files.readString(path);
        return ResponseEntity.ok().body(content);
    }
}
