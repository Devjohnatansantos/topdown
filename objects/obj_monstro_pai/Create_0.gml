estado = noone;
tempo_estado = room_speed * 10;
timer_estado = 0;
destino_x = x;
destino_y = y;
velh = 0;
velv = 0;

vel = 1;

muda_estado = function(_estado)
{
	tempo_estado--;
	randomize();
	timer_estado = irandom(tempo_estado);
	
	if (timer_estado == tempo_estado or tempo_estado <= 0)
	{
		estado = _estado[irandom(array_length(_estado)-1)];	
		tempo_estado = room_speed * 10;
	}
}

perseguir = function()
{
	sprite_index = spr_jesper_walking;
	
	var _dir = point_direction(x, y, obj_player.x, obj_player.y)
	
	velh = lengthdir_x(vel, _dir);
	velv = lengthdir_y(vel, _dir);
	image_xscale = sign(velh);
	var _dist = 100;
	
	if (distance_to_object(obj_player) >= 100)
	{
		muda_estado([passeando, parado]);
	}
	
}

percebe_player = function()
{
	
	
}

parado = function()
{
	sprite_index = spr_monstrinho;
	velh = 0;
	velv = 0;
	
	var _dist = 100;
	if (distance_to_object(obj_player) <= _dist)
	{
		muda_estado([perseguir])	
	}
	else
	{
		muda_estado([passeando, parado]);
	}
	

}


passeando = function()
{
	tempo_estado--;
	show_debug_message("Estou passeando")
	sprite_index = spr_jesper_walking;
	
	var _distp = 100;
	if (distance_to_object(obj_player) <= _distp)
	{
		muda_estado([perseguir])	
	}
	else
	{
		
	
	
	var _dist = point_distance(x, y, destino_x, destino_y);
	
	if (_dist <= 100)
	{
		randomize();
	destino_x = random(room_width);
	destino_y = random(room_height);
	}
	var _dir = point_direction(x, y, destino_x, destino_y);
	
	velh = lengthdir_x(vel, _dir);
	velv = lengthdir_y(vel, _dir);
	
	image_xscale = sign(velh);
	
	muda_estado([parado, passeando]);
	}
	
}


estado = parado;