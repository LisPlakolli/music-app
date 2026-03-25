import { ChangeDetectorRef, Component, OnInit } from '@angular/core';
import { CommonModule } from '@angular/common';
import { ActivatedRoute, RouterLink } from '@angular/router';
import { Album } from '../../models/album';
import { Review } from '../../models/review';
import { User } from '../../models/user';
import { AlbumService } from '../../services/album.service';
import { ReviewService } from '../../services/review.service';
import { UserService } from '../../services/user.service';
import { Location } from '@angular/common';

@Component({
  selector: 'app-album-detail',
  standalone: true,
  imports: [CommonModule, RouterLink],
  templateUrl: './album-detail.html',
  styleUrl: './album-detail.css'
})
export class AlbumDetail implements OnInit {
  album?: Album;
  reviews: Review[] = [];
  averageRating = 0;
  currentUser: User | null = null;

  constructor(
    private route: ActivatedRoute,
    private albumService: AlbumService,
    private reviewService: ReviewService,
    private userService: UserService,
    private cdr: ChangeDetectorRef,
    private location: Location
  ) {}

  ngOnInit(): void {
    const id = Number(this.route.snapshot.paramMap.get('id'));
    this.currentUser = this.userService.getCurrentUser();

    this.albumService.getAlbumById(id).subscribe({
      next: (data) => {
        this.album = data;
        this.cdr.detectChanges();
      },
      error: (err) => {
        console.error('Error fetching album:', err);
      }
    });

    this.reviewService.getReviewsByAlbumId(id).subscribe({
      next: (data) => {
        this.reviews = data;
        this.averageRating = this.calculateAverageRating(data);
        this.cdr.detectChanges();
      },
      error: (err) => {
        console.error('Error fetching reviews:', err);
      }
    });
  }

  goBack(): void {
  this.location.back();
}

  calculateAverageRating(reviews: Review[]): number {
    if (reviews.length === 0) return 0;
    const total = reviews.reduce((sum, review) => sum + review.rating, 0);
    return Number((total / reviews.length).toFixed(1));
  }
}
