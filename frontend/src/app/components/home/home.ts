import { ChangeDetectorRef, Component, OnInit } from '@angular/core';
import { CommonModule } from '@angular/common';
import { RouterLink } from '@angular/router';
import { Album } from '../../models/album';
import { News } from '../../models/news';
import { AlbumService } from '../../services/album.service';
import { NewsService } from '../../services/news.service';

@Component({
  selector: 'app-home',
  standalone: true,
  imports: [CommonModule, RouterLink],
  templateUrl: './home.html',
  styleUrl: './home.css'
})
export class Home implements OnInit {
  featuredAlbums: Album[] = [];
  featuredNews: News[] = [];

  constructor(
    private albumService: AlbumService,
    private newsService: NewsService,
    private cdr: ChangeDetectorRef
  ) {}

  ngOnInit(): void {
    this.albumService.getFeaturedAlbums().subscribe({
      next: (data) => {
        this.featuredAlbums = [...data];
        this.cdr.detectChanges();
      },
      error: (err) => {
        console.error('Error fetching featured albums:', err);
      }
    });

    this.newsService.getFeaturedNews().subscribe({
      next: (data) => {
        this.featuredNews = [...data];
        this.cdr.detectChanges();
      },
      error: (err) => {
        console.error('Error fetching featured news:', err);
      }
    });
  }
}
