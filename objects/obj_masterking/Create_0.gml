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


atacando = false;
fase_ataque = 0;
timer_ataque = 0;
tempo_preparacao = room_speed * 2; 
tempo_ativo = room_speed * 2;      
quadrado_visivel = false;

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
		velh = 0;
		velv = 0;
		sprite_index = Sprite_atk;
		image_speed = 1
			if (image_index > image_number - 1)
			{
				
					estado = pedra_atk;
					timer_pedra = 180;
					atacando = true;
					fase_ataque = 1;
					 timer_ataque = tempo_preparacao;
					
			}
				else
				{
					
					estado = parado;
					
				}
			}
		
	
	
	pedra_atk = function()
	{
		
if (!atacando) {

    
    if (keyboard_check_pressed(ord("E"))) {

        atacando = true;
        fase_ataque = 1;
        timer_ataque = tempo_preparacao;

        quadrado_visivel = true;
    }
}




if (atacando) {

   

    if (fase_ataque == 1) {

        timer_ataque--;

      
        quadrado_visivel = ((timer_ataque div 8) mod 2 == 0);


      
        if (timer_ataque <= 0) {

            fase_ataque = 2;

            timer_ataque = tempo_ativo;

            quadrado_visivel = true;
        }
    }


    

    else if (fase_ataque == 2) {

        timer_ataque--;

        
        quadrado_visivel = true;

        if (point_in_rectangle(
            obj_player.x,
            obj_player.y,
            x - tamanho_ataque / 2,
            y - tamanho_ataque / 2,
            x + tamanho_ataque / 2,
            y + tamanho_ataque / 2
        )) {

            if (obj_player.invulnerabilidade <= 0) {

                obj_player.hp -= 10;

                obj_player.invulnerabilidade = room_speed * 0.5;
            }
        }


      

        if (timer_ataque <= 0) {

            atacando = false;
            fase_ataque = 0;

            
            quadrado_visivel = false;
			
			estado = parado;
        }
    }
}
		
	}


estado = parado;