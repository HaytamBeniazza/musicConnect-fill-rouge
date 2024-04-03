import { Time } from "@angular/common";
import { Room } from "./Room";
import { TUser } from "./TUser";

export type Message = {
    id: number;
    content: string;
    room: Room;
    sender: TUser;
    time : string;
}