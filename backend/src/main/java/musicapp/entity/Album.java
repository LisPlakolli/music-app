package musicapp.entity;

import jakarta.persistence.*;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

@Entity
@Table(name = "albums")
@JsonIgnoreProperties({"hibernateLazyInitializer", "handler"})
public class Album {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private String title;
    private String artist;
    private String genre;
    private Boolean featured;

    @Column(name = "release_year")
    private Integer releaseYear;

    @Column(name = "cover_url")
    private String coverUrl;

    //Constructors
    public Album(){
    }

    public Album(Long id, String title, String artist, String genre, Integer releaseYear, String coverUrl, Boolean featured){
        this.id = id;
        this.title = title;
        this.artist = artist;
        this.genre = genre;
        this.releaseYear = releaseYear;
        this.coverUrl = coverUrl;
        this.featured = featured;
    }

    //Getters
    public Long getId() {
        return id;
    }
    public String getTitle() {
        return title;
    }
    public String getArtist() {
        return artist;
    }
    public String getGenre() {
        return genre;
    }
    public Integer getReleaseYear() {
        return releaseYear;
    }
    public String getCoverUrl() {
        return coverUrl;
    }
    public Boolean getFeatured() {
        return featured;
    }

    //Setters
    public void setId(Long id) {
        this.id = id;
    }
    public void setTitle(String title) {
        this.title = title;
    }
    public void setArtist(String artist) {
        this.artist = artist;
    }
    public void setGenre(String genre) {
        this.genre = genre;
    }
    public void setReleaseYear(Integer releaseYear) {
        this.releaseYear = releaseYear;
    }
    public void setCoverUrl(String coverUrl) {
        this.coverUrl = coverUrl;
    }
    public void setFeatured(Boolean featured) {
        this.featured = featured;
    }
}
