if(m_isDead)
    return 0;

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


