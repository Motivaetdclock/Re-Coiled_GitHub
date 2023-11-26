// Os recursos de script mudaram para a v2.3.0; veja
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para obter mais informações
function new_item(list){
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

if item_i=undefined
{
item_list=list
slot.stats_item=item_list
break
}

}
}