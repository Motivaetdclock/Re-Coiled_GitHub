
function scr_items(item){
var info=undefined
//info=[sprite,xscale,yscale,magazinetype,magazineui]
if item="bullets_357"
info=[spr_bullet_357,0.5,0.5]
else if item="revolver"
info=[spr_revolver,0.5,0.5,spr_wheel_revolver]
else if item="fast_loader"
info=[spr_fast_loader,0.5,0.5]
else if item="Ak-47"
info=[spr_Ak47,0.5,0.5,"ak_magazine",spr_mag_Ak]
else if item="ak_magazine"
info=[spr_AkMagazine,0.5,0.5]
else if item="bullets_Ak"
info=[spr_bullets_Ak,0.5,0.5]
else if item="pistola"
info=[spr_Pistola,0.5,0.5,"mag9mm",spr_mag_9mm]
else if item="mag9mm"
info=[spr_mag9mm,0.5,0.5]
else if item="bullets_9mm"
info=[spr_bullet_9mm,0.5,0.5]


return(info)
}

