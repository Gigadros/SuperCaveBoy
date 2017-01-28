///hurt_state

// Set the sprite
sprite_index = spr_player_hurt;

if(hspd != 0) image_xscale = sign(hspd);

// Apply gravity
if(!place_meeting(x, y+1, Solid)){
    vspd += grav;
}else{
    vspd = 0;
    
    // Use friction
    apply_friction(acc);
}

direction_move_bounce(Solid);

// Change back to the move state
if (hspd == 0 && vspd == 0){
    image_blend = c_white;
    state = move_state;
}
