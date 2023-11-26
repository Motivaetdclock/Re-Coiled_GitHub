x=mouse_x+30
y=mouse_y-30
offsetx=7
if mouse_x>camera_get_view_x(view_camera[1])+camera_get_view_width(view_camera[1])-107
offsetx=-107
else if mouse_x>camera_get_view_x(view_camera[1])+107
offsetx=7


if slot!=undefined
{
	if slot2!=slot
	timer=timermax
}
slot2=slot

if first=true
{
	if position_meeting(mouse_x,mouse_y,obj_slot)
	{
	first=false
	
	}
timer=timermax

}

if !position_meeting(mouse_x,mouse_y,obj_slot)
{
first=true
show=false
slot=undefined


}
if first=false
{
timer-=1
}

if timer<0
show=true
else
show=false

if global.holding!=undefined
show=false












































