local War3API = require 'core.War3API'
local war3 = War3API.common
local FireBall = {}

-- A minimal damage/effect example, not yet connected to an ability button.
function FireBall.cast(caster, target, damage)
    local effect = war3.AddSpecialEffectTarget(
        'Abilities\\Spells\\Other\\Incinerate\\FireLordDeathExplode.mdl', target, 'origin')
    war3.DestroyEffect(effect)
    return war3.UnitDamageTarget(caster, target, damage, false, false,
        war3.ATTACK_TYPE_NORMAL, war3.DAMAGE_TYPE_FIRE, war3.WEAPON_TYPE_WHOKNOWS)
end

return FireBall
