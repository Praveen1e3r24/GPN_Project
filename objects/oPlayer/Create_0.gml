//hsp=0;
//vsp=0;
// Player control
controller=0;
hascontrol=true;

// Speeds
grv = 0.3;
hsp = 0;
vsp = 0;
walkSpeed = 4;
sprintSpeed = 6;
jumpSpeed = -6;
jumpTimer = 0;
slidingTimer = 0;
slideDelay = 0;
jumpHoldFrames = 15;
jumpCount = 0;
mLock = 0;
dashTimer = 0;
spd = 0;

// Health
hp = 5;
max_hp = 5;
flash = 0;
heathbarWidth = 186;
heathbarHeight = 16;
heathbarX = 170 - (heathbarWidth/2);
heathbarY = 30;
damageTimer = 0;


// Objective
if (room == Room1)
{
	objText = "Objective: Go to the city's labatory";
}
else if (room == Room17)
{
	objText = "Objective: Get the vile and exit the building"
}

objX = 35;
objY = 100;

// Sprites
idleSprite = sPlayerNoHands;
runSprite = sPlayerRNoHands;
jumpSprite = sPlayerANoHands;

sprite_index = sPlayerNoHands;

gunavail = true;
walking = false;

stepTimer = 0;


target = room
