export interface Review {
  id?: number;
  rating: number;
  reviewText: string;
  createdAt?: string;
  user: {
    id: number;
    username: string;
    email?: string;
  };
  album?: {
    id: number;
    title?: string;
  };
}
