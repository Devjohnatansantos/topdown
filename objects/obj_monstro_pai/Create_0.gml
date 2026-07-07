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

parado = function()
{
	sprite_index = spr_monstrinho;
	velh = 0;
	velv = 0;
	
	muda_estado([passeando, parado]);
}

passeando = function()
{
	tempo_estado--;
	show_debug_message("Estou passeando")
	sprite_index = spr_jesper_walking;
	
	var _dist = point_distance(x, y, destino_x, destino_y);
	
	if (_dist <= 50)
	{
	destino_x = random(room_width);
	destino_y = random(room_height);
	}
	var _dir = point_direction(x, y, destino_x, destino_y);
	
	velh = lengthdir_x(vel, _dir);
	velv = lengthdir_y(vel, _dir);
	
	image_xscale = sign(velh);
	
	muda_estado([parado, passeando]);
	
}

estado = parado;