/// @description Move to next room

with(oPlayer)
{
	
	if (hascontrol)
	{
		audio_stop_sound(snGameMusic);
		hascontrol=false;
		SlideTransition(TRANS_MODE.GOTO,other.target) 
	}


}

