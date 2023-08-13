
x=oPlayer.x;
y=oPlayer.y;

if (oPlayer.sprite_index==sPlayerSlide)
{
	x=oPlayer.x+10;
	y=oPlayer.y+30;
}

direction = point_direction(x,y,mouse_x,mouse_y);



if(direction>90 && direction<270)
{
image_yscale=-1;
}

else{
image_yscale=1;}

image_angle=direction;



var mouseb;

if(automatic) mouseb =mouse_check_button(mb_left); else mouseb =mouse_check_button_pressed(mb_left);

if(mouseb)
{

  if (current_cd==0)
  {
    current_cd=cooldown;
	current_delay=startup;
  
  }



}

if (current_delay==0) && (projectile!= -1)
{

   if (ammo[weapon] != 0)
   {
   
    ScreenShake(2,10);
	
	audio_play_sound(snBullet,1,false);
   with(instance_create_layer(x+lengthdir_x(length,direction),y+lengthdir_y(length,direction),"Bullets",projectile))
   {
   direction=other.image_angle+random_range(-3,3);
   image_angle=direction;
   speed=other.bulletspeed;
   }
   ammo[weapon]-=1;
   
   }
   
   with(oPlayer)
   {
     hsp -= lengthdir_x(other.recoil_push ,other.direction);
	 vsp -= lengthdir_y(other.recoil_push,other.direction);
	 
   }
   current_recoil=recoil;
  

}

current_delay= max(-1,current_delay-1);

if(current_delay==-1) current_cd =max(0,current_cd-1);
current_recoil =max(0,floor(current_recoil*0.8));




depth=oPlayer.depth-1;





 
 

