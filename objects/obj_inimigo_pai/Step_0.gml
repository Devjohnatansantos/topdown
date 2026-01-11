if (distance_to_object(obj_player) <= distancia)
{
	speed = 1.3;
	direction = point_direction(x, y, obj_player.x, obj_player.y);
	sprite_index = spr_inimigo_ataca;
	if (hspeed > 0) {
    image_xscale = 1;   
} else if (hspeed < 0) {
    image_xscale = -1;  
}
}
else
{
	sprite_index = spr_inimigo;
	
	speed = 0.5;	
	if (x <= 0 || x >= room_width - sprite_width) {
    hspeed = -hspeed;
}
if (hspeed > 0) {
    image_xscale = 1;   
} else if (hspeed < 0) {
    image_xscale = -1;  
}


if (y <= 0 || y >= room_height - sprite_height) {
    vspeed = -vspeed;
}
}

if (knockback_speed > 0) {
    hspeed = lengthdir_x(knockback_speed, knockback_dir);
    vspeed = lengthdir_y(knockback_speed, knockback_dir);
	
	knockback_speed *= 0.85;
}

