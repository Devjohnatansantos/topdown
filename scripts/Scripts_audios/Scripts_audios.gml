function parar_sons()
{
	audio_stop_all();
	
}

function toca_som(_som, _loop)
{
	audio_play_sound(_som, 1, _loop)
	
}