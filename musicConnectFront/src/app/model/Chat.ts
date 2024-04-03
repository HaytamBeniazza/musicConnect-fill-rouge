import { TUser } from "./TUser";

export type Chat = {
    id: number;
    content: string;
    sender: TUser;
    receiver: TUser;
    sentAt : string;
}