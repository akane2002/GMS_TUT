if(sprite_index == spr_ysera_attack_side 
    || sprite_index == spr_ysera_attack_side
    || sprite_index == spr_ysera_attack_side){
    if(image_index == 2){
        instance_create(x, y, obj_ysera_magic_bullet);
    }
}

if(sprite_index == spr_ysera_skill){
    if(image_index == 2){
        instance_create(x, y, obj_ysera_skill_effect);
    }
}
