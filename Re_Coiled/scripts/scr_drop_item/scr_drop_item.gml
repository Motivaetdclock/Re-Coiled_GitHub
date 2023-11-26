// Os recursos de script mudaram para a v2.3.0; veja
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para obter mais informações
function drop_item(){ 
randomize()
var dir=random_range(0,360)
var list=ds_list_create()
ds_list_copy(list,stats_item)//isso faz toda a diferença
ds_list_set(list,2,1)


var array=scr_items(item)
var sprite=array_get(array,0)
var xs=array_get(array,1)
var ys=array_get(array,2)

var vari=
{
stats_item:list,
sprite_index:sprite,
image_xscale:xs,
image_yscale:ys
}

instance_create_layer(obj_player_1.x+lengthdir_x(10,dir)+16,obj_player_1.y+lengthdir_y(10,dir),"items",obj_item_dropped,vari)

stack=ds_list_find_value(stats_item,2)
ds_list_set(stats_item,2,stack-1)
//sei la que merda eu fiz mas funfou 
}