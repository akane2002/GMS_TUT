
m_playerDirection = PlayerDirection.DOWN;
m_isAttacking = false;
m_isInSkill = false;
m_fired = false;

phy_fixed_rotation = 1;

m_attachedHitbox = instance_create(x, y, obj_hitbox);
m_attachedHitbox.m_attachedParent = id;

m_hp = 2;
m_isDead = false;
