if global.inventario=false
exit

if oid.idd>15
{
x=oid.xo+oid.px
y=oid.yo+oid.py	
}

if oid.idd<=15
{
oid.xc=camera_get_view_width(view_camera[1])-40*oid.xx
oid.yc=camera_get_view_height(view_camera[1])-40*oid.yy
x=oid.xo+oid.wc-40*oid.xx+obj_camera.hspeed
y=oid.yo+oid.hc-40*oid.yy+obj_camera.vspeed
}
x+=obj_camera.hspeed
y+=obj_camera.vspeed

var stats=oid.stats_item

if position_meeting(mouse_x,mouse_y,self)
{
	if mouse_check_button_pressed(mb_left)//spawnar uma magazine no inventario
	{
		ds_list_set(stats,7,false)
		oid.stats_item=stats
		var item=ds_list_find_value(stats,0)
		var ammo=ds_list_find_value(stats,4)
		var maxammo=ds_list_find_value(stats,5)
		var array=scr_items(item)
		var mag=array_get(array,3)
		ds_list_set(oid.stats_item,4,0)
		ds_list_add(lista,mag,1,1,"carregador",item,ammo,maxammo)
		new_item(lista)
		oid.o_eject=undefined
		apagar=true
		
	}
}





































