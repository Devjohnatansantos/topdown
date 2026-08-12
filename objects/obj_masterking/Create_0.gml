estado = noone;
tempo_estado = room_speed * 5;
timer_estado = 0;
destino_x = x;
destino_y = y;
velh = 0;
velv = 0;
som_tocado = false;
_dist = noone;
vel = 1;
timer_pedra = 0;
timer_atk = 0;



muda_estado = function(_estado)
{
	tempo_estado--;
	randomize();
	timer_estado = irandom(tempo_estado);
	
	if (timer_estado == tempo_estado or tempo_estado <= 0)
	{
		estado = _estado[irandom(array_length(_estado)-1)];	
		tempo_estado = room_speed * 5;
	}
}

perseguir = function()
{
	sprite_index = Sprite_andando;
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
		image_index = 0;
		estado = atk;
	}
	
}

parado = function()
{
	sprite_index = Sprite_parado;
	velh = 0;
	velv = 0;
	
	
	_dist = 100;
	if (distance_to_object(obj_player) <= _dist)
	{
		
		estado = perseguir;	
	}
	else
	{
		som_tocado = false;
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
	sprite_index = Sprite_andando;
	
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
		
		sprite_index = Sprite_atk;
		image_speed = 1
		var _dir = point_direction(x, y, obj_player.x, obj_player.y)
	
		velh = lengthdir_x(vel, _dir);
		velv = lengthdir_y(vel, _dir);
		image_xscale = sign(velh);
		
		if (distance_to_object(obj_player) > _dist)
	{
		estado = parado;
	}
			if (image_index > image_number - 1)
			{
				if (timer_atk <= 0)
				{
				estado = atk1;
				}
	
			}
			
			}
		
	atk1 = function()
	{
		
		var _dir = point_direction(x, y, obj_player.x, obj_player.y)
	
		velh = lengthdir_x(vel, _dir);
		velv = lengthdir_y(vel, _dir);
		image_xscale = sign(velh);
		for (var i = 0; i < 8; i++)
		{
			if (timer_atk <= 0)
			{
		    var angulo = i * 45;
    
		    var proj = instance_create_layer(x, y, "Instances", obj_rumble);
    
		    proj.direction = angulo;
		    proj.speed = 3;
			proj.image_angle = proj.direction;
			}
			
			if (i >= 7)
			{
			timer_atk = 240;
			estado = parado;
			}
		}
		
	}
	

	


estado = parado;