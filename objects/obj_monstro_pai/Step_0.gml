estado();
depth = -bbox_bottom;

	var _dist = 20;
	if (distance_to_object(obj_player) <= _dist)
	{
		muda_estado([perseguir])	
	}
