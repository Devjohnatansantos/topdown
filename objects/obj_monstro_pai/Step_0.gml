estado();
timer_pedra--;
depth = -bbox_bottom;
var _distance = distance_to_object(obj_player)
show_debug_message(_distance)


if(place_meeting(x + velh, y, obj_parede))
{
	var _velh = sign(velh);
	
	while(!place_meeting(x + _velh, y, obj_parede))
	{
		x += _velh;
	}
	
	velh = 0;
}

x += velh;

if(place_meeting(x, y + velv, obj_parede))
{
	var _velv = sign(velv);
	
	while(!place_meeting(x, y  + _velv, obj_parede))
	{
		y += _velv;
	}
	
	velv = 0;
}

y += velv;


	
