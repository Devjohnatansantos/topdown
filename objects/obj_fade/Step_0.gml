fade_alpha += 0.01;

fade_alpha = clamp(fade_alpha, 0, 1);

if (fade_alpha >= 1)
{
	room_goto_next();
	
}