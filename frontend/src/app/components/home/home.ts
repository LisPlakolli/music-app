import { ChangeDetectorRef, Component, OnInit } from '@angular/core';
import { CommonModule } from '@angular/common';
import { Album } from '../../models/album';
import { AlbumService } from '../../services/album.service';

@Component({
  selector: 'app-home',
  standalone: true,
  imports: [CommonModule],
  templateUrl: './home.html',
  styleUrl: './home.css'
})
export class Home implements OnInit {
  featuredAlbums: Album[] = [];

  constructor(
    private albumService: AlbumService,
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
  }
}
