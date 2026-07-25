draw_self();
if (global.dialogo == false && global.cutscene == false)
{
if (_space)
{
draw_rectangle(x - timer_correr, y + 12, x + timer_correr, y + 11, false);
}

if(!_space && timer_correr < 30)
{
	draw_rectangle(x - timer_correr, y + 12, x + timer_correr, y + 11, false);
}
}