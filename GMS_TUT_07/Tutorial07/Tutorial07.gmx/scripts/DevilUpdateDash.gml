var distance = distance_to_point(m_dashTargetX, m_dashTargetY);

var deltaX = (m_dashTargetX - phy_position_x)/distance * m_dashSpeed;
var deltaY = (m_dashTargetY - phy_position_y)/distance * m_dashSpeed; 

if(distance < m_dashSpeed){
    phy_position_x = m_dashTargetX;
    phy_position_y = m_dashTargetY;
    m_devilState = DevilState.DEVIL_ATTACK;
    
    m_isAttacking = true;
    sprite_index = spr_devil_attack; 
    image_index = 0;
    m_fired = false;
}
else{
    phy_position_x += deltaX;
    phy_position_y += deltaY;
}

if(deltaX > 0){
    image_xscale = -1;
}
else if(deltaX < 0){
    image_xscale = 1;
}
