// Os recursos de script mudaram para a v2.3.0; veja
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para obter mais informações
function scr_Inventario()
{
	var re=0
	for (var yy=0;yy<4;yy+=1)
	{
		for (var xx=0;xx<4;xx+=1)
		{
			var stru=
			{
				idd:re,
				xx:xx,
				yy:yy
			}
			global.id_last_slot=instance_create_layer(camera_get_view_x(view_camera[1])+camera_get_view_width(view_camera[1])-40*xx,camera_get_view_y(view_camera[1])+camera_get_view_height(view_camera[1])-40*yy,"instances",obj_slot,stru)	
			teste=true
			re++
		}
		
	}
	var qu=16
	var vari=
	{
	idd:qu
	}
//instance_create_layer(camera_get_view_x(view_camera[1])+64,camera_get_view_y(view_camera[1])+camera_get_view_height(view_camera[1])-120,"instances",obj_ui)
instance_create_layer(x,y,"instances",obj_slot,vari)//slot secundaria
qu++
	vari=
	{
	idd:qu	
	}
instance_create_layer(x,y,"instances",obj_slot,vari)//slot ammo secundaria
qu++
	vari=
	{
	idd:qu	
	}
instance_create_layer(x,y,"instances",obj_slot,vari)//slot primaria
global.holding=undefined
global.slot1=undefined
instance_create_layer(x,y,"instances",obj_info)

}