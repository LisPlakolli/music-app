package musicapp.controller;

import musicapp.entity.Review;
import musicapp.service.ReviewService;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/reviews")
@CrossOrigin(origins = "http://localhost:4200")
public class ReviewController {

    private final ReviewService reviewService;

    public ReviewController(ReviewService reviewService) {
        this.reviewService = reviewService;
    }

    @GetMapping("/album/{albumId}")
    public List<Review> getReviewsByAlbum(@PathVariable Long albumId) {
        return reviewService.getReviewsByAlbumId(albumId);
    }

    @GetMapping("/user/{userId}")
    public List<Review> getReviewsByUser(@PathVariable Long userId) {
        return reviewService.getReviewsByUserId(userId);
    }

    @PutMapping("/{id}")
    public Review updateReview(@PathVariable Long id, @RequestBody Review review) {
        return reviewService.updateReview(id, review);
    }

    @PostMapping
    public Review addReview(
            @RequestParam Long userId,
            @RequestParam Long albumId,
            @RequestBody Review review
    ) {
        return reviewService.addReview(userId, albumId, review);
    }
}
