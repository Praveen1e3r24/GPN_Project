with(other)
{
	hp-=1;
	flash=3;
	audio_play_sound(snEnemyShot,10,false);
	hitfrom=other.direction;
}

instance_destroy();