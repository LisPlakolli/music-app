package musicapp.service;

import musicapp.entity.Album;
import musicapp.entity.Review;
import musicapp.entity.User;
import musicapp.repository.AlbumRepository;
import musicapp.repository.ReviewRepository;
import musicapp.repository.UserRepository;
import org.springframework.stereotype.Service;

import java.time.LocalDateTime;
import java.util.List;

@Service
public class ReviewService {

    private final ReviewRepository reviewRepository;
    private final UserRepository userRepository;
    private final AlbumRepository albumRepository;

    public ReviewService(ReviewRepository reviewRepository, UserRepository userRepository, AlbumRepository albumRepository) {
        this.reviewRepository = reviewRepository;
        this.userRepository = userRepository;
        this.albumRepository = albumRepository;
    }

    public List<Review> getReviewsByAlbumId(Long albumId) {
        return reviewRepository.findByAlbumId(albumId);
    }

    public List<Review> getReviewsByUserId(Long userId) {
        return reviewRepository.findByUserId(userId);
    }

    public Review addReview(Long userId, Long albumId, Review review) {
        User user = userRepository.findById(userId).orElse(null);
        Album album = albumRepository.findById(albumId).orElse(null);

        if (user == null || album == null) {
            return null;
        }

        review.setUser(user);
        review.setAlbum(album);
        review.setCreatedAt(LocalDateTime.now());

        return reviewRepository.save(review);
    }

    public Review updateReview(Long reviewId, Review updatedReview) {
        Review existingReview = reviewRepository.findById(reviewId).orElse(null);

        if (existingReview == null) {
            return null;
        }

        existingReview.setRating(updatedReview.getRating());
        existingReview.setReviewText(updatedReview.getReviewText());

        return reviewRepository.save(existingReview);
    }
}
