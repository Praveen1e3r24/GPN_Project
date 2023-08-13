with(other)
{
	hp-=1;
	flash=3;
	
audio_play_sound(snEnemyShot,5,false);
	hitfrom=other.direction;


}

instance_destroy();