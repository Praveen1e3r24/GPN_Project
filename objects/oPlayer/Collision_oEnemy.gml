/// @description Hit by enemy

audio_play_sound(snPlayerHit, 11, false)
if (hp<=1)
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
with (other)
{
	image_speed = 1
	sprite_index = sEnemyHit;
}


//direction =point_direction(other.x,other.y,x,y);
//hsp=lengthdir_x(6,direction);
//vsp=lengthdir_y(4,direction)-2;
//if(sign(hsp)!=0) image_xscale=sign(hsp);
