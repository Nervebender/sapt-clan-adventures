// Set default speed and direction if not already set
if (!variable_instance_exists(id, "speed")) speed = 4;
if (!variable_instance_exists(id, "direction")) direction = 0;

damage = 2;

// Set sprite angle to match direction
image_angle = direction;