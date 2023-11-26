if tank=false
{
	hsp= +keyboard_check(ord("D")) -keyboard_check(ord("A"))
	hspeed=hsp*spd
	vsp= +keyboard_check(ord("S")) -keyboard_check(ord("W"))
	vspeed=vsp*spd
	if speed=0
	{
	image_speed=0
	if sprite_index=spr_player_down
	{
	
	}
	
	}
	else
	{
	image_speed=1
	if hspeed!=0
	{
	image_xscale=1*hsp
	image_yscale=1
	}
	if vsp!=0 and hsp=0
	{
	if vsp=1
	{
	sprite_index=spr_player_down
	image_xscale=1
	image_yscale=1.3
	}
	else
	{
	sprite_index=spr_player_up
	image_xscale=1.3
	image_yscale=1.3
	}
	
	}
	else if vsp=1 and hsp!=0
	{
	sprite_index=spr_player_angle_down
	}
	else if vsp=-1 and hsp!=0
	{
	sprite_index=spr_player_angle_up	
	}
	else if vsp=0 and hsp!=0
	{
	sprite_index=spr_player_side
	}
		
	}
}
else
{
hsp= +keyboard_check(ord("D")) -keyboard_check(ord("A"))
direction+=hsp*tsp
vsp= +keyboard_check(ord("W")) -keyboard_check(ord("S"))
speed=vsp*tspd
if hsp!=0 or vsp!=0
{
image_speed=1	
}
else if sign(speed)=-1
{
image_speed=-1	
}
else if sign(speed)=1
{
image_speed=1	
}
else
{
image_speed=0	
}
if direction>22.5 && direction<67.5
{
sprite_index=spr_player_angle_up
image_xscale=1
image_yscale=1
image_angle=0
}
else if direction>67.5 && direction<112.5
{
sprite_index=spr_player_up
image_xscale=1.3
image_yscale=1.3
image_angle=0
}
else if direction>112.5 && direction<157.5
{
sprite_index=spr_player_angle_up
image_xscale=-1
image_yscale=1
image_angle=0
}
else if direction>157.5 && direction<202.5
{
sprite_index=spr_player_side
image_xscale=-1
image_yscale=1
image_angle=0
}
else if direction>202.5 && direction<247.5
{
sprite_index=spr_player_angle_down
image_xscale=-1
image_yscale=1
image_angle=0
}
else if direction>247.5 && direction<292.5
{
sprite_index=spr_player_down
image_xscale=1
image_yscale=1.3
image_angle=0
}
else if direction>292.5 && direction<337.5
{
sprite_index=spr_player_angle_down
image_xscale=1
image_yscale=1
image_angle=0
}
else
{
sprite_index=spr_player_side
image_xscale=1
image_yscale=1
image_angle=0
}
}































