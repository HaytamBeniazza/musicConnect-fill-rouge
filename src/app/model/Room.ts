import { Message } from "./Message";
import { TUser } from "./TUser";

export type Room = {
    id: number;
    name: string;
    owner: TUser;
    members: TUser[];
    messages : Message[];
}