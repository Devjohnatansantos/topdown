if (mouse_check_button_pressed(mb_left))
{
    drawing = true;

    array_resize(draw_points_x, 0);
    array_resize(draw_points_y, 0);
}

if (drawing && mouse_check_button(mb_left))
{
    array_push(draw_points_x, mouse_x);
    array_push(draw_points_y, mouse_y);
}

if (mouse_check_button_released(mb_left))
{
    drawing = false;
}