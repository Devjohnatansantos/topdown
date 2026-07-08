estado();
depth = -bbox_bottom;

	var _dist = 50;
	if (distance_to_object(obj_player) <= _dist)
	{
		muda_estado([perseguir])	
	}
