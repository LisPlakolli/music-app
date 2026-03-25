error id: file://<WORKSPACE>/backend/src/main/java/musicapp/controller/NewsController.java:_empty_/CrossOrigin#origins#
file://<WORKSPACE>/backend/src/main/java/musicapp/controller/NewsController.java
empty definition using pc, found symbol in pc: _empty_/CrossOrigin#origins#
empty definition using semanticdb
empty definition using fallback
non-local guesses:

offset: 230
uri: file://<WORKSPACE>/backend/src/main/java/musicapp/controller/NewsController.java
text:
```scala
package musicapp.controller;

import musicapp.entity.News;
import musicapp.service.NewsService;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/news")
@CrossOrigin(origi@@ns = "http://localhost:4200")
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

```


#### Short summary: 

empty definition using pc, found symbol in pc: _empty_/CrossOrigin#origins#