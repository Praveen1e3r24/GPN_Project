/// @function ChangeWeapon(int);
/// @param {real} object The Object to follow


function ChangeWeapon(int) {
    var weapon = int;
    var wp_map = weapons[weapon];
    sprite = ds_map_find_value(wp_map, "sprite");
    recoil = ds_map_find_value(wp_map, "recoil");
    recoil_push = ds_map_find_value(wp_map, "recoil_push");
    damage = ds_map_find_value(wp_map, "damage");
    projectile = ds_map_find_value(wp_map, "projectile");
    startup = ds_map_find_value(wp_map, "startup");
    bulletspeed = ds_map_find_value(wp_map, "bulletspeed");
    length = ds_map_find_value(wp_map, "length");
    cooldown = ds_map_find_value(wp_map, "cooldown");
    automatic = ds_map_find_value(wp_map, "automatic");
}
