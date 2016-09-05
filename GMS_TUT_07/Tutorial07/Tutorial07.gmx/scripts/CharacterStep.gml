if(m_isDead)
    return 0;
    
if(m_hp == 0){
    m_isDead = true;
    sprite_index = spr_character_die;
    return 0;
}

if(sprite_index == spr_character_attack_side 
|| sprite_index == spr_character_attack_front
|| sprite_index == spr_character_attack_back){
    if(image_index > 2 && m_fired == false && obj_character_bullet != noone){ 
        var bullet = instance_create(x, y, obj_character_bullet);
        var deltaX = 0;
        var deltaY = 0;
        if(m_bulletOffsetType == BulletOffsetType.ROTATION)
        {
            switch(m_playerDirection)
            {
            case PlayerDirection.UP:
              bullet.m_speedY = -10;
              bullet.phy_rotation = 90;
              deltaY = -89;
              break;
            case PlayerDirection.DOWN:
              bullet.m_speedY = 10;
              bullet.phy_rotation = 270;
              deltaY = 7;
              break;
            case PlayerDirection.LEFT:
              bullet.m_speedX = -10;
              bullet.phy_rotation = 0;
              deltaX = -65;
              deltaY = -33;
              break;
            case PlayerDirection.RIGHT:
              bullet.m_speedX = 10;
              bullet.phy_rotation = 180;
              deltaX = 65;
              deltaY = -33;
              break;
            } 
        }
        else
        {
            if(image_xscale > 0)
            {
                deltaX = -35;
                deltaY = -35;
            }
            else
            {
                deltaX = 35;
                deltaY = -35;
            }
        }
        bullet.phy_position_x += deltaX;
        bullet.phy_position_y += deltaY;
        m_fired = true;
    }
}

if(sprite_index == spr_character_skill){
    if(image_index > 2 && m_fired == false){
        instance_create(x, y, obj_character_skill_effect);
        m_fired = true
    }
}

