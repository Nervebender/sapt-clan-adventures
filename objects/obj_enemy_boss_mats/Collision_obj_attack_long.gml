hp -= other.damage;

image_blend = c_red;
alarm[1] = 20;

kb_x = sign(x - other.x);
kb_y = sign(y - other.y);

instance_destroy(other);

if (hp <= 0) instance_destroy();