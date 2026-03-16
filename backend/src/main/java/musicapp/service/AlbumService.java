package musicapp.service;

import musicapp.entity.Album;
import musicapp.repository.AlbumRepository;
import org.springframework.stereotype.Service;
import java.util.List;

@Service
public class AlbumService {

    private final AlbumRepository albumRepository;

    public AlbumService(AlbumRepository albumRepository) {
        this.albumRepository = albumRepository;
    }

    public List<Album> getAllAlbums() {
        return albumRepository.findAll();
    }

    public Album getAlbumById(Long id) {
        return albumRepository.findById(id).orElse(null);
    }

    public Album addAlbum(Album album) {
        return albumRepository.save(album);
    }

    public Album updateAlbum(Long id, Album updatedAlbum) {
        Album existingAlbum = albumRepository.findById(id).orElse(null);
        if (existingAlbum != null) {
            existingAlbum.setTitle(updatedAlbum.getTitle());
            existingAlbum.setArtist(updatedAlbum.getArtist());
            existingAlbum.setGenre(updatedAlbum.getGenre());
            existingAlbum.setYear(updatedAlbum.getYear());
            existingAlbum.setUrl(updatedAlbum.getUrl());

            return albumRepository.save(existingAlbum);
        }

        return null;
    }

    public void deleteAlbum(Long id) {
        albumRepository.deleteById(id);
    }
}
