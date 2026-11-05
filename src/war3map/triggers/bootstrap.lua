-- Converted from 342.w3x map/map/war3map.j.
-- Trigger functions grouped by feature.
-- InitTrig_init
-- InitTrig_CSHcs
-- InitTrig_CHUSHIHUA
-- InitTrig_SHILI
return function(_ENV)
function Trig_initActions()
    require("war3map.triggers.debug_handles")
end

function InitTrig_init()
    gg_trg_init = CreateTrigger()
    TriggerRegisterTimerEventSingle(gg_trg_init, 0.00)
    TriggerAddAction(gg_trg_init, Trig_initActions)
end

function Trig_CSHcsFunc010A()
    local ydul_a = nil
    SavePlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0x48656946, GetEnumPlayer())
    SaveInteger(YDHT, GetHandleId(GetEnumPlayer()), 0x861E1815, 1)
    SaveInteger(YDHT, GetHandleId(GetEnumPlayer()), 0x9ACF35AF, 3)
    SaveInteger(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0x48656946)), 0xE3DC3FEA, 1)
    SaveInteger(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0x48656946)), 0xECC8BBCA, DzAPI_Map_GetMapLevel(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0x48656946)))
    SaveInteger(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0x48656946)), 0xC7C0E16E, 1)
    SaveStr(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0x48656946)), 0x2D8F0B8C, "无")
    SaveInteger(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0x48656946)), 0xD80D7EB9, 1)
    SaveInteger(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0x48656946)), 0x21F5563F, 1)
    SaveInteger(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0x48656946)), 0x59FBA12C, 1)
    SaveInteger(YDHT, GetHandleId(GetEnumPlayer()), 0x692728ED, 0)
    SaveInteger(YDHT, GetHandleId(GetEnumPlayer()), 0xE96F2201, 0)
    SaveInteger(YDHT, GetHandleId(GetEnumPlayer()), 0x7F306021, 0)
    SaveStr(YDHT, GetHandleId(GetEnumPlayer()), 0x905521C3, "无")
    SaveInteger(YDHT, GetHandleId(GetEnumPlayer()), 0xF6CE6728, 0)
    SaveInteger(YDHT, GetHandleId(GetEnumPlayer()), 0x76F02950, 0)
    SaveReal(YDHT, GetHandleId(GetEnumPlayer()), 0x2A657013, 0.00)
    SaveInteger(YDHT, GetHandleId(GetEnumPlayer()), 0x944BBB75, 0)
    SaveReal(YDHT, GetHandleId(GetEnumPlayer()), 0x3CEEA743, 0.00)
    SaveReal(YDHT, GetHandleId(GetEnumPlayer()), 0xC3B50223, 0.00)
    SaveReal(YDHT, GetHandleId(GetEnumPlayer()), 0xB00B5016, 0.00)
    SaveReal(YDHT, GetHandleId(GetEnumPlayer()), 0x11767CA1, 0.00)
    SaveReal(YDHT, GetHandleId(GetEnumPlayer()), 0x25495654, 0.00)
    SaveReal(YDHT, GetHandleId(GetEnumPlayer()), 0x340B6D5D, 0.00)
    SaveReal(YDHT, GetHandleId(GetEnumPlayer()), 0x09DB3E68, 0.00)
    SaveReal(YDHT, GetHandleId(GetEnumPlayer()), 0x1514A9DB, 0.00)
    SaveReal(YDHT, GetHandleId(GetEnumPlayer()), 0x6FEEDF3C, 0.00)
    SaveInteger(YDHT, GetHandleId(GetEnumPlayer()), 0x28ECE0C5, 0)
    SaveReal(YDHT, GetHandleId(GetEnumPlayer()), 0xEE5D8AC8, 0.00)
    SaveInteger(YDHT, GetHandleId(GetEnumPlayer()), 0xC745F1FD, 0)
    SaveReal(YDHT, GetHandleId(GetEnumPlayer()), 0xFED38E21, 1.00)
    SaveReal(YDHT, GetHandleId(GetEnumPlayer()), 0x4EC355AA, 1.00)
    SaveReal(YDHT, GetHandleId(GetEnumPlayer()), 0x5E30E498, 1.00)
    SaveReal(YDHT, GetHandleId(GetEnumPlayer()), 0xEEEA13B0, 0.00)
    SaveReal(YDHT, GetHandleId(GetEnumPlayer()), 0x9691B869, 0.00)
    SaveReal(YDHT, GetHandleId(GetEnumPlayer()), 0xDA717BFA, 0.15)
    SaveReal(YDHT, GetHandleId(GetEnumPlayer()), 0x54BD8D0F, 0.00)
    SaveUnitHandle(YDHT, GetHandleId(GetEnumPlayer()), 0xE4977C87, CreateUnit(GetEnumPlayer(), (0x7A7A3130), 0.00, 0.00, 0))
    SaveUnitHandle(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0x48656946)), 0x5AB5AA03, CreateUnit(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0x48656946), (0x72353553), 0.00, 0.00, 0))
    SaveUnitHandle(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0x48656946)), 0x7558D62A, CreateUnit(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0x48656946), (0x63633031), 0, 0, 0))
    SaveInteger(YDHT, GetHandleId(GetEnumPlayer()), 0xA5749C0A, 1)
    SaveInteger(YDHT, GetHandleId(GetEnumPlayer()), 0x25C8C6CA, 1)
    SaveInteger(YDHT, GetHandleId(GetEnumPlayer()), 0x199BB536, 1)
    SaveInteger(YDHT, GetHandleId(GetEnumPlayer()), 0x680D1141, 1)
    SaveInteger(YDHT, GetHandleId(GetEnumPlayer()), 0xD0B486C5, 1)
    SaveInteger(YDHT, GetHandleId(GetEnumPlayer()), 0x926CF5E7, 1)
    SaveInteger(YDHT, GetHandleId(GetEnumPlayer()), 0x123EC98D, 1)
    SaveInteger(YDHT, GetHandleId(GetEnumPlayer()), 0x9B72688C, 1)
    SaveInteger(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0x48656946)), 0xBAC98546, 20)
    SaveInteger(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0x48656946)), 0x42F55AB2, 72)
    SaveBoolean(YDHT, GetHandleId(GetEnumPlayer()), 0x9837AD59, true)
    udg_SDJQ4[GetConvertedPlayerId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0x48656946))] = 1.00
    SaveBoolean(YDHT, GetHandleId(GetEnumPlayer()), 0xDAA3C8E8, true)
    ydul_a = 1
    while true do
        if ydul_a > 4 then
            break
        end
        SaveInteger(YDHT, ((GetHandleId((GetEnumPlayer())))), (((LoadInteger(YDHT, ((GetHandleId((GetEnumPlayer())))), (StringHash(I2S(ydul_a))))))), ((0x41706C79)))
        ydul_a = ydul_a + 1
    end
end

function Trig_CSHcsFunc015Conditions()
    if ((IsUnitType(GetTriggerUnit(), UNIT_TYPE_HERO) == true) and (IsUnitEnemy(GetTriggerUnit(), Player(6)) == true)) then
        KillUnit(GetTriggerUnit())
        DestroyEffect(AddSpecialEffectTarget("Abilities\\Spells\\Other\\TalkToMe\\TalkToMe.mdl", GetTriggerUnit(), "chest"))
    else
    end
end

function Trig_CSHcsFunc016Func002T()
    SaveInteger(YDLOC, GetHandleId(GetExpiredTimer()), 0x6C2DED4E, (LoadInteger(YDLOC, GetHandleId(GetExpiredTimer()), 0x6C2DED4E) + 1))
    if ((LoadInteger(YDLOC, GetHandleId(GetExpiredTimer()), 0x6C2DED4E) < 10)) then
        SaveStr(YDLOC, GetHandleId(GetExpiredTimer()), 0x2D1FF186, ("Z00" .. I2S(LoadInteger(YDLOC, GetHandleId(GetExpiredTimer()), 0x6C2DED4E))))
    else
        SaveStr(YDLOC, GetHandleId(GetExpiredTimer()), 0x2D1FF186, ("Z0" .. I2S(LoadInteger(YDLOC, GetHandleId(GetExpiredTimer()), 0x6C2DED4E))))
    end
    if ((LoadInteger(YDLOC, GetHandleId(GetExpiredTimer()), 0x6C2DED4E) > 99)) then
        SaveStr(YDLOC, GetHandleId(GetExpiredTimer()), 0x2D1FF186, ("Z" .. I2S(LoadInteger(YDLOC, GetHandleId(GetExpiredTimer()), 0x6C2DED4E))))
    else
    end
    SaveInteger(YDLOC, GetHandleId(GetExpiredTimer()), 0xB0497EE9, (YDWES2Id((LoadStr(YDLOC, GetHandleId(GetExpiredTimer()), 0x2D1FF186)))))
    SaveInteger(YDLOC, GetHandleId(GetExpiredTimer()), 0x7AB668AD, S2I(EXExecuteScript("(require'jass.slk').item[" .. I2S(LoadInteger(YDLOC, GetHandleId(GetExpiredTimer()), 0xB0497EE9)) .. "].HP")))
    SaveReal(YDLOC, GetHandleId(GetExpiredTimer()), 0xDB5F93A2, (I2R(LoadInteger(YDLOC, GetHandleId(GetExpiredTimer()), 0x7AB668AD)) / 100.00))
    ItemPoolAddItemType(udg_FB_WPC, LoadInteger(YDLOC, GetHandleId(GetExpiredTimer()), 0xB0497EE9), LoadReal(YDLOC, GetHandleId(GetExpiredTimer()), 0xDB5F93A2))
    SaveStr(YDLOC, GetHandleId(GetExpiredTimer()), 0x2D1FF186, "")
    if ((LoadInteger(YDLOC, GetHandleId(GetExpiredTimer()), 0x6C2DED4E) == 41)) then
        FlushChildHashtable(YDLOC, GetHandleId(GetExpiredTimer()))
        DestroyTimer(GetExpiredTimer())
    else
    end
end

function Trig_CSHcsFunc017Func001A()
    udg_hq[GetConvertedPlayerId(GetEnumPlayer())] = CreateItemPool()
end

function Trig_CSHcsFunc017Func002T()
    local ydul_a = nil
    SaveInteger(YDLOC, GetHandleId(GetExpiredTimer()), 0x6C2DED4E, (LoadInteger(YDLOC, GetHandleId(GetExpiredTimer()), 0x6C2DED4E) + 1))
    if ((LoadInteger(YDLOC, GetHandleId(GetExpiredTimer()), 0x6C2DED4E) < 10)) then
        SaveStr(YDLOC, GetHandleId(GetExpiredTimer()), 0x2D1FF186, (("h0") .. (I2S(LoadInteger(YDLOC, GetHandleId(GetExpiredTimer()), 0x6C2DED4E))) .. ("q")))
    else
        SaveStr(YDLOC, GetHandleId(GetExpiredTimer()), 0x2D1FF186, (("h") .. (I2S(LoadInteger(YDLOC, GetHandleId(GetExpiredTimer()), 0x6C2DED4E))) .. ("q")))
    end
    SaveInteger(YDLOC, GetHandleId(GetExpiredTimer()), 0xB0497EE9, (YDWES2Id((LoadStr(YDLOC, GetHandleId(GetExpiredTimer()), 0x2D1FF186)))))
    SaveInteger(YDLOC, GetHandleId(GetExpiredTimer()), 0x7AB668AD, S2I(EXExecuteScript("(require'jass.slk').item[" .. I2S(LoadInteger(YDLOC, GetHandleId(GetExpiredTimer()), 0xB0497EE9)) .. "].HP")))
    SaveReal(YDLOC, GetHandleId(GetExpiredTimer()), 0xDB5F93A2, (I2R(LoadInteger(YDLOC, GetHandleId(GetExpiredTimer()), 0x7AB668AD)) / 100.00))
    ydul_a = 1
    while true do
        if ydul_a > 4 then
            break
        end
        ItemPoolAddItemType(udg_hq[ydul_a], LoadInteger(YDLOC, GetHandleId(GetExpiredTimer()), 0xB0497EE9), LoadReal(YDLOC, GetHandleId(GetExpiredTimer()), 0xDB5F93A2))
        ydul_a = ydul_a + 1
    end
    SaveStr(YDLOC, GetHandleId(GetExpiredTimer()), 0x2D1FF186, "")
    if ((LoadInteger(YDLOC, GetHandleId(GetExpiredTimer()), 0x6C2DED4E) == 39)) then
        FlushChildHashtable(YDLOC, GetHandleId(GetExpiredTimer()))
        DestroyTimer(GetExpiredTimer())
    else
    end
end

function Trig_CSHcsFunc018Func001A()
    udg_diyu_wpc[GetConvertedPlayerId(GetEnumPlayer())] = CreateItemPool()
end

function Trig_CSHcsFunc018Func002T()
    local ydul_a = nil
    SaveInteger(YDLOC, GetHandleId(GetExpiredTimer()), 0x6C2DED4E, (LoadInteger(YDLOC, GetHandleId(GetExpiredTimer()), 0x6C2DED4E) + 1))
    if ((LoadInteger(YDLOC, GetHandleId(GetExpiredTimer()), 0x6C2DED4E) < 10)) then
        SaveStr(YDLOC, GetHandleId(GetExpiredTimer()), 0x2D1FF186, (("dy0") .. (I2S(LoadInteger(YDLOC, GetHandleId(GetExpiredTimer()), 0x6C2DED4E))) .. ("")))
    else
        SaveStr(YDLOC, GetHandleId(GetExpiredTimer()), 0x2D1FF186, (("dy") .. (I2S(LoadInteger(YDLOC, GetHandleId(GetExpiredTimer()), 0x6C2DED4E))) .. ("")))
    end
    SaveInteger(YDLOC, GetHandleId(GetExpiredTimer()), 0xB0497EE9, (YDWES2Id((LoadStr(YDLOC, GetHandleId(GetExpiredTimer()), 0x2D1FF186)))))
    SaveInteger(YDLOC, GetHandleId(GetExpiredTimer()), 0x7AB668AD, S2I(EXExecuteScript("(require'jass.slk').item[" .. I2S(LoadInteger(YDLOC, GetHandleId(GetExpiredTimer()), 0xB0497EE9)) .. "].HP")))
    SaveReal(YDLOC, GetHandleId(GetExpiredTimer()), 0xDB5F93A2, (I2R(LoadInteger(YDLOC, GetHandleId(GetExpiredTimer()), 0x7AB668AD)) / 100.00))
    ydul_a = 1
    while true do
        if ydul_a > 4 then
            break
        end
        ItemPoolAddItemType(udg_diyu_wpc[ydul_a], LoadInteger(YDLOC, GetHandleId(GetExpiredTimer()), 0xB0497EE9), LoadReal(YDLOC, GetHandleId(GetExpiredTimer()), 0xDB5F93A2))
        ydul_a = ydul_a + 1
    end
    SaveStr(YDLOC, GetHandleId(GetExpiredTimer()), 0x2D1FF186, "")
    if ((LoadInteger(YDLOC, GetHandleId(GetExpiredTimer()), 0x6C2DED4E) == 38)) then
        FlushChildHashtable(YDLOC, GetHandleId(GetExpiredTimer()))
        DestroyTimer(GetExpiredTimer())
    else
    end
end

function Trig_CSHcsFunc019Func002T()
    local ydul_a = nil
    SaveInteger(YDLOC, GetHandleId(GetExpiredTimer()), 0x6C2DED4E, (LoadInteger(YDLOC, GetHandleId(GetExpiredTimer()), 0x6C2DED4E) + 1))
    if ((LoadInteger(YDLOC, GetHandleId(GetExpiredTimer()), 0x6C2DED4E) < 10)) then
        SaveStr(YDLOC, GetHandleId(GetExpiredTimer()), 0x2D1FF186, (("S0") .. (I2S(LoadInteger(YDLOC, GetHandleId(GetExpiredTimer()), 0x6C2DED4E))) .. ("H")))
    else
        SaveStr(YDLOC, GetHandleId(GetExpiredTimer()), 0x2D1FF186, (("S") .. (I2S(LoadInteger(YDLOC, GetHandleId(GetExpiredTimer()), 0x6C2DED4E))) .. ("H")))
    end
    SaveInteger(YDLOC, GetHandleId(GetExpiredTimer()), 0xB0497EE9, (YDWES2Id((LoadStr(YDLOC, GetHandleId(GetExpiredTimer()), 0x2D1FF186)))))
    if ((S2I(EXExecuteScript("(require'jass.slk').item[" .. I2S(LoadInteger(YDLOC, GetHandleId(GetExpiredTimer()), 0xB0497EE9)) .. "].Level")) == 4)) then
        ydul_a = 1
        while true do
            if ydul_a > 3 then
                break
            end
            ItemPoolAddItemType(udg_TFJN[ydul_a], LoadInteger(YDLOC, GetHandleId(GetExpiredTimer()), 0xB0497EE9), 0.60)
            ydul_a = ydul_a + 1
        end
    else
        ItemPoolAddItemType(udg_TFJN[S2I(EXExecuteScript("(require'jass.slk').item[" .. I2S(LoadInteger(YDLOC, GetHandleId(GetExpiredTimer()), 0xB0497EE9)) .. "].oldLevel"))], LoadInteger(YDLOC, GetHandleId(GetExpiredTimer()), 0xB0497EE9), 1.00)
    end
    SaveStr(YDLOC, GetHandleId(GetExpiredTimer()), 0x2D1FF186, "")
    if ((LoadInteger(YDLOC, GetHandleId(GetExpiredTimer()), 0x6C2DED4E) == 25)) then
        FlushChildHashtable(YDLOC, GetHandleId(GetExpiredTimer()))
        DestroyTimer(GetExpiredTimer())
    else
    end
end

function Trig_CSHcsFunc020Func001A()
    udg_dx_wpc[GetConvertedPlayerId(GetEnumPlayer())] = CreateItemPool()
    udg_dx_wpc2[GetConvertedPlayerId(GetEnumPlayer())] = CreateItemPool()
    udg_dx_wpc3[GetConvertedPlayerId(GetEnumPlayer())] = CreateItemPool()
end

function Trig_CSHcsFunc020Func002Func007Func002A()
    ItemPoolAddItemType(udg_dx_wpc[GetConvertedPlayerId(GetEnumPlayer())], LoadInteger(YDLOC, GetHandleId(GetExpiredTimer()), 0xB0497EE9), LoadReal(YDLOC, GetHandleId(GetExpiredTimer()), 0xDB5F93A2))
end

function Trig_CSHcsFunc020Func002Func007Func003Func002A()
    ItemPoolAddItemType(udg_dx_wpc2[GetConvertedPlayerId(GetEnumPlayer())], LoadInteger(YDLOC, GetHandleId(GetExpiredTimer()), 0xB0497EE9), LoadReal(YDLOC, GetHandleId(GetExpiredTimer()), 0xDB5F93A2))
end

function Trig_CSHcsFunc020Func002Func007Func003Func003Func002A()
    ItemPoolAddItemType(udg_dx_wpc3[GetConvertedPlayerId(GetEnumPlayer())], LoadInteger(YDLOC, GetHandleId(GetExpiredTimer()), 0xB0497EE9), LoadReal(YDLOC, GetHandleId(GetExpiredTimer()), 0xDB5F93A2))
end

function Trig_CSHcsFunc020Func002Func007Func003Func003Func003A()
    ItemPoolAddItemType(udg_dx_wpc[GetConvertedPlayerId(GetEnumPlayer())], LoadInteger(YDLOC, GetHandleId(GetExpiredTimer()), 0xB0497EE9), LoadReal(YDLOC, GetHandleId(GetExpiredTimer()), 0xDB5F93A2))
    ItemPoolAddItemType(udg_dx_wpc2[GetConvertedPlayerId(GetEnumPlayer())], LoadInteger(YDLOC, GetHandleId(GetExpiredTimer()), 0xB0497EE9), LoadReal(YDLOC, GetHandleId(GetExpiredTimer()), 0xDB5F93A2))
    ItemPoolAddItemType(udg_dx_wpc3[GetConvertedPlayerId(GetEnumPlayer())], LoadInteger(YDLOC, GetHandleId(GetExpiredTimer()), 0xB0497EE9), LoadReal(YDLOC, GetHandleId(GetExpiredTimer()), 0xDB5F93A2))
end

function Trig_CSHcsFunc020Func002T()
    SaveInteger(YDLOC, GetHandleId(GetExpiredTimer()), 0x6C2DED4E, (LoadInteger(YDLOC, GetHandleId(GetExpiredTimer()), 0x6C2DED4E) + 1))
    SaveStr(YDLOC, GetHandleId(GetExpiredTimer()), 0x2D1FF186, (("s") .. (I2S(LoadInteger(YDLOC, GetHandleId(GetExpiredTimer()), 0x6C2DED4E))) .. ("y")))
    SaveInteger(YDLOC, GetHandleId(GetExpiredTimer()), 0xB0497EE9, (YDWES2Id((LoadStr(YDLOC, GetHandleId(GetExpiredTimer()), 0x2D1FF186)))))
    SaveInteger(YDLOC, GetHandleId(GetExpiredTimer()), 0x7AB668AD, S2I(EXExecuteScript("(require'jass.slk').item[" .. I2S(LoadInteger(YDLOC, GetHandleId(GetExpiredTimer()), 0xB0497EE9)) .. "].HP")))
    SaveReal(YDLOC, GetHandleId(GetExpiredTimer()), 0xDB5F93A2, (I2R(LoadInteger(YDLOC, GetHandleId(GetExpiredTimer()), 0x7AB668AD)) / 100.00))
    if ((S2I(EXExecuteScript("(require'jass.slk').item[" .. I2S(LoadInteger(YDLOC, GetHandleId(GetExpiredTimer()), 0xB0497EE9)) .. "].oldLevel")) == 1)) then
        ForForce(udg_ZXWJZ, Trig_CSHcsFunc020Func002Func007Func002A)
    else
        if ((S2I(EXExecuteScript("(require'jass.slk').item[" .. I2S(LoadInteger(YDLOC, GetHandleId(GetExpiredTimer()), 0xB0497EE9)) .. "].oldLevel")) == 2)) then
            ForForce(udg_ZXWJZ, Trig_CSHcsFunc020Func002Func007Func003Func002A)
        else
            if ((S2I(EXExecuteScript("(require'jass.slk').item[" .. I2S(LoadInteger(YDLOC, GetHandleId(GetExpiredTimer()), 0xB0497EE9)) .. "].oldLevel")) == 3)) then
                ForForce(udg_ZXWJZ, Trig_CSHcsFunc020Func002Func007Func003Func003Func002A)
            else
                ForForce(udg_ZXWJZ, Trig_CSHcsFunc020Func002Func007Func003Func003Func003A)
            end
        end
    end
    SaveStr(YDLOC, GetHandleId(GetExpiredTimer()), 0x2D1FF186, "")
    if ((LoadInteger(YDLOC, GetHandleId(GetExpiredTimer()), 0x6C2DED4E) == 24)) then
        FlushChildHashtable(YDLOC, GetHandleId(GetExpiredTimer()))
        DestroyTimer(GetExpiredTimer())
    else
    end
end

function Trig_CSHcsActions()
    local ydl_trigger = nil
    local ydl_timer = nil
    local ydul_a = nil
    local ydul_b = nil
    local ydl_localvar_step = LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xCFDE6C76)
    ydl_localvar_step = ydl_localvar_step + 3
    SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xCFDE6C76, ydl_localvar_step)
    SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xECE825E7, ydl_localvar_step)
    ItemSuperimposition()
    AutoRemovePowerupItem()
    SaveReal(YDHT, GetHandleId(Player(5)), 0x8DA6B145, 1.00)
    SaveReal(YDHT, GetHandleId(Player(PLAYER_NEUTRAL_AGGRESSIVE)), 0xFEB5B285, 0.00)
    SaveInteger(YDHT, GetHandleId(Player(PLAYER_NEUTRAL_AGGRESSIVE)), 0x9A8BD18D, 1)
    SaveInteger(YDHT, GetHandleId(Player(PLAYER_NEUTRAL_AGGRESSIVE)), 0xE3624048, 4)
    SaveInteger(YDHT, GetHandleId(Player(PLAYER_NEUTRAL_AGGRESSIVE)), 0x49E33D16, 1)
    SaveInteger(YDHT, GetHandleId(Player(7)), 0x015ED43C, 1)
    ForForce(udg_ZXWJZ, Trig_CSHcsFunc010A)
    DestroyTrigger(GetTriggeringTrigger())
    IssuePointOrder(gg_unit_hfoo_0021, "patrol", 8700.00, 14600.00)
    IssuePointOrder(gg_unit_hfoo_0022, "patrol", 8400.00, 14300.00)
    IssuePointOrder(gg_unit_hfoo_0020, "patrol", 8400.00, 14200.00)
    ydl_trigger = CreateTrigger()
    TriggerRegisterUnitInRangeSimple(ydl_trigger, 50.00, gg_unit_hfoo_0022)
    TriggerRegisterUnitInRangeSimple(ydl_trigger, 50.00, gg_unit_hfoo_0021)
    TriggerRegisterUnitInRangeSimple(ydl_trigger, 50.00, gg_unit_hfoo_0020)
    TriggerAddCondition(ydl_trigger, Condition(Trig_CSHcsFunc015Conditions))
    udg_FB_WPC = CreateItemPool()
    ydl_timer = CreateTimer()
    SaveInteger(YDLOC, GetHandleId(ydl_timer), 0x6C2DED4E, 0)
    SaveReal(YDLOC, GetHandleId(ydl_timer), 0xDB5F93A2, LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xDB5F93A2))
    SaveInteger(YDLOC, GetHandleId(ydl_timer), 0xB0497EE9, LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB0497EE9))
    SaveInteger(YDLOC, GetHandleId(ydl_timer), 0x7AB668AD, LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x7AB668AD))
    SaveStr(YDLOC, GetHandleId(ydl_timer), 0x2D1FF186, LoadStr(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2D1FF186))
    TimerStart(ydl_timer, 0.01, true, Trig_CSHcsFunc016Func002T)
    ForForce(udg_ZXWJZ, Trig_CSHcsFunc017Func001A)
    ydl_timer = CreateTimer()
    SaveInteger(YDLOC, GetHandleId(ydl_timer), 0x6C2DED4E, 0)
    SaveReal(YDLOC, GetHandleId(ydl_timer), 0xDB5F93A2, LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xDB5F93A2))
    SaveInteger(YDLOC, GetHandleId(ydl_timer), 0xB0497EE9, LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB0497EE9))
    SaveInteger(YDLOC, GetHandleId(ydl_timer), 0x7AB668AD, LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x7AB668AD))
    SaveStr(YDLOC, GetHandleId(ydl_timer), 0x2D1FF186, LoadStr(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2D1FF186))
    TimerStart(ydl_timer, 0.01, true, Trig_CSHcsFunc017Func002T)
    ForForce(udg_ZXWJZ, Trig_CSHcsFunc018Func001A)
    ydl_timer = CreateTimer()
    SaveInteger(YDLOC, GetHandleId(ydl_timer), 0x6C2DED4E, 0)
    SaveReal(YDLOC, GetHandleId(ydl_timer), 0xDB5F93A2, LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xDB5F93A2))
    SaveInteger(YDLOC, GetHandleId(ydl_timer), 0xB0497EE9, LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB0497EE9))
    SaveInteger(YDLOC, GetHandleId(ydl_timer), 0x7AB668AD, LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x7AB668AD))
    SaveStr(YDLOC, GetHandleId(ydl_timer), 0x2D1FF186, LoadStr(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2D1FF186))
    TimerStart(ydl_timer, 0.01, true, Trig_CSHcsFunc018Func002T)
    ydul_a = 1
    while true do
        if ydul_a > 3 then
            break
        end
        udg_TFJN[ydul_a] = CreateItemPool()
        ydul_a = ydul_a + 1
    end
    ydl_timer = CreateTimer()
    SaveInteger(YDLOC, GetHandleId(ydl_timer), 0x6C2DED4E, 0)
    SaveInteger(YDLOC, GetHandleId(ydl_timer), 0xB0497EE9, LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB0497EE9))
    SaveStr(YDLOC, GetHandleId(ydl_timer), 0x2D1FF186, LoadStr(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2D1FF186))
    TimerStart(ydl_timer, 0.01, true, Trig_CSHcsFunc019Func002T)
    ForForce(udg_ZXWJZ, Trig_CSHcsFunc020Func001A)
    ydl_timer = CreateTimer()
    SaveInteger(YDLOC, GetHandleId(ydl_timer), 0x6C2DED4E, 9)
    SaveReal(YDLOC, GetHandleId(ydl_timer), 0xDB5F93A2, LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xDB5F93A2))
    SaveInteger(YDLOC, GetHandleId(ydl_timer), 0xB0497EE9, LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB0497EE9))
    SaveInteger(YDLOC, GetHandleId(ydl_timer), 0x7AB668AD, LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x7AB668AD))
    SaveStr(YDLOC, GetHandleId(ydl_timer), 0x2D1FF186, LoadStr(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2D1FF186))
    TimerStart(ydl_timer, 0.01, true, Trig_CSHcsFunc020Func002T)
    udg_mk_dwc[0] = CreateUnitPool()
    udg_mk_dwc[1] = CreateUnitPool()
    udg_mk_dwc[2] = CreateUnitPool()
    udg_mk_dwc[3] = CreateUnitPool()
    udg_mk_dwc[4] = CreateUnitPool()
    ydul_a = 10
    while true do
        if ydul_a > 50 then
            break
        end
        SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xA1CFBB06, (YDWES2Id((("mk" .. I2S(ydul_a))))))
        SaveReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x1C9EC2BB, (S2R(EXExecuteScript("(require'jass.slk').unit[" .. I2S(LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xA1CFBB06)) .. "].regenMana")) * 1.00))
        ydul_b = 0
        while true do
            if ydul_b > 4 then
                break
            end
            if ((ydul_b > GetUnitPointValueByType(LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xA1CFBB06)))) then
                SaveReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x1C9EC2BB, (S2R(EXExecuteScript("(require'jass.slk').unit[" .. I2S(LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xA1CFBB06)) .. "].regenMana")) * 1.50))
            else
            end
            UnitPoolAddUnitType(udg_mk_dwc[ydul_b], LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xA1CFBB06), LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x1C9EC2BB))
            ydul_b = ydul_b + 1
        end
        ydul_a = ydul_a + 1
    end
    FlushChildHashtable(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step)
    ydl_trigger = nil
    ydl_timer = nil
end

function InitTrig_CSHcs()
    gg_trg_CSHcs = CreateTrigger()
    TriggerRegisterTimerEventSingle(gg_trg_CSHcs, 0.00)
    TriggerAddAction(gg_trg_CSHcs, Trig_CSHcsActions)
end

function Trig_CHUSHIHUAFunc007Func002A()
    SetItemInvulnerable(GetEnumItem(), true)
end

function Trig_CHUSHIHUAActions()
    local ydul_a = nil
    SetTimeOfDay(6.00)
    UseTimeOfDayBJ(false)
    PlayMusicBJ(gg_snd_1021)
    ConditionalTriggerExecute(gg_trg_dwlx_____________u)
    DzEnableWideScreen(true)
    DzFrameClearAllPoints(DzFrameGetMinimap())
    DzFrameSetPoint(DzFrameGetMinimap(), 6, DzGetGameUI(), 6, 0.004, 0.005)
    DzFrameSetSize(DzFrameGetMinimap(), 0.11, 0.11)
    ydul_a = 0
    while true do
        if ydul_a > 4 then
            break
        end
        DzFrameClearAllPoints(DzFrameGetMinimapButton(ydul_a))
        ydul_a = ydul_a + 1
    end
    udg_ZDYXY = CreateUnit(Player(5), (0x6E30314A), 0, 0, 0)
    EnumItemsInRectBJ(GetPlayableMapRect(), Trig_CHUSHIHUAFunc007Func002A)
    udg_S = 1
    SetPlayerAllianceStateBJ(Player(PLAYER_NEUTRAL_AGGRESSIVE), Player(7), bj_ALLIANCE_ALLIED)
    SetPlayerAllianceStateBJ(Player(PLAYER_NEUTRAL_AGGRESSIVE), Player(6), bj_ALLIANCE_ALLIED)
    SetPlayerAllianceStateBJ(Player(PLAYER_NEUTRAL_AGGRESSIVE), Player(8), bj_ALLIANCE_ALLIED)
    SetPlayerAllianceStateBJ(Player(7), Player(PLAYER_NEUTRAL_AGGRESSIVE), bj_ALLIANCE_ALLIED)
    SetPlayerAllianceStateBJ(Player(6), Player(PLAYER_NEUTRAL_AGGRESSIVE), bj_ALLIANCE_ALLIED)
    SetPlayerAllianceStateBJ(Player(8), Player(PLAYER_NEUTRAL_AGGRESSIVE), bj_ALLIANCE_ALLIED)
    SetPlayerAllianceStateBJ(Player(4), Player(0), bj_ALLIANCE_ALLIED_ADVUNITS)
    SetPlayerAllianceStateBJ(Player(4), Player(1), bj_ALLIANCE_ALLIED_ADVUNITS)
    SetPlayerAllianceStateBJ(Player(4), Player(2), bj_ALLIANCE_ALLIED_ADVUNITS)
    SetPlayerAllianceStateBJ(Player(4), Player(3), bj_ALLIANCE_ALLIED_ADVUNITS)
    SetPlayerState(Player(PLAYER_NEUTRAL_AGGRESSIVE), PLAYER_STATE_GIVES_BOUNTY, 0)
    ydul_a = 1
    while true do
        if ydul_a > 4 then
            break
        end
        if ((GetPlayerController(ConvertedPlayer(ydul_a)) == MAP_CONTROL_USER) and (GetPlayerSlotState(ConvertedPlayer(ydul_a)) == PLAYER_SLOT_STATE_PLAYING)) then
            ForceAddPlayerSimple(ConvertedPlayer(ydul_a), udg_ZXWJZ)
        else
        end
        ydul_a = ydul_a + 1
    end
    SetDoodadAnimation(-10200.00, -3200.00, 128, 0x44304635, true, "death", false)
    SetDoodadAnimation(-10200.00, -3200.00, 2800.00, 0x44304636, false, "spell", false)
end

function InitTrig_CHUSHIHUA()
    gg_trg_CHUSHIHUA = CreateTrigger()
    TriggerAddAction(gg_trg_CHUSHIHUA, Trig_CHUSHIHUAActions)
end

function Trig_SHILIActions()
    local ydul_a = nil
    local ydl_localvar_step = LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xCFDE6C76)
    ydl_localvar_step = ydl_localvar_step + 3
    SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xCFDE6C76, ydl_localvar_step)
    SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xECE825E7, ydl_localvar_step)
    SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x105781FA, LoadInteger(YDHT, GetHandleId(Player(PLAYER_NEUTRAL_AGGRESSIVE)), 0x105781FA))
    SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x77770996, LoadInteger(YDHT, GetHandleId(Player(PLAYER_NEUTRAL_AGGRESSIVE)), 0x1289C070))
    SavePlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946, LoadPlayerHandle(YDHT, GetHandleId(Player(PLAYER_NEUTRAL_AGGRESSIVE)), 0x119572DE))
    SaveGroupHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x7B2D08E8, CreateGroup())
    ydul_a = 11
    while true do
        if ydul_a > LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x105781FA) then
            break
        end
        SaveUnitHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x911D5DC2 + (ydul_a), CreateUnit(Player(PLAYER_NEUTRAL_PASSIVE), (0x65303030), 0, 0, 0))
        GroupAddUnitSimple(LoadUnitHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x911D5DC2 + (ydul_a)), LoadGroupHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x7B2D08E8))
        SaveInteger(YDHT, GetHandleId(LoadUnitHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x911D5DC2 + (ydul_a))), 0xE60C2E58, ydul_a)
        ydul_a = ydul_a + 1
    end
    ydul_a = 11
    while true do
        if ydul_a > LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x77770996) then
            break
        end
        SaveUnitHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xFF5230E0, GroupPickRandomUnit(LoadGroupHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x7B2D08E8)))
        GroupRemoveUnit(LoadGroupHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x7B2D08E8), LoadUnitHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xFF5230E0))
        if ((LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x105781FA) == 40)) then
            SaveInteger(YDHT, ydul_a, 0x4DCD6D03, LoadInteger(YDHT, GetHandleId(LoadUnitHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xFF5230E0)), 0xE60C2E58))
        else
            SaveInteger(YDHT, StringHash((GetPlayerName(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)))), StringHash((("历练" .. I2S(ydul_a)))), (LoadInteger(YDHT, GetHandleId(LoadUnitHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xFF5230E0)), 0xE60C2E58)))
        end
        ydul_a = ydul_a + 1
    end
    ydul_a = 11
    while true do
        if ydul_a > LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x105781FA) then
            break
        end
        RemoveSavedInteger(YDHT, GetHandleId(LoadUnitHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x911D5DC2 + (ydul_a))), 0xE60C2E58)
        RemoveUnit(LoadUnitHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x911D5DC2 + (ydul_a)))
        ydul_a = ydul_a + 1
    end
    DestroyGroup(LoadGroupHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x7B2D08E8))
    RemoveSavedInteger(YDHT, GetHandleId(Player(PLAYER_NEUTRAL_AGGRESSIVE)), 0x105781FA)
    RemoveSavedInteger(YDHT, GetHandleId(Player(PLAYER_NEUTRAL_AGGRESSIVE)), 0x1289C070)
    FlushChildHashtable(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step)
end

function InitTrig_SHILI()
    gg_trg_SHILI = CreateTrigger()
    DisableTrigger(gg_trg_SHILI)
    TriggerAddAction(gg_trg_SHILI, Trig_SHILIActions)
end
end
