display_set_gui_size(camera_get_view_width(view_camera[1]),camera_get_view_height(view_camera[1]))
if show=true and slot!=undefined and ds_list_find_value(slot.stats_item,0)!=undefined
{
draw_set_font(fnt_normal)
draw_sprite(spr_info_menu,0,mouse_x-camera_get_view_x(view_camera[1])+offsetx,mouse_y-camera_get_view_y(view_camera[1])+offsety)
draw_text_ext(mouse_x-camera_get_view_x(view_camera[1])+5+offsetx,mouse_y-camera_get_view_y(view_camera[1])-115+offsety,ds_list_find_value(slot.stats_item,0)+" x"+string(ds_list_find_value(slot.stats_item,2)),18,90)
var str=information(ds_list_find_value(slot.stats_item,0))
draw_text_ext(mouse_x-camera_get_view_x(view_camera[1])+5+offsetx,mouse_y-camera_get_view_y(view_camera[1])-100+offsety,str,10,90)

}
display_set_gui_size(view_wport[1],view_hport[1])



























































