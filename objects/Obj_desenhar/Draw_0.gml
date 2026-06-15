draw_set_color(c_black);

for (var i = 1; i < array_length(draw_points_x); i++)
{
    draw_line(
        draw_points_x[i - 1],
        draw_points_y[i - 1],
        draw_points_x[i],
        draw_points_y[i]
    );
}