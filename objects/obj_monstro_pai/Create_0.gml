estado = noone;
velh = 0;
velv = 0;
vel = 2;
timer = 0;



estado_parado = function()
{
	velh = 0;
	velv = 0;
	
	var _dist = 30;
	if (distance_to_object(obj_player) <= _dist && timer <= 0)
	{
		estado = seguindo_player;
		
	}
	else
	{
		randomize()
		var _num = irandom_range(1, 2)
		
		if (_num == 1)
		{
			estado = estado_parado;
		}
		else
		{
			estado = estado_rondando;
		}
	}
	
}

estado_rondando = function()
{
	var _dir = irandom_range(1, 360)
	
	
	
}