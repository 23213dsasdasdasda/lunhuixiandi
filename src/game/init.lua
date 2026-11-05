local common = require 'core.War3API'.common

local Init = {}

function Init.start(player)
    -- Reveal the terrain and disable the black unrevealed-area mask.
    common.FogMaskEnable(false)
    common.FogEnable(false)

    print('W3_MF_INIT_READY')
end

return Init
