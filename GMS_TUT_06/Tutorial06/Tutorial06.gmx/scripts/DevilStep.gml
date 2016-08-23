if(m_isDead)
    return 0;
    
if(m_hp == 0){
    m_isDead = true;
    sprite_index = spr_devil_die;
    return 0;
}

image_speed = 0.25;

if(!m_isAttacking && !m_isInSkill)
{
    var player = instance_find(obj_ysera, 0);
    var deltaX = player.x - phy_position_x;
    var deltaY = player.y - phy_position_y;
    var mySpeed = 2;
    if(deltaX > mySpeed){
        phy_position_x += mySpeed;
    }
    else if(deltaX < -mySpeed){
        phy_position_x -= mySpeed;
    }
    else{
        phy_position_x += deltaX;
    }
    
    if(deltaY > mySpeed){
        phy_position_y += mySpeed;
    }
    else if(deltaY < -mySpeed){
        phy_position_y -= mySpeed;
    }
    else{
        phy_position_y += deltaY;
    }
    
    if(deltaX > 0){
        image_xscale = -1;
    }
    else if(deltaX < 0){
        image_xscale = 1;
    }  
    
    sprite_index = spr_devil_walk;  
}

if(sprite_index == spr_devil_attack 
|| sprite_index == spr_devil_attack
|| sprite_index == spr_devil_attack){
    if(image_index > 2 && m_fired == false){ 
        var magicBullet = instance_create(x, y, obj_ysera_magic_bullet);
        var deltaX = 0;
        var deltaY = 0;
        switch(m_playerDirection)
        {
        case PlayerDirection.UP:
          magicBullet.m_speedY = -10;
          magicBullet.image_angle = 270;
          deltaY = -89;
          break;
        case PlayerDirection.DOWN:
          magicBullet.m_speedY = 10;
          magicBullet.image_angle = 90;
          deltaY = 7;
          break;
        case PlayerDirection.LEFT:
          magicBullet.m_speedX = -10;
          deltaX = -65;
          deltaY = -33;
          break;
        case PlayerDirection.RIGHT:
          magicBullet.m_speedX = 10;
          magicBullet.image_angle = 180;
          deltaX = 65;
          deltaY = -33;
          break;
        } 
        magicBullet.x += deltaX;
        magicBullet.y += deltaY;
        m_fired = true;
    }
}

if(sprite_index == spr_ysera_skill){
    if(image_index > 2 && m_fired == false){
        instance_create(x, y, obj_ysera_skill_effect);
        m_fired = true
    }
}

