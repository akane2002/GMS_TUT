if(m_retreatCurrentTime < m_retreatTime){
    var player = instance_find(obj_ysera, 0);
    var distance = distance_to_point(player.x, player.y);
    if(distance > 0){
        var deltaX = (phy_position_x - player.x)/distance * m_retreatSpeed;
        var deltaY = (phy_position_y - player.y)/distance * m_retreatSpeed; 
        
        phy_position_x += deltaX;
        phy_position_y += deltaY;
    }
    
    m_retreatCurrentTime += 1/30.0;
}
else{
    m_devilState = DevilState.DEVIL_FOLLOW;
}
