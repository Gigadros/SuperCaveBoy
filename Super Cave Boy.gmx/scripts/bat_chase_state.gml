///bat_chase_state
if(instance_exists(Player)){
    var dir = point_direction(x, y, Player.x, Player.y);
    hspd = lengthdir_x(spd, dir);
    vspd = lengthdir_y(spd, dir);
    
    // Change to the flying sprite
    sprite_index = spr_bat_fly;
    
    // Face the right direction
    if (hspd != 0) image_xscale = sign(hspd);
    
    // Move
    move(Solid);
}
