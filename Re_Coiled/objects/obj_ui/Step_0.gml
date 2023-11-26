if position_meeting(mouse_x,mouse_y,self)
{
if mouse_check_button_released(mb_left) and global.slot1!=undefined
	if global.slot1.item="bullets_357" 
	{
	if obj_player_1.ammo357<6
	{
	obj_player_1.ammo357+=1
	global.holding=undefined
	global.slot1.stack-=1
	global.slot1=undefined
	}
	else
	{
	global.holding=undefined
	global.slot1=undefined
	}
	}




}






































