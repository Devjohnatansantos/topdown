#region movimentação

velh = 0;
velv = 0;
max_vel = 1.5;
vel = 0;
move_dir = 0;






distance = 50;

movimento =function()
{
var _up = keyboard_check(ord("W")),
_down = keyboard_check(ord("S")),
_right = keyboard_check(ord("D")),
_left = keyboard_check(ord("A"));


if (_up xor _down or _left xor _right)
{
	move_dir = point_direction(0, 0, (_right-_left), (_down-_up))
	vel = max_vel;
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

	max_vel = 2.5;
	
	
	
		if (velh > 0 or velh < 0 or velv > 0 or velv < 0)
	{
	
		sprite_index = spr_player_anda;
		
	}
	else
	{
		sprite_index = spr_player;
	}
	
}


estado = normal;

#endregion movimentação

#region diálogos

if(distance_to_object(obj_par_npcs) <= 10)
{
	if(keyboard_check_pressed(vk_space))
	{
		var _npc = instance_nearest(x, y, obj_par_npcs)
		var _dialogo = instance_create_layer(x, y, "dialogo", obj_dialogos);
		_dialogo.npc_nome = _npc.npc_nome;
		
	}
	
}


#endregion diálogos