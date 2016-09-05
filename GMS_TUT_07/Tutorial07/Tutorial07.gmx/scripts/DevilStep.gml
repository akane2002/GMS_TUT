if(m_isDead)
    return 0;

if(m_devilState == DevilState.DEVIL_FOLLOW){
    DevilUpdateFollow();
}
else if(m_devilState == DevilState.DEVIL_DASH){
    DevilUpdateDash();
}
else if(m_devilState == DevilState.DEVIL_ATTACK){
    DevilUpdateAttack();
}
else if(m_devilState == DevilState.DEVIL_RETREAT){
    DevilUpdateRetreat();
}

