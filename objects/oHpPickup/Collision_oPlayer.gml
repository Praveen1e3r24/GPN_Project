/// @description Insert description here
// You can write your code in this editor

var collect = false;
with(other)
{
	if (hp<max_hp)
	{
		collect = true;
		hp++;
		audio_play_sound(snHealed, 11, false)
	}
}

if (collect==true)
{
	instance_destroy();
}



