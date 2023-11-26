if global.inventario=false
exit

display_set_gui_size(camera_get_view_width(view_camera[1]),camera_get_view_height(view_camera[1]))
if oid.id!=global.slot1
if oid.idd<=15
draw_sprite_ext(sprite_index,0,oid.wc-40*oid.xx,oid.hc-40*oid.yy,image_xscale,image_yscale,0,c_white,1)
else
draw_sprite_ext(sprite_index,0,oid.px,oid.py,image_xscale,image_yscale,0,c_white,1)
display_set_gui_size(view_wport[1],view_hport[1])














































