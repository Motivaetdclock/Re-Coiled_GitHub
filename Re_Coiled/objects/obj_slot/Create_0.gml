image_speed=0
image_xscale=0.625
image_yscale=0.625
xc=0
yc=0
quickslot=0
global.choosenid=undefined
xo=camera_get_view_x(view_camera[1])//camera y origin
yo=camera_get_view_y(view_camera[1])//camera x origin
wc=camera_get_view_width(view_camera[1])//camera width
hc=camera_get_view_height(view_camera[1])//camera height
teste=false
stats_item=ds_list_create()
item=undefined
stack=undefined
stackmax=undefined
tipo=undefined
tipo2=undefined
item_sprite=undefined
tipo_load=undefined
loaded=undefined
ammo=undefined
pente=undefined
o_eject=undefined
if idd=13
global.teste+=1
if idd>15
{
switch idd//diferentes posições dos slots
{
case 16://slot de secundaria
px=260
py=hc
break
case 17://slot de munição
px=300
py=hc
break
case 18://slot de primaria
image_xscale=-1.250
px=220
py=hc-40
break
}
}































