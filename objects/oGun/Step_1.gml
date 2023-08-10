 ///begin steps happens before every other step event 


x=oPlayer.x;
y=oPlayer.y-1;

if (oPlayer.sprite_index==sPlayerSlide)
{
	x=oPlayer.x+10;
	y=oPlayer.y+30;
}

image_angle = point_direction(x,y,mouse_x,mouse_y);

firingdelay=firingdelay-1;
recoil=max(0,recoil-1);



if(mouse_check_button(mb_left) && firingdelay<0 && oPlayer.gunavail == true)
{

    recoil=4;
	firingdelay=delay;
	ScreenShake(2,10);
		audio_play_sound(snBullet,1,false);
	with(instance_create_layer(x,y,"Bullets",oBullet))
	{
	spd=25;
	direction=other.image_angle+random_range(-3,3);
	image_angle=direction;
	}
}

x=x-lengthdir_x(recoil,image_angle);
y=y-lengthdir_y(recoil,image_angle);



if(image_angle>90 && image_angle<270)
{
image_yscale=-1;
}

else{
image_yscale=1;}
 
 
 
 
 
 