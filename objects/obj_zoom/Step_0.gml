if (global.pronto == true)

{
zoom = lerp(zoom, 50, 0.001);

var vw = camera_get_view_width(cam);
var vh = camera_get_view_height(cam);

camera_set_view_pos(cam, obj_player.x - vw / 2, obj_player.y - vh / 2);

var largura_base = global.cam_w;
var altura_base = global.cam_h;

camera_set_view_size(
    cam,
    largura_base / zoom,
    altura_base / zoom
);


}