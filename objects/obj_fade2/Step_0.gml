fade_alpha -= 0.01;

fade_alpha = clamp(fade_alpha, 0, 1);

if (fade_alpha <= 0)
{
	instance_destroy();
	
}