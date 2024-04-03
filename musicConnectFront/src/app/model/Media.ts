import { Post } from "./Post";

export type Media = {
    id: number;
    src: string;
    post: Post[];
}