spr_character_attack_side = spr_devil_attack;
spr_character_attack_front = spr_devil_attack;
spr_character_attack_back = spr_devil_attack;
spr_character_skill = noone;
spr_character_die = spr_devil_die;
spr_character_idle = spr_devil_idle;
spr_character_walk_side = spr_devil_walk;
spr_character_walk_front = spr_devil_walk;
spr_character_walk_back = spr_devil_walk;

obj_character_skill_effect = noone;
obj_character_bullet = obj_devil_attack_area;

enum DevilState{
    DEVIL_FOLLOW,
    DEVIL_DASH,
    DEVIL_ATTACK,
    DEVIL_RETREAT
}
m_devilState = DevilState.DEVIL_FOLLOW;
m_dashDistance = 200;
m_dashDelta = 60;
m_dashTargetX = 0;
m_dashTargetY = 0;

m_dashSpeed = 5;
m_retreatCurrentTime = 0;
m_retreatTime = 2;
m_retreatSpeed = 2;

m_bulletOffsetType = BulletOffsetType.MIRROR;
