if(m_isAttacking && sprite_index == spr_character_attack_side
    || sprite_index == spr_character_attack_front
    || sprite_index == spr_character_attack_back)
{
    m_isAttacking = false;
}

if(m_isInSkill && sprite_index == spr_character_skill)
{
    m_isInSkill = false;
}

if(m_isDead)
{
    image_speed = 0;
    image_index = image_number - 1;
}
