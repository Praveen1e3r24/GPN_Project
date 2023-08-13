with(other)
{
	hp-=1;
	flash=3;
<<<<<<< HEAD
	
audio_play_sound(snEnemyShot,5,false);
=======
	audio_play_sound(snEnemyShot,10,false);
>>>>>>> 67f9ef98d262c6f2b0cdf8182dc991f3479c374b
	hitfrom=other.direction;
}

instance_destroy();