if (global.dialogo == false && global.cutscene == false)
{
movimento();
estado();
if (_space && timer_correr >= 0)
{
	timer_correr--;
}
else
{
	if(!_space)
	{
	if (timer_correr < 30)
	{
	 timer_correr++;	
	}
	}
}
}
timer--;

depth = -bbox_bottom;



#region diálogos

if(distance_to_object(obj_par_npcs) <= 10 and global.dialogo == false and timer <= 0)
{
	if(keyboard_check_pressed(vk_space))
	{
		var _npc = instance_nearest(x, y, obj_par_npcs)
		var _dialogo = instance_create_layer(x, y, "dialogo", obj_dialogos);
		_dialogo.npc_nome = _npc.npc_nome;
		
	}
	
}


#endregion diálogos


if (knockback_x != 0)
{
    if (!place_meeting(x + knockback_x, y, obj_parede))
    {
        x += knockback_x;
    }
    else
    {
      
        while (!place_meeting(x + sign(knockback_x), y, obj_parede))
        {
            x += sign(knockback_x);
        }

        knockback_x = 0;
    }
}


if (knockback_y != 0)
{
    if (!place_meeting(x, y + knockback_y, obj_parede))
    {
        y += knockback_y;
    }
    else
    {
        while (!place_meeting(x, y + sign(knockback_y), obj_parede))
        {
            y += sign(knockback_y);
        }

        knockback_y = 0;
    }
}

knockback_x *= knockback_friction;
knockback_y *= knockback_friction;

if (abs(knockback_x) < 0.1) knockback_x = 0;
if (abs(knockback_y) < 0.1) knockback_y = 0;

show_debug_message(estrelas)

if (estrelas >= 3)
{
	room_goto_next();
}






