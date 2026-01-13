
if (tomar_dano == true && !place_meeting(x, y, obj_parede))
{
knockback_speed = 4;
knockback_dir = point_direction(other.x, other.y, x, y);
}