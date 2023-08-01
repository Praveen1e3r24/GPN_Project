// Get Player Input
if(hascontrol){
key_left = keyboard_check(vk_left)  || keyboard_check(ord("A"));
key_right = keyboard_check(vk_right)|| keyboard_check(ord("D"));
key_jump = keyboard_check_pressed(vk_space);


}
else
{
key_right=0;
key_left=0;
key_jump=0;

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

// Vertical collision
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