///snake_move_left_state
var wall_at_left = position_meeting(bbox_left-1, y, Solid);
var ledge_at_left = !position_meeting(bbox_left-1, bbox_bottom+1, Solid);

if(wall_at_left || ledge_at_left){
    state = snake_move_right_state;
}

// Control the snake sprite
image_xscale =  -1;

// Move the snake
x -= 1;
