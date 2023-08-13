// Declare and initialize destroy_timer at the top of the Step event
var destroy_timer = 0;

if (done == 0) {
    vsp = vsp + grv;

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
        if (vsp > 0) {
            done = 1;
        }
        while (!place_meeting(x, y + sign(vsp), oWall)) {
            y = y + sign(vsp);
        }
        vsp = 0;
    }
    y = y + vsp;

    // Check if the animation reaches the last frame and done is still 0
    if (image_index >= (image_number - 1) && done == 0) {
        // Reduce image_speed to 0 to stop the animation
        image_speed = 0;

        // Timer for 2 seconds (or 60 frames, assuming 30 frames per second)
        destroy_timer = 2 * room_speed; // 2 seconds

        // Set the done flag to 1, so the timer starts only once
        done = 1;
    }
}

// If the done flag is 1, start the timer and destroy the instance after 2 seconds
if (done == 1) {
    destroy_timer -= 1;

    // Check if the timer has reached 0
    if (destroy_timer <= 0) {
        // Call the instance_destroy() function after the 2-second delay
        instance_destroy();
    }
}
