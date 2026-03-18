import { ChangeDetectorRef, Component, OnInit } from '@angular/core';
import { CommonModule, JsonPipe } from '@angular/common';
import { Album } from '../../models/album';
import { AlbumService } from '../../services/album.service';

@Component({
  selector: 'app-album-list',
  standalone: true,
  imports: [CommonModule],
  templateUrl: './album-list.html',
  styleUrl: './album-list.css'
})
export class AlbumListComponent implements OnInit {
  albums: Album[] = [];

  constructor(
    private albumService: AlbumService,
    private cdr: ChangeDetectorRef
  ) {}

  ngOnInit(): void {
    console.log('AlbumListComponent loaded');

    this.albumService.getAlbums().subscribe({
      next: (data) => {
        console.log('RAW DATA FROM ANGULAR REQUEST:', data);
        console.log('IS ARRAY?', Array.isArray(data));
        console.log('LENGTH:', data.length);

        this.albums = [...data];
        this.cdr.detectChanges();
      },
      error: (err) => {
        console.error('FETCH ERROR:', err);
      }
    });
  }
}
