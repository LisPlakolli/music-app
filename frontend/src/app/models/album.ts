export interface Album {
  id?: number;
  title: string;
  artist: string;
  genre: string;
  releaseYear: number;
  coverUrl: string;
  featured?: boolean;
}
