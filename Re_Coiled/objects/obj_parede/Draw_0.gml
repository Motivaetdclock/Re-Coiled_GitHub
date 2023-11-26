
draw_self()
var dis=0
var dir=0
var xx=0
if x>obj_player_1.x
{
dis=x-obj_player_1.x
dis=dis/2
dir=1
xx=x
dis=clamp(dis,-70,70)
draw_sprite_pos(spr_wallpaper_wood,0,x,y+sprite_height,x+sprite_width/2+dis*dir,y+sprite_height,x+sprite_width/2+dis*dir,y,x,y,1)
}
else if (x+sprite_width)<obj_player_1.x
{
dis=obj_player_1.x-x
dis=dis/2
dir=-1
xx=x+sprite_width
dis=clamp(dis,-70,70)
draw_sprite_pos(spr_wallpaper_wood,0,x+sprite_width,y+sprite_height,x+sprite_width/2+dis*dir,y+sprite_height,x+sprite_width/2+dis*dir,y,x+sprite_width,y,1)
}



























































