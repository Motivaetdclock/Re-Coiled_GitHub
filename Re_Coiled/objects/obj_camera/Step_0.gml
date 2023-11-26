if position_meeting(obj_player_1.xx,obj_player_1.yy,self)
{
speed=0
x=obj_player_1.xx
y=obj_player_1.yy
}
else
{
speed=4*(1+point_distance(x,y,obj_player_1.xx,obj_player_1.yy)/250)
direction=point_direction(x,y,obj_player_1.xx,obj_player_1.yy)
if obj_player_1.mira=false
{
speed=obj_player_1.spd2*1.01
}
}

//obj_ui.x=camera_get_view_x(view_camera[1])
//obj_ui.y=camera_get_view_y(view_camera[1])+camera_get_view_height(view_camera[1])































