// Movement
if (!global.dialog_active) {
	var _hor = keyboard_check(ord("D")) - keyboard_check(ord("A"));
	var _ver = keyboard_check(ord("S")) - keyboard_check(ord("W"));

	move_and_collide(_hor * move_speed, _ver * move_speed, tilemap, undefined, undefined, undefined, move_speed, move_speed);

	if (_hor != 0 or _ver != 0) {
		if (_ver > 0) sprite_index = spr_player_walk_down;
		else if (_ver < 0) sprite_index = spr_player_walk_up;
		else if (_hor > 0) sprite_index = spr_player_walk_right;
		else if (_hor < 0) sprite_index = spr_player_walk_left;
		
		facing = point_direction(0, 0, _hor, _ver);
	}
	else {	
		if (sprite_index == spr_player_walk_right) sprite_index = spr_player_idle_right;
		else if (sprite_index == spr_player_walk_left) sprite_index = spr_player_idle_left;
		else if (sprite_index == spr_player_walk_up) sprite_index = spr_player_idle_up;
		else if (sprite_index == spr_player_walk_down) sprite_index = spr_player_idle_down;
	}
        }
// Attack
    if (attack_cooldown > 0) {
    attack_cooldown -= 1;
    }

    if (keyboard_check_pressed(vk_space) && attack_cooldown <= 0 && !global.dialog_active) {

    var dist = 0;
    var dir = facing;

    var _x = x + lengthdir_x(dist, dir);
    var _y = y + lengthdir_y(dist, dir);

    // Choose which projectile to spawn
    var proj;
    if (room == Room0 || room == Room5) {
        proj = obj_attack_long;
    } else {
        proj = obj_attack;
    }

    var _inst = instance_create_depth(_x, _y, depth, proj);
    _inst.image_angle = dir;
    _inst.damage = damage;
        
    if (proj = obj_attack) {
        var proj_speed = 5;
        _inst.max_distance = 100; 
        _inst.hspeed = lengthdir_x(proj_speed, dir);
        _inst.vspeed = lengthdir_y(proj_speed, dir);
    } else {
        var proj_speed = 20;
        _inst.max_distance = 1000; 
        _inst.hspeed = lengthdir_x(proj_speed, dir);
        _inst.vspeed = lengthdir_y(proj_speed, dir);
    } 

    _inst.start_x = _x;
    _inst.start_y = _y;


    attack_cooldown = attack_cooldown_max;
}