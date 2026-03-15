move_speed = 1;
kb_x = 0;
kb_y = 0;
target_x = x;
target_y = y;

hp = 30;
hp_max = 30; 

spiral_angle = 0;          
alarm[2] = room_speed * 2;

image_blend = c_white;
alarm[1] = -1;

tilemap = layer_tilemap_get_id("Tiles_Collision");
