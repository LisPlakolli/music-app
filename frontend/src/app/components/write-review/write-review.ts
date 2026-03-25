import { ChangeDetectorRef, Component, OnInit } from '@angular/core';
import { CommonModule } from '@angular/common';
import { FormsModule } from '@angular/forms';
import { ActivatedRoute, Router, RouterLink } from '@angular/router';
import { Album } from '../../models/album';
import { User } from '../../models/user';
import { AlbumService } from '../../services/album.service';
import { ReviewService } from '../../services/review.service';
import { UserService } from '../../services/user.service';

@Component({
  selector: 'app-write-review',
  standalone: true,
  imports: [CommonModule, FormsModule, RouterLink],
  templateUrl: './write-review.html',
  styleUrl: './write-review.css'
})
export class WriteReview implements OnInit {
  album?: Album;
  currentUser: User | null = null;
  rating = 0;
  reviewText = '';
  message = '';

  constructor(
    private route: ActivatedRoute,
    private router: Router,
    private albumService: AlbumService,
    private reviewService: ReviewService,
    private userService: UserService,
    private cdr: ChangeDetectorRef
  ) {}

  ngOnInit(): void {
    const albumId = Number(this.route.snapshot.paramMap.get('id'));
    this.currentUser = this.userService.getCurrentUser();

    if (!this.currentUser) {
      this.router.navigate(['/login']);
      return;
    }

    this.albumService.getAlbumById(albumId).subscribe({
      next: (data) => {
        this.album = data;
        this.cdr.detectChanges();
      },
      error: (err) => {
        console.error('Error fetching album:', err);
      }
    });
  }

  setRating(value: number): void {
    this.rating = value;
  }

  submitReview(): void {
    if (!this.currentUser || !this.album) return;

    if (this.rating < 1 || this.reviewText.trim() === '') {
      this.message = 'Please add a rating and review text.';
      return;
    }

    this.reviewService.addReview(this.currentUser.id!, this.album.id!, {
      rating: this.rating,
      reviewText: this.reviewText,
      user: {
        id: this.currentUser.id!,
        username: this.currentUser.username,
        email: this.currentUser.email
      }
    }).subscribe({
      next: () => {
        this.router.navigate(['/albums', this.album?.id]);
      },
      error: (err) => {
        console.error('Error submitting review:', err);
        this.message = 'Failed to submit review.';
      }
    });
  }
}
