if (image_index > 2 || !instance_exists(obj_player))
{
	exit;	
}
else
{
	var _distance = 15;
	if (distance_to_object(obj_player) <= _distance)
	{
		randomize()
		var _image = irandom_range(3, 5)
		image_index = _image;
		
	}
	
}