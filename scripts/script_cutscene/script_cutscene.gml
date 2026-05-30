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





function cutscene_dialogo(_segundos){

timerc++;

if(timerc >= room_speed * _segundos)
{
	timerc = 0;
	var _dialogo = instance_create_layer(x, y, "dialogo", obj_dialogos1);
	_dialogo.npc_nome = "Professor.";
	_end();

	
}
}

function cutscene_dialogo_wait(_segundos){

timerc++;

if(timerc >= room_speed * _segundos and global.dialogo == false and global.cutscene == false)
{
	timerc = 0;
	_end();

	
}
}

function cutscene_fade(_segundos){

timerc++;

if(timerc >= room_speed * _segundos and global.dialogo == false && global.cutscene == false)
{
	timerc = 0;
	instance_create_layer(0, 0, "dialogo", obj_fade)
	_end();

	
}
}


function cutscene_andar(_segundos){

timerc++;

if (global.dialogo == true)
{

if(timerc >= room_speed * _segundos and global.cutscene == false)
{
	timerc = 0;
	
	_end();

	
}
}
}


