
if menu!=0
{
draw_sprite_ext(spr_col_menu,image_index,x,y,1,1,angulo,c_white,1)	
}
switch menu
{
case 0:
draw_self()
sprite_index=spr_menu_letters

break
case 1:
draw_set_color(c_white)
if position_meeting(mouse_x,mouse_y,self)
{
draw_set_color(c_red)	
}	
draw_set_font(fnt_Square)
draw_set_halign(fa_center)
draw_set_valign(fa_middle)
draw_text_transformed(x,y,"New Game",1,1,angulo)
break
case 2:
draw_set_color(c_white)
if position_meeting(mouse_x,mouse_y,self)
{
draw_set_color(c_red)	
}	
draw_set_font(fnt_Square)
draw_set_halign(fa_center)
draw_set_valign(fa_middle)
draw_text_transformed(x,y,"Options",1,1,angulo)
break
case 3:
draw_set_color(c_white)
if position_meeting(mouse_x,mouse_y,self)
{
draw_set_color(c_red)	
}	
draw_set_font(fnt_Square)
draw_set_halign(fa_center)
draw_set_valign(fa_middle)
draw_text_transformed(x,y,"Exit",1,1,angulo)
break
}
//draw_text(x,y+30,sprite_width)

