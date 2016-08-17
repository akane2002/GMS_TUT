image_speed = 0.25;

if(!m_isAttacking && !m_isInSkill)
{
    if(keyboard_check(ord('J')))
    {
      m_isAttacking = true;
      switch(m_playerDirection)
      {
      case PlayerDirection.UP:
        sprite_index = spr_ysera_attack_back;
        break;
      case PlayerDirection.DOWN:
        sprite_index = spr_ysera_attack_front;
        break;
      case PlayerDirection.LEFT:
        sprite_index = spr_ysera_attack_side;
        break;
      case PlayerDirection.RIGHT:
        sprite_index = spr_ysera_attack_side;
        break;
      }  
      image_index = 0;
      m_fired = false;
    }
    else if(keyboard_check(ord('K')))
    {
        m_isInSkill = true;
        sprite_index = spr_ysera_skill;
        image_index = 0;
        m_fired = false;
    }
    else if(keyboard_check(ord('A')))
    {
        phy_position_x = phy_position_x - 4;
        sprite_index = spr_ysera_walk_side;
        image_xscale = 1;
        m_playerDirection = PlayerDirection.LEFT;
    }
    else if(keyboard_check(ord('D')))
    {
        phy_position_x = phy_position_x + 4;
        sprite_index = spr_ysera_walk_side;    
        image_xscale = -1;
        m_playerDirection = PlayerDirection.RIGHT;
    }
    else if(keyboard_check(ord('W')))
    {
        phy_position_y = phy_position_y - 4;
        sprite_index = spr_ysera_walk_back;    
        m_playerDirection = PlayerDirection.UP;
    }
    else if(keyboard_check(ord('S')))
    {
        phy_position_y = phy_position_y + 4;
        sprite_index = spr_ysera_walk_front;
        m_playerDirection = PlayerDirection.DOWN;
    }
    else
    {
        sprite_index = spr_ysera_idle;
    }
}

if(sprite_index == spr_ysera_attack_side 
|| sprite_index == spr_ysera_attack_front
|| sprite_index == spr_ysera_attack_back){
    if(image_index > 2 && m_fired == false){ 
        var magicBullet = instance_create(x, y, obj_ysera_magic_bullet);
        var deltaX = 0;
        var deltaY = 0;
        switch(m_playerDirection)
        {
        case PlayerDirection.UP:
          magicBullet.m_speedY = -10;
          deltaY = -89;
          break;
        case PlayerDirection.DOWN:
          magicBullet.m_speedY = 10;
          deltaY = 7;
          break;
        case PlayerDirection.LEFT:
          magicBullet.m_speedX = -10;
          deltaX = -65;
          deltaY = -33;
          break;
        case PlayerDirection.RIGHT:
          magicBullet.m_speedX = 10;
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

