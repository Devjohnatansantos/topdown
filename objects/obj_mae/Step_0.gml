// Inherit the parent event
event_inherited();

var alvo = obj_player;

var dist = point_distance(x, y, alvo.x, alvo.y);

var parado_dist = 15;
var spd = 2;

if (dist > parado_dist)
{
    var dir = point_direction(x, y, alvo.x, alvo.y);

    hspeed = lengthdir_x(spd, dir);
    vspeed = lengthdir_y(spd, dir);
}
else
{
    hspeed = 0;
    vspeed = 0;
}
