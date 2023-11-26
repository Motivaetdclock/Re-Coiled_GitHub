var cx=camera_get_view_width(view_camera[1])
var cy=camera_get_view_height(view_camera[1])
display_set_gui_size(cx,cy)
draw_sprite_ext(spr_ui,0,0,cy,0.876,0.7,0,c_white,1)
draw_text(0,cy,"socorro eu to aqui aaaaaa")

draw_set_halign(fa_left)
var item=ds_list_find_value(global.choosenid.stats_item,0)
if item!=undefined and global.choosenid!=undefined and global.choosenid.item_sprite!=undefined
{
var gunsprite=global.choosenid.item_sprite
var array=scr_items(item)
var magui=array_last(array)

var list=global.choosenid.stats_item
var maxammo=ds_list_find_value(list,5)
var ammo=ds_list_find_value(list,4)
draw_sprite_ext(gunsprite,0,105,-15+cy,1.5,1.5,0,c_white,1)
draw_sprite_ext(magui,maxammo-ammo,160,-55+cy,0.9,0.9,0,c_white,1)//draw gun ui
draw_text(20,-40+cy,global.choosenid.item)
}


display_set_gui_size(camera_get_view_width(view_camera[1]),camera_get_view_height(view_camera[1]))
if global.slot1!=undefined
{
item=ds_list_find_value(global.slot1.stats_item,0)
var array=scr_items(item)
var sprite=array_get(array,0)
draw_sprite(sprite,0,mouse_x-camera_get_view_x(view_camera[1])+32,mouse_y-camera_get_view_y(view_camera[1]))

}
display_set_gui_size(view_wport[1],view_hport[1])

































