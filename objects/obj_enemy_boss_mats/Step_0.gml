if (alarm[1] < 0) { 
    target_x = x + kb_x;
    target_y = y + kb_y;
}

var _hor = clamp(target_x - x, -1, 1);
var _ver = clamp(target_y - y, -1, 1);
move_and_collide(_hor * move_speed, _ver * move_speed, [tilemap]);

if (alarm[1] > 0) {
    alarm[1] -= 1;
    if (alarm[1] <= 0) image_blend = c_white;
}

if (!instance_exists(obj_player) || distance_to_object(obj_player) > 300) {
    target_x = x + random_range(-1, 1);
    target_y = y + random_range(-1, 1);
}
