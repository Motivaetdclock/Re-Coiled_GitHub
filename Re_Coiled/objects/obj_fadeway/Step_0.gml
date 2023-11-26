if variable_instance_exists(self,"gameplay")
if gameplay=true
{
image_xscale=view_wport/2
image_yscale=view_hport/2
}
if aparecer=true
{
image_alpha-=0.011
}
else
{
image_alpha+=0.011
}
image_alpha=clamp(image_alpha,0,1)
































