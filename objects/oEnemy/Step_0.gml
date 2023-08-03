// Enemy variables
var attackRange = 1000;       // The range at which the enemy detects and attacks the player
var attackCooldown = 60;     // Cooldown between attacks in frames
var damage = 10;
var isOnGround = false;      // Flag to check if the enemy is on solid ground
var isShooting = false;      // Flag to indicate if the enemy is currently shooting
var shootingCooldown = 30;   // Cooldown between shots in frames
var moveSpeed = 3;           // Speed at which the enemy moves
         
var suicide=false;




vsp = vsp +grv ;


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




// Check for solid ground beneath the enemy
if (place_meeting(x, y + 1, oWall)) {
    isOnGround = true;
    vsp = 0; // Set vertical speed to zero when touching the ground
    y = floor(y); // Snap the enemy to the ground to prevent floating
} else {
    isOnGround = false;
}

//// Prevent falling off ledges
if (isOnGround && place_meeting(x, y+1, oWall) && !place_meeting(x+vsp, y + 1, oWall) ) {
    vsp = 0; // Set vertical speed to zero to prevent falling
    suicide=true;
    // Change direction when reaching the edge
    if (place_meeting(x + sign(hsp), y, oWall)) {
       hsp = -hsp; // Change horizontal direction
        image_xscale = -image_xscale; // Switch sides when changing direction
   }
}



// Calculate distance to the player
var playerObj = instance_nearest(x, y, oPlayer);
var distanceToPlayer = point_distance(x, y, playerObj.x, playerObj.y);

// Check if the player is within attack range and perform the attack
if (distanceToPlayer < attackRange && !suicide) {
    isShooting = true; // Switch to shooting animation
    shootingCooldown -= 1; // Reduce the shooting cooldown

    // Aim at the player and switch sides
    if (playerObj.x < x) {
        hsp = -moveSpeed;
        image_xscale = -1;
    } else {
        hsp = moveSpeed;
        image_xscale = 1;
    }

    // Shoot a bullet if the shooting cooldown is done
    if (shootingCooldown <= 0) {
        shootingCooldown = 30; // Reset the shooting cooldown

        // Create a bullet object and set its properties
        var bullet = instance_create(x, y, oEnemyBullet);
        bullet.direction = point_direction(x, y, playerObj.x, playerObj.y);
        bullet.speed = 8; // Set the bullet speed
        bullet.damage = damage; // Set the bullet damage (if needed)
    }
} else {
    isShooting = false; // Player not in attack range, switch back to normal animation
    // Reset horizontal movement when not attacking
    hsp = 0;
}

// Reduce attack cooldown
if (attackCooldown > 0) {
    attackCooldown--;
}




// Animation
if (isShooting) {
    sprite_index = sEnemyA; // Replace sEnemyA with the name of your shooting animation sprite
} else if (!isOnGround) {
    sprite_index = sEnemy; // Replace sEnemy with the name of your jumping/falling animation sprite
} else if (hsp != 0) {
    sprite_index = sEnemyR; // Replace sEnemyR with the name of your running animation sprite
} else {
    sprite_index = sEnemy; // Replace sEnemy with the name of your idle animation sprite
}
