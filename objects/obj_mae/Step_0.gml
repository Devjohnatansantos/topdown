// Inherit the parent event
event_inherited();

var alvo = obj_player;

var dist = point_distance(x, y, alvo.x, alvo.y);

var parado_dist = 20;
var spd = 1;

if (dist > parado_dist)
{
    var dir = point_direction(x, y, alvo.x, alvo.y);

	andando = true
    hspeed = lengthdir_x(spd, dir);
    vspeed = lengthdir_y(spd, dir);
	
}
else
{
	andando = false;
    hspeed = lerp(hspeed, 0, 1);
    vspeed = lerp(vspeed, 0, 1);

}

if (speed == 0 && andando == false)
{
	sprite_index = spr_mae;
	
}
else
{
	sprite_index = spr_mae_walk;
}

if (hspeed > 0)
{
	image_xscale = 1;
	
}
else if(hspeed < 0)
{
	image_xscale = -1
	
}

