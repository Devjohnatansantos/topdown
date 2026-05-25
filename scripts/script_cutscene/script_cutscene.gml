function cutscene_wait(_segundos){

timerc++;

if(timerc >= room_speed * _segundos)
{
	timerc = 0;
	action++;
	
}

}

function cutscene_up(_segundos, _spd){

timerc++;
obj_player.y-= _spd;

if(timerc >= room_speed * _segundos)
{
	timerc = 0;
	action++;
	
}


}

function cutscene_left(_segundos, _spd){

timerc++;
obj_player.x-=_spd;

if(timerc >= room_speed * _segundos)
{
	timerc = 0;
	action++;
	
}


}
