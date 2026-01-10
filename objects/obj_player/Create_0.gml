velh = 0;
velv = 0;
max_vel = 2.5;
timer = 2;
timer_esquiva = 0;
vida = 3;

knockback_speed = 0;
knockback_dir = 0;


movimento =function()
{
var _up = keyboard_check(ord("W")),
_down = keyboard_check(ord("S")),
_right = keyboard_check(ord("D")),
_left = keyboard_check(ord("A"));


velh = (_right - _left) * max_vel;
velv = (_down - _up) * max_vel;

if (velh > 0) {
    image_xscale = 1;  
}
else if (velh < 0) {
    image_xscale = -1;  
}


move_and_collide(velh, velv, obj_parede);

}

esquiva = function()
{
	tomar_dano = false;
	max_vel = 4;
	sprite_index = spr_player_esquiva;
	
	

	if (image_index >= image_number - 1)
	{
		estado = normal;
	}
	
	
}




normal = function()
{
	tomar_dano = true;
	max_vel = 2.5;
	
			if (keyboard_check_pressed(vk_space) && timer_esquiva <= 0)
{
	
		timer_esquiva = 45;
		image_index = 0;
		estado = esquiva;
	}	
	
		if (velh > 0 or velh < 0 or velv > 0 or velv < 0)
	{
	
		sprite_index = spr_player_anda;
		
	}
	else
	{
		sprite_index = spr_player;
	}
	
	if (mouse_check_button(mb_left))
{
	if(timer <= 0)
	{
	if (mouse_x < x) image_xscale = -1; else image_xscale = 1;
	vacinas();
	estado = atacando;
	}
}


	
}


atacando = function()
{
	
	timer = 11;
	

	sprite_index = spr_player_ataque;

	if (image_index >= image_number - 1)
	{
		estado = normal;	
	}
	
	
}

vacinas = function()
{
		var _tiro = instance_create_layer(x, y, layer, obj_vacina)
	
	_tiro.speed = 5;
	_tiro.direction = point_direction(x, y, mouse_x, mouse_y);
	_tiro.image_angle = point_direction(x, y, mouse_x, mouse_y);
}

perde_vida = function()
{
	if (tomar_dano == true)
	{
	alarm[0] = 10;
	}
}

estado = normal;