_room = room;

if (keyboard_check_pressed(vk_tab))
{
	if (_room != room_last)
	{
		room_goto_next();
	}
}