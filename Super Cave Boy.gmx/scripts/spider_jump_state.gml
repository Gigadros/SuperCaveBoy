///spider_jump_state
image_index = image_number - 1;

// Apply gravity
if(!place_meeting(x, y+1, Solid)){
    vspd += grav;
}else{
    vspd = 0;
    
    // Use friction
    apply_friction(acc);
    
    // Check for idle state
    if(hspd == 0 && vspd == 0){
        state = spider_idle_state;
        alarm[0] = 15;
        image_speed = 0;
        image_index = 0;
    }
}

if(hspd != 0) image_xscale = sign(hspd);

// Move
horizontal_move_bounce(Solid);
