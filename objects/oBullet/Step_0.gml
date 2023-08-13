
x+=lengthdir_x(speed,direction);
y+= lengthdir_y(speed,direction);

if(place_meeting(x,y,oWall)) && (image_index !=0)

{
	while(place_meeting(x,y,oWall)){
	x-=lengthdir_x(1,direction);
	y-=lengthdir_y(1,direction);
	}
	
speed=0;
	
instance_change(oHitSpark,true);
}