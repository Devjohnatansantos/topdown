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