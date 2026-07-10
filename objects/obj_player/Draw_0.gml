draw_self();
if (_space)
{
draw_rectangle(x - timer_correr, y + 20, x + timer_correr, y + 18, false);
}

if(!_space && timer_correr < 30)
{
	draw_rectangle(x - timer_correr, y + 20, x + timer_correr, y + 18, false);
}