if (y >= obj_player.y and parou == false)
{
	vspeed = lerp(vspeed, -1.5, .1) 
}
else
{
	parou = true;
	vspeed = 0;
	
}

if (place_meeting(x, y, obj_pedra_2))
{
    var inst = instance_place(x, y, obj_pedra_2);

    if (inst != noone)
    {
        var dir = point_direction(inst.x, inst.y, x, y);

        x += lengthdir_x(4, dir);
        y += lengthdir_y(4, dir);
    }
}