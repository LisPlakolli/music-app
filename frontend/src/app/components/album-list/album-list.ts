import { ChangeDetectorRef, Component, OnInit } from '@angular/core';
import { CommonModule } from '@angular/common';
import { RouterLink } from '@angular/router';
import { Album } from '../../models/album';
import { AlbumService } from '../../services/album.service';

@Component({
  selector: 'app-album-list',
  standalone: true,
  imports: [CommonModule, RouterLink],
  templateUrl: './album-list.html',
  styleUrl: './album-list.css'
})
export class AlbumListComponent implements OnInit {
  albums: Album[] = [];
  currentSlide = 0;
  albumsPerSlide = 3;

  constructor(
    private albumService: AlbumService,
    private cdr: ChangeDetectorRef
  ) {}

  ngOnInit(): void {
    this.albumService.getAlbums().subscribe({
      next: (data) => {
        this.albums = [...data];
        this.cdr.detectChanges();
      },
      error: (err) => {
        console.error('Error fetching albums:', err);
      }
    });
  }

  get slides(): Album[][] {
    const result: Album[][] = [];
    for (let i = 0; i < this.albums.length; i += this.albumsPerSlide) {
      result.push(this.albums.slice(i, i + this.albumsPerSlide));
    }
    return result;
  }

  nextSlide(): void {
    if (this.slides.length === 0) return;
    this.currentSlide = (this.currentSlide + 1) % this.slides.length;
  }

  prevSlide(): void {
    if (this.slides.length === 0) return;
    this.currentSlide = (this.currentSlide - 1 + this.slides.length) % this.slides.length;
  }

  goToSlide(index: number): void {
    this.currentSlide = index;
  }
}
