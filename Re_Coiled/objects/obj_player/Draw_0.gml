draw_set_color(c_dkgray)
draw_ellipse(x-19,y+3,x+19,y-12,false)
draw_set_color(c_white)
draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,c_white,1)
if sign(speed)=1
draw_sprite_ext(spr_arrow,0,x+lengthdir_x(50,direction),y-32+lengthdir_y(50,direction),image_xscale,image_yscale,direction-90,c_white,1)
if sign(speed)=-1
draw_sprite_ext(spr_arrow,0,x+lengthdir_x(50,direction+180),y-32+lengthdir_y(50,direction+180),image_xscale,image_yscale,direction+90,c_white,1)

































