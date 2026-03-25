import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { Observable } from 'rxjs';
import { News } from '../models/news';

@Injectable({
  providedIn: 'root'
})
export class NewsService {
  private apiUrl = 'http://localhost:8080/news';

  constructor(private http: HttpClient) {}

  getAllNews(): Observable<News[]> {
    return this.http.get<News[]>(this.apiUrl);
  }

  getFeaturedNews(): Observable<News[]> {
    return this.http.get<News[]>(`${this.apiUrl}/featured`);
  }
}
