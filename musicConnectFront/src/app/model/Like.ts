import { Post } from "./Post";
import { TUser } from "./TUser";

export type Like = {
    id: number;
    post: Post;
    user: TUser;
}