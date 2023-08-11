/// @description Insert description here
// You can write your code in this editor

audio_play_sound(snPlayerHit, 11, false)
if (hp<=1)
{
	with(oGun) instance_destroy();
	instance_change(oPDead,true);
}
else if (damageTimer<=0)
{
	hp--;
	damageTimer = 10;
	flash = 3;
	ScreenShake(5,60);
}


with(other)
{
	instance_destroy();
}
