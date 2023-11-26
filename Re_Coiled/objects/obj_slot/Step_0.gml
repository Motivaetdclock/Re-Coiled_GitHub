if o_eject!=undefined //se o_eject existe
{
	if o_eject.oid!=id
	{
	o_eject.oid=id
	}
}
	if tipo!="arma" and o_eject!=undefined
	{
	instance_destroy(o_eject)
	o_eject=undefined
	}
	if tipo_load!="pente" and o_eject!=undefined
	{
	instance_destroy(o_eject)
	o_eject=undefined
	}



xo=camera_get_view_x(view_camera[1])//camera x origin
yo=camera_get_view_y(view_camera[1])//camera y origin
wc=camera_get_view_width(view_camera[1])//camera width
hc=camera_get_view_height(view_camera[1])//camera height
if idd>15
{
x=xo+px
y=yo+py
}
if idd<=15
{
xc=camera_get_view_width(view_camera[1])-40*xx
yc=camera_get_view_height(view_camera[1])-40*yy
x=xo+wc-40*xx+obj_camera.hspeed
y=yo+hc-40*yy+obj_camera.vspeed
}

stackmax=ds_list_find_value(stats_item,1)
item=ds_list_find_value(stats_item,0)
stack=ds_list_find_value(stats_item,2)
tipo=ds_list_find_value(stats_item,3)
ammo=ds_list_find_value(stats_item,5)
tipo_load=ds_list_find_value(stats_item,6)
pente=ds_list_find_value(stats_item,7)


if global.inventario=true
{
	if position_meeting(mouse_x,mouse_y,self)
	{
	obj_info.slot=id
	image_index=1//spr slot selecionado
	#region swap system
	if !position_meeting(mouse_x,mouse_y,obj_eject)
	if mouse_check_button_pressed(mb_left) and ds_list_find_value(stats_item,0)!=undefined //quando apertar o botão
	{
	global.slot1=id
	global.holding=ds_list_find_value(stats_item,0)
	}
	
	if mouse_check_button_released(mb_left)//quando soltar o botão
	{
		if global.slot1=id
		{
		global.slot1=undefined//evitar se soltar no mesmo slot
		global.holding=undefined
		}
		if global.holding!=undefined
		{
		item=ds_list_find_value(stats_item,0)
		tipo=ds_list_find_value(stats_item,3)
		tipo2=ds_list_find_value(stats_item,4)
		var slot_list=global.slot1.stats_item

		var slot_tipo2=ds_list_find_value(slot_list,4)
		var slot_tipo=ds_list_find_value (slot_list,3)
		var slot_stack=ds_list_find_value(slot_list,2)
		var slot_item=ds_list_find_value (slot_list,0)
		var slot_ammo=ds_list_find_value (slot_list,5)
		var slot_max_ammo=ds_list_find_value (slot_list,6)
			
				if tipo_load="pente" and slot_tipo2=item and slot_tipo="carregador" and pente=false and o_eject=undefined //caregar armas com pente
				{
				ds_list_set(stats_item,7,true)
				pente=true
				var list=slot_list
				ds_list_set(list,2,slot_stack-1)//subtraindo pente
				ds_list_set(stats_item,4,slot_ammo)
				global.slot1.stats_item=list
				global.slot1=undefined
				global.holding=undefined
				}
				else if slot_tipo="carregador" and slot_tipo2=item and tipo_load!="pente" and slot_ammo!=0 //carregar revolver com fast loader
				{
				var list=global.slot1.stats_item
					repeat(ammo-tipo2)
					{
					ds_list_set(list,5,slot_ammo-1)
					ds_list_set(stats_item,4,tipo2+1)
					tipo2++
					slot_ammo--
					if slot_ammo=0 or tipo2=ammo
					break
					}
					global.slot1.stats_item=list
					global.slot1=undefined
					global.holding=undefined
				}
			else if idd<=15
			{
				if tipo="carregador" and slot_tipo2=item and ammo!=tipo_load or tipo="carregador" and slot_tipo2=tipo2 and ammo!=tipo_load//carregar pente
				{
				var list=slot_list
				ds_list_set(list,2,slot_stack-1)
				ds_list_set(stats_item,5,ammo+1)
				global.slot1.stats_item=list
				global.slot1=undefined
				global.holding=undefined
				}
				else if tipo="arma" and slot_tipo2=item and slot_tipo="munição"//carregar revolver
				{
					var max_ammo=ds_list_find_value(stats_item,5)
					if tipo2!=max_ammo
					{
					ds_list_set(stats_item,4,tipo2+1)
					ds_list_set(slot_list,2,slot_stack-1)
					global.slot1.stats_item=slot_list
					global.slot1=undefined
					global.holding=undefined
					}
				
				}
				else if global.slot1.idd>15 and tipo="arma" or global.slot1.idd>15 and tipo=undefined  //trocar de lugares
				{
					scr_switch_items()	
				}
				else if global.slot1.idd<16
				{
					scr_switch_items()
				}
				else
				{
					global.slot1=undefined
					global.holding=undefined					
				}

			}
			else if idd>15 and idd<19 //exceção para slots especiais
			{
				if slot_tipo="arma"
				{
				scr_switch_items()
				}
				else if slot_tipo="munição" and slot_tipo2=item
				{
					var max_ammo=ds_list_find_value(stats_item,5)
					if tipo2!=max_ammo
					{
					ds_list_set(stats_item,4,tipo2+1)
					ds_list_set(slot_list,2,slot_stack-1)
					global.slot1.stats_item=slot_list
					global.slot1=undefined
					global.holding=undefined
					}
					else
					{
					global.slot1=undefined
					global.holding=undefined						
					}
				}
				else
				{
					global.slot1=undefined
					global.holding=undefined
				}
			}
			else
			{
				global.slot1=undefined
				global.holding=undefined
			}
		}
	}

	
	
	#endregion end swap system
	
	if mouse_check_button_pressed(mb_right) and !position_meeting(mouse_x,mouse_y,obj_eject) and item!= undefined
	{
	drop_item()
	
	}
	}
	else
	{
	image_index=0//spr slot deselecionado
	}

}
	#region eject items

	if tipo="arma" and tipo_load="pente" and pente=true
	{
		if o_eject=undefined
		{
		var vari=
		{
		oid:id,
		type:3
		}
		o_eject=instance_create_layer(x,y,"Player",obj_eject,vari)
		}
	}


	#endregion

if mouse_check_button_released(mb_left) and global.holding!=undefined and global.slot1!=undefined //erase everything if you dropped item out of ui
{
if !position_meeting(mouse_x,mouse_y,obj_slot)
{
global.slot1=undefined
global.holding=undefined
}
}
if item!=undefined
{
var array=scr_items(item)
item_sprite=array_get(array,0)
}




if stack<=0
ds_list_clear(stats_item)

if variable_instance_exists(obj_player_1,"arma")
switch obj_player_1.arma
{
case 1:
if idd=16
{
global.choosenid=id
}
break
case 2:
if idd=17
{
global.choosenid=id
}
break
case 3:
if idd=18
{
global.choosenid=id
}
break
}
if idd>15
{
if global.choosenid=id
image_index=2
else
if position_meeting(mouse_x,mouse_y,self)
image_index=1
else
image_index=0
}