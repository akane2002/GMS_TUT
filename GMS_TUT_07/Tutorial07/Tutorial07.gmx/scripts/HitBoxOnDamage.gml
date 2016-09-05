if(instance_exists(m_attachedParent))
{
    if((m_attachedParent.object_index == obj_ysera && other.object_index == obj_devil_attack_area)
    || (m_attachedParent.object_index == obj_devil && other.object_index == obj_ysera_magic_bullet)) 
    {
        with(m_attachedParent)
        {
            CharacterOnDamage();
        }
    }
}
