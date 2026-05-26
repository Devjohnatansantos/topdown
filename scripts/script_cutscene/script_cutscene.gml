function _end()
{

		action++
	
		if ( action >= array_length(cutscene))
		{
			
			instance_destroy();
			
		}

	
	
	
}

function cutscene_wait(_segundos){

timerc++;

if(timerc >= room_speed * _segundos)
{
	timerc = 0;
	_end();

	
	
}

}

function cutscene_up(_segundos, _spd){

timerc++;
obj_player.y-= _spd;

if(timerc >= room_speed * _segundos)
{
	timerc = 0;
	_end()

	
	
}


}

function cutscene_left(_segundos, _spd){

timerc++;
obj_player.x-=_spd;

if(timerc >= room_speed * _segundos)
{
	timerc = 0;
	_end()

	
	
	
}


}

function cutscene_dialogo(_segundos){

timerc++;

if(timerc >= room_speed * _segundos)
{
	timerc = 0;
	var _dialogo = instance_create_layer(x, y, "dialogo", obj_dialogos1);
	_dialogo.npc_nome = "Richarlison";
	_end();

	
}
}

function cutscene_dialogo_wait(_segundos){

timerc++;

if(timerc >= room_speed * _segundos and global.dialogo == false)
{
	timerc = 0;
	_end();

	
}
}
