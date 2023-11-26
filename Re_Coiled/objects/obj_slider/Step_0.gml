if first=true
{
switch tipo
{
case 1:
valor=global.SFX
corda="SFX"
break
case 2:
valor=global.music
corda="music"
break
}
first=false	
}





if position_meeting(mouse_x,mouse_y,self)
{
if mouse_check_button_pressed(mb_left)
{
selecionado=true	
}
}
if mouse_check_button_released(mb_left)
{
selecionado=false	
}
if selecionado=true
{
valor=(mouse_x-x)/image_xscale
}
valor=int64(valor)
valor=clamp(valor,0,100)

switch tipo
{
case 1:
global.SFX=valor
break
case 2:
global.music=valor
break
}

