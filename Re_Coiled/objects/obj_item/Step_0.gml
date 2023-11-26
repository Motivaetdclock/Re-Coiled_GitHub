if instance_exists(obj_player_1)
if point_distance(x,y,obj_player_1.x,obj_player_1.y)<getdistance
{
image_index=1
if obj_player_1.pegando=true
{
#region loop system

for(var i=15;i>0;i--)//achando o slot certo
{
	var j=0
while !variable_instance_exists(instance_id[j],"idd") 
{
j++
}
while instance_id[j].idd!=i
j++

var slot=instance_id[j]
var item_list=slot.stats_item//slot escolhido

var item_i=ds_list_find_value(item_list,0)//item name
var item_s=ds_list_find_value(item_list,2)//item stack
if item_i=ds_list_find_value(stats_item,0)//se o item do slot for igual a esse item
{
if item_s<ds_list_find_value(stats_item,1)
{
ds_list_set(item_list,2,item_s+1)
slot.stats_item=item_list
instance_destroy()
break
}
}
else if item_i=undefined// se não houver item no slot
{
slot.stats_item=stats_item
instance_destroy()
break
}

}
#endregion
}

}
else
{
image_index=0	
}






































