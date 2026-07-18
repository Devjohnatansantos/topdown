

if (y <= obj_player.y)
{
	vspeed = lerp(vspeed, 1.5, .1) 
}
else
{
	instance_destroy();
}

if (place_meeting(x, y, obj_pedra))
{
    var inst = instance_place(x, y, obj_pedra);

    if (inst != noone)
    {
        var dir = point_direction(inst.x, inst.y, x, y);

        x += lengthdir_x(4, dir);
        y += lengthdir_y(4, dir);
    }
}