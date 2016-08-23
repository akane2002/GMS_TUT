if(m_isAttacking && sprite_index == spr_ysera_attack_side 
    || sprite_index == spr_ysera_attack_front
    || sprite_index == spr_ysera_attack_back)
{
    m_isAttacking = false;
}

if(m_isInSkill && sprite_index == spr_ysera_skill)
{
    m_isInSkill = false;
}
