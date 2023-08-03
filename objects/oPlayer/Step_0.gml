// Get Player Input
if(hascontrol){
lKey = keyboard_check(vk_left)  || keyboard_check(ord("A"));
rKey = keyboard_check(vk_right)|| keyboard_check(ord("D"));
jumpKey = keyboard_check_pressed(vk_space);
jumpHold = keyboard_check(vk_space);
sprintKey = keyboard_check(vk_shift);
crouchKey = keyboard_check(ord("C"));

jumpTimer = max(jumpTimer-1,0);
mLock = max(mLock-1,0);
dashTimer = max(dashTimer-1,0);
slidingTimer = max(slidingTimer-1,0);

}
else
{
rKey=0;
lKey=0;
jumpKey=0;

}
var onGround = place_meeting(x,y+10,oWall);
var onWall = place_meeting(x-5,y,oWall) - place_meeting(x+5,y,oWall);




// Animation
if (!place_meeting(x, y + 1, oWall)) {
    sprite_index = sPlayerA;
    image_speed = 0;

    if (sign(vsp) > 0)
        image_index = 0;
		else if (sign(vsp) = 0)
        image_index = 2;
    else
        image_index = 3;
} 
else {
    image_speed = 1;
    if (hsp == 0) {
        sprite_index = sPlayer;
    } else {
        sprite_index = sPlayerR;
    }
}


if(hsp !=0){


image_xscale=sign(hsp);
}

// -----------------------------------------
//
// Movement
//
// -----------------------------------------

// Movement calculations
if (sprintKey)
{
	spd = min(spd+0.5,sprintSpeed);
}
else
{
	spd = min(spd+1,walkSpeed);
}

if (onWall != 0)
{
	if ((sign(onWall)==1 && lKey)||(sign(onWall)==-1 && rKey))
	{
		vsp = min(vsp+1,5);
	}
	else
	{
		vsp+=grv;
	}
}
else
{
	vsp+=grv;
}

// Jumping calculation
if (onGround)
{
	jumpCount=0;
}
else
{
	if (jumpCount==0)
	{
		jumpCount = 1;
	}
}

if (mLock <= 0)
{
	hsp = (rKey-lKey)*spd;
	if (jumpKey && jumpCount<2)
	{
		jumpCount++;
		vsp=jumpSpeed;
		jumpTimer = jumpHoldFrames;
		
		// Wall Jumping calculation
		if (onWall != 0)
		{
			vsp = -15;
			hsp = onWall*spd;
			mLock = 10;
			jumpCount=0;
		}
	}
	
	// Crouching and sliding
	if (crouchKey && place_meeting(x, y + 1, oWall))
	{
		if ( (((hsp>=4)&&rKey) || ((hsp<=-4)&&lKey)) && slidingTimer==0 )
		{
			hsp = (sprintSpeed+5)*sign(hsp);
			slidingTimer = 60;
			mLock = slidingTimer;
		}
		else
		{
			sprite_index =  sPlayer;
		}
	}
}


if (slidingTimer>0)
{
	hsp = hsp-(0.15*sign(hsp));
	sprite_index = sPlayerSlide;
	image_xscale=sign(hsp);
}


// Jumping control
if (!jumpHold) {jumpTimer=0}

if (jumpTimer>0)
{
	vsp = jumpSpeed;
	jumpTimer--;
}



//Vertical Collision
if (place_meeting(x+hsp,y,oWall))
{
	while(!place_meeting(x+sign(hsp),y,oWall))
	{
		x = x + sign(hsp);
	}
	slidingTimer=0;
	mlock = 0;
	hsp=0;
}
x = x+hsp;

// Horizontal Collision
if (place_meeting(x,y+vsp,oWall))
{
	while(!place_meeting(x,y+sign(vsp),oWall))
	{
		y = y + sign(vsp);
	}
	vsp=0;
}
y = y+vsp;