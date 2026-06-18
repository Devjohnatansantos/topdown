if(drag)
{
	x = mouse_x;
	y = mouse_y;
}

if (place_meeting(x, y, Obj_tilexadrez))
{

    target_x = round(x / global.grid_size) * global.grid_size;
    target_y = round(y / global.grid_size) * global.grid_size;


	x = lerp(x, target_x, 0.2);
	y = lerp(y, target_y, 0.2);
	
}