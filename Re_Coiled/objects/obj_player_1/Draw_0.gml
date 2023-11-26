draw_self()
if global.slot1!=undefined
draw_text(x,y,global.slot1)
if mira=true
draw_sprite_ext(spr_guns,arma-1,x-6,y-53,1,escala,point_direction(x+7*hhsp,y-53,mouse_x,mouse_y),c_white,1)
//draw_text(x,y,arma)
draw_set_font(fnt_normal)
//draw_text(x,y,ammo)

draw_set_halign(fa_left)
draw_set_valign(fa_top)
draw_set_color(c_black)
if !keyboard_check(ord("P"))
draw_text(camera_get_view_x(view_camera[1]),camera_get_view_y(view_camera[1]),"FPS: "+string(fps_real))
draw_set_color(c_white)
//draw_text(mouse_x,mouse_y,mouse_x-camera_get_view_x(view_camera[1]))

//if instance_exists(obj_eject)
//draw_text(x,y-90,instance_number(obj_eject))































