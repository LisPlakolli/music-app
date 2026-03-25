package musicapp.service;

import musicapp.entity.News;
import musicapp.repository.NewsRepository;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class NewsService {

    private final NewsRepository newsRepository;

    public NewsService(NewsRepository newsRepository) {
        this.newsRepository = newsRepository;
    }

    public List<News> getAllNews() {
        return newsRepository.findAll();
    }

    public List<News> getFeaturedNews() {
        return newsRepository.findByFeaturedTrue();
    }
}
