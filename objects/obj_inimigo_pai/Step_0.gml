if (distance_to_object(obj_player) <= distancia)
{
	speed = 1.3;
	direction = point_direction(x, y, obj_player.x, obj_player.y);
	
}
else
{
	
	speed = 0.5;	
	direction = dir;
}