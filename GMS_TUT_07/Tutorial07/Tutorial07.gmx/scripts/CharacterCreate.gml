enum PlayerDirection
{
    UP,
    DOWN,
    LEFT,
    RIGHT
}

m_playerDirection = PlayerDirection.DOWN;
m_isAttacking = false;
m_isInSkill = false;
m_fired = false;

enum BulletOffsetType
{
    ROTATION,
    MIRROR
}
m_bulletOffsetType = BulletOffsetType.ROTATION;

phy_fixed_rotation = 1;
image_speed = 0.25;

m_attachedHitbox = instance_create(x, y, obj_hitbox);
m_attachedHitbox.m_attachedParent = id;

m_hp = 2;
m_isDead = false;

spr_character_attack_side = noone;
spr_character_attack_front = noone;
spr_character_attack_back = noone;
spr_character_skill = noone;
spr_character_die = noone;
spr_character_idle = noone;
spr_character_walk_side = noone;
spr_character_walk_front = noone;
spr_character_walk_back = noone;
obj_character_skill_effect = noone;
obj_character_bullet = noone;
