// Inherit the parent event
    if !is_dead {
    event_inherited();
    }

    if (hp <= 0 && !is_dead) {
    is_dead = true;
    sprite_index = spr_skeleton_death;
    image_speed = 0.1;
    alarm[1] = sprite_get_number(spr_skeleton_death) / image_speed;
    }