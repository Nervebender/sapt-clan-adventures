
move_speed = 2;

tilemap = layer_tilemap_get_id("Tiles_Collision");

hp = 10;
hp_total = hp;
damage = 1;

facing = 0;

if (room == Room0) {
    attack_cooldown = 1000;  // longer cooldown in first room
} else {
    attack_cooldown = 0;    // no cooldown or normal cooldown elsewhere
}

attack_cooldown_max = 30; 