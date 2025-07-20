// Fade In
if (fading_in) {
    fade_alpha -= fade_speed;
    if (fade_alpha <= 0) {
        fade_alpha = 0;
        fading_in = false;
    }
}

// Fade Out
if (fading_out) {
    fade_alpha += fade_speed;
    if (fade_alpha >= 1) {
        fade_alpha = 1;
        fading_out = false;
        if (target_room != noone) {
            room_goto(target_room);
        }
    }
}