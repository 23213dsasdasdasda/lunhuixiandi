local jass = require 'jass.common'
local FireBall = {}

-- A minimal damage/effect example, not yet connected to an ability button.
function FireBall.cast(caster, target, damage)
    local effect = jass.AddSpecialEffectTarget(
        'Abilities\\Spells\\Other\\Incinerate\\FireLordDeathExplode.mdl', target, 'origin')
    jass.DestroyEffect(effect)
    return jass.UnitDamageTarget(caster, target, damage, false, false,
        jass.ATTACK_TYPE_NORMAL, jass.DAMAGE_TYPE_FIRE, jass.WEAPON_TYPE_WHOKNOWS)
end

return FireBall
