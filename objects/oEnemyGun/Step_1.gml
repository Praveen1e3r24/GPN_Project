x=owner.x;
y=owner.y;

image_xscale=abs(owner.image_xscale);
image_yscale=abs(owner.image_yscale);


if (instance_exists(oPlayer))
{
    if (oPlayer.x<x) image_yscale =-image_yscale;
	
	if(point_distance(oPlayer.x,oPlayer.y,x,y)<300)
	{   
		
		image_angle=point_direction(x,y,oPlayer.x,oPlayer.y);
		
		countdown--;
		if(countdown<=0)
		{
		countdown=countdownrate;
		
			//bullet code
			audio_sound_pitch(snBullet,choose(0.8,1.0,1.2))
			audio_play_sound(snBullet,1,false);
		    with(instance_create_layer(x,y,"Bullets",oEnemyBullet))
			{
			spd=10;
			direction=other.image_angle+random_range(-3,3);
			image_angle=direction;
			}
		}
		
		
		
	}
	





}