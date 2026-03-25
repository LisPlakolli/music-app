package musicapp.entity;

import jakarta.persistence.*;
import java.time.LocalDateTime;

@Entity
@Table(name = "news")
public class News {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String title;

    @Column(columnDefinition = "TEXT")
    private String content;

    @Column(name = "image_url")
    private String imageUrl;

    private Boolean featured;

    @Column(name = "published_at")
    private LocalDateTime publishedAt;

    private String link;

    public News() {
    }

    public News(Long id, String title, String content, String imageUrl, Boolean featured, LocalDateTime publishedAt) {
        this.id = id;
        this.title = title;
        this.content = content;
        this.imageUrl = imageUrl;
        this.featured = featured;
        this.publishedAt = publishedAt;
    }

    //Getters
    public Long getId() {
        return id;
    }

    public String getTitle() {
        return title;
    }

    public String getContent() {
        return content;
    }

    public String getImageUrl() {
        return imageUrl;
    }

    public Boolean getFeatured() {
        return featured;
    }

    public LocalDateTime getPublishedAt() {
        return publishedAt;
    }

    public String getLink() {
        return link;
    }

    //Setters
    public void setId(Long id) {
        this.id = id;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public void setImageUrl(String imageUrl) {
        this.imageUrl = imageUrl;
    }

    public void setFeatured(Boolean featured) {
        this.featured = featured;
    }

    public void setPublishedAt(LocalDateTime publishedAt) {
        this.publishedAt = publishedAt;
    }

    public void setLink(String link) {
        this.link = link;
    }
}
