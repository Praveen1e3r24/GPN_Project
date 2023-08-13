/// @description Move to next room

if (file_exists("checkpoint.ini"))
{
	file_delete("checkpoint.ini")
}


with(oPlayer)
{
	
	if (hascontrol)
	{
		audio_stop_sound(snGameMusic);
		hascontrol=false;
		SlideTransition(TRANS_MODE.GOTO,other.target) 
	}


}

