estado = noone;
tempo_estado = room_speed * 10;
timer_estado = 0;
destino_x = x;
destino_y = y;
velh = 0;
velv = 0;
som_tocado = false;
_dist = noone;
vel = 1;
timer_pedra = 0;

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
	if (!som_tocado)
{
    toca_som(Som3, false)
    som_tocado = true;
}
	
	
	var _dir = point_direction(x, y, obj_player.x, obj_player.y)
	
	velh = lengthdir_x(vel, _dir);
	velv = lengthdir_y(vel, _dir);
	image_xscale = sign(velh);
	
	if (distance_to_object(obj_player) > _dist)
	{
		estado = parado;
	}

	if (distance_to_object(obj_player) <= 60 && timer_pedra <= 0)
	{
		estado = atk;
	}
	
}

parado = function()
{
	sprite_index = spr_monstrinho;
	velh = 0;
	velv = 0;
	
	_dist = 100;
	if (distance_to_object(obj_player) <= _dist)
	{
		estado = perseguir;	
	}
	else
	{
		muda_estado([passeando, parado]);
	}
	

}


passeando = function()
{
	if (distance_to_object(obj_player) <= 100)
	{
		estado = perseguir;	
	}
	else
	{
	tempo_estado--;
	show_debug_message("Estou passeando")
	sprite_index = spr_jesper_walking;
	
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
	
	atk = function()
	{
		velh = 0;
		velv = 0;
		sprite_index = spr_jesper_atk;
		image_speed = 1
			if (image_index >= image_number - 1)
			{
				if(timer_pedra <= 0)
				{
					estado = pedra_atk;
					timer_pedra = 180;
					
				}
				else
				{
					
					estado = parado;
					
				}
			}
		
	}
	
	pedra_atk = function()
	{
		repeat(5)
		{
			var _escolha = irandom_range(1, 2)
			if (_escolha == 1)
			{
				var _precisao = random_range(0, 100)
				var _precisaoy = random_range(80, 120)
				instance_create_layer(obj_player.x + _precisao, obj_player.y - _precisaoy, "Instances", obj_pedra)
				estado = parado;
			}
			if (_escolha == 2)
			{
				var _precisao = random_range(0, 100)
				var _precisaoy = random_range(80, 120)
				instance_create_layer(obj_player.x - _precisao, obj_player.y - _precisaoy, "Instances", obj_pedra)
				estado = parado;
			}
		}
	}


estado = parado;