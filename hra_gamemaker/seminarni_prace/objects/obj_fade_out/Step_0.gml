fade_alpha += fade_speed;
if (fade_alpha >= 1 && target_room != -1) {
    room_goto(target_room);
}
