if (instance_exists(obj_player) && (!global.dialog_active)) {
    for (var i = 0; i < 8; i++) {
        var dir = i * 45 + spiral_angle; // N, E, S, W + spiral rotation
        var proj = instance_create_layer(x, y, "Instances_1", obj_boss_attack);
        proj.speed = 4;
        proj.direction = dir;
        proj.image_angle = dir;
    }
    
    spiral_angle += 15; 
}

alarm[2] = room_speed * 1; 