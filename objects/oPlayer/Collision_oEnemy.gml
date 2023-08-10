/// @description Die


if (hp<=0)
{
	with(oGun) instance_destroy();
	instance_change(oPDead,true);
}
else if (damageTimer<=0)
{
	hp--;
	damageTimer = 30;
	flash = 3;
	ScreenShake(5,60);
}



//direction =point_direction(other.x,other.y,x,y);
//hsp=lengthdir_x(6,direction);
//vsp=lengthdir_y(4,direction)-2;
//if(sign(hsp)!=0) image_xscale=sign(hsp);
