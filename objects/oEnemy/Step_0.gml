vsp = vsp +grv ;


if(grounded) &&(afraidofheights) &&(!place_meeting(x+hsp,y+1,oWall))
{
hsp=-hsp;

}


// Horizontal collision
if (place_meeting(x + hsp, y, oWall)) {
    while (!place_meeting(x + sign(hsp), y, oWall)) {
        x = x + sign(hsp);
    }
    hsp =-hsp;
}
x = x + hsp;

// Vertical collision
if (place_meeting(x, y + vsp, oWall)) {
    while (!place_meeting(x, y + sign(vsp), oWall)) {
        y = y + sign(vsp);
    }
    vsp = 0;
}
y = y +vsp;




//Animation
if(!place_meeting(x,y+1,oWall))
{
grounded=false;
sprite_index=sEnemy;
image_speed=0;
if(sign(vsp)>0) image_index=1; else image_index=0;


}
else{
grounded=true;
image_speed=1;
if(hsp==0){sprite_index=sEnemy;}
else{ sprite_index=sEnemyR;}
}





if(hsp !=0)
	image_xscale=sign(hsp)*size;
	image_yscale=size;

//if (instance_exists(oPlayer) && hasweapon)
//{
//	if (point_distance(oPlayer.x,oPlayer.y,x,y)<400)
//	{
//		mygun.visible = 1;
//		var dir = sign(oPlayer.x - x);
//		if(dir != 0) 
//			image_xscale = sign(oPlayer.x - x);
//	}
//	else	
//	{
//		mygun.visible = 0;
//	}
//}






