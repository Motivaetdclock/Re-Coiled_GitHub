switch menu
{
case 0:

break
case 1:
image_index=0



break
case 2:
image_index=1



break
case 3:
image_index=2



break
}


if menu!=0
{
	if !position_meeting(mouse_x,mouse_y,self)
	{
		first=true
		angulo=0
		
	}
	else
	{
		if first=true
		{
			timer=60
			first=false
		}
		angulo+=0.2*signal
		timer-=1
		if timer=0
		{
			signal*=-1
			timer=120
		}
		if mouse_check_button_pressed(mb_left)
		{
		obj_fadeway.aparecer=false
		selecionado=true
		}
}
}

if selecionado=true and obj_fadeway.image_alpha=1
{
switch menu
{
case 1:
room_goto(Room_start)
break
case 2:
room_goto(Room_options)
break
case 3:
game_end()
break
}
}
