///get_input
right = keyboard_check(vk_right);
left = keyboard_check(vk_left);
up = keyboard_check_pressed(vk_up);
up_release = keyboard_check_released(vk_up);
down = keyboard_check(vk_down);

// Override the controls for a gamepad
var gp_id = 0;
var threash = 0.5;

if(gamepad_is_connected(gp_id)){
    right = gamepad_axis_value(gp_id, gp_axislh) > threash;
    left = gamepad_axis_value(gp_id, gp_axislh) < -threash;
    up = gamepad_button_check_pressed(gp_id, gp_face1);
    up_release = gamepad_button_check_released(gp_id, gp_face1);
    down = gamepad_axis_value(gp_id, gp_axislv) > threash;
}
