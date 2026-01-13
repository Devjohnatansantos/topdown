with(other)
{
	perde_vida();
}

if (distance_to_object(obj_parede) > 30)
{
knockback_speed = 4;
knockback_dir = point_direction(other.x, other.y, x, y);
}