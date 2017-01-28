///boss_idle_state()
var dis = point_distance(x, y, Player.x, Player.y);

if(dis < 128){
    state = boss_lift_state;
}
