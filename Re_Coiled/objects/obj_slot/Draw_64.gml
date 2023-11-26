display_set_gui_size(camera_get_view_width(view_camera[1]),camera_get_view_height(view_camera[1]))
if idd>15//same thing bellow but for special slots
{
draw_sprite_ext(spr_slot,image_index,px,py,image_xscale,image_yscale,0,c_white,1)

if stack>1 and global.slot1!=id
draw_text(px-12,py-17,stack)

if item!=undefined and global.slot1!=id and stack>0 and item_sprite!=undefined
draw_sprite_ext(item_sprite,0,px,py,0.625*sign(image_xscale),0.625*sign(image_yscale),0,c_white,1)


}
if idd<=15
{
	//draw_slot at all
	if global.inventario=true
	{
	draw_sprite_ext(spr_slot,image_index,xc,yc,0.625,0.625,0,c_white,1)
	//draw item in slot
	if item!=undefined and global.slot1!=id and stack>0 and item_sprite!=undefined
	draw_sprite_ext(item_sprite,0,xc,yc,0.625,0.625,0,c_white,1)
	// draw number of items in stack
	if stack>1 and global.slot1!=id
	draw_text(xc-12,yc-17,stack)
	//draw the ammo indicator
	if global.slot1!=id
	if tipo="arma" and ds_list_find_value(stats_item,5)!=undefined and ds_list_find_value(stats_item,4)!=undefined
	if is_real(ds_list_find_value(stats_item,4))=true
	if is_real(ds_list_find_value(stats_item,5))=true
	{
	var maxammo=ds_list_find_value(stats_item,5)
	var maxw=28/maxammo
	var ammo=ds_list_find_value(stats_item,4)
	var ratio=5
	if ammo=ds_list_find_value(stats_item,5)
	{
		ratio=-8
	}
	else
	{
		ratio=-7
	}
		
	draw_set_color(c_red)
	draw_line_width(xc-7,yc-8,xc-sprite_width+5,yc-8,2)
	draw_set_color(c_green)
	draw_line_width(xc-7,yc-8,xc-ammo*maxw+ratio,yc-8,2)
	draw_set_color(c_white)
	
	}
	
	if global.slot1!=id and ds_list_find_value(stats_item,5)!="pente"
	if ds_list_find_value(stats_item,3)="carregador"
	if is_real(ds_list_find_value(stats_item,6))=true
	if is_real(ds_list_find_value(stats_item,5))=true
	{
	var maxammo=ds_list_find_value(stats_item,6)
	var ammo=ds_list_find_value(stats_item,5)

	var maxw=24/maxammo//maxw=distancia entre os pontos da linha
	var ratio=5
	if ammo=ds_list_find_value(stats_item,6)
	{
		ratio=-8
	}
	else
	{
		ratio=-8
	}
		
		draw_set_color(c_black)
		draw_line_width(xc-7,yc-8,xc-7,yc-sprite_height+8,2) //xc= originpointx yc=originpointy dos respectivos slots sem seguir a camera
		draw_set_color(c_blue)
		draw_line_width(xc-7,yc-8,xc-7,yc-ammo*maxw+ratio,2)
		draw_set_color(c_white)
		draw_text(40,40,point_distance(xc-7,yc-8,xc-7,yc-sprite_height+8))
	
	}

}

}
display_set_gui_size(view_wport[1],view_hport[1])


//pos0:item
//pos1:stackmax
//pos2:stack
//pos3:tipo(arma,munição,carregador,etc)
//pos4:armas:(munição) balas(tipo de arma)
//pos5:armas:(max munição)




























