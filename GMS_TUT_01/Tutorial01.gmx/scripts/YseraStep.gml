image_speed = 0.25;

if(keyboard_check(ord('A')))
{
    x = x - 4;
    sprite_index = spr_ysera_walk_side;
    image_xscale = 1;
}
else if(keyboard_check(ord('D')))
{
    x = x + 4;
    sprite_index = spr_ysera_walk_side;    
    image_xscale = -1;
}
else if(keyboard_check(ord('W')))
{
    y = y - 4;
    sprite_index = spr_ysera_walk_back;    
}
else if(keyboard_check(ord('S')))
{
    y = y + 4;
    sprite_index = spr_ysera_walk_front;
}
else
{
    sprite_index = spr_ysera_idle;
}
