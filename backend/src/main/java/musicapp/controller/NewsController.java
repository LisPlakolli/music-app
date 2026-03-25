package musicapp.controller;

import musicapp.entity.News;
import musicapp.service.NewsService;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/news")
@CrossOrigin(origins = "http://localhost:4200")
public class NewsController {

    private final NewsService newsService;

    public NewsController(NewsService newsService) {
        this.newsService = newsService;
    }

    @GetMapping
    public List<News> getAllNews() {
        return newsService.getAllNews();
    }

    @GetMapping("/featured")
    public List<News> getFeaturedNews() {
        return newsService.getFeaturedNews();
    }
}
