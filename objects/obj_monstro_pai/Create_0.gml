estado = noone;
tempo_estado = room_speed * 10;
timer_estado = 0;

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
	image_blend = c_white;
	
	muda_estado([passeando]);
}

passeando = function()
{
	tempo_estado--;
	show_debug_message("Estou passeando")
	image_blend = c_red;
	muda_estado([parado]);
	
}

estado = parado;