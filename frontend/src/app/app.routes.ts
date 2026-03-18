import { Routes } from '@angular/router';
import { AlbumListComponent } from './components/album-list/album-list';
import { AlbumDetail } from './components/album-detail/album-detail';
import { Home } from './components/home/home';
import { Login } from './components/login/login';
import { Reviews } from './components/reviews/reviews';
import { WriteReview } from './components/write-review/write-review';

export const routes: Routes = [
  { path: '', component: Home },
  { path: 'albums', component: AlbumListComponent },
  { path: 'albums/:id', component: AlbumDetail },
  { path: 'login', component: Login },
  { path: 'reviews', component: Reviews },
  { path: 'write-review', component: WriteReview }
];
