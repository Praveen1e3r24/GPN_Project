// Get Player Input
if(hascontrol){
lKey = keyboard_check(vk_left)  || keyboard_check(ord("A"));
rKey = keyboard_check(vk_right)|| keyboard_check(ord("D"));
jumpKey = keyboard_check_pressed(vk_space);
jumpHold = keyboard_check(vk_space);
sprintKey = keyboard_check(vk_shift);
crouchKey = keyboard_check(ord("C"));
var onGround = place_meeting(x,y+10,oWall);
var onWall = place_meeting(x-5,y,oWall) - place_meeting(x+5,y,oWall);

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


// Calculate Movement
var move = key_right - key_left;
hsp = move * walksp;
vsp = vsp +grv ;

if (place_meeting(x, y + 1, oWall) && key_jump) { // Corrected grouping with parentheses
    vsp = -7;
}

// Horizontal collision
if (place_meeting(x + hsp, y, oWall)) {
    while (!place_meeting(x + sign(hsp), y, oWall)) {
        x = x + sign(hsp);
    }
    hsp = 0;
}
x = x + hsp;

// Vertical collision hello
if (place_meeting(x, y + vsp, oWall)) {
    while (!place_meeting(x, y + sign(vsp), oWall)) {
        y = y + sign(vsp);
    }
    vsp = 0;
}
y = y + vsp;

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