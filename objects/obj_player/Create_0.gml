#region movimentação

velh = 0;
velv = 0;
max_vel = 0.2;
vel = 0;
move_dir = 0;
timer_correr = room_speed * 1;






distance = 50;

movimento =function()
{
var _up = keyboard_check(ord("W")),
_down = keyboard_check(ord("S")),
_right = keyboard_check(ord("D")),
_left = keyboard_check(ord("A"));
_space = keyboard_check(vk_space);




if (_up xor _down or _left xor _right)
{
	move_dir = point_direction(0, 0, (_right-_left), (_down-_up))
	
	if (_space && timer_correr >= 0)
	{
		vel = 1;
	}
	else
	{
		vel = max_vel;
	}
}
else
{
	vel = lerp(vel, 0, 1);	
	
}

velh = lengthdir_x(vel, move_dir);
velv = lengthdir_y(vel, move_dir);



var _velh = sign(velh)

repeat(abs(velh))
{
	if (place_meeting(x + _velh, y, obj_parede))
	{
		velh = 0;
	}
	else
	{
		x += _velh;
	}
	
}

var _velv = sign(velv)

repeat(abs(velv))
{
	if (place_meeting(x, y + _velv, obj_parede))
	{
		velv = 0;
	}
	else
	{
		y += _velv;
	}
	
}



if (velh > 0) {
    image_xscale = 1;  
}
else if (velh < 0) {
    image_xscale = -1;  
}

move_and_collide(_velh, _velv, obj_parede);


}


normal = function()
{

	max_vel = 0.5;
	
	
	
		if (velh > 0 or velh < 0 or velv > 0 or velv < 0)
	{
		if (global.mente == true)
		{
			sprite_index = spr_player_anda1_mente;
		}
		else
		{
			sprite_index = spr_player_anda1;
		}
		
	}
	else
	{
		if (global.mente == true)
		{
			sprite_index = spr_player1_mente;
		}
		else
		{
			sprite_index = spr_player1
		}
	}
	
}



estado = normal;

#endregion movimentação
timer = 0;
