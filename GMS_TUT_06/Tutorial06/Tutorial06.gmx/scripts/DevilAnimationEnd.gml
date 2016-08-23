if(m_isAttacking && sprite_index == spr_devil_attack
    || sprite_index == spr_devil_attack
    || sprite_index == spr_devil_attack)
{
    m_isAttacking = false;
}

if(m_isInSkill && sprite_index == spr_ysera_skill)
{
    m_isInSkill = false;
}

if(m_isDead)
{
    image_speed = 0;
    image_index = image_number - 1;
}
