import { HttpClient, HttpHeaders } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { Media } from '../model/Media';
import { Observable } from 'rxjs';

@Injectable({
  providedIn: 'root'
})
export class PostService {

  private baseUrl = 'http://localhost:8080/api/v1/media';

  constructor(private http: HttpClient) { }

  add(media: Media): Observable<Media> {
    const headers = new HttpHeaders({ 'Content-Type': 'application/json' });
    return this.http.post<Media>(`${this.baseUrl}`, media, { headers });
  }

  getAll(): Observable<Media[]> {
    return this.http.get<Media[]>(`${this.baseUrl}`);
  }

  getById(id: number): Observable<Media> {
    return this.http.get<Media>(`${this.baseUrl}/${id}`);
  }

  delete(id: number): Observable<void> {
    return this.http.delete<void>(`${this.baseUrl}/${id}`);
  }

  update(id: number, media: Media): Observable<Media> {
    const headers = new HttpHeaders({ 'Content-Type': 'application/json' });
    return this.http.put<Media>(`${this.baseUrl}/${id}`, media, { headers });
  }
}