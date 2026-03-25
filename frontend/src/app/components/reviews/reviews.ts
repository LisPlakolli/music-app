import { ChangeDetectorRef, Component, OnInit } from '@angular/core';
import { CommonModule } from '@angular/common';
import { RouterLink } from '@angular/router';
import { Review } from '../../models/review';
import { User } from '../../models/user';
import { ReviewService } from '../../services/review.service';
import { UserService } from '../../services/user.service';

@Component({
  selector: 'app-reviews',
  standalone: true,
  imports: [CommonModule, RouterLink],
  templateUrl: './reviews.html',
  styleUrl: './reviews.css'
})
export class Reviews implements OnInit {
  currentUser: User | null = null;
  reviews: Review[] = [];
  message = '';

  constructor(
    private reviewService: ReviewService,
    private userService: UserService,
    private cdr: ChangeDetectorRef
  ) {}

  ngOnInit(): void {
    this.currentUser = this.userService.getCurrentUser();

    if (!this.currentUser) {
      this.message = 'You must be signed in to view your reviews.';
      return;
    }

    this.reviewService.getReviewsByUserId(this.currentUser.id!).subscribe({
      next: (data) => {
        console.log('USER REVIEWS RAW:', data);
        this.reviews = data;
        if (this.reviews.length === 0) {
          this.message = 'You have not written any reviews yet.';
        }
        this.cdr.detectChanges();
      },
      error: (err) => {
        console.error('Error fetching user reviews:', err);
        this.message = 'Failed to load your reviews.';
      }
    });
  }

  getStars(rating: number): string {
    return '★'.repeat(rating) + '☆'.repeat(5 - rating);
  }
}
