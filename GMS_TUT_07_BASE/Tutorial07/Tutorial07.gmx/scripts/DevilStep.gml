if(m_isDead)
    return 0;

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

