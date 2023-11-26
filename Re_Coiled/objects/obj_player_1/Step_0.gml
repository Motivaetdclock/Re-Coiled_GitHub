#region aim system
if mouse_check_button(mb_right)
{
if !position_meeting(mouse_x,mouse_y,obj_slot)
{
	mira=true
	spd=4
	spd2=4
}
else if position_meeting(mouse_x,mouse_y,obj_slot) and global.inventario=false
{
	mira=true
	spd=4
	spd2=4
}
}
else
{
	mira=false
	spd=5.5
	spd2=5.5
}

if mouse_wheel_down()
arma-=1
if mouse_wheel_up()
arma+=1
if arma=0
arma=3
if arma=4
arma=1

#endregion
#region movement
hsp= +keyboard_check(ord("D")) -keyboard_check(ord("A"))
vsp= +keyboard_check(ord("S")) -keyboard_check(ord("W"))
if hsp!=0 and vsp!=0
spd=spd2*0.707
hspeed=hsp*spd
if place_meeting(x+hspeed,y,obj_parede)
{
while !place_meeting(x+hsp,y,obj_parede)
{
	x+=hsp
}
hspeed=0
}
if hsp!=0
{
hhsp=hsp	
}
//V mov

vspeed=vsp*spd
if place_meeting(x,y+vspeed,obj_parede)
{
while !place_meeting(x,y+vsp,obj_parede)
{
	y+=vsp
}
	vspeed=0
}
//if mira=false
//{
//obj_camera.x=x
//obj_camera.y=y
//}
#endregion
#region inventory system
if global.inventario=false
{
global.slot1=undefined
global.holding=undefined
}
if keyboard_check_pressed(vk_tab)
{
if global.inventario=true
{
global.inventario=false	
}
else
{
global.inventario=true
}
}
//animation
if speed=0
{
image_speed=0
image_index=0	
}
else
{
image_speed=1
}

if keyboard_check(ord("F"))
pegando=true
else
pegando=false
#endregion
#region Mira camera

if mira=true
{
	if point_direction(x,y,mouse_x,mouse_y)>90 and point_direction(x,y,mouse_x,mouse_y)<270
	{
		image_xscale=-1
		escala=-1
	}
	else
	{
		image_xscale=1
		escala=1
	}
}
	else
{
	if hsp!=0
	{
		image_xscale=hsp	
	}
}

var vx=camera_get_view_x(view_camera[1])+camera_get_view_width(view_camera[1])/2
var vy=camera_get_view_y(view_camera[1])+camera_get_view_height(view_camera[1])/2
dis=point_distance(vx,vy,mouse_x,mouse_y)
dis=clamp(dis,0,200)
if mira=true
{
xx=x+lengthdir_x(dis,point_direction(vx,vy,mouse_x,mouse_y))
yy=y+lengthdir_y(dis,point_direction(vx,vy,mouse_x,mouse_y))

}
else
{
xx=x
yy=y
}
#endregion
#region shoot system
if mira=true
{
	var pre_list=global.choosenid.stats_item
	pre_list=ds_list_find_value(pre_list,3)
	
	if mouse_check_button_pressed(mb_left) and pre_list="arma"
	{
	var choosenlist=global.choosenid.stats_item
	ammo=ds_list_find_value(choosenlist,4)
		if ammo!=0
		{
		ammo-=1
		ds_list_set(choosenlist,4,ammo)
		global.choosenid.stats_item=choosenlist
		
		var dir=point_direction(x+7*hhsp,y-53,mouse_x,mouse_y)
		var vari=
		{
		direction:dir,
		speed:20,
		image_angle:dir+90
		}
		instance_create_layer(x+7*hhsp+lengthdir_x(7,dir),y-53+lengthdir_y(7,dir),"instances",obj_bala,vari)
		}
	}
}

#endregion
























