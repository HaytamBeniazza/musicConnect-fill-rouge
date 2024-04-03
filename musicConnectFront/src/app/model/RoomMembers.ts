import { Room } from "./Room";
import { TUser } from "./TUser";

export type RoomMembers = {
    id: number;
    member: TUser;
    room: Room;
}