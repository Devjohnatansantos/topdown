function screenshake(_treme = 1)
{
	if (instance_exists(Obj_screenshake))
	{
		with(Obj_screenshake)
		{
			if (_treme > treme)
			{
				treme = _treme;
			}
		}
	}
}