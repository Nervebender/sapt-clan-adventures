if (other == obj_player) {
    other.hp -= damage;   // Apply damage
    instance_destroy();   // Destroy projectile on hit
}
