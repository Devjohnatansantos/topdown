if (distance_to_object(obj_player) <= distancia)
{
	speed = 1.3;
	direction = point_direction(x, y, obj_player.x, obj_player.y);
	
}
else
{
	
	speed = 0.5;	
	if (x <= 0 || x >= room_width - sprite_width) {
    hspeed = -hspeed;
}


if (y <= 0 || y >= room_height - sprite_height) {
    vspeed = -vspeed;
}
}

