// Os recursos de script mudaram para a v2.3.0; veja
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para obter mais informações
function scr_switch_items(){
		var slot_list=global.slot1.stats_item

		var slot_tipo2=ds_list_find_value(slot_list,4)
		var slot_tipo=ds_list_find_value (slot_list,3)
		var slot_stack=ds_list_find_value(slot_list,2)
		var slot_item=ds_list_find_value (slot_list,0)
		var slot_o_eject=global.slot1.o_eject
		var self_o_eject=o_eject
		
		//global.slot1.o_eject=self_o_eject
		//o_eject=slot_o_eject
		
		if slot_item!=item or stack=stackmax// se os dois items forem diferentes
		{
		var slot1=global.slot1.stats_item	//code that juggles the variables start
		global.slot1.stats_item=stats_item	
		stats_item=slot1					
		global.slot1=undefined				
		global.holding=undefined			//code that juggles the variables finish
		}
		else if slot_item=item
		{
			var m=0											 //code that deals with 2 of the same items start
			repeat(slot_stack)								 
			{												 
				m++											 
				if m=stackmax-stack							 
				{											 
				break										 
				}											 
			}		
		var lista=global.slot1.stats_item
		ds_list_set(stats_item,2,stack+m)					 
		ds_list_set(lista,2,slot_stack-m)
		global.slot1.stats_item=lista
		global.slot1=undefined								 
		global.holding=undefined							 //code that deals with 2 of the same items finish
		}

}