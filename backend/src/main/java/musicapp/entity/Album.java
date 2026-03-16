package musicapp.entity;
import jakarta.persistence.*;

@Entity
@Table(name = "albums")
public class Album {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private String title;
    private String artist;
    private String genre;
    private Integer release_year;
    private String cover_url;

    //Constructors
    public Album(){
    }

    public Album(Long id, String title, String artist, String genre, Integer release_year, String cover_url){
        this.id = id;
        this.title = title;
        this.artist = artist;
        this.genre = genre;
        this.release_year = release_year;
        this.cover_url = cover_url;
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
    public Integer getYear() {
        return release_year;
    }
    public String getUrl() {
        return cover_url;
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
    public void setYear(Integer release_year) {
        this.release_year = release_year;
    }
    public void setUrl(String cover_url) {
        this.cover_url = cover_url;
    }
}
