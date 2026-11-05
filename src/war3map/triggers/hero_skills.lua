-- Converted from 342.w3x map/map/war3map.j.
-- Trigger functions grouped by feature.
-- InitTrig_XTGQ_006________________u
-- InitTrig_AY_JNCF_003
-- InitTrig_A4_jnsf
-- InitTrig_jn________07
-- InitTrig_jn_load
-- InitTrig_YJ_QJ
-- InitTrig________jn
return function(_ENV)
function Trig_XTGQ_006________________uFunc018Conditions()
    local ydl_triggerstep = nil
    local ydl_trigger = nil
    if ((GetOwningPlayer(GetKillingUnit()) == LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()), 0x48656946))) then
        UnitRemoveAbilityBJ((LoadInteger(YDHT, ((GetHandleId((Player(PLAYER_NEUTRAL_AGGRESSIVE))))), (StringHash(("jn_xtgq_" .. I2S((LoadInteger(YDHT, GetHandleId(GetOwningPlayer(GetKillingUnit())), 0x28E450B3) - 0))))))), udg_WJYX[GetConvertedPlayerId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()), 0x48656946))])
        SaveInteger(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()), 0x48656946)), 0x28E450B3, (LoadInteger(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()), 0x48656946)), 0x28E450B3) + 1))
        JK_UnitTranslationB(udg_WJYX[GetConvertedPlayerId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()), 0x48656946))], udg_LGFZB_x[GetConvertedPlayerId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()), 0x48656946))], udg_LGFZB_y[GetConvertedPlayerId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()), 0x48656946))], bj_lastCreatedEffect, 0.00, "", true)
        DestroyEffect(LoadEffectHandle(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()), 0x48656946)), 0xC43A1D5D))
        RemoveSavedHandle(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()), 0x48656946)), 0xC43A1D5D)
        SetUnitState((LoadUnitHandle(YDHT, ((GetHandleId((GetOwningPlayer(GetKillingUnit()))))), (StringHash("12NPC")))), UNIT_STATE_LIFE, 1.00)
        SetUnitState((LoadUnitHandle(YDHT, ((GetHandleId((GetOwningPlayer(GetKillingUnit()))))), (StringHash("12NPC")))), UNIT_STATE_MAX_LIFE, (50.00 * I2R(LoadInteger(YDHT, GetHandleId(GetOwningPlayer(GetKillingUnit())), 0x28E450B3))))
        UnitAddAbilityBJ((LoadInteger(YDHT, ((GetHandleId((Player(PLAYER_NEUTRAL_AGGRESSIVE))))), (StringHash(("jn_xtgq_" .. I2S(LoadInteger(YDHT, GetHandleId(GetOwningPlayer(GetKillingUnit())), 0x28E450B3))))))), udg_WJYX[GetConvertedPlayerId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()), 0x48656946))])
        udg_XTGQ[GetConvertedPlayerId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()), 0x48656946))] = (LoadInteger(YDHT, ((GetHandleId((Player(PLAYER_NEUTRAL_AGGRESSIVE))))), (StringHash(("jn_xtgq_" .. I2S(LoadInteger(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()), 0x48656946)), 0x28E450B3)))))))
        ydl_trigger = gg_trg_UI_tips
        ydl_triggerstep = GetHandleId(ydl_trigger) * (LoadInteger(YDLOC, GetHandleId(ydl_trigger), 0xCFDE6C76) + 3)
        SavePlayerHandle(YDLOC, ydl_triggerstep, 0x48656946, LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()), 0x48656946))
        SaveInteger(YDLOC, ydl_triggerstep, 0x9CD60476, DzFrameGetCommandBarButton(1, 3))
        TriggerExecute(ydl_trigger)
        if ((LoadInteger(YDHT, GetHandleId(GetOwningPlayer(GetKillingUnit())), 0x28E450B3) == 1)) then
            ShowUnit((LoadUnitHandle(YDHT, ((GetHandleId((LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()), 0x48656946))))), (StringHash("05NPC")))), true)
            JK_CameraTranslation(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()), 0x48656946), GetUnitX((LoadUnitHandle(YDHT, ((GetHandleId((LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()), 0x48656946))))), (StringHash("05NPC"))))), GetUnitY((LoadUnitHandle(YDHT, ((GetHandleId((LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()), 0x48656946))))), (StringHash("05NPC"))))), 0.00)
            DestroyEffect(AddSpecialEffectTarget("E\\[e] (7).mdl", (LoadUnitHandle(YDHT, ((GetHandleId((LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()), 0x48656946))))), (StringHash("05NPC")))), "origin"))
            SaveInteger(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()), 0x48656946)), 0xF5B58222, (LoadInteger(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()), 0x48656946)), 0xF5B58222) + 400))
        else
        end
        if ((LoadInteger(YDHT, GetHandleId(GetOwningPlayer(GetKillingUnit())), 0x28E450B3) == 5)) then
            SetPlayerTechResearchedSwap(0x74677371, 1, LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()), 0x48656946))
            SaveReal(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xA99320FA, GetUnitX((LoadUnitHandle(YDHT, ((GetHandleId((GetOwningPlayer(GetKillingUnit()))))), (StringHash("12NPC"))))))
            SaveReal(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xFDF65382, GetUnitY((LoadUnitHandle(YDHT, ((GetHandleId((GetOwningPlayer(GetKillingUnit()))))), (StringHash("12NPC"))))))
            RemoveUnit((LoadUnitHandle(YDHT, ((GetHandleId((LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()), 0x48656946))))), (StringHash("12NPC")))))
            SaveUnitHandle(YDHT, ((GetHandleId((LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()), 0x48656946))))), (StringHash("12NPC")), (CreateUnit(GetOwningPlayer(GetKillingUnit()), (0x6E303051), LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xA99320FA), LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xFDF65382), 270.00)))
        else
        end
        if ((LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()), 0x48656946) == GetLocalPlayer())) then
            DzFrameShow(udg_GAOLIANG_UI3[0], false)
        else
        end
    else
    end
    FlushChildHashtable(YDLOC, GetHandleId(GetTriggeringTrigger()))
    DestroyTrigger(GetTriggeringTrigger())
    ydl_trigger = nil
end

function Trig_XTGQ_006________________uActions()
    local ydl_trigger = nil
    local ydl_localvar_step = LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xCFDE6C76)
    ydl_localvar_step = ydl_localvar_step + 3
    SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xCFDE6C76, ydl_localvar_step)
    SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xECE825E7, ydl_localvar_step)
    SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x6C2DED4E, LoadInteger(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x28E450B3))
    if (((LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x6C2DED4E) * 8) > 9)) then
        SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xA1CFBB06, (YDWES2Id((("f0" .. I2S((LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x6C2DED4E) * 7)))))))
    else
        SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xA1CFBB06, (YDWES2Id(("f008"))))
    end
    KillUnit(LoadUnitHandle(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x61BA32B6))
    RemoveUnit(LoadUnitHandle(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x61BA32B6))
    JK_UnitTranslationB(udg_WJYX[GetConvertedPlayerId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))], LoadReal(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x6006FF54), LoadReal(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0xBEEC641E), bj_lastCreatedEffect, 0.00, "", true)
    SaveUnitHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x384C9D86, CreateUnit(Player(7), (0x545A584D), LoadReal(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x6006FF54), (LoadReal(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0xBEEC641E) + 0.00), 0.00))
    SetUnitScale(LoadUnitHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x384C9D86), 1.30, 1.30, 1.30)
    SetUnitState(LoadUnitHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x384C9D86), ConvertUnitState(0x12), (S2R(EXExecuteScript("(require'jass.slk').unit[" .. I2S(LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xA1CFBB06)) .. "].dmgplus1")) * 0.88))
    SetUnitState(LoadUnitHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x384C9D86), UNIT_STATE_MAX_LIFE, (S2R(EXExecuteScript("(require'jass.slk').unit[" .. I2S(LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xA1CFBB06)) .. "].HP")) * 0.88))
    SetUnitState(LoadUnitHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x384C9D86), ConvertUnitState(0x20), (S2R(EXExecuteScript("(require'jass.slk').unit[" .. I2S(LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xA1CFBB06)) .. "].def")) * 0.88))
    SetUnitState(LoadUnitHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x384C9D86), ConvertUnitState(0x51), 200.00)
    SetUnitUserData(LoadUnitHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x384C9D86), LoadInteger(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x28E450B3))
    SetUnitLifePercentBJ(LoadUnitHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x384C9D86), 100)
    UnitApplyTimedLifeBJ(15.02, 0x42487765, LoadUnitHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x384C9D86))
    SaveUnitHandle(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x61BA32B6, LoadUnitHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x384C9D86))
    SaveEffectHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x62C50DE6, AddSpecialEffectTarget("war3mapImported\\[xt]boss_djs_15.mdx", LoadUnitHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x384C9D86), "chest"))
    YDWETimerDestroyEffect(15.00, LoadEffectHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x62C50DE6))
    ydl_trigger = CreateTrigger()
    SavePlayerHandle(YDLOC, GetHandleId(ydl_trigger), 0x48656946, LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))
    SaveReal(YDLOC, GetHandleId(ydl_trigger), 0xA99320FA, LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xA99320FA))
    SaveReal(YDLOC, GetHandleId(ydl_trigger), 0xFDF65382, LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xFDF65382))
    TriggerRegisterUnitEvent(ydl_trigger, LoadUnitHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x384C9D86), EVENT_UNIT_DEATH)
    TriggerAddCondition(ydl_trigger, Condition(Trig_XTGQ_006________________uFunc018Conditions))
    FlushChildHashtable(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step)
    ydl_trigger = nil
end

function InitTrig_XTGQ_006________________u()
    gg_trg_XTGQ_006________________u = CreateTrigger()
    DisableTrigger(gg_trg_XTGQ_006________________u)
    TriggerAddAction(gg_trg_XTGQ_006________________u, Trig_XTGQ_006________________uActions)
end

function Trig_AY_JNCF_003Conditions()
    do
        return ((IsUnitType(GetTriggerUnit(), UNIT_TYPE_HERO) == true))
    end
end

function Trig_AY_JNCF_003Func009Func001Func002Func017Conditions()
    local ydul_a = nil
    local ydl_triggerstep = nil
    local ydl_trigger = nil
    if ((GetOwningPlayer(GetKillingUnit()) == LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()), 0x48656946))) then
        JK_UnitTranslationB(udg_WJYX[GetConvertedPlayerId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()), 0x48656946))], udg_LGFZB_x[GetConvertedPlayerId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()), 0x48656946))], udg_LGFZB_y[GetConvertedPlayerId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()), 0x48656946))], bj_lastCreatedEffect, 0.00, "", true)
        SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xA1CFBB06, (YDWES2Id(((EXExecuteScript("(require'jass.slk').unit[" .. I2S(GetUnitTypeId(GetKillingUnit())) .. "].Requires"))))))
        SaveReal(YDLOC, GetHandleId(GetTriggeringTrigger()), 0x52DB984E, (GetUnitStateSwap(UNIT_STATE_MAX_LIFE, GetKillingUnit()) * 1.15))
        SaveReal(YDLOC, GetHandleId(GetTriggeringTrigger()), 0x1265A2D1, (GetUnitStateSwap(ConvertUnitState(0x20), GetKillingUnit()) * 1.15))
        SaveReal(YDLOC, GetHandleId(GetTriggeringTrigger()), 0x214C62CC, GetUnitStateSwap(ConvertUnitState(0x25), GetKillingUnit()))
        SaveReal(YDLOC, GetHandleId(GetTriggeringTrigger()), 0x7C24209D, GetUnitStateSwap(ConvertUnitState(0x51), GetKillingUnit()))
        SaveReal(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xFEB1DADA, (GetUnitStateSwap(ConvertUnitState(0x12), GetKillingUnit()) * 1.15))
        SaveReal(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xE695AEEA, I2R(GetHeroStr(GetKillingUnit(), false)))
        SaveReal(YDLOC, GetHandleId(GetTriggeringTrigger()), 0x78CEB4B4, I2R(GetHeroAgi(GetKillingUnit(), false)))
        SaveReal(YDLOC, GetHandleId(GetTriggeringTrigger()), 0x5F2368D5, I2R(GetHeroInt(GetKillingUnit(), false)))
        ydul_a = 1
        while true do
            if ydul_a > 6 then
                break
            end
            SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xB0497EE9 + (ydul_a), GetItemTypeId(UnitItemInSlotBJ(GetKillingUnit(), ydul_a)))
            ydul_a = ydul_a + 1
        end
        YDWEReplaceUnitBJNull(GetKillingUnit(), LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xA1CFBB06), bj_UNIT_STATE_METHOD_DEFAULTS)
        JK_SX_Change(bj_lastReplacedUnit, UNIT_STATE_MAX_LIFE, 1, LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()), 0x52DB984E))
        JK_SX_Change(bj_lastReplacedUnit, ConvertUnitState(0x20), 1, LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()), 0x1265A2D1))
        SetUnitState(bj_lastReplacedUnit, ConvertUnitState(0x25), LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()), 0x214C62CC))
        SetUnitState(bj_lastReplacedUnit, ConvertUnitState(0x51), LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()), 0x7C24209D))
        SetUnitState(bj_lastReplacedUnit, ConvertUnitState(0x12), LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xFEB1DADA))
        ModifyHeroStat(bj_HEROSTAT_STR, bj_lastReplacedUnit, bj_MODIFYMETHOD_SET, R2I(LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xE695AEEA)))
        ModifyHeroStat(bj_HEROSTAT_AGI, bj_lastReplacedUnit, bj_MODIFYMETHOD_SET, R2I(LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()), 0x78CEB4B4)))
        ModifyHeroStat(bj_HEROSTAT_INT, bj_lastReplacedUnit, bj_MODIFYMETHOD_SET, R2I(LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()), 0x5F2368D5)))
        udg_WJYX[GetConvertedPlayerId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()), 0x48656946))] = bj_lastReplacedUnit
        UnitAddAbilityBJ((0x48465158), udg_WJYX[GetConvertedPlayerId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()), 0x48656946))])
        UnitAddAbilityBJ(udg_YXJN[GetConvertedPlayerId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()), 0x48656946))], udg_WJYX[GetConvertedPlayerId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()), 0x48656946))])
        UnitAddAbilityBJ(udg_shj[GetConvertedPlayerId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()), 0x48656946))], udg_WJYX[GetConvertedPlayerId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()), 0x48656946))])
        UnitAddAbilityBJ(udg_jux[GetConvertedPlayerId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()), 0x48656946))], udg_WJYX[GetConvertedPlayerId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()), 0x48656946))])
        UnitAddAbilityBJ((0x66796A6E), udg_WJYX[GetConvertedPlayerId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()), 0x48656946))])
        UnitAddAbilityBJ(udg_DYTF_JN[GetConvertedPlayerId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()), 0x48656946))], udg_WJYX[GetConvertedPlayerId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()), 0x48656946))])
        UnitAddAbilityBJ(udg_XTGQ[GetConvertedPlayerId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()), 0x48656946))], udg_WJYX[GetConvertedPlayerId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()), 0x48656946))])
        udg_dwlx2[GetConvertedPlayerId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()), 0x48656946))] = GetUnitTypeId(bj_lastReplacedUnit)
        ydul_a = 1
        while true do
            if ydul_a > 4 then
                break
            end
            UnitAddAbilityBJ((LoadInteger(YDHT, ((GetHandleId((LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()), 0x48656946))))), (StringHash(I2S(ydul_a))))), udg_WJYX[GetConvertedPlayerId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()), 0x48656946))])
            ydul_a = ydul_a + 1
        end
        ydul_a = 1
        while true do
            if ydul_a > 6 then
                break
            end
            SavePlayerHandle(YDHT, GetHandleId(Player(PLAYER_NEUTRAL_AGGRESSIVE)), 0x119572DE, GetOwningPlayer(GetKillingUnit()))
            SaveBoolean(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()), 0x48656946)), 0x8A0F9432, true)
            SaveInteger(YDHT, GetHandleId(Player(PLAYER_NEUTRAL_AGGRESSIVE)), 0x171487D7, LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xB0497EE9 + (ydul_a)))
            TriggerExecute(gg_trg_qjyd)
            ydul_a = ydul_a + 1
        end
        ydl_trigger = gg_trg_ui_3x1
        ydl_triggerstep = GetHandleId(ydl_trigger) * (LoadInteger(YDLOC, GetHandleId(ydl_trigger), 0xCFDE6C76) + 3)
        SavePlayerHandle(YDLOC, ydl_triggerstep, 0x48656946, GetOwningPlayer(GetKillingUnit()))
        SaveBoolean(YDLOC, ydl_triggerstep, 0xC6314D69, true)
        TriggerExecute(ydl_trigger)
        SaveBoolean(YDHT, GetHandleId(GetOwningPlayer(GetKillingUnit())), 0x6D08AD5C, true)
    else
    end
    FlushChildHashtable(YDLOC, GetHandleId(GetTriggeringTrigger()))
    DestroyTrigger(GetTriggeringTrigger())
    ydl_trigger = nil
end

function Trig_AY_JNCF_003Func011Func001Func002T()
    local ydul_a = nil
    SaveInteger(YDLOC, GetHandleId(GetExpiredTimer()), 0x6C2DED4E, (LoadInteger(YDLOC, GetHandleId(GetExpiredTimer()), 0x6C2DED4E) + 1))
    SaveReal(YDLOC, GetHandleId(GetExpiredTimer()), 0x2D345649, (I2R(LoadInteger(YDLOC, GetHandleId(GetExpiredTimer()), 0x6C2DED4E))))
    SaveReal(YDLOC, GetHandleId(GetExpiredTimer()), 0x38AB9941, GetUnitStateSwap(ConvertUnitState(0x16), udg_WJYX[GetConvertedPlayerId(LoadPlayerHandle(YDLOC, GetHandleId(GetExpiredTimer()), 0x48656946))]))
    SaveReal(YDLOC, GetHandleId(GetExpiredTimer()), 0x49D14A0C, (GetUnitX(udg_WJYX[GetConvertedPlayerId(LoadPlayerHandle(YDLOC, GetHandleId(GetExpiredTimer()), 0x48656946))]) + (CosBJ(LoadReal(YDLOC, GetHandleId(GetExpiredTimer()), 0x2D345649)) * LoadReal(YDLOC, GetHandleId(GetExpiredTimer()), 0x38AB9941))))
    SaveReal(YDLOC, GetHandleId(GetExpiredTimer()), 0x4AF79D7A, (GetUnitY(udg_WJYX[GetConvertedPlayerId(LoadPlayerHandle(YDLOC, GetHandleId(GetExpiredTimer()), 0x48656946))]) + (SinBJ(LoadReal(YDLOC, GetHandleId(GetExpiredTimer()), 0x2D345649)) * LoadReal(YDLOC, GetHandleId(GetExpiredTimer()), 0x38AB9941))))
    SetUnitPosition(LoadUnitHandle(YDLOC, GetHandleId(GetExpiredTimer()), 0x384C9D86 + (1)), LoadReal(YDLOC, GetHandleId(GetExpiredTimer()), 0x49D14A0C), LoadReal(YDLOC, GetHandleId(GetExpiredTimer()), 0x4AF79D7A))
    SaveReal(YDLOC, GetHandleId(GetExpiredTimer()), 0x49D14A0C, (GetUnitX(udg_WJYX[GetConvertedPlayerId(LoadPlayerHandle(YDLOC, GetHandleId(GetExpiredTimer()), 0x48656946))]) + (CosBJ(((LoadReal(YDLOC, GetHandleId(GetExpiredTimer()), 0x2D345649)) * (-1.00))) * LoadReal(YDLOC, GetHandleId(GetExpiredTimer()), 0x38AB9941))))
    SaveReal(YDLOC, GetHandleId(GetExpiredTimer()), 0x4AF79D7A, (GetUnitY(udg_WJYX[GetConvertedPlayerId(LoadPlayerHandle(YDLOC, GetHandleId(GetExpiredTimer()), 0x48656946))]) + (SinBJ(((LoadReal(YDLOC, GetHandleId(GetExpiredTimer()), 0x2D345649)) * (-1.00))) * LoadReal(YDLOC, GetHandleId(GetExpiredTimer()), 0x38AB9941))))
    SetUnitPosition(LoadUnitHandle(YDLOC, GetHandleId(GetExpiredTimer()), 0x384C9D86 + (2)), LoadReal(YDLOC, GetHandleId(GetExpiredTimer()), 0x49D14A0C), LoadReal(YDLOC, GetHandleId(GetExpiredTimer()), 0x4AF79D7A))
    ydul_a = 1
    while true do
        if ydul_a > 2 then
            break
        end
        JK_RouDam(udg_WJYX[GetConvertedPlayerId(LoadPlayerHandle(YDLOC, GetHandleId(GetExpiredTimer()), 0x48656946))], 75.00, GetUnitX(LoadUnitHandle(YDLOC, GetHandleId(GetExpiredTimer()), 0x384C9D86 + (ydul_a))), GetUnitY(LoadUnitHandle(YDLOC, GetHandleId(GetExpiredTimer()), 0x384C9D86 + (ydul_a))), I2R(GetHeroInt(udg_WJYX[GetConvertedPlayerId(LoadPlayerHandle(YDLOC, GetHandleId(GetExpiredTimer()), 0x48656946))], true)), "", false, true, ATTACK_TYPE_NORMAL, DAMAGE_TYPE_NORMAL, WEAPON_TYPE_WHOKNOWS)
        ydul_a = ydul_a + 1
    end
    if ((LoadInteger(YDLOC, GetHandleId(GetExpiredTimer()), 0x6C2DED4E) == 300)) then
        ydul_a = 1
        while true do
            if ydul_a > 2 then
                break
            end
            RemoveUnit(LoadUnitHandle(YDLOC, GetHandleId(GetExpiredTimer()), 0x384C9D86 + (ydul_a)))
            ydul_a = ydul_a + 1
        end
        SaveUnitHandle(YDLOC, GetHandleId(GetExpiredTimer()), 0x384C9D86 + (1), nil)
        SaveUnitHandle(YDLOC, GetHandleId(GetExpiredTimer()), 0x384C9D86 + (2), nil)
        FlushChildHashtable(YDLOC, GetHandleId(GetExpiredTimer()))
        DestroyTimer(GetExpiredTimer())
    else
    end
end

function Trig_AY_JNCF_003Func012Func001Func002Func004T()
    YDWESetUnitAbilityState(LoadUnitHandle(YDLOC, GetHandleId(GetExpiredTimer()), 0x458B7DE9), LoadInteger(YDLOC, GetHandleId(GetExpiredTimer()), 0xA9CA38BB), 1, 0.00)
    FlushChildHashtable(YDLOC, GetHandleId(GetExpiredTimer()))
    DestroyTimer(GetExpiredTimer())
end

function Trig_AY_JNCF_003Actions()
    local ydl_triggerstep = nil
    local ydl_trigger = nil
    local ydl_timer = nil
    local ydl_localvar_step = LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xCFDE6C76)
    local dw = nil
    ydl_localvar_step = ydl_localvar_step + 3
    SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xCFDE6C76, ydl_localvar_step)
    SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xECE825E7, ydl_localvar_step)
    dw = GetTriggerUnit()
    SaveReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2D345649, GetUnitFacing(dw))
    SavePlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946, GetOwningPlayer(dw))
    SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x6F96F2D2, GetConvertedPlayerId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)))
    if ((GetSpellAbilityId() == (0x48465158))) then
        SaveReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x159DFA4B, RMinBJ(100.00, (GetUnitLifePercent(udg_WJYX[GetConvertedPlayerId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))]) + (25.00 + I2R(LoadInteger(YDHT, GetHandleId(Player(PLAYER_NEUTRAL_AGGRESSIVE)), 0xB43FB128))))))
        SetUnitLifePercentBJ(udg_WJYX[GetConvertedPlayerId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))], LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x159DFA4B))
        YDWETimerDestroyEffect(2, AddSpecialEffectTarget("[pf] (6).mdl", GetTriggerUnit(), "overhead"))
    else
    end
    if ((GetSpellAbilityId() == (0x66796A6E))) then
        UnitRemoveAbilityBJ(GetSpellAbilityId(), GetTriggerUnit())
        ydl_trigger = gg_trg_ui_3x1
        ydl_triggerstep = GetHandleId(ydl_trigger) * (LoadInteger(YDLOC, GetHandleId(ydl_trigger), 0xCFDE6C76) + 3)
        SavePlayerHandle(YDLOC, ydl_triggerstep, 0x48656946, GetOwningPlayer(GetTriggerUnit()))
        SaveBoolean(YDLOC, ydl_triggerstep, 0xC0E83A0E, true)
        TriggerExecute(ydl_trigger)
    else
    end
    if ((GetSpellAbilityId() == udg_jux[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))])) then
        if (((LoadBoolean(YDHT, ((GetHandleId((LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))))), ((GetHandleId((gg_trg_ui_3x1)))))) ~= true) and (LoadBoolean(YDHT, GetHandleId(GetOwningPlayer(GetTriggerUnit())), 0x6D08AD5C) ~= true)) then
            SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xA1CFBB06, (0x66303635))
            JK_UnitTranslationB(udg_WJYX[GetConvertedPlayerId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))], LoadReal(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x6006FF54), LoadReal(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0xBEEC641E), bj_lastCreatedEffect, 0.00, "", true)
            KillUnit(LoadUnitHandle(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x61BA32B6))
            SaveUnitHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x384C9D86, CreateUnit(Player(7), (YDWES2Id(((EXExecuteScript("(require'jass.slk').unit[" .. I2S(GetUnitTypeId(GetTriggerUnit())) .. "].Requires"))))), LoadReal(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x6006FF54), (LoadReal(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0xBEEC641E) + 0.00), 0.00))
            SetUnitScale(LoadUnitHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x384C9D86), 1.30, 1.30, 1.30)
            SetUnitState(LoadUnitHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x384C9D86), ConvertUnitState(0x12), (S2R(EXExecuteScript("(require'jass.slk').unit[" .. I2S(LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xA1CFBB06)) .. "].dmgplus1")) * 0.88))
            SetUnitState(LoadUnitHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x384C9D86), UNIT_STATE_MAX_LIFE, (S2R(EXExecuteScript("(require'jass.slk').unit[" .. I2S(LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xA1CFBB06)) .. "].HP")) * 0.88))
            SetUnitState(LoadUnitHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x384C9D86), ConvertUnitState(0x20), (S2R(EXExecuteScript("(require'jass.slk').unit[" .. I2S(LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xA1CFBB06)) .. "].def")) * 0.88))
            SetUnitState(LoadUnitHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x384C9D86), ConvertUnitState(0x51), 200.00)
            SetUnitLifePercentBJ(LoadUnitHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x384C9D86), 100)
            UnitApplyTimedLifeBJ(15.02, 0x42487765, LoadUnitHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x384C9D86))
            SaveUnitHandle(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x61BA32B6, LoadUnitHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x384C9D86))
            SaveEffectHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x62C50DE6, AddSpecialEffectTarget("war3mapImported\\[xt]boss_djs_15.mdx", LoadUnitHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x384C9D86), "origin"))
            YDWETimerDestroyEffect(15.00, LoadEffectHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x62C50DE6))
            ydl_trigger = CreateTrigger()
            SavePlayerHandle(YDLOC, GetHandleId(ydl_trigger), 0x48656946, LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))
            SaveInteger(YDLOC, GetHandleId(ydl_trigger), 0xA1CFBB06, LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xA1CFBB06))
            SaveReal(YDLOC, GetHandleId(ydl_trigger), 0x214C62CC, LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x214C62CC))
            SaveReal(YDLOC, GetHandleId(ydl_trigger), 0x7C24209D, LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x7C24209D))
            SaveReal(YDLOC, GetHandleId(ydl_trigger), 0xFEB1DADA, LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xFEB1DADA))
            SaveReal(YDLOC, GetHandleId(ydl_trigger), 0xE695AEEA, LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xE695AEEA))
            SaveReal(YDLOC, GetHandleId(ydl_trigger), 0x78CEB4B4, LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x78CEB4B4))
            SaveReal(YDLOC, GetHandleId(ydl_trigger), 0x5F2368D5, LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x5F2368D5))
            SaveReal(YDLOC, GetHandleId(ydl_trigger), 0x1265A2D1, LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x1265A2D1))
            SaveReal(YDLOC, GetHandleId(ydl_trigger), 0x52DB984E, LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x52DB984E))
            SaveInteger(YDLOC, GetHandleId(ydl_trigger), 0xB0497EE9, LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB0497EE9))
            TriggerRegisterUnitEvent(ydl_trigger, LoadUnitHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x384C9D86), EVENT_UNIT_DEATH)
            TriggerAddCondition(ydl_trigger, Condition(Trig_AY_JNCF_003Func009Func001Func002Func017Conditions))
        else
        end
    else
    end
    if ((HaveSavedHandle(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0xC43A1D5D) == true) and (S2I(EXExecuteScript("(require'jass.slk').ability[" .. I2S(GetSpellAbilityId()) .. "].priority")) == 4232)) then
        ydl_trigger = gg_trg_XTGQ_006________________u
        ydl_triggerstep = GetHandleId(ydl_trigger) * (LoadInteger(YDLOC, GetHandleId(ydl_trigger), 0xCFDE6C76) + 3)
        SavePlayerHandle(YDLOC, ydl_triggerstep, 0x48656946, LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))
        TriggerExecute(ydl_trigger)
    else
    end
    if ((GetUnitAbilityLevelSwapped((0x53483137), GetTriggerUnit()) > 0)) then
        ydl_timer = CreateTimer()
        SavePlayerHandle(YDLOC, GetHandleId(ydl_timer), 0x48656946, LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))
        SaveInteger(YDLOC, GetHandleId(ydl_timer), 0x6C2DED4E, -180)
        SaveUnitHandle(YDLOC, GetHandleId(ydl_timer), 0x384C9D86 + (1), CreateUnit(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946), (0x65303031), 0, 0, 0))
        SaveUnitHandle(YDLOC, GetHandleId(ydl_timer), 0x384C9D86 + (2), CreateUnit(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946), (0x65303031), 0, 0, 0))
        SaveReal(YDLOC, GetHandleId(ydl_timer), 0x2D345649, LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2D345649))
        SaveReal(YDLOC, GetHandleId(ydl_timer), 0x38AB9941, LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x38AB9941))
        SaveReal(YDLOC, GetHandleId(ydl_timer), 0x49D14A0C, LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x49D14A0C))
        SaveReal(YDLOC, GetHandleId(ydl_timer), 0x4AF79D7A, LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x4AF79D7A))
        TimerStart(ydl_timer, 0.01, true, Trig_AY_JNCF_003Func011Func001Func002T)
    else
    end
    if ((GetSpellAbilityId() == (0x53483232))) then
        if ((S2I(EXExecuteScript("(require'jass.slk').item[" .. I2S(GetItemTypeId(GetSpellTargetItem())) .. "].prio")) == 9200) and (S2I(EXExecuteScript("(require'jass.slk').item[" .. I2S(GetItemTypeId(GetSpellTargetItem())) .. "].oldlevel")) <= 56)) then
            UnitAddItemByIdSwapped(GetItemTypeId(GetSpellTargetItem()), GetTriggerUnit())
        else
            ydl_timer = CreateTimer()
            SaveInteger(YDLOC, GetHandleId(ydl_timer), 0xA9CA38BB, GetSpellAbilityId())
            SaveUnitHandle(YDLOC, GetHandleId(ydl_timer), 0x458B7DE9, GetTriggerUnit())
            TimerStart(ydl_timer, 0.03, false, Trig_AY_JNCF_003Func012Func001Func002Func004T)
        end
    else
    end
    if ((GetSpellAbilityId() == (0x53483235))) then
        SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x09087FCC, (((udg_S * udg_S)) + (125) + ((udg_S * 100))))
        AdjustPlayerStateBJ(LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x09087FCC), GetOwningPlayer(GetTriggerUnit()), PLAYER_STATE_RESOURCE_GOLD)
    else
    end
    if ((GetSpellAbilityId() == (0x53483238))) then
        UnitAddItemByIdSwapped(ChooseRandomItemBJ(GetRandomInt(50, 55)), GetTriggerUnit())
    else
    end
    dw = nil
    if ((S2I(EXExecuteScript("(require'jass.slk').ability[" .. I2S(GetSpellAbilityId()) .. "].Missilespeed")) == 3611)) then
    else
        SavePlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946, GetOwningPlayer(GetTriggerUnit()))
        if ((S2I(EXExecuteScript("(require'jass.slk').ability[" .. I2S(GetSpellAbilityId()) .. "].Missilespeed")) == 997)) then
            RemoveUnit(LoadUnitHandle(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0xFB35C934))
            SaveUnitHandle(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0xFB35C934, CreateUnit(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946), LoadInteger(YDHT, GetSpellAbilityId(), 0xD3105FCA), GetUnitX(GetTriggerUnit()), GetUnitY(GetTriggerUnit()), 0))
            SetUnitUserData(LoadUnitHandle(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0xFB35C934), 456)
            JK_SX_Change(LoadUnitHandle(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0xFB35C934), ConvertUnitState(0x51), 1, 1.00)
            UnitAddAbilityBJ((0x416C6F63), LoadUnitHandle(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0xFB35C934))
            FlushChildHashtable(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step)
            ydl_trigger = nil
            ydl_timer = nil
            do
                return
            end
        else
        end
    end
    FlushChildHashtable(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step)
    ydl_trigger = nil
    ydl_timer = nil
end

function InitTrig_AY_JNCF_003()
    gg_trg_AY_JNCF_003 = CreateTrigger()
    TriggerRegisterAnyUnitEventBJ(gg_trg_AY_JNCF_003, EVENT_PLAYER_UNIT_SPELL_EFFECT)
    TriggerAddCondition(gg_trg_AY_JNCF_003, Condition(Trig_AY_JNCF_003Conditions))
    TriggerAddAction(gg_trg_AY_JNCF_003, Trig_AY_JNCF_003Actions)
end

function Trig_A4_jnsfConditions()
    do
        return ((IsUnitType(GetTriggerUnit(), UNIT_TYPE_HERO) == false))
    end
end

function Trig_A4_jnsfFunc009Func001Func002Func002Func003Func006Func003Func001T()
    local ydul_c = nil
    local ydul_a = nil
    local ydul_g = nil
    local ydul_e = nil
    SaveInteger(YDLOC, GetHandleId(GetExpiredTimer()), 0xFBEDEC54, (LoadInteger(YDLOC, GetHandleId(GetExpiredTimer()), 0xFBEDEC54) + 1))
    SaveInteger(YDLOC, GetHandleId(GetExpiredTimer()), 0xBC8AB2C8, (LoadInteger(YDLOC, GetHandleId(GetExpiredTimer()), 0xBC8AB2C8) + 1))
    if (((LoadInteger(YDHT, ((GetHandleId((LoadPlayerHandle(YDLOC, GetHandleId(GetExpiredTimer()), 0x48656946))))), (((udg_UI_HQTB[LoadInteger(YDLOC, GetHandleId(GetExpiredTimer()), 0xFBEDEC54)]))))) ~= 0)) then
        SaveInteger(YDLOC, GetHandleId(GetExpiredTimer()), 0xE16A79E4 + (LoadInteger(YDLOC, GetHandleId(GetExpiredTimer()), 0xFBEDEC54)), (LoadInteger(YDHT, ((GetHandleId((LoadPlayerHandle(YDLOC, GetHandleId(GetExpiredTimer()), 0x48656946))))), (((udg_UI_HQTB[LoadInteger(YDLOC, GetHandleId(GetExpiredTimer()), 0xFBEDEC54)]))))))
        SaveInteger(YDLOC, GetHandleId(GetExpiredTimer()), 0x8E352A38, (YDWES2Id(((EXExecuteScript("(require'jass.slk').unit[" .. I2S(LoadInteger(YDLOC, GetHandleId(GetExpiredTimer()), 0xE16A79E4 + (LoadInteger(YDLOC, GetHandleId(GetExpiredTimer()), 0xFBEDEC54)))) .. "].Tip"))))))
        SaveStr(YDLOC, GetHandleId(GetExpiredTimer()), 0x2D1FF186, (EXExecuteScript("(require'jass.slk').item[" .. I2S(LoadInteger(YDLOC, GetHandleId(GetExpiredTimer()), 0x8E352A38)) .. "].Description")))
        SaveInteger(YDLOC, GetHandleId(GetExpiredTimer()), 0x3BA83444, StringLength(LoadStr(YDLOC, GetHandleId(GetExpiredTimer()), 0x2D1FF186)))
        ydul_a = 2
        while true do
            if ydul_a > 3 then
                break
            end
            if ((LoadInteger(YDLOC, GetHandleId(GetExpiredTimer()), 0x3BA83444) == (ydul_a * 4))) then
                SaveInteger(YDLOC, GetHandleId(GetExpiredTimer()), 0x8186EBB8, ydul_a)
            else
            end
            ydul_a = ydul_a + 1
        end
        SaveStr(YDLOC, GetHandleId(GetExpiredTimer()), 0xA9433B13, (("|n|n") .. (YDWEGetPlayerColorString(Player(0), (EXExecuteScript("(require'jass.slk').item[" .. I2S(LoadInteger(YDLOC, GetHandleId(GetExpiredTimer()), 0x8E352A38)) .. "].Name")))) .. ("|n")))
        ydul_c = 0
        while true do
            if ydul_c > (LoadInteger(YDLOC, GetHandleId(GetExpiredTimer()), 0x8186EBB8) - 1) then
                break
            end
            SaveStr(YDLOC, GetHandleId(GetExpiredTimer()), 0x84885547, SubStringBJ(LoadStr(YDLOC, GetHandleId(GetExpiredTimer()), 0x2D1FF186), ((ydul_c * 4) + 1), ((ydul_c * 4) + 4)))
            SaveInteger(YDLOC, GetHandleId(GetExpiredTimer()), 0xCB30278B + (ydul_c), (YDWES2Id((LoadStr(YDLOC, GetHandleId(GetExpiredTimer()), 0x84885547)))))
            ydul_g = 1
            while true do
                if ydul_g > 4 then
                    break
                end
                if ((LoadInteger(YDLOC, GetHandleId(GetExpiredTimer()), 0xCB30278B + (ydul_c)) == (LoadInteger(YDHT, ((GetHandleId((LoadPlayerHandle(YDLOC, GetHandleId(GetExpiredTimer()), 0x48656946))))), (StringHash(("门客" .. I2S(ydul_g)))))))) then
                    SaveBoolean(YDHT, ((GetHandleId((LoadPlayerHandle(YDLOC, GetHandleId(GetExpiredTimer()), 0x48656946))))), (StringHash(("jbx" .. I2S(ydul_g)))), (true))
                else
                end
                ydul_g = ydul_g + 1
            end
            if (((LoadBoolean(YDHT, StringHash((GetPlayerName(LoadPlayerHandle(YDLOC, GetHandleId(GetExpiredTimer()), 0x48656946)))), StringHash(((EXExecuteScript("(require'jass.slk').unit[" .. I2S(LoadInteger(YDLOC, GetHandleId(GetExpiredTimer()), 0xCB30278B + (ydul_c))) .. "].Name")))))) == true)) then
                SaveStr(YDLOC, GetHandleId(GetExpiredTimer()), 0x12BBBFB9 + (ydul_c), YDWEGetPlayerColorString(Player(2), (EXExecuteScript("(require'jass.slk').unit[" .. I2S(LoadInteger(YDLOC, GetHandleId(GetExpiredTimer()), 0xCB30278B + (ydul_c))) .. "].Name"))))
            else
                SaveStr(YDLOC, GetHandleId(GetExpiredTimer()), 0x12BBBFB9 + (ydul_c), YDWEGetPlayerColorString(Player(10), (EXExecuteScript("(require'jass.slk').unit[" .. I2S(LoadInteger(YDLOC, GetHandleId(GetExpiredTimer()), 0xCB30278B + (ydul_c))) .. "].Name"))))
                SaveBoolean(YDLOC, GetHandleId(GetExpiredTimer()), 0xACF9C25E + (LoadInteger(YDLOC, GetHandleId(GetExpiredTimer()), 0xFBEDEC54)), true)
            end
            SaveStr(YDLOC, GetHandleId(GetExpiredTimer()), 0xA9433B13, ((LoadStr(YDLOC, GetHandleId(GetExpiredTimer()), 0xA9433B13)) .. (LoadStr(YDLOC, GetHandleId(GetExpiredTimer()), 0x12BBBFB9 + (ydul_c))) .. ("|n")))
            ydul_c = ydul_c + 1
        end
        if ((LoadBoolean(YDLOC, GetHandleId(GetExpiredTimer()), 0xACF9C25E + (LoadInteger(YDLOC, GetHandleId(GetExpiredTimer()), 0xFBEDEC54))) ~= true)) then
            SaveStr(YDLOC, GetHandleId(GetExpiredTimer()), 0xA9433B13, ((LoadStr(YDLOC, GetHandleId(GetExpiredTimer()), 0xA9433B13)) .. (YDWEGetPlayerColorString(Player(2), (EXExecuteScript("(require'jass.slk').item[" .. I2S(LoadInteger(YDLOC, GetHandleId(GetExpiredTimer()), 0x8E352A38)) .. "].Ubertip")))) .. ("|n")))
        else
            SaveStr(YDLOC, GetHandleId(GetExpiredTimer()), 0xA9433B13, ((LoadStr(YDLOC, GetHandleId(GetExpiredTimer()), 0xA9433B13)) .. (YDWEGetPlayerColorString(Player(8), (EXExecuteScript("(require'jass.slk').item[" .. I2S(LoadInteger(YDLOC, GetHandleId(GetExpiredTimer()), 0x8E352A38)) .. "].Ubertip")))) .. ("|n")))
        end
        ydul_e = 0
        while true do
            if ydul_e > (LoadInteger(YDLOC, GetHandleId(GetExpiredTimer()), 0x8186EBB8) - 1) then
                break
            end
            SaveStr((jn), (LoadInteger(YDLOC, GetHandleId(GetExpiredTimer()), 0xCB30278B + (ydul_e))), 6, (("") .. (LoadStr(YDLOC, GetHandleId(GetExpiredTimer()), 0xA9433B13)) .. ("")))
            ydul_e = ydul_e + 1
        end
        SaveStr(YDLOC, GetHandleId(GetExpiredTimer()), 0xA9433B13, "")
    else
    end
    SaveInteger(YDLOC, GetHandleId(GetExpiredTimer()), 0xE16A79E4 + (LoadInteger(YDLOC, GetHandleId(GetExpiredTimer()), 0xBC8AB2C8)), (LoadInteger(YDHT, ((GetHandleId((LoadPlayerHandle(YDLOC, GetHandleId(GetExpiredTimer()), 0x48656946))))), (StringHash(("门客" .. I2S(LoadInteger(YDLOC, GetHandleId(GetExpiredTimer()), 0xBC8AB2C8))))))))
    SaveInteger(YDLOC, GetHandleId(GetExpiredTimer()), 0x8E352A38, (YDWES2Id(((EXExecuteScript("(require'jass.slk').unit[" .. I2S(LoadInteger(YDLOC, GetHandleId(GetExpiredTimer()), 0xE16A79E4 + (LoadInteger(YDLOC, GetHandleId(GetExpiredTimer()), 0xBC8AB2C8)))) .. "].Tip"))))))
    SaveStr(YDLOC, GetHandleId(GetExpiredTimer()), 0x2D1FF186, (EXExecuteScript("(require'jass.slk').item[" .. I2S(LoadInteger(YDLOC, GetHandleId(GetExpiredTimer()), 0x8E352A38)) .. "].Description")))
    SaveInteger(YDLOC, GetHandleId(GetExpiredTimer()), 0x3BA83444, StringLength(LoadStr(YDLOC, GetHandleId(GetExpiredTimer()), 0x2D1FF186)))
    ydul_a = 2
    while true do
        if ydul_a > 3 then
            break
        end
        if ((LoadInteger(YDLOC, GetHandleId(GetExpiredTimer()), 0x3BA83444) == (ydul_a * 4))) then
            SaveInteger(YDLOC, GetHandleId(GetExpiredTimer()), 0x8186EBB8, ydul_a)
        else
        end
        ydul_a = ydul_a + 1
    end
    SaveStr(YDLOC, GetHandleId(GetExpiredTimer()), 0xA9433B13, (("|n|n") .. (YDWEGetPlayerColorString(Player(0), (EXExecuteScript("(require'jass.slk').item[" .. I2S(LoadInteger(YDLOC, GetHandleId(GetExpiredTimer()), 0x8E352A38)) .. "].Name")))) .. ("|n")))
    ydul_c = 0
    while true do
        if ydul_c > (LoadInteger(YDLOC, GetHandleId(GetExpiredTimer()), 0x8186EBB8) - 1) then
            break
        end
        SaveStr(YDLOC, GetHandleId(GetExpiredTimer()), 0x84885547, SubStringBJ(LoadStr(YDLOC, GetHandleId(GetExpiredTimer()), 0x2D1FF186), ((ydul_c * 4) + 1), ((ydul_c * 4) + 4)))
        SaveInteger(YDLOC, GetHandleId(GetExpiredTimer()), 0xCB30278B + (ydul_c), (YDWES2Id((LoadStr(YDLOC, GetHandleId(GetExpiredTimer()), 0x84885547)))))
        if (((LoadBoolean(YDHT, StringHash((GetPlayerName(LoadPlayerHandle(YDLOC, GetHandleId(GetExpiredTimer()), 0x48656946)))), StringHash(((EXExecuteScript("(require'jass.slk').unit[" .. I2S(LoadInteger(YDLOC, GetHandleId(GetExpiredTimer()), 0xCB30278B + (ydul_c))) .. "].Name")))))) == true)) then
            SaveStr(YDLOC, GetHandleId(GetExpiredTimer()), 0x12BBBFB9 + (ydul_c), YDWEGetPlayerColorString(Player(2), (EXExecuteScript("(require'jass.slk').unit[" .. I2S(LoadInteger(YDLOC, GetHandleId(GetExpiredTimer()), 0xCB30278B + (ydul_c))) .. "].Name"))))
        else
            SaveStr(YDLOC, GetHandleId(GetExpiredTimer()), 0x12BBBFB9 + (ydul_c), YDWEGetPlayerColorString(Player(10), (EXExecuteScript("(require'jass.slk').unit[" .. I2S(LoadInteger(YDLOC, GetHandleId(GetExpiredTimer()), 0xCB30278B + (ydul_c))) .. "].Name"))))
            SaveBoolean(YDLOC, GetHandleId(GetExpiredTimer()), 0xACF9C25E + (LoadInteger(YDLOC, GetHandleId(GetExpiredTimer()), 0xBC8AB2C8)), true)
        end
        SaveStr(YDLOC, GetHandleId(GetExpiredTimer()), 0xA9433B13, ((LoadStr(YDLOC, GetHandleId(GetExpiredTimer()), 0xA9433B13)) .. (LoadStr(YDLOC, GetHandleId(GetExpiredTimer()), 0x12BBBFB9 + (ydul_c))) .. ("|n")))
        ydul_c = ydul_c + 1
    end
    if ((LoadBoolean(YDLOC, GetHandleId(GetExpiredTimer()), 0xACF9C25E + (LoadInteger(YDLOC, GetHandleId(GetExpiredTimer()), 0xBC8AB2C8))) ~= true)) then
        SaveStr(YDLOC, GetHandleId(GetExpiredTimer()), 0xA9433B13, ((LoadStr(YDLOC, GetHandleId(GetExpiredTimer()), 0xA9433B13)) .. (YDWEGetPlayerColorString(Player(2), (EXExecuteScript("(require'jass.slk').item[" .. I2S(LoadInteger(YDLOC, GetHandleId(GetExpiredTimer()), 0x8E352A38)) .. "].Ubertip")))) .. ("|n")))
    else
        SaveStr(YDLOC, GetHandleId(GetExpiredTimer()), 0xA9433B13, ((LoadStr(YDLOC, GetHandleId(GetExpiredTimer()), 0xA9433B13)) .. (YDWEGetPlayerColorString(Player(8), (EXExecuteScript("(require'jass.slk').item[" .. I2S(LoadInteger(YDLOC, GetHandleId(GetExpiredTimer()), 0x8E352A38)) .. "].Ubertip")))) .. ("|n")))
    end
    ydul_e = 0
    while true do
        if ydul_e > (LoadInteger(YDLOC, GetHandleId(GetExpiredTimer()), 0x8186EBB8) - 1) then
            break
        end
        SaveStr((jn), (LoadInteger(YDLOC, GetHandleId(GetExpiredTimer()), 0xCB30278B + (ydul_e))), 6, (("") .. (LoadStr(YDLOC, GetHandleId(GetExpiredTimer()), 0xA9433B13)) .. ("")))
        ydul_e = ydul_e + 1
    end
    SaveStr(YDLOC, GetHandleId(GetExpiredTimer()), 0xA9433B13, "")
    if ((LoadInteger(YDLOC, GetHandleId(GetExpiredTimer()), 0xFBEDEC54) == 41)) then
        ydul_a = 1
        while true do
            if ydul_a > 4 then
                break
            end
            if ((LoadPlayerHandle(YDLOC, GetHandleId(GetExpiredTimer()), 0x48656946) == GetLocalPlayer())) then
                DzFrameShow(udg_UI_shuaxin[(ydul_a + 12)], false)
                DzFrameSetTexture(udg_UI_shuaxin[ydul_a], (EXExecuteScript("(require'jass.slk').unit[" .. I2S(LoadInteger(YDLOC, GetHandleId(GetExpiredTimer()), 0xA1CFBB06 + (ydul_a))) .. "].Art")), 0)
                DzFrameSetModel(udg_UI_shuaxin[(ydul_a + 4)], (("war3mapImported\\ui_buttoneffect (") .. (I2S(GetUnitPointValueByType(LoadInteger(YDLOC, GetHandleId(GetExpiredTimer()), 0xA1CFBB06 + (ydul_a))))) .. (").mdx")), 0, 0)
                DzFrameShow(udg_UI_shuaxin[(ydul_a + 4)], true)
                DzFrameShow(udg_UI_shuaxin[ydul_a], true)
                if (((LoadBoolean(YDHT, StringHash((GetPlayerName(LoadPlayerHandle(YDLOC, GetHandleId(GetExpiredTimer()), 0x48656946)))), StringHash(((EXExecuteScript("(require'jass.slk').unit[" .. I2S(LoadInteger(YDLOC, GetHandleId(GetExpiredTimer()), 0xA1CFBB06 + (ydul_a))) .. "].Name")))))) == true)) then
                    if (((LoadInteger(YDHT, ((GetHandleId((LoadPlayerHandle(YDLOC, GetHandleId(GetExpiredTimer()), 0x48656946))))), (StringHash(((EXExecuteScript("(require'jass.slk').unit[" .. I2S(LoadInteger(YDLOC, GetHandleId(GetExpiredTimer()), 0xA1CFBB06 + (ydul_a))) .. "].Name")) .. "JY"))))) < 6)) then
                        DzFrameSetModel(udg_UI_shuaxin[(ydul_a + 12)], "ui\\tip1_new.mdx", 0, 0)
                        DzFrameShow(udg_UI_shuaxin[(ydul_a + 12)], true)
                    else
                        DzFrameSetModel(udg_UI_shuaxin[(ydul_a + 12)], "ui\\tip2_new.mdx", 0, 0)
                        DzFrameShow(udg_UI_shuaxin[(ydul_a + 12)], true)
                    end
                else
                    if (((LoadBoolean(YDHT, ((GetHandleId((LoadPlayerHandle(YDLOC, GetHandleId(GetExpiredTimer()), 0x48656946))))), (StringHash(("jbx" .. I2S(ydul_a)))))) == true)) then
                        DzFrameSetModel(udg_UI_shuaxin[(ydul_a + 12)], "ui\\tip3_new.mdx", 0, 0)
                        DzFrameShow(udg_UI_shuaxin[(ydul_a + 12)], true)
                    else
                    end
                end
            else
            end
            SaveBoolean(YDHT, ((GetHandleId((LoadPlayerHandle(YDLOC, GetHandleId(GetExpiredTimer()), 0x48656946))))), (StringHash(("jbx" .. I2S(ydul_a)))), (false))
            ydul_a = ydul_a + 1
        end
        SelectUnitForPlayerSingle(gg_unit_O001_0009, LoadPlayerHandle(YDLOC, GetHandleId(GetExpiredTimer()), 0x48656946))
        SelectUnitForPlayerSingle((LoadUnitHandle(YDHT, ((GetHandleId((LoadPlayerHandle(YDLOC, GetHandleId(GetExpiredTimer()), 0x48656946))))), (StringHash("05NPC")))), LoadPlayerHandle(YDLOC, GetHandleId(GetExpiredTimer()), 0x48656946))
        FlushChildHashtable(YDLOC, GetHandleId(GetExpiredTimer()))
        DestroyTimer(GetExpiredTimer())
    else
    end
end

function Trig_A4_jnsfFunc009Func001Func002Func002Func003Func006Func004T()
    local ydul_a = nil
    if ((LoadPlayerHandle(YDLOC, GetHandleId(GetExpiredTimer()), 0x48656946) == GetLocalPlayer())) then
        ydul_a = 5
        while true do
            if ydul_a > 8 then
                break
            end
            DzFrameShow(udg_UI_shuaxin[ydul_a], false)
            ydul_a = ydul_a + 1
        end
    else
    end
    FlushChildHashtable(YDLOC, GetHandleId(GetExpiredTimer()))
    DestroyTimer(GetExpiredTimer())
end

function Trig_A4_jnsfFunc009Func001Func002Func004Func018Conditions()
    local ydl_triggerstep = nil
    local ydl_trigger = nil
    if ((IsUnitAliveBJ(GetKillingUnit()) == true) and (GetKillingUnit() == udg_WJYX[LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0x6F96F2D2)])) then
        SaveInteger(YDHT, ((GetHandleId((LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()), 0x48656946))))), ((LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xF374F3BD))), (((LoadInteger(YDHT, ((GetHandleId((LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()), 0x48656946))))), ((LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xF374F3BD))))) + 1)))
        SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0x6D77F75F, S2I(EXExecuteScript("(require'jass.slk').ability[" .. I2S(LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xF374F3BD)) .. "].Missilespeed")))
        SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xB2B2BF95, (LoadInteger(YDHT, ((GetHandleId((LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()), 0x48656946))))), ((LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xF374F3BD))))))
        ydl_trigger = gg_trg_qjyd
        ydl_triggerstep = GetHandleId(ydl_trigger) * (LoadInteger(YDLOC, GetHandleId(ydl_trigger), 0xCFDE6C76) + 3)
        SavePlayerHandle(YDLOC, ydl_triggerstep, 0x48656946, LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()), 0x48656946))
        SaveInteger(YDLOC, ydl_triggerstep, 0xBCFAAC25, (LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xF374F3BD)))
        SaveReal(YDHT, GetHandleId(Player(PLAYER_NEUTRAL_AGGRESSIVE)), 0xE8319FBA, -1.00)
        SaveBoolean(YDLOC, ydl_triggerstep, 0xAC98E756, true)
        SaveInteger(YDLOC, GetHandleId(ydl_trigger), 0xF374F3BD, LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xF374F3BD))
        TriggerExecute(ydl_trigger)
        if ((LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xF374F3BD) == udg_szjn[1])) then
            SaveReal(YDLOC, GetHandleId(GetTriggeringTrigger()), 0x2D1E4992, (700.00 * I2R((LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xB2B2BF95) + LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xB2B2BF95)))))
            SaveStr(YDLOC, GetHandleId(GetTriggeringTrigger()), 0x329FF8E6, ("攻击力+" .. R2SW(LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()), 0x2D1E4992), 1, 0)))
            SaveReal((wp), (udg_szjn[1]), 1, LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()), 0x2D1E4992))
            SaveReal(YDLOC, GetHandleId(GetTriggeringTrigger()), 0x2D1E4992, (4900.00 * I2R((LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xB2B2BF95) + LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xB2B2BF95)))))
            SaveStr(YDLOC, GetHandleId(GetTriggeringTrigger()), 0x50E50212, ("生命+" .. R2SW(LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()), 0x2D1E4992), 1, 0)))
            SaveReal((wp), (udg_szjn[1]), 3, LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()), 0x2D1E4992))
            SaveStr(YDLOC, GetHandleId(GetTriggeringTrigger()), 0x2D1FF186, ((YDWEGetPlayerColorString(Player(2), "[人族历练加成]：|n")) .. (LoadStr(YDLOC, GetHandleId(GetTriggeringTrigger()), 0x329FF8E6)) .. (("|n" .. LoadStr(YDLOC, GetHandleId(GetTriggeringTrigger()), 0x50E50212)))))
        else
            if ((LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xF374F3BD) == udg_szjn[2])) then
                SaveReal(YDLOC, GetHandleId(GetTriggeringTrigger()), 0x2D1E4992, (500.00 * I2R((LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xB2B2BF95) + LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xB2B2BF95)))))
                SaveStr(YDLOC, GetHandleId(GetTriggeringTrigger()), 0x329FF8E6, ("主属性+" .. R2SW(LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()), 0x2D1E4992), 1, 0)))
                SaveReal((wp), (udg_szjn[2]), 4, LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()), 0x2D1E4992))
                SaveReal(YDLOC, GetHandleId(GetTriggeringTrigger()), 0x2D1E4992, (1.00 * I2R((LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xB2B2BF95) + LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xB2B2BF95)))))
                SaveStr(YDLOC, GetHandleId(GetTriggeringTrigger()), 0x50E50212, ("伤害加深+" .. R2SW(LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()), 0x2D1E4992), 1, 0)))
                SaveReal((wp), (udg_szjn[2]), 15, LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()), 0x2D1E4992))
                SaveStr(YDLOC, GetHandleId(GetTriggeringTrigger()), 0x2D1FF186, ((YDWEGetPlayerColorString(Player(2), "[神族历练加成]：|n")) .. (LoadStr(YDLOC, GetHandleId(GetTriggeringTrigger()), 0x329FF8E6)) .. (("|n" .. LoadStr(YDLOC, GetHandleId(GetTriggeringTrigger()), 0x50E50212)))))
            else
                if ((LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xF374F3BD) == udg_szjn[3])) then
                    SaveReal(YDLOC, GetHandleId(GetTriggeringTrigger()), 0x2D1E4992, (750.00 * I2R((LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xB2B2BF95) + LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xB2B2BF95)))))
                    SaveStr(YDLOC, GetHandleId(GetTriggeringTrigger()), 0x329FF8E6, ("物理免伤+" .. R2SW(LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()), 0x2D1E4992), 1, 0)))
                    SaveReal((wp), (udg_szjn[3]), 11, LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()), 0x2D1E4992))
                    SaveReal(YDLOC, GetHandleId(GetTriggeringTrigger()), 0x2D1E4992, (750.00 * I2R((LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xB2B2BF95) + LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xB2B2BF95)))))
                    SaveStr(YDLOC, GetHandleId(GetTriggeringTrigger()), 0x50E50212, ("魔法免伤+" .. R2SW(LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()), 0x2D1E4992), 1, 0)))
                    SaveReal((wp), (udg_szjn[3]), 12, LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()), 0x2D1E4992))
                    SaveStr(YDLOC, GetHandleId(GetTriggeringTrigger()), 0x2D1FF186, ((YDWEGetPlayerColorString(Player(2), "[魔族历练加成]：|n")) .. (LoadStr(YDLOC, GetHandleId(GetTriggeringTrigger()), 0x329FF8E6)) .. (("|n" .. LoadStr(YDLOC, GetHandleId(GetTriggeringTrigger()), 0x50E50212)))))
                else
                end
            end
        end
        ydl_trigger = gg_trg_qjyd
        ydl_triggerstep = GetHandleId(ydl_trigger) * (LoadInteger(YDLOC, GetHandleId(ydl_trigger), 0xCFDE6C76) + 3)
        SavePlayerHandle(YDLOC, ydl_triggerstep, 0x48656946, LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()), 0x48656946))
        SaveInteger(YDLOC, ydl_triggerstep, 0xBCFAAC25, (LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xF374F3BD)))
        SaveBoolean(YDLOC, ydl_triggerstep, 0xAC98E756, true)
        SaveInteger(YDLOC, GetHandleId(ydl_trigger), 0xF374F3BD, LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xF374F3BD))
        TriggerExecute(ydl_trigger)
        SaveStr(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xA9433B13, (("") .. ("|cffff0000[挑战奖励]|r|cff00ff00|n|r|cff00ffff提升种族历练等级|n|n|r|cffff0000[额外奖励]|r|cff00ff00|n|r|cff00ffff提升(100x宗门等级)点宗门声望|n|n|r") .. ("")))
        SaveStr(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xB92B1A4D, (("") .. ("|cffff0000[当前属性加成]|r") .. ("|n")))
        SaveStr((jn), (LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xF374F3BD)), 5, LoadStr(YDLOC, GetHandleId(GetTriggeringTrigger()), 0x2D1FF186))
        SaveStr((jn), (LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xF374F3BD)), 2, ((LoadStr(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xA9433B13)) .. (LoadStr(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xB92B1A4D)) .. (LoadStr((jn), (LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xF374F3BD)), 5))))
        SaveInteger(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()), 0x48656946)), 0xF5B58222, (LoadInteger(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()), 0x48656946)), 0xF5B58222) + (100 * (LoadInteger(YDHT, ((GetHandleId((LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()), 0x48656946))))), ((LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xF374F3BD))))))))
        if ((GetOwningPlayer(GetKillingUnit()) == GetLocalPlayer())) then
            DzFrameSetText(udg_ui_BYDJ[LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0x6D77F75F)], ("Lv " .. I2S((LoadInteger(YDHT, ((GetHandleId((LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()), 0x48656946))))), ((LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xF374F3BD))))))))
        else
        end
    else
    end
    FlushChildHashtable(YDLOC, GetHandleId(GetTriggeringTrigger()))
    DestroyTrigger(GetTriggeringTrigger())
    ydl_trigger = nil
end

function Trig_A4_jnsfFunc009Func001Func002Func005Func001Func002Func002Func002T()
    DestroyEffect(LoadEffectHandle(YDLOC, GetHandleId(GetExpiredTimer()), 0x62C50DE6))
    FlushChildHashtable(YDLOC, GetHandleId(GetExpiredTimer()))
    DestroyTimer(GetExpiredTimer())
end

function Trig_A4_jnsfFunc011Func001Func001Func003Func003Func001Func004Func002A()
    if ((S2I(EXExecuteScript("(require'jass.slk').item[" .. I2S(GetItemTypeId(GetEnumItem())) .. "].oldlevel")) == LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0x1CA97F39))) then
        if (((LoadInteger(YDHT, ((GetHandleId((GetTriggeringTrigger())))), (LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0x1CA97F39)))) ~= 0)) then
            SaveInteger(YDHT, ((GetHandleId((GetTriggeringTrigger())))), (LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0x1CA97F39)), (((LoadInteger(YDHT, ((GetHandleId((GetTriggeringTrigger())))), (LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0x1CA97F39)))) - 1)))
            RemoveItem(GetEnumItem())
        else
        end
    else
    end
end

function Trig_A4_jnsfFunc011Func001Func001Func003Func003A()
    if ((GetItemLifeBJ(GetEnumItem()) > 0.00) and (S2I(EXExecuteScript("(require'jass.slk').item[" .. I2S(GetItemTypeId(GetEnumItem())) .. "].oldlevel")) == LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0x1CA97F39))) then
        SaveInteger(YDHT, ((GetHandleId((GetTriggeringTrigger())))), (LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0x1CA97F39)), (((LoadInteger(YDHT, ((GetHandleId((GetTriggeringTrigger())))), (LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0x1CA97F39)))) + 1)))
        if (((LoadInteger(YDHT, ((GetHandleId((GetTriggeringTrigger())))), (LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0x1CA97F39)))) == 3)) then
            EnumItemsInRectBJ(LoadRectHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0x007BA3BC), Trig_A4_jnsfFunc011Func001Func001Func003Func003Func001Func004Func002A)
            CreateItem(ChooseRandomItemBJ((LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0x1CA97F39) + 1)), GetLocationX(LoadLocationHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0x9CD60476)), GetLocationY(LoadLocationHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0x9CD60476)))
            DestroyEffect(AddSpecialEffectLoc("G\\[g] (19).mdl", LoadLocationHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0x9CD60476)))
        else
        end
    else
    end
end

function Trig_A4_jnsfFunc011Func004Func001Func002A()
    if ((GetItemLifeBJ(GetEnumItem()) > 0.00) and (S2I(EXExecuteScript("(require'jass.slk').item[" .. I2S(GetItemTypeId(GetEnumItem())) .. "].oldLevel")) >= 50) and (S2I(EXExecuteScript("(require'jass.slk').item[" .. I2S(GetItemTypeId(GetEnumItem())) .. "].oldLevel")) <= 59)) then
        SaveReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0xA99320FA, (GetRectCenterX(udg_ZDQY[LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0x6F96F2D2)]) - 300.00))
        SaveReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0xFDF65382, (GetRectCenterY(udg_ZDQY[LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0x6F96F2D2)]) + 300.00))
        SetItemPosition(GetEnumItem(), LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0xA99320FA), LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0xFDF65382))
    else
        if ((GetItemLifeBJ(GetEnumItem()) > 0.00) and (GetItemLevel(GetEnumItem()) >= 34) and (GetItemLevel(GetEnumItem()) <= 36)) then
            SaveReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0xA99320FA, (GetRectCenterX(udg_ZDQY[LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0x6F96F2D2)]) + 300.00))
            SaveReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0xFDF65382, (GetRectCenterY(udg_ZDQY[LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0x6F96F2D2)]) + 300.00))
            SetItemPosition(GetEnumItem(), LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0xA99320FA), LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0xFDF65382))
        else
            if ((GetItemLifeBJ(GetEnumItem()) > 0.00) and (S2I(EXExecuteScript("(require'jass.slk').item[" .. I2S(GetItemTypeId(GetEnumItem())) .. "].oldLevel")) >= 4301) and (S2I(EXExecuteScript("(require'jass.slk').item[" .. I2S(GetItemTypeId(GetEnumItem())) .. "].oldLevel")) <= 4304)) then
                SaveReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0xA99320FA, (GetRectCenterX(udg_ZDQY[LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0x6F96F2D2)]) + 300.00))
                SaveReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0xFDF65382, (GetRectCenterY(udg_ZDQY[LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0x6F96F2D2)]) - 300.00))
                SetItemPosition(GetEnumItem(), LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0xA99320FA), LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0xFDF65382))
            else
                if ((GetItemLifeBJ(GetEnumItem()) > 0.00) and (GetItemLevel(GetEnumItem()) >= 788) and (GetItemLevel(GetEnumItem()) <= 790)) then
                    SaveReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0xA99320FA, (GetRectCenterX(udg_ZDQY[LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0x6F96F2D2)]) - 300.00))
                    SaveReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0xFDF65382, (GetRectCenterY(udg_ZDQY[LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0x6F96F2D2)]) - 300.00))
                    SetItemPosition(GetEnumItem(), LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0xA99320FA), LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0xFDF65382))
                else
                    if ((GetItemLifeBJ(GetEnumItem()) > 0.00) and (GetItemLevel(GetEnumItem()) == 112233)) then
                        SaveReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0xA99320FA, (GetRectCenterX(udg_ZDQY[LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0x6F96F2D2)]) - 0.00))
                        SaveReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0xFDF65382, (GetRectCenterY(udg_ZDQY[LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0x6F96F2D2)]) - 300.00))
                        SetItemPosition(GetEnumItem(), LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0xA99320FA), LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0xFDF65382))
                    else
                        if ((GetItemLifeBJ(GetEnumItem()) > 0.00) and (S2I(EXExecuteScript("(require'jass.slk').item[" .. I2S(GetItemTypeId(GetEnumItem())) .. "].oldLevel")) == 7752)) then
                            SaveReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0xA99320FA, (GetRectCenterX(udg_ZDQY[LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0x6F96F2D2)]) - 0.00))
                            SaveReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0xFDF65382, (GetRectCenterY(udg_ZDQY[LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0x6F96F2D2)]) + 300.00))
                            SetItemPosition(GetEnumItem(), LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0xA99320FA), LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0xFDF65382))
                        else
                        end
                    end
                end
            end
        end
    end
end

function Trig_A4_jnsfFunc011Func005Func001Func004A()
    if ((GetItemLifeBJ(GetEnumItem()) > 0.00)) then
        UnitAddItemSwapped(GetEnumItem(), GetTriggerUnit())
    else
    end
end

function Trig_A4_jnsfFunc012Func001Func002Func018Conditions()
    if ((GetOwningPlayer(GetKillingUnit()) == LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()), 0x48656946))) then
        SaveInteger(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()), 0x48656946)), 0xD43491ED, (LoadInteger(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()), 0x48656946)), 0xD43491ED) + 1))
        JK_UnitTranslationB(udg_WJYX[GetConvertedPlayerId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()), 0x48656946))], udg_LGFZB_x[GetConvertedPlayerId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()), 0x48656946))], udg_LGFZB_y[GetConvertedPlayerId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()), 0x48656946))], bj_lastCreatedEffect, 0.00, "", true)
        UnitRemoveAbilityBJ(LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xF374F3BD), (LoadUnitHandle(YDHT, ((GetHandleId((LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()), 0x48656946))))), (StringHash("14NPC")))))
    else
    end
    FlushChildHashtable(YDLOC, GetHandleId(GetTriggeringTrigger()))
    DestroyTrigger(GetTriggeringTrigger())
end

function Trig_A4_jnsfActions()
    local ydul_a = nil
    local ydl_triggerstep = nil
    local ydl_trigger = nil
    local ydul_c = nil
    local ydl_timer = nil
    local ydl_localvar_step = LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xCFDE6C76)
    ydl_localvar_step = ydl_localvar_step + 3
    SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xCFDE6C76, ydl_localvar_step)
    SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xECE825E7, ydl_localvar_step)
    SavePlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946, GetOwningPlayer(GetTriggerUnit()))
    SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x6F96F2D2, GetConvertedPlayerId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)))
    SaveUnitHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x911D5DC2, udg_WJYX[GetConvertedPlayerId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))])
    SavePlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946, GetOwningPlayer(GetTriggerUnit()))
    if (((GetUnitTypeId(GetTriggerUnit()) == (0x6E303039)) or (GetUnitTypeId(GetTriggerUnit()) == (0x6E303038)) or (GetUnitTypeId(GetTriggerUnit()) == (0x6E30304E)))) then
        SaveReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xA99320FA, S2R(EXExecuteScript("(require'jass.slk').ability[" .. I2S(GetSpellAbilityId()) .. "].Rng1")))
        SaveReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xFDF65382, S2R(EXExecuteScript("(require'jass.slk').ability[" .. I2S(GetSpellAbilityId()) .. "].Area1")))
        JK_UnitTranslationB(LoadUnitHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x911D5DC2), LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xA99320FA), LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xFDF65382), AddSpecialEffectTarget("Abilities\\Spells\\Human\\MassTeleport\\MassTeleportTarget.mdl", LoadUnitHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x911D5DC2), "chest"), 0.00, "", true)
        if ((GetUnitTypeId(GetTriggerUnit()) == (0x6E303039))) then
            SaveInteger(YDHT, ((GetHandleId((GetOwningPlayer(GetTriggerUnit()))))), ((GetHandleId((gg_trg_sw_003)))), (GetSpellAbilityId()))
        else
        end
        if ((GetUnitTypeId(GetTriggerUnit()) == (0x6E303038))) then
            if ((GetSpellAbilityId() ~= (0x77783036))) then
                SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x6C2DED4E, S2I(EXExecuteScript("(require'jass.slk').ability[" .. I2S(GetSpellAbilityId()) .. "].priority")))
                SaveInteger(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x93DEBCFA, LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x6C2DED4E))
                if ((LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946) == GetLocalPlayer())) then
                    DzFrameShow(udg_UI_WXTB[0], true)
                    ydul_a = 1
                    while true do
                        if ydul_a > 9 then
                            break
                        end
                        if (((LoadBoolean(YDHT, ((GetHandleId((LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))))), (((LoadInteger(YDHT, StringHash(("wuxing")), StringHash((((I2S(LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x6C2DED4E))) .. ("y") .. (I2S(ydul_a))))))))))) == true)) then
                            DzFrameSetTexture(udg_UI_WXTB[(ydul_a + 9)], (EXExecuteScript("(require'jass.slk').item[" .. I2S((LoadInteger(YDHT, StringHash(("wuxing")), StringHash((((I2S(LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x6C2DED4E))) .. ("y") .. (I2S(ydul_a)))))))) .. "].Art")), 0)
                        else
                            DzFrameSetTexture(udg_UI_WXTB[(ydul_a + 9)], SubStringBJ((EXExecuteScript("(require'jass.slk').item[" .. I2S((LoadInteger(YDHT, StringHash(("wuxing")), StringHash((((I2S(LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x6C2DED4E))) .. ("y") .. (I2S(ydul_a)))))))) .. "].Art")), 2, 15), 0)
                        end
                        DzFrameShow(udg_UI_WXTB[ydul_a], true)
                        ydul_a = ydul_a + 1
                    end
                else
                end
            else
            end
        else
        end
        FlushChildHashtable(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step)
        ydl_trigger = nil
        ydl_timer = nil
        do
            return
        end
    else
    end
    if ((GetUnitPointValue(GetTriggerUnit()) == 4200)) then
        if ((LoadInteger(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x21F5563F) < 47)) then
            if ((LoadInteger(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x21F5563F) == 7)) then
                if (((LoadBoolean(YDHT, ((GetHandleId((LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))))), (((0x66303038))))) == true)) then
                    SaveReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xA99320FA, S2R(EXExecuteScript("(require'jass.slk').unit[" .. I2S((0x66303039)) .. "].HFact2")))
                    SaveReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xFDF65382, S2R(EXExecuteScript("(require'jass.slk').unit[" .. I2S((0x66303039)) .. "].Qfact2")))
                else
                    SaveReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xA99320FA, S2R(EXExecuteScript("(require'jass.slk').ability[" .. I2S(GetSpellAbilityId()) .. "].Rng1")))
                    SaveReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xFDF65382, S2R(EXExecuteScript("(require'jass.slk').ability[" .. I2S(GetSpellAbilityId()) .. "].Area1")))
                end
            else
            end
            if ((LoadInteger(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x21F5563F) == 14)) then
                SaveReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xA99320FA, S2R(EXExecuteScript("(require'jass.slk').unit[" .. I2S((YDWES2Id((("f0" .. I2S(LoadInteger(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0xBAC98546))))))) .. "].HFact2")))
                SaveReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xFDF65382, S2R(EXExecuteScript("(require'jass.slk').unit[" .. I2S((YDWES2Id((("f0" .. I2S(LoadInteger(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0xBAC98546))))))) .. "].Qfact2")))
            else
                SaveReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xA99320FA, S2R(EXExecuteScript("(require'jass.slk').ability[" .. I2S(GetSpellAbilityId()) .. "].Rng1")))
                SaveReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xFDF65382, S2R(EXExecuteScript("(require'jass.slk').ability[" .. I2S(GetSpellAbilityId()) .. "].Area1")))
            end
            if ((LoadInteger(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x21F5563F) == 37)) then
                SaveReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xA99320FA, S2R(EXExecuteScript("(require'jass.slk').unit[" .. I2S((YDWES2Id((("f0" .. I2S(LoadInteger(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x42F55AB2))))))) .. "].HFact2")))
                SaveReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xFDF65382, S2R(EXExecuteScript("(require'jass.slk').unit[" .. I2S((YDWES2Id((("f0" .. I2S(LoadInteger(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x42F55AB2))))))) .. "].Qfact2")))
            else
                SaveReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xA99320FA, S2R(EXExecuteScript("(require'jass.slk').ability[" .. I2S(GetSpellAbilityId()) .. "].Rng1")))
                SaveReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xFDF65382, S2R(EXExecuteScript("(require'jass.slk').ability[" .. I2S(GetSpellAbilityId()) .. "].Area1")))
            end
            JK_UnitTranslationB(LoadUnitHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x911D5DC2), LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xA99320FA), LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xFDF65382), AddSpecialEffectTarget("Abilities\\Spells\\Human\\MassTeleport\\MassTeleportTarget.mdl", LoadUnitHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x911D5DC2), "chest"), 0.00, "", true)
            ydl_trigger = gg_trg_rw_001
            ydl_triggerstep = GetHandleId(ydl_trigger) * (LoadInteger(YDLOC, GetHandleId(ydl_trigger), 0xCFDE6C76) + 3)
            SavePlayerHandle(YDLOC, ydl_triggerstep, 0x48656946, LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))
            SaveInteger(YDLOC, ydl_triggerstep, 0xB49B2751, (YDWES2Id(((EXExecuteScript("(require'jass.slk').ability[" .. I2S(GetSpellAbilityId()) .. "].TargetArt"))))))
            TriggerExecute(ydl_trigger)
            SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x3B60835B, StringLength(YDWEGetUnitAbilityDataString(GetTriggerUnit(), GetSpellAbilityId(), 1, 219)))
            SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x3B60835B, (LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x3B60835B) // 4))
            SaveInteger(YDHT, ((GetHandleId((LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))))), ((GetHandleId((gg_trg_sw_002)))), (GetSpellAbilityId()))
            if ((LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x3B60835B) ~= 0)) then
                ydul_a = 1
                while true do
                    if ydul_a > LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x3B60835B) then
                        break
                    end
                    SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xA1CFBB06 + (ydul_a), (YDWES2Id((SubStringBJ(YDWEGetUnitAbilityDataString(GetTriggerUnit(), GetSpellAbilityId(), 1, 219), (((ydul_a - 1) * 4) + 1), (((ydul_a - 1) * 4) + 4))))))
                    SaveStr(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x7C181E3A + (ydul_a), (EXExecuteScript("(require'jass.slk').unit[" .. I2S(LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xA1CFBB06 + (ydul_a))) .. "].Name")))
                    SaveStr(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x4107E7D0 + (ydul_a), I2S((LoadInteger(YDHT, ((GetHandleId((LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))))), (StringHash(LoadStr(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x7C181E3A + (ydul_a))))))))
                    SaveStr(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB9BE08E2 + (ydul_a), I2S(S2I(EXExecuteScript("(require'jass.slk').unit[" .. I2S(LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xA1CFBB06 + (ydul_a))) .. "].Farea2"))))
                    ydul_a = ydul_a + 1
                end
                ydul_a = 1
                while true do
                    if ydul_a > LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x3B60835B) then
                        break
                    end
                    SaveStr(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2D1FF186 + (ydul_a), ((LoadStr(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x7C181E3A + (ydul_a))) .. (":(") .. (((LoadStr(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x4107E7D0 + (ydul_a))) .. (("/" .. LoadStr(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB9BE08E2 + (ydul_a)))) .. (")")))))
                    ydul_a = ydul_a + 1
                end
                ydul_a = 1
                while true do
                    if ydul_a > LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x3B60835B) then
                        break
                    end
                    SaveStr(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x342E7AF5, (LoadStr(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x342E7AF5) .. (LoadStr(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2D1FF186 + (ydul_a)) .. "|n")))
                    ydul_a = ydul_a + 1
                end
                if ((LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946) == GetLocalPlayer())) then
                    DzFrameSetText(udg_UI_RWK[3], (("|cff00ff00") .. (LoadStr(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x342E7AF5)) .. ("|r")))
                else
                end
            else
            end
            ydl_trigger = gg_trg_UI_TEXT_002
            ydl_triggerstep = GetHandleId(ydl_trigger) * (LoadInteger(YDLOC, GetHandleId(ydl_trigger), 0xCFDE6C76) + 3)
            udg_UIzx[0] = YDWEGetUnitAbilityDataString(GetTriggerUnit(), GetSpellAbilityId(), 1, 218)
            SaveReal(YDLOC, ydl_triggerstep, 0x0050BBB8, 0.01)
            TriggerExecute(ydl_trigger)
        else
        end
        FlushChildHashtable(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step)
        ydl_trigger = nil
        ydl_timer = nil
        do
            return
        end
    else
    end
    if ((GetUnitTypeId(GetTriggerUnit()) == (0x6E303030))) then
        ydl_trigger = gg_trg_work
        ydl_triggerstep = GetHandleId(ydl_trigger) * (LoadInteger(YDLOC, GetHandleId(ydl_trigger), 0xCFDE6C76) + 3)
        SavePlayerHandle(YDLOC, ydl_triggerstep, 0x48656946, GetOwningPlayer(GetTriggerUnit()))
        SaveInteger(YDLOC, ydl_triggerstep, 0x5CC134B2, S2I(EXExecuteScript("(require'jass.slk').ability[" .. I2S(GetSpellAbilityId()) .. "].Requiresamount")))
        TriggerExecute(ydl_trigger)
        SaveUnitHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x911D5DC2, nil)
        FlushChildHashtable(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step)
        ydl_trigger = nil
        ydl_timer = nil
        do
            return
        end
    else
    end
    if (((GetUnitTypeId(GetTriggerUnit()) == (0x6E303048)) or (GetUnitTypeId(GetTriggerUnit()) == (0x6E303050)))) then
        if (((LoadBoolean(YDHT, ((GetHandleId((LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))))), ((GetHandleId((gg_trg_ui_3x1)))))) ~= true)) then
            if ((IsUnitGroupEmptyBJ(udg_rsm[GetConvertedPlayerId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))]) == true)) then
                SavePlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946, GetOwningPlayer(GetTriggerUnit()))
                SaveUnitHandle(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x927E13DD, GetTriggerUnit())
                if ((GetOwningPlayer(GetTriggerUnit()) == LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))) then
                    ydul_a = 1
                    while true do
                        if ydul_a > S2I(EXExecuteScript("(require'jass.slk').ability[" .. I2S(GetSpellAbilityId()) .. "].priority")) then
                            break
                        end
                        SaveUnitHandle(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x5F9850BF, CreateUnit(Player(7), (YDWES2Id((YDWEGetUnitAbilityDataString(GetTriggerUnit(), GetSpellAbilityId(), 1, 219)))), udg_LGFZB_x[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))], udg_LGFZB_y[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))], 0))
                        SaveUnitHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x384C9D86, LoadUnitHandle(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x5F9850BF))
                        SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x6C2DED4E, S2I(EXExecuteScript("(require'jass.slk').ability[" .. I2S(GetSpellAbilityId()) .. "].Missilespeed")))
                        JK_SX_Change(LoadUnitHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x384C9D86), ConvertUnitState(0x12), 1, (((S2R(EXExecuteScript("(require'jass.slk').unit[" .. I2S(LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x688DFB59)) .. "].dmgplus1")) * ((I2R(LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x6C2DED4E)) * 0.17) + 1.00))) * ((1.00 + (I2R(GetPlayerTechCountSimple(0x52303044, Player(5))) * 0.20))) * (1.00)))
                        JK_SX_Change(LoadUnitHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x384C9D86), UNIT_STATE_MAX_LIFE, 1, (((S2R(EXExecuteScript("(require'jass.slk').unit[" .. I2S(LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x688DFB59)) .. "].HP")) * ((I2R(LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x6C2DED4E)) * 0.17) + 1.00))) * ((1.00 + (I2R(GetPlayerTechCountSimple(0x52303044, Player(5))) * 0.20))) * (1.00)))
                        JK_SX_Change(LoadUnitHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x384C9D86), ConvertUnitState(0x51), 1, 20.00)
                        SetUnitLifePercentBJ(LoadUnitHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x384C9D86), 100)
                        SetUnitAcquireRange(LoadUnitHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x384C9D86), 3000.00)
                        DestroyEffect(AddSpecialEffectTarget("Objects\\Spawnmodels\\Undead\\UndeadDissipate\\UndeadDissipate.mdl", LoadUnitHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x384C9D86), "origin"))
                        DestroyEffect(AddSpecialEffect("E\\[e] (10).mdl", GetUnitX(LoadUnitHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x384C9D86)), GetUnitY(LoadUnitHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x384C9D86))))
                        GroupAddUnitSimple(LoadUnitHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x384C9D86), udg_rsm[GetConvertedPlayerId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))])
                        SaveInteger(YDHT, ((GetHandleId((LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))))), ((GetUnitTypeId(LoadUnitHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x384C9D86)))), (0))
                        SaveUnitHandle(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x5F9850BF, nil)
                        SaveUnitHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x384C9D86, nil)
                        ydul_a = ydul_a + 1
                    end
                    SaveInteger(YDHT, GetHandleId(GetOwningPlayer(GetTriggerUnit())), 0x6B3D695C, GetSpellAbilityId())
                else
                end
            else
                DisplayTextToPlayer(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946), 0, 0, "提升：你有正在进行的挑战。")
            end
        else
        end
    else
    end
    if ((GetUnitTypeId(GetTriggerUnit()) == (0x6E303034))) then
        if ((GetOwningPlayer(GetTriggerUnit()) == LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))) then
            if (((GetSpellAbilityId() == (0x73303563)) or (GetSpellAbilityId() == (0x73303663)))) then
                if ((GetSpellAbilityId() == (0x73303663))) then
                    UnitRemoveAbilityBJ((0x73303663), GetTriggerUnit())
                    SaveBoolean(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x75442303, true)
                else
                    if ((LoadInteger(YDHT, GetHandleId(GetOwningPlayer(GetTriggerUnit())), 0xF5B58222) >= (LoadInteger(YDHT, GetHandleId(GetOwningPlayer(GetTriggerUnit())), 0x680D1141) * 100))) then
                        SaveBoolean(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x75442303, true)
                        SaveInteger(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0xF5B58222, (LoadInteger(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0xF5B58222) - (LoadInteger(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x680D1141) * 100)))
                        SaveInteger(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x76A4D6D9, (LoadInteger(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x76A4D6D9) + 1))
                        if ((LoadInteger(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x76A4D6D9) == (10 * (LoadInteger(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x680D1141) + 1)))) then
                            SaveInteger(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x76A4D6D9, 0)
                            SavePlayerHandle(YDHT, GetHandleId(Player(PLAYER_NEUTRAL_AGGRESSIVE)), 0x119572DE, LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))
                            SaveInteger(YDHT, GetHandleId(Player(PLAYER_NEUTRAL_AGGRESSIVE)), 0x171487D7, (YDWES2Id(((("g0") .. (I2S(LoadInteger(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x680D1141))) .. ("j"))))))
                            SaveReal(YDHT, GetHandleId(Player(PLAYER_NEUTRAL_AGGRESSIVE)), 0xE8319FBA, -1.00)
                            TriggerExecute(gg_trg_qjyd)
                            SaveInteger(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x680D1141, (LoadInteger(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x680D1141) + 1))
                            SavePlayerHandle(YDHT, GetHandleId(Player(PLAYER_NEUTRAL_AGGRESSIVE)), 0x119572DE, LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))
                            if ((LoadInteger(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x680D1141) > 9)) then
                                SaveInteger(YDHT, GetHandleId(Player(PLAYER_NEUTRAL_AGGRESSIVE)), 0x171487D7, (YDWES2Id(((("g") .. (I2S(LoadInteger(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x680D1141))) .. ("j"))))))
                            else
                                SaveInteger(YDHT, GetHandleId(Player(PLAYER_NEUTRAL_AGGRESSIVE)), 0x171487D7, (YDWES2Id(((("g0") .. (I2S(LoadInteger(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x680D1141))) .. ("j"))))))
                            end
                            TriggerExecute(gg_trg_qjyd)
                            if ((GetOwningPlayer(GetTriggerUnit()) == GetLocalPlayer())) then
                                DzFrameSetText(udg_ui_BYDJ[8], ("Lv " .. I2S(LoadInteger(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x680D1141))))
                            else
                            end
                        else
                        end
                    else
                        DisplayTextToPlayer(GetOwningPlayer(GetTriggerUnit()), 0, 0, ("[系统]：" .. YDWEGetPlayerColorString(Player(0), "门派声望不足。")))
                    end
                end
                if ((LoadBoolean(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x75442303) == true)) then
                    UnitAddAbilityBJ((0x73303063), GetTriggerUnit())
                    UnitAddAbilityBJ((0x73303163), GetTriggerUnit())
                    UnitAddAbilityBJ((0x73303263), GetTriggerUnit())
                    UnitAddAbilityBJ((0x73303363), GetTriggerUnit())
                    ydul_a = 1
                    while true do
                        if ydul_a > 4 then
                            break
                        end
                        SaveUnitHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xE0F25AD6, PlaceRandomUnit(udg_mk_dwc[LoadInteger(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0xDFAD8755)], LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946), 0, 0, 0))
                        SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xA1CFBB06 + (ydul_a), GetUnitTypeId(LoadUnitHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xE0F25AD6)))
                        UnitPoolRemoveUnitType(udg_mk_dwc[LoadInteger(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0xDFAD8755)], LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xA1CFBB06 + (ydul_a)))
                        KillUnit(LoadUnitHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xE0F25AD6))
                        RemoveUnit(LoadUnitHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xE0F25AD6))
                        ydul_a = ydul_a + 1
                    end
                    ydul_c = 1
                    while true do
                        if ydul_c > 4 then
                            break
                        end
                        UnitPoolAddUnitType(udg_mk_dwc[LoadInteger(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0xDFAD8755)], LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xA1CFBB06 + (ydul_c)), S2R(EXExecuteScript("(require'jass.slk').unit[" .. I2S(LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xA1CFBB06 + (ydul_c))) .. "].regenMana")))
                        SaveInteger(YDHT, ((GetHandleId((LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))))), (StringHash(("门客" .. I2S(ydul_c)))), (LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xA1CFBB06 + (ydul_c))))
                        ydul_c = ydul_c + 1
                    end
                    ydl_timer = CreateTimer()
                    SaveInteger(YDLOC, GetHandleId(ydl_timer), 0xFBEDEC54, 21)
                    SaveInteger(YDLOC, GetHandleId(ydl_timer), 0xBC8AB2C8, 0)
                    SavePlayerHandle(YDLOC, GetHandleId(ydl_timer), 0x48656946, LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))
                    SaveInteger(YDLOC, GetHandleId(ydl_timer), 0xF374F3BD, GetSpellAbilityId())
                    ydul_c = 1
                    while true do
                        if ydul_c > 4 then
                            break
                        end
                        SaveInteger(YDLOC, GetHandleId(ydl_timer), 0xA1CFBB06 + (ydul_c), LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xA1CFBB06 + (ydul_c)))
                        ydul_c = ydul_c + 1
                    end
                    SaveBoolean(YDLOC, GetHandleId(ydl_timer), 0xACF9C25E, LoadBoolean(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xACF9C25E))
                    SaveInteger(YDLOC, GetHandleId(ydl_timer), 0xA1CFBB06, LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xA1CFBB06))
                    SaveInteger(YDLOC, GetHandleId(ydl_timer), 0xE16A79E4, LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xE16A79E4))
                    SaveInteger(YDLOC, GetHandleId(ydl_timer), 0xCB30278B, LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xCB30278B))
                    SaveStr(YDLOC, GetHandleId(ydl_timer), 0x84885547, LoadStr(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x84885547))
                    SaveInteger(YDLOC, GetHandleId(ydl_timer), 0x3BA83444, LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x3BA83444))
                    SaveInteger(YDLOC, GetHandleId(ydl_timer), 0x8E352A38, LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x8E352A38))
                    SaveStr(YDLOC, GetHandleId(ydl_timer), 0x12BBBFB9, LoadStr(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x12BBBFB9))
                    SaveStr(YDLOC, GetHandleId(ydl_timer), 0x2D1FF186, LoadStr(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2D1FF186))
                    SaveStr(YDLOC, GetHandleId(ydl_timer), 0xA9433B13, LoadStr(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xA9433B13))
                    SaveInteger(YDLOC, GetHandleId(ydl_timer), 0x8186EBB8, LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x8186EBB8))
                    TimerStart(ydl_timer, 0.01, true, Trig_A4_jnsfFunc009Func001Func002Func002Func003Func006Func003Func001T)
                    ydl_timer = CreateTimer()
                    SavePlayerHandle(YDLOC, GetHandleId(ydl_timer), 0x48656946, LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))
                    TimerStart(ydl_timer, 2.00, false, Trig_A4_jnsfFunc009Func001Func002Func002Func003Func006Func004T)
                    if ((GetRandomReal(0, 1) <= 0.10)) then
                        UnitAddAbilityBJ((0x73303663), GetTriggerUnit())
                    else
                    end
                else
                end
            else
            end
            if (((GetSpellAbilityId() == (0x73303163)) or (GetSpellAbilityId() == (0x73303263)) or (GetSpellAbilityId() == (0x73303363)) or (GetSpellAbilityId() == (0x73303063)))) then
                SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xA1CFBB06, (LoadInteger(YDHT, ((GetHandleId((LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))))), (StringHash(("门客" .. I2S(S2I(EXExecuteScript("(require'jass.slk').ability[" .. I2S(GetSpellAbilityId()) .. "].Requiresamount")))))))))
                if ((LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xA1CFBB06) ~= 0)) then
                    SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x1A9B1FFB, (1 * S2I(EXExecuteScript("(require'jass.slk').unit[" .. I2S(LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xA1CFBB06)) .. "].cargoSize"))))
                    if ((LoadInteger(YDHT, GetHandleId(GetOwningPlayer(GetTriggerUnit())), 0xF5B58222) >= LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x1A9B1FFB))) then
                        if (((LoadBoolean(YDHT, StringHash((GetPlayerName(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)))), StringHash(((EXExecuteScript("(require'jass.slk').unit[" .. I2S(LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xA1CFBB06)) .. "].Name")))))) ~= true)) then
                            if ((LoadInteger(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x2D686226) < 18)) then
                                SaveInteger(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0xF5B58222, (LoadInteger(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0xF5B58222) - LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x1A9B1FFB)))
                                ydul_a = 22
                                while true do
                                    if ydul_a > 41 then
                                        break
                                    end
                                    if (((LoadInteger(YDHT, ((GetHandleId((LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))))), (((udg_UI_HQTB[ydul_a]))))) == 0)) then
                                        SaveInteger(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x2D686226, (LoadInteger(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x2D686226) + 1))
                                        SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xC30BA26B, ydul_a)
                                        SaveInteger(YDHT, ((GetHandleId((LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))))), (((udg_UI_HQTB[ydul_a]))), (LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xA1CFBB06)))
                                        DisplayTextToPlayer(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946), 0, 0, "门客已加入你的宗门。")
                                        SetPlayerTechResearchedSwap(0x5268666C, 1, LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))
                                        SaveInteger(YDHT, ((GetHandleId((LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))))), (StringHash((((EXExecuteScript("(require'jass.slk').unit[" .. I2S(LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xA1CFBB06)) .. "].Name"))) .. ("PY") .. ("")))), ((LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xC30BA26B) + 20)))
                                        SaveBoolean(YDHT, StringHash((GetPlayerName(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)))), StringHash(((EXExecuteScript("(require'jass.slk').unit[" .. I2S(LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xA1CFBB06)) .. "].Name")))), (true))
                                        if ((LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946) == GetLocalPlayer())) then
                                            DzFrameShow(udg_UI_HQTB[(LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xC30BA26B) - 20)], true)
                                            DzFrameShow(udg_UI_HQTB[(LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xC30BA26B) - 0)], true)
                                            DzFrameSetTexture(udg_UI_HQTB[(LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xC30BA26B) - 20)], (EXExecuteScript("(require'jass.slk').unit[" .. I2S(LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xA1CFBB06)) .. "].Art")), 0)
                                        else
                                        end
                                        ydl_trigger = gg_trg_UI_tips
                                        ydl_triggerstep = GetHandleId(ydl_trigger) * (LoadInteger(YDLOC, GetHandleId(ydl_trigger), 0xCFDE6C76) + 3)
                                        SavePlayerHandle(YDLOC, ydl_triggerstep, 0x48656946, LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))
                                        SaveInteger(YDLOC, ydl_triggerstep, 0x9CD60476, udg_UI_HQTB[ydul_a])
                                        TriggerExecute(ydl_trigger)
                                        SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xAFB37675, S2I(EXExecuteScript("(require'jass.slk').unit[" .. I2S(LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xA1CFBB06)) .. "].fmade")))
                                        SaveInteger(YDHT, ((GetHandleId((LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))))), (StringHash(("rsmPD" .. I2S(LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xAFB37675))))), (((LoadInteger(YDHT, ((GetHandleId((LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))))), (StringHash(("rsmPD" .. I2S(LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xAFB37675))))))) + 1)))
                                        if ((5 <= (LoadInteger(YDHT, ((GetHandleId((LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))))), (StringHash(("rsmPD" .. I2S(LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xAFB37675))))))))) then
                                            SaveUnitHandle(YDHT, ((GetHandleId((LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))))), (StringHash("rsmdw")), (CreateUnit(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946), (YDWES2Id(((EXExecuteScript("(require'jass.slk').ability[" .. I2S(udg_szjn[GetFoodMade(LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xA1CFBB06))]) .. "].Requires"))))), 0, 0, 0)))
                                        else
                                        end
                                        DoNothing()
                                        if true then
                                            break
                                        end
                                    else
                                    end
                                    ydul_a = ydul_a + 1
                                end
                                SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x8E352A38, (YDWES2Id(((EXExecuteScript("(require'jass.slk').unit[" .. I2S(LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xA1CFBB06)) .. "].Tip"))))))
                                SaveStr(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2D1FF186, (EXExecuteScript("(require'jass.slk').item[" .. I2S(LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x8E352A38)) .. "].Description")))
                                SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x3BA83444, StringLength(LoadStr(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2D1FF186)))
                                ydul_a = 2
                                while true do
                                    if ydul_a > 3 then
                                        break
                                    end
                                    if ((LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x3BA83444) == (ydul_a * 4))) then
                                        SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x8186EBB8, ydul_a)
                                        DoNothing()
                                        if true then
                                            break
                                        end
                                    else
                                    end
                                    ydul_a = ydul_a + 1
                                end
                                SaveStr(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xA9433B13, (("|n|n") .. ((("|cffff0000[") .. ((EXExecuteScript("(require'jass.slk').item[" .. I2S(LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x8E352A38)) .. "].Name"))) .. ("]|r"))) .. ("|n")))
                                ydul_a = 0
                                while true do
                                    if ydul_a > (LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x8186EBB8) - 1) then
                                        break
                                    end
                                    SaveStr(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x84885547, SubStringBJ(LoadStr(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2D1FF186), ((ydul_a * 4) + 1), ((ydul_a * 4) + 4)))
                                    SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xCB30278B + (ydul_a), (YDWES2Id((LoadStr(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x84885547)))))
                                    if (((LoadBoolean(YDHT, StringHash((GetPlayerName(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)))), StringHash(((EXExecuteScript("(require'jass.slk').unit[" .. I2S(LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xCB30278B + (ydul_a))) .. "].Name")))))) == true)) then
                                        SaveStr(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x12BBBFB9 + (ydul_a), YDWEGetPlayerColorString(Player(2), (EXExecuteScript("(require'jass.slk').unit[" .. I2S(LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xCB30278B + (ydul_a))) .. "].Name"))))
                                    else
                                        SaveBoolean(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xF468F6B9, true)
                                        SaveStr(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x12BBBFB9 + (ydul_a), YDWEGetPlayerColorString(Player(10), (EXExecuteScript("(require'jass.slk').unit[" .. I2S(LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xCB30278B + (ydul_a))) .. "].Name"))))
                                    end
                                    SaveStr(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xA9433B13, ((LoadStr(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xA9433B13)) .. (LoadStr(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x12BBBFB9 + (ydul_a))) .. ("|n")))
                                    ydul_a = ydul_a + 1
                                end
                                if ((LoadBoolean(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xF468F6B9) ~= true)) then
                                    if (((LoadBoolean(YDHT, ((GetHandleId((LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))))), ((LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x8E352A38))))) ~= true)) then
                                        SaveStr(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xA9433B13, ((LoadStr(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xA9433B13)) .. (YDWEGetPlayerColorString(Player(2), (EXExecuteScript("(require'jass.slk').item[" .. I2S(LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x8E352A38)) .. "].Ubertip")))) .. ("|n")))
                                        SaveBoolean(YDHT, ((GetHandleId((LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))))), ((LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x8E352A38))), (true))
                                        SavePlayerHandle(YDHT, GetHandleId(Player(PLAYER_NEUTRAL_AGGRESSIVE)), 0x119572DE, LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))
                                        SaveInteger(YDHT, GetHandleId(Player(PLAYER_NEUTRAL_AGGRESSIVE)), 0x171487D7, LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x8E352A38))
                                        TriggerExecute(gg_trg_qjyd)
                                    else
                                    end
                                else
                                    SaveStr(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xA9433B13, ((LoadStr(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xA9433B13)) .. (YDWEGetPlayerColorString(Player(10), (EXExecuteScript("(require'jass.slk').item[" .. I2S(LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x8E352A38)) .. "].Ubertip")))) .. ("|n")))
                                end
                                ydul_a = 0
                                while true do
                                    if ydul_a > (LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x8186EBB8) - 1) then
                                        break
                                    end
                                    SaveStr((jn), (LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xCB30278B + (ydul_a))), 6, (("") .. (LoadStr(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xA9433B13)) .. ("")))
                                    ydul_a = ydul_a + 1
                                end
                                ydul_c = 1
                                while true do
                                    if ydul_c > 4 then
                                        break
                                    end
                                    SaveInteger(YDHT, ((GetHandleId((LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))))), (StringHash(("门客" .. I2S(ydul_c)))), (0))
                                    ydul_c = ydul_c + 1
                                end
                                SaveStr((wp), (LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xA1CFBB06)), 0, (("|cff00ffff[升星后]可以提升门客属性加成：|r") .. ("|n") .. ("")))
                            else
                                DisplayTextToPlayer(GetOwningPlayer(GetTriggerUnit()), 0, 0, ("[系统]：" .. YDWEGetPlayerColorString(Player(0), "门人已满。")))
                                FlushChildHashtable(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step)
                                ydl_trigger = nil
                                ydl_timer = nil
                                do
                                    return
                                end
                            end
                        else
                            if (((LoadInteger(YDHT, ((GetHandleId((LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))))), (StringHash(((EXExecuteScript("(require'jass.slk').unit[" .. I2S(LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xA1CFBB06)) .. "].Name")) .. "JY"))))) < 6)) then
                                SaveInteger(YDHT, ((GetHandleId((LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))))), (StringHash((((EXExecuteScript("(require'jass.slk').unit[" .. I2S(LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xA1CFBB06)) .. "].Name"))) .. ("JY") .. ("")))), (((LoadInteger(YDHT, ((GetHandleId((LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))))), (StringHash(((EXExecuteScript("(require'jass.slk').unit[" .. I2S(LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xA1CFBB06)) .. "].Name")) .. "JY"))))) + 1)))
                                DisplayTextToPlayer(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946), 0, 0, YDWEGetPlayerColorString(Player(2), ((EXExecuteScript("(require'jass.slk').unit[" .. I2S(LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xA1CFBB06)) .. "].Name")) .. "升星成功。")))
                                ydl_trigger = gg_trg_qjyd_sj
                                ydl_triggerstep = GetHandleId(ydl_trigger) * (LoadInteger(YDLOC, GetHandleId(ydl_trigger), 0xCFDE6C76) + 3)
                                SavePlayerHandle(YDLOC, ydl_triggerstep, 0x48656946, LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))
                                SaveInteger(YDLOC, ydl_triggerstep, 0xB2B2BF95, (LoadInteger(YDHT, ((GetHandleId((LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))))), (StringHash(((EXExecuteScript("(require'jass.slk').unit[" .. I2S(LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xA1CFBB06)) .. "].Name")) .. "JY"))))))
                                SaveInteger(YDLOC, ydl_triggerstep, 0xA1CFBB06, LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xA1CFBB06))
                                TriggerExecute(ydl_trigger)
                            else
                                DisplayTextToPlayer(GetOwningPlayer(GetTriggerUnit()), 0, 0, ("[系统]：" .. YDWEGetPlayerColorString(Player(0), "已满级门客无法升级，转化为50门派声望。")))
                                SaveInteger(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0xF5B58222, (LoadInteger(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0xF5B58222) + LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x1A9B1FFB)))
                            end
                            if ((LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946) == GetLocalPlayer())) then
                                DzFrameShow(udg_UI_HQTB[((LoadInteger(YDHT, ((GetHandleId((LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))))), (StringHash(((EXExecuteScript("(require'jass.slk').unit[" .. I2S(LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xA1CFBB06)) .. "].Name")) .. "PY"))))) + 0)], true)
                                DzFrameSetTexture(udg_UI_HQTB[(LoadInteger(YDHT, ((GetHandleId((LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))))), (StringHash(((EXExecuteScript("(require'jass.slk').unit[" .. I2S(LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xA1CFBB06)) .. "].Name")) .. "PY")))))], (("war3mapImported\\[BTN]sxxt (") .. (I2S((LoadInteger(YDHT, ((GetHandleId((LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))))), (StringHash(((EXExecuteScript("(require'jass.slk').unit[" .. I2S(LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xA1CFBB06)) .. "].Name")) .. "JY"))))))) .. (").blp")), 0)
                            else
                            end
                            ydul_a = 1
                            while true do
                                if ydul_a > 4 then
                                    break
                                end
                                SaveInteger(YDHT, ((GetHandleId((LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))))), (StringHash(("门客" .. I2S(ydul_a)))), (0))
                                ydul_a = ydul_a + 1
                            end
                        end
                        UnitRemoveAbilityBJ((0x73303063), GetTriggerUnit())
                        UnitRemoveAbilityBJ((0x73303163), GetTriggerUnit())
                        UnitRemoveAbilityBJ((0x73303263), GetTriggerUnit())
                        UnitRemoveAbilityBJ((0x73303363), GetTriggerUnit())
                        if ((LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946) == GetLocalPlayer())) then
                            ydul_a = 1
                            while true do
                                if ydul_a > 4 then
                                    break
                                end
                                DzFrameSetTexture(udg_UI_shuaxin[ydul_a], "war3mapImported\\Alpha.blp", 0)
                                DzFrameShow(udg_UI_shuaxin[(ydul_a + 12)], false)
                                ydul_a = ydul_a + 1
                            end
                        else
                        end
                        SelectUnitForPlayerSingle(gg_unit_O001_0009, LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))
                        SelectUnitForPlayerSingle((LoadUnitHandle(YDHT, ((GetHandleId((LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))))), (StringHash("05NPC")))), LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))
                    else
                        DisplayTextToPlayer(GetOwningPlayer(GetTriggerUnit()), 0, 0, ("[系统]：" .. YDWEGetPlayerColorString(Player(0), "门派威望不足。")))
                    end
                else
                end
            else
            end
            if (((GetSpellAbilityId() == (0x73303963)) or (GetSpellAbilityId() == (0x73313063)) or (GetSpellAbilityId() == (0x73313163)))) then
                KillUnit(LoadUnitHandle(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x9D4D1A01))
                RemoveUnit(LoadUnitHandle(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x9D4D1A01))
                SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x6C2DED4E, ((LoadInteger(YDHT, ((GetHandleId((LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))))), ((GetSpellAbilityId())))) + 1))
                SaveUnitHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x384C9D86, CreateUnit(Player(7), (YDWES2Id((LoadStr((jn), (GetSpellAbilityId()), 4)))), udg_LGFZB_x[GetConvertedPlayerId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))], (udg_LGFZB_y[GetConvertedPlayerId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))] + 700.00), 270.00))
                YDWEJumpTimer(LoadUnitHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x384C9D86), GetUnitFacing(LoadUnitHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x384C9D86)), GetRandomReal(800.00, 950.00), 0.50, 0.01, 300.00)
                SetUnitVertexColor(LoadUnitHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x384C9D86), 200, 255, 0, 255)
                SetUnitScale(LoadUnitHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x384C9D86), 1.30, 1.30, 1.30)
                SetUnitState(LoadUnitHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x384C9D86), ConvertUnitState(0x12), ((10000.00 * I2R((LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x6C2DED4E) * (LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x6C2DED4E) * 1)))) * 0.88))
                SetUnitState(LoadUnitHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x384C9D86), UNIT_STATE_MAX_LIFE, ((30000.00 * I2R((LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x6C2DED4E) * (LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x6C2DED4E) * LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x6C2DED4E))))) * 0.88))
                SetUnitState(LoadUnitHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x384C9D86), ConvertUnitState(0x20), ((10.00 * I2R((LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x6C2DED4E) + LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x6C2DED4E)))) * 10.00))
                SetUnitState(LoadUnitHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x384C9D86), ConvertUnitState(0x51), 200.00)
                SetUnitLifePercentBJ(LoadUnitHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x384C9D86), 100)
                UnitApplyTimedLifeBJ(14.00, 0x42487765, LoadUnitHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x384C9D86))
                SaveUnitHandle(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x9D4D1A01, LoadUnitHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x384C9D86))
                SaveEffectHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x62C50DE6, AddSpecialEffectTarget("war3mapImported\\[xt]boss_djs_15.mdx", LoadUnitHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x384C9D86), "chest"))
                YDWETimerDestroyEffect(15.00, LoadEffectHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x62C50DE6))
                ydl_trigger = CreateTrigger()
                SaveInteger(YDLOC, GetHandleId(ydl_trigger), 0x6F96F2D2, LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x6F96F2D2))
                SaveInteger(YDLOC, GetHandleId(ydl_trigger), 0xF374F3BD, GetSpellAbilityId())
                SavePlayerHandle(YDLOC, GetHandleId(ydl_trigger), 0x48656946, LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))
                SaveReal(YDLOC, GetHandleId(ydl_trigger), 0x2D1E4992, LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2D1E4992))
                SaveInteger(YDLOC, GetHandleId(ydl_trigger), 0xB2B2BF95, LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB2B2BF95))
                SaveInteger(YDLOC, GetHandleId(ydl_trigger), 0x6D77F75F, LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x6D77F75F))
                SaveStr(YDLOC, GetHandleId(ydl_trigger), 0x329FF8E6, LoadStr(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x329FF8E6))
                SaveStr(YDLOC, GetHandleId(ydl_trigger), 0x50E50212, LoadStr(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x50E50212))
                SaveStr(YDLOC, GetHandleId(ydl_trigger), 0x2D1FF186, LoadStr(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2D1FF186))
                SaveStr(YDLOC, GetHandleId(ydl_trigger), 0xA9433B13, LoadStr(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xA9433B13))
                SaveStr(YDLOC, GetHandleId(ydl_trigger), 0xB92B1A4D, LoadStr(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB92B1A4D))
                TriggerRegisterTimerEventSingle(ydl_trigger, 15.00)
                TriggerRegisterUnitEvent(ydl_trigger, LoadUnitHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x384C9D86), EVENT_UNIT_DEATH)
                TriggerAddCondition(ydl_trigger, Condition(Trig_A4_jnsfFunc009Func001Func002Func004Func018Conditions))
            else
            end
            if (((GetSpellAbilityId() == (0x73303763)) or (GetSpellAbilityId() == (0x73303863)))) then
                if ((GetSpellAbilityId() == (0x73303763))) then
                    if ((LoadInteger(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x2D686226) > 0)) then
                        ydl_timer = CreateTimer()
                        SaveEffectHandle(YDLOC, GetHandleId(ydl_timer), 0x62C50DE6, AddSpecialEffectTarget("war3mapImported\\[xt]boss_djs_180.mdl", GetTriggerUnit(), "chest"))
                        TimerStart(ydl_timer, 180.00, false, Trig_A4_jnsfFunc009Func001Func002Func005Func001Func002Func002Func002T)
                    else
                        DisplayTextToPlayer(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946), 0, 0, "请先招募一名门客。\r\n")
                    end
                else
                end
            else
            end
        else
        end
    else
    end
    if ((GetSpellAbilityId() == (0x544A545A))) then
        SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x6C2DED4E, LoadInteger(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x25C8C6CA))
        if (((LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x6C2DED4E) * 7) > 9)) then
            SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xA1CFBB06, (YDWES2Id((("f0" .. I2S((LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x6C2DED4E) * 7)))))))
        else
            SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xA1CFBB06, (YDWES2Id(("f007"))))
        end
        RemoveUnit(LoadUnitHandle(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x9D4D1A01))
        SaveUnitHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x384C9D86, CreateUnit(Player(7), (0x4C48584D), udg_LGFZB_x[GetConvertedPlayerId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))], (udg_LGFZB_y[GetConvertedPlayerId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))] + 700.00), (GetRandomReal(240.00, 300.00))))
        YDWEJumpTimer(LoadUnitHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x384C9D86), GetUnitFacing(LoadUnitHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x384C9D86)), GetRandomReal(800.00, 950.00), 0.50, 0.01, 300.00)
        DzSetUnitModel(LoadUnitHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x384C9D86), (EXExecuteScript("(require'jass.slk').unit[" .. I2S(GetUnitTypeId(udg_WJYX[GetConvertedPlayerId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))])) .. "].file")))
        SetUnitVertexColor(LoadUnitHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x384C9D86), 200, 255, 0, 255)
        SetUnitScale(LoadUnitHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x384C9D86), 1.30, 1.30, 1.30)
        SetUnitState(LoadUnitHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x384C9D86), ConvertUnitState(0x12), (S2R(EXExecuteScript("(require'jass.slk').unit[" .. I2S(LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xA1CFBB06)) .. "].dmgplus1")) * 0.88))
        SetUnitState(LoadUnitHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x384C9D86), UNIT_STATE_MAX_LIFE, (S2R(EXExecuteScript("(require'jass.slk').unit[" .. I2S(LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xA1CFBB06)) .. "].HP")) * 0.88))
        SetUnitState(LoadUnitHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x384C9D86), ConvertUnitState(0x20), (S2R(EXExecuteScript("(require'jass.slk').unit[" .. I2S(LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xA1CFBB06)) .. "].def")) * 0.88))
        SetUnitState(LoadUnitHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x384C9D86), ConvertUnitState(0x51), 200.00)
        SetUnitUserData(LoadUnitHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x384C9D86), LoadInteger(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x25C8C6CA))
        SetUnitLifePercentBJ(LoadUnitHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x384C9D86), 100)
        UnitApplyTimedLifeBJ(14.00, 0x42487765, LoadUnitHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x384C9D86))
        SaveUnitHandle(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x9D4D1A01, LoadUnitHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x384C9D86))
        SaveEffectHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x62C50DE6, AddSpecialEffectTarget("war3mapImported\\[xt]boss_djs_15.mdx", LoadUnitHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x384C9D86), "origin"))
        YDWETimerDestroyEffect(15.00, LoadEffectHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x62C50DE6))
    else
    end
    if ((GetSpellAbilityId() == (0x42424A32))) then
        SaveLocationHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x9CD60476, GetSpellTargetLoc())
        ydul_a = 50
        while true do
            if ydul_a > 58 then
                break
            end
            SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x1CA97F39, ydul_a)
            SaveRectHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x007BA3BC, YDWEGetRect(GetLocationX(LoadLocationHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x9CD60476)), GetLocationY(LoadLocationHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x9CD60476)), 1000.00, 1000.00))
            EnumItemsInRectBJ(LoadRectHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x007BA3BC), Trig_A4_jnsfFunc011Func001Func001Func003Func003A)
            RemoveRect(LoadRectHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x007BA3BC))
            SaveRectHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x007BA3BC, nil)
            ydul_a = ydul_a + 1
        end
        RemoveLocation(LoadLocationHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x9CD60476))
        FlushChildHashtable(YDHT, ((GetHandleId((GetTriggeringTrigger())))))
        FlushChildHashtable(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step)
        ydl_trigger = nil
        ydl_timer = nil
        do
            return
        end
    else
    end
    if ((GetSpellAbilityId() == (0x42424A37))) then
        if (((GetItemLevel(GetSpellTargetItem()) >= 51) and (GetItemLevel(GetSpellTargetItem()) <= 61))) then
            if ((GetPlayerState(GetOwningPlayer(GetTriggerUnit()), PLAYER_STATE_RESOURCE_LUMBER) >= 100)) then
                SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB2B2BF95, GetItemLevel(GetSpellTargetItem()))
                RemoveItem(GetSpellTargetItem())
                AdjustPlayerStateBJ(-100, LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946), PLAYER_STATE_RESOURCE_LUMBER)
                UnitAddItemByIdSwapped(ChooseRandomItemExBJ(LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB2B2BF95), ITEM_TYPE_ANY), GetTriggerUnit())
                DisplayTextToPlayer(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946), 0, 0, "置换成功")
                DestroyEffect(AddSpecialEffectTarget("Abilities\\Spells\\Orc\\Bloodlust\\BloodlustTarget.mdl", GetTriggerUnit(), "overhead"))
            else
                DisplayTextToPlayer(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946), 0, 0, "木材不足！")
            end
        else
            DisplayTextToPlayer(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946), 0, 0, "只能置换普通装备")
        end
    else
    end
    if ((GetSpellAbilityId() == (0x42424A31))) then
        UnitAddItemSwapped(GetSpellTargetItem(), LoadUnitHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x911D5DC2))
    else
    end
    if ((GetSpellAbilityId() == (0x42424A38))) then
        EnumItemsInRectBJ(udg_ZDQY[GetConvertedPlayerId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))], Trig_A4_jnsfFunc011Func004Func001Func002A)
    else
    end
    if ((GetSpellAbilityId() == (0x42424A33))) then
        SaveLocationHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x9CD60476, GetUnitLoc(GetTriggerUnit()))
        SaveRectHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x007BA3BC, RectFromCenterSizeBJ(LoadLocationHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x9CD60476), 750.00, 750.00))
        EnumItemsInRectBJ(LoadRectHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x007BA3BC), Trig_A4_jnsfFunc011Func005Func001Func004A)
        RemoveRect(LoadRectHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x007BA3BC))
        RemoveLocation(LoadLocationHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x9CD60476))
        FlushChildHashtable(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step)
        ydl_trigger = nil
        ydl_timer = nil
        do
            return
        end
    else
    end
    if ((GetSpellAbilityId() == (0x42424A34))) then
        ydul_a = 1
        while true do
            if ydul_a > 6 then
                break
            end
            UnitRemoveItemFromSlotSwapped(ydul_a, GetTriggerUnit())
            ydul_a = ydul_a + 1
        end
    else
    end
    if ((GetSpellAbilityId() == (0x42424A35))) then
        EXSetEffectSpeed(LoadEffectHandle(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0xA0F1E52B), 1000.00)
        EXSetEffectSpeed(LoadEffectHandle(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0xEF9B184A), 1000.00)
        EXSetEffectSpeed(LoadEffectHandle(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x3816AD99), 1000.00)
        EXSetEffectSpeed(LoadEffectHandle(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x983E69B9), 1000.00)
        DestroyEffect(LoadEffectHandle(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0xA0F1E52B))
        DestroyEffect(LoadEffectHandle(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0xEF9B184A))
        DestroyEffect(LoadEffectHandle(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x3816AD99))
        DestroyEffect(LoadEffectHandle(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x983E69B9))
        EXSetEffectSpeed(LoadEffectHandle(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0xA0F1E52B), 1.00)
        EXSetEffectSpeed(LoadEffectHandle(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0xEF9B184A), 1.00)
        EXSetEffectSpeed(LoadEffectHandle(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x3816AD99), 1.00)
        EXSetEffectSpeed(LoadEffectHandle(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x983E69B9), 1.00)
    else
    end
    if ((GetUnitTypeId(GetTriggerUnit()) == (0x6E303054))) then
        if ((GetPlayerState(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946), PLAYER_STATE_RESOURCE_LUMBER) >= S2I(EXExecuteScript("(require'jass.slk').ability[" .. I2S(GetLearnedSkill()) .. "].Missilespeed")))) then
            SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x6C2DED4E, LoadInteger(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0xD43491ED))
            if (((LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x6C2DED4E) * 8) > 9)) then
                SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xA1CFBB06, (YDWES2Id((("f0" .. I2S((LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x6C2DED4E) * 7)))))))
            else
                SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xA1CFBB06, (YDWES2Id(("f008"))))
            end
            KillUnit(LoadUnitHandle(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0xF5A1B55B))
            RemoveUnit(LoadUnitHandle(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0xF5A1B55B))
            JK_UnitTranslationB(udg_WJYX[GetConvertedPlayerId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))], LoadReal(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x6006FF54), LoadReal(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0xBEEC641E), bj_lastCreatedEffect, 0.00, "", true)
            SaveUnitHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x384C9D86, CreateUnit(Player(7), (0x5A53534A), LoadReal(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x6006FF54), (LoadReal(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0xBEEC641E) + 0.00), 0.00))
            SetUnitScale(LoadUnitHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x384C9D86), 1.30, 1.30, 1.30)
            SetUnitState(LoadUnitHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x384C9D86), ConvertUnitState(0x12), (S2R(EXExecuteScript("(require'jass.slk').unit[" .. I2S(LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xA1CFBB06)) .. "].dmgplus1")) * 0.88))
            SetUnitState(LoadUnitHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x384C9D86), UNIT_STATE_MAX_LIFE, (S2R(EXExecuteScript("(require'jass.slk').unit[" .. I2S(LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xA1CFBB06)) .. "].HP")) * 0.88))
            SetUnitState(LoadUnitHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x384C9D86), ConvertUnitState(0x20), (S2R(EXExecuteScript("(require'jass.slk').unit[" .. I2S(LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xA1CFBB06)) .. "].def")) * 0.88))
            SetUnitState(LoadUnitHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x384C9D86), ConvertUnitState(0x51), 200.00)
            SetUnitLifePercentBJ(LoadUnitHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x384C9D86), 100)
            UnitApplyTimedLifeBJ(15.02, 0x42487765, LoadUnitHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x384C9D86))
            SaveUnitHandle(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0xF5A1B55B, LoadUnitHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x384C9D86))
            SaveEffectHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x62C50DE6, AddSpecialEffectTarget("war3mapImported\\[xt]boss_djs_15.mdx", LoadUnitHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x384C9D86), "chest"))
            YDWETimerDestroyEffect(15.00, LoadEffectHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x62C50DE6))
            ydl_trigger = CreateTrigger()
            SavePlayerHandle(YDLOC, GetHandleId(ydl_trigger), 0x48656946, LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))
            SaveInteger(YDLOC, GetHandleId(ydl_trigger), 0xF374F3BD, GetSpellAbilityId())
            TriggerRegisterUnitEvent(ydl_trigger, LoadUnitHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x384C9D86), EVENT_UNIT_DEATH)
            TriggerAddCondition(ydl_trigger, Condition(Trig_A4_jnsfFunc012Func001Func002Func018Conditions))
        else
            DisplayTimedTextToPlayer(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946), 0, 0, 6.00, (YDWEGetPlayerColorString(Player(0), "[系统]：") .. "道行不足。"))
        end
    else
    end
    if ((GetSpellAbilityId() == (0x35333136))) then
        DisplayTextToPlayer(GetOwningPlayer(GetTriggerUnit()), 0, 0, ("|cff00ff00您当前的游戏局数为|r" .. I2S((RequestExtraIntegerData(45, (GetOwningPlayer(GetTriggerUnit())), nil, nil, false, 0, 0, 0)))))
        ydul_a = 1
        while true do
            if ydul_a > 12 then
                break
            end
            DisplayTextToPlayer(GetOwningPlayer(GetTriggerUnit()), 0, 0, ((("|cff00ff00您当前的通关难") .. (I2S(ydul_a)) .. ("次数数为:|r")) .. (I2S((LoadInteger(YDHT, StringHash((GetPlayerName(GetOwningPlayer(GetTriggerUnit())))), StringHash((("N" .. I2S(ydul_a))))))) .. "")))
            ydul_a = ydul_a + 1
        end
        DisplayTextToPlayer(GetOwningPlayer(GetTriggerUnit()), 0, 0, ("|cff00ff00您当前的地图积分为|r" .. (I2S((LoadInteger(YDHT, StringHash((GetPlayerName(GetOwningPlayer(GetTriggerUnit())))), StringHash(("JF"))))) .. "")))
        SaveUnitHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x911D5DC2, nil)
        FlushChildHashtable(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step)
        ydl_trigger = nil
        ydl_timer = nil
        do
            return
        end
    else
    end
    if ((GetSpellAbilityId() == (0x4130324E))) then
        ydul_a = 1
        while true do
            if ydul_a > 6 then
                break
            end
            UnitRemoveItemFromSlotSwapped(ydul_a, GetTriggerUnit())
            ydul_a = ydul_a + 1
        end
        SaveUnitHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x911D5DC2, nil)
        FlushChildHashtable(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step)
        ydl_trigger = nil
        ydl_timer = nil
        do
            return
        end
    else
    end
    SaveUnitHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x911D5DC2, nil)
    FlushChildHashtable(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step)
    ydl_trigger = nil
    ydl_timer = nil
end

function InitTrig_A4_jnsf()
    gg_trg_A4_jnsf = CreateTrigger()
    TriggerRegisterAnyUnitEventBJ(gg_trg_A4_jnsf, EVENT_PLAYER_UNIT_SPELL_EFFECT)
    TriggerAddCondition(gg_trg_A4_jnsf, Condition(Trig_A4_jnsfConditions))
    TriggerAddAction(gg_trg_A4_jnsf, Trig_A4_jnsfActions)
end

function Trig_jn________07Actions()
    DestroyTrigger(GetTriggeringTrigger())
    SaveInteger(YDHT, ((GetHandleId((Player(PLAYER_NEUTRAL_AGGRESSIVE))))), (StringHash("jn_xtgq_0")), (0x58544731))
    SaveInteger(YDHT, ((GetHandleId((Player(PLAYER_NEUTRAL_AGGRESSIVE))))), (StringHash("jn_xtgq_1")), (0x58544732))
    SaveInteger(YDHT, ((GetHandleId((Player(PLAYER_NEUTRAL_AGGRESSIVE))))), (StringHash("jn_xtgq_2")), (0x58544733))
    SaveInteger(YDHT, ((GetHandleId((Player(PLAYER_NEUTRAL_AGGRESSIVE))))), (StringHash("jn_xtgq_3")), (0x58544734))
    SaveInteger(YDHT, ((GetHandleId((Player(PLAYER_NEUTRAL_AGGRESSIVE))))), (StringHash("jn_xtgq_4")), (0x58544735))
    SaveInteger(YDHT, ((GetHandleId((Player(PLAYER_NEUTRAL_AGGRESSIVE))))), (StringHash("jn_xtgq_5")), (0x58544736))
    SaveInteger(YDHT, ((GetHandleId((Player(PLAYER_NEUTRAL_AGGRESSIVE))))), ((0x53303148)), (0x53483031))
    SaveInteger(YDHT, ((GetHandleId((Player(PLAYER_NEUTRAL_AGGRESSIVE))))), ((0x53303248)), (0x53483032))
    SaveInteger(YDHT, ((GetHandleId((Player(PLAYER_NEUTRAL_AGGRESSIVE))))), ((0x53303348)), (0x53483033))
    SaveInteger(YDHT, ((GetHandleId((Player(PLAYER_NEUTRAL_AGGRESSIVE))))), ((0x53303448)), (0x53483034))
    SaveInteger(YDHT, ((GetHandleId((Player(PLAYER_NEUTRAL_AGGRESSIVE))))), ((0x53303548)), (0x53483035))
    SaveInteger(YDHT, ((GetHandleId((Player(PLAYER_NEUTRAL_AGGRESSIVE))))), ((0x53303648)), (0x53483036))
    SaveInteger(YDHT, ((GetHandleId((Player(PLAYER_NEUTRAL_AGGRESSIVE))))), ((0x53303748)), (0x53483037))
    SaveInteger(YDHT, ((GetHandleId((Player(PLAYER_NEUTRAL_AGGRESSIVE))))), ((0x53303848)), (0x53483038))
    SaveInteger(YDHT, ((GetHandleId((Player(PLAYER_NEUTRAL_AGGRESSIVE))))), ((0x53303948)), (0x53483039))
    SaveInteger(YDHT, ((GetHandleId((Player(PLAYER_NEUTRAL_AGGRESSIVE))))), ((0x53313048)), (0x53483130))
    SaveInteger(YDHT, ((GetHandleId((Player(PLAYER_NEUTRAL_AGGRESSIVE))))), ((0x53313148)), (0x53483131))
    SaveInteger(YDHT, ((GetHandleId((Player(PLAYER_NEUTRAL_AGGRESSIVE))))), ((0x53313248)), (0x53483132))
    SaveInteger(YDHT, ((GetHandleId((Player(PLAYER_NEUTRAL_AGGRESSIVE))))), ((0x53313348)), (0x53483133))
    SaveInteger(YDHT, ((GetHandleId((Player(PLAYER_NEUTRAL_AGGRESSIVE))))), ((0x53313448)), (0x53483134))
    SaveInteger(YDHT, ((GetHandleId((Player(PLAYER_NEUTRAL_AGGRESSIVE))))), ((0x53313548)), (0x53483135))
    SaveInteger(YDHT, ((GetHandleId((Player(PLAYER_NEUTRAL_AGGRESSIVE))))), ((0x53313648)), (0x53483136))
    SaveInteger(YDHT, ((GetHandleId((Player(PLAYER_NEUTRAL_AGGRESSIVE))))), ((0x53313748)), (0x53483137))
    SaveInteger(YDHT, ((GetHandleId((Player(PLAYER_NEUTRAL_AGGRESSIVE))))), ((0x53313848)), (0x53483138))
    SaveInteger(YDHT, ((GetHandleId((Player(PLAYER_NEUTRAL_AGGRESSIVE))))), ((0x53313948)), (0x53483139))
    SaveInteger(YDHT, ((GetHandleId((Player(PLAYER_NEUTRAL_AGGRESSIVE))))), ((0x53323048)), (0x53483230))
    SaveInteger(YDHT, ((GetHandleId((Player(PLAYER_NEUTRAL_AGGRESSIVE))))), ((0x53323148)), (0x53483231))
    SaveInteger(YDHT, ((GetHandleId((Player(PLAYER_NEUTRAL_AGGRESSIVE))))), ((0x53323248)), (0x53483232))
    SaveInteger(YDHT, ((GetHandleId((Player(PLAYER_NEUTRAL_AGGRESSIVE))))), ((0x53323348)), (0x53483233))
    SaveInteger(YDHT, ((GetHandleId((Player(PLAYER_NEUTRAL_AGGRESSIVE))))), ((0x53323448)), (0x53483234))
    SaveInteger(YDHT, ((GetHandleId((Player(PLAYER_NEUTRAL_AGGRESSIVE))))), ((0x53323548)), (0x53483235))
    udg_shj[1] = 0x73686A31
    udg_shj[2] = 0x73686A32
    udg_shj[3] = 0x73686A33
    udg_shj[4] = 0x73686A34
    udg_YXJN[1] = 0x77757831
    udg_YXJN[2] = 0x77757832
    udg_YXJN[3] = 0x77757833
    udg_YXJN[4] = 0x77757834
    udg_jux[1] = 0x6A757831
    udg_jux[2] = 0x6A757832
    udg_jux[3] = 0x6A757833
    udg_jux[4] = 0x6A757834
    udg_JX_STR[1] = 0x6A323031
    udg_JX_STR[2] = 0x6A323032
    udg_JX_STR[3] = 0x6A323033
    udg_JX_STR[4] = 0x6A323034
    udg_JX_STR[5] = 0x6A323035
    udg_JX_STR[6] = 0x6A323036
    udg_JX_STR[7] = 0x6A323037
    udg_JX_AGI[1] = 0x6A323038
    udg_JX_AGI[2] = 0x6A323039
    udg_JX_AGI[3] = 0x6A323130
    udg_JX_AGI[4] = 0x6A323131
    udg_JX_AGI[5] = 0x6A323132
    udg_JX_AGI[6] = 0x6A323133
    udg_JX_AGI[7] = 0x6A323134
    udg_JX_AGI[8] = 0x6A323135
    udg_JX_INT[1] = 0x6A323136
    udg_JX_INT[2] = 0x6A323137
    udg_JX_INT[3] = 0x6A323138
    udg_JX_INT[4] = 0x6A323139
    udg_JX_INT[5] = 0x6A323230
    udg_JX_INT[6] = 0x6A323231
    udg_JX_INT[7] = 0x6A323232
    udg_jn1_l[1] = 0x4A4E3031
    udg_jn1_l[2] = 0x4A4E3032
    udg_jn1_l[3] = 0x4A4E3033
    udg_jn1_l[4] = 0x4A4E3034
    udg_jn1_l[5] = 0x4A4E3035
    udg_jn1_l[6] = 0x4A4E3036
    udg_jn1_l[7] = 0x4A4E3037
    udg_jn2_l[1] = 0x4A4E3038
    udg_jn2_l[2] = 0x4A4E3039
    udg_jn2_l[3] = 0x4A4E3130
    udg_jn2_l[4] = 0x4A4E3131
    udg_jn2_l[5] = 0x4A4E3132
    udg_jn2_l[6] = 0x4A4E3133
    udg_jn2_l[7] = 0x4A4E3134
    udg_jn3_l[1] = 0x4A4E3135
    udg_jn3_l[2] = 0x4A4E3136
    udg_jn3_l[3] = 0x4A4E3137
    udg_jn3_l[4] = 0x4A4E3138
    udg_jn3_l[5] = 0x4A4E3139
    udg_jn3_l[6] = 0x4A4E3230
    udg_jn3_l[7] = 0x4A4E3231
    udg_szjn[1] = 0x73303963
    udg_szjn[2] = 0x73313063
    udg_szjn[3] = 0x73313163
    SaveInteger(YDHT, ((GetHandleId((Player(0))))), (StringHash("1")), (0x6A6E7131))
    SaveInteger(YDHT, ((GetHandleId((Player(0))))), (StringHash("2")), (0x6A6E7132))
    SaveInteger(YDHT, ((GetHandleId((Player(0))))), (StringHash("3")), (0x6A6E7133))
    SaveInteger(YDHT, ((GetHandleId((Player(1))))), (StringHash("1")), (0x6A6E7731))
    SaveInteger(YDHT, ((GetHandleId((Player(1))))), (StringHash("2")), (0x6A6E7732))
    SaveInteger(YDHT, ((GetHandleId((Player(1))))), (StringHash("3")), (0x6A6E7733))
    SaveInteger(YDHT, ((GetHandleId((Player(2))))), (StringHash("1")), (0x6A6E6531))
    SaveInteger(YDHT, ((GetHandleId((Player(2))))), (StringHash("2")), (0x6A6E6532))
    SaveInteger(YDHT, ((GetHandleId((Player(2))))), (StringHash("3")), (0x6A6E6533))
    SaveInteger(YDHT, ((GetHandleId((Player(3))))), (StringHash("1")), (0x6A6E7231))
    SaveInteger(YDHT, ((GetHandleId((Player(3))))), (StringHash("2")), (0x6A6E7232))
    SaveInteger(YDHT, ((GetHandleId((Player(3))))), (StringHash("3")), (0x6A6E7233))
    SaveInteger(YDHT, ((GetHandleId((Player(PLAYER_NEUTRAL_AGGRESSIVE))))), (StringHash("jn_bd_1")), (0x4A4E3232))
    SaveInteger(YDHT, ((GetHandleId((Player(PLAYER_NEUTRAL_AGGRESSIVE))))), (StringHash("jn_bd_2")), (0x4A4E3233))
    SaveInteger(YDHT, ((GetHandleId((Player(PLAYER_NEUTRAL_AGGRESSIVE))))), (StringHash("jn_bd_3")), (0x4A4E3234))
    SaveInteger(YDHT, ((GetHandleId((Player(PLAYER_NEUTRAL_AGGRESSIVE))))), (StringHash("jn_bd_4")), (0x4A4E3235))
    SaveInteger(YDHT, ((GetHandleId((Player(PLAYER_NEUTRAL_AGGRESSIVE))))), (StringHash("jn_bd_5")), (0x4A4E3236))
    SaveInteger(YDHT, ((GetHandleId((Player(PLAYER_NEUTRAL_AGGRESSIVE))))), (StringHash("jn_bd_6")), (0x4A4E3237))
    SaveInteger(YDHT, ((GetHandleId((Player(PLAYER_NEUTRAL_AGGRESSIVE))))), (StringHash("jn_bd_7")), (0x4A4E3238))
    SaveInteger(YDHT, ((GetHandleId((Player(PLAYER_NEUTRAL_AGGRESSIVE))))), (StringHash("jn_bd_8")), (0x4A4E3239))
    SaveInteger(YDHT, ((GetHandleId((Player(PLAYER_NEUTRAL_AGGRESSIVE))))), (StringHash("jn_bd_9")), (0x4A4E3330))
    SaveInteger(YDHT, ((GetHandleId((Player(PLAYER_NEUTRAL_AGGRESSIVE))))), (StringHash("jn_bd_10")), (0x4A4E3331))
    SaveInteger(YDHT, ((GetHandleId((Player(PLAYER_NEUTRAL_AGGRESSIVE))))), (StringHash("jn_bd_11")), (0x4A4E3332))
    SaveInteger(YDHT, ((GetHandleId((Player(PLAYER_NEUTRAL_AGGRESSIVE))))), (StringHash("jn_bd_12")), (0x4A4E3333))
    SaveInteger(YDHT, ((GetHandleId((Player(PLAYER_NEUTRAL_AGGRESSIVE))))), (StringHash("jn_bd_13")), (0x4A4E3334))
    SaveInteger(YDHT, ((GetHandleId((Player(PLAYER_NEUTRAL_AGGRESSIVE))))), (StringHash("jn_bd_14")), (0x4A4E3335))
    SaveInteger(YDHT, ((GetHandleId((Player(PLAYER_NEUTRAL_AGGRESSIVE))))), (StringHash("jn_bd_15")), (0x4A4E3336))
    SaveInteger(YDHT, ((GetHandleId((Player(PLAYER_NEUTRAL_AGGRESSIVE))))), (StringHash("jn_bd_16")), (0x4A4E3337))
    SaveInteger(YDHT, ((GetHandleId((Player(PLAYER_NEUTRAL_AGGRESSIVE))))), (StringHash("jn_bd_17")), (0x4A4E3338))
    SaveInteger(YDHT, ((GetHandleId((Player(PLAYER_NEUTRAL_AGGRESSIVE))))), (StringHash("jn_bd_18")), (0x4A4E3339))
end

function InitTrig_jn________07()
    gg_trg_jn________07 = CreateTrigger()
    TriggerAddAction(gg_trg_jn________07, Trig_jn________07Actions)
end

function Trig_jn_loadActions()
    local ydul_a = nil
    local ydl_localvar_step = LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xCFDE6C76)
    ydl_localvar_step = ydl_localvar_step + 3
    SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xCFDE6C76, ydl_localvar_step)
    SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xECE825E7, ydl_localvar_step)
    ydul_a = 1
    while true do
        if ydul_a > 3 then
            break
        end
        if ((ydul_a == LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x6D77F75F))) then
            SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xF374F3BD + (ydul_a), (LoadInteger(YDHT, ((GetHandleId((LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))))), (StringHash(I2S(ydul_a))))))
            YDWESetUnitAbilityDataReal(udg_WJYX[LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x6F96F2D2)], LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xF374F3BD + (ydul_a)), 1, 105, S2R(EXExecuteScript("(require'jass.slk').ability[" .. I2S(LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xF374F3BD)) .. "].Cool1")))
            YDWESetUnitAbilityDataReal(udg_WJYX[LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x6F96F2D2)], LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xF374F3BD + (ydul_a)), 1, 109, S2R(EXExecuteScript("(require'jass.slk').ability[" .. I2S(LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xF374F3BD)) .. "].DataB1")))
            YDWESetUnitAbilityDataReal(udg_WJYX[LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x6F96F2D2)], LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xF374F3BD + (ydul_a)), 1, 106, S2R(EXExecuteScript("(require'jass.slk').ability[" .. I2S(LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xF374F3BD)) .. "].Area1")))
            YDWESetUnitAbilityDataString(udg_WJYX[LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x6F96F2D2)], LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xF374F3BD + (ydul_a)), 1, 204, (EXExecuteScript("(require'jass.slk').ability[" .. I2S(LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xF374F3BD)) .. "].Art")))
            YDWESetUnitAbilityDataString(udg_WJYX[LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x6F96F2D2)], LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xF374F3BD + (ydul_a)), 1, 215, (((EXExecuteScript("(require'jass.slk').ability[" .. I2S(LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xF374F3BD)) .. "].Name"))) .. ("  ") .. (YDWEGetPlayerColorString(Player(2), ("Lv:" .. I2S((LoadInteger(YDHT, StringHash((I2S(LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x6F96F2D2)))), StringHash((GetAbilityName(LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xF374F3BD))))))))))))
            SaveInteger(YDHT, ((GetHandleId((LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))))), ((LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xF374F3BD + (ydul_a)))), (LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xF374F3BD)))
            SaveInteger(YDHT, StringHash((I2S(LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x6F96F2D2)))), StringHash((GetAbilityName(LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xF374F3BD)))), (1))
            SaveInteger(YDHT, StringHash((I2S(LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x6F96F2D2)))), StringHash(((I2S(((udg_JN_BUTTON[(ydul_a + 8)]))) .. "技能kq"))), (1))
            UnitRemoveAbility(udg_WJYX[LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x6F96F2D2)], LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xF374F3BD + (ydul_a)))
            UnitAddAbilityBJ(LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xF374F3BD + (ydul_a)), udg_WJYX[LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x6F96F2D2)])
        else
        end
        ydul_a = ydul_a + 1
    end
    FlushChildHashtable(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step)
end

function InitTrig_jn_load()
    gg_trg_jn_load = CreateTrigger()
    DisableTrigger(gg_trg_jn_load)
    TriggerAddAction(gg_trg_jn_load, Trig_jn_loadActions)
end

function Trig_YJ_QJFunc009Func001Func008Conditions()
    local ydul_a = nil
    if ((LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()), 0x48656946) == GetTriggerPlayer())) then
        ydul_a = 1
        while true do
            if ydul_a > 4 then
                break
            end
            if ((GetClickedButtonBJ() == LoadButtonHandle(YDLOC, GetHandleId(GetTriggeringTrigger()), 0x07C93ED7 + (ydul_a)))) then
                SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0x6F96F2D2, GetConvertedPlayerId(GetTriggerPlayer()))
                SaveInteger(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()), 0x48656946)), 0x9ACF35AF, (LoadInteger(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()), 0x48656946)), 0x9ACF35AF) + 1))
                SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xF374F3BD + (ydul_a), (LoadInteger(YDHT, ((GetHandleId((LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()), 0x48656946))))), (StringHash(I2S(ydul_a))))))
                YDWESetUnitAbilityDataReal(udg_WJYX[LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0x6F96F2D2)], LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xF374F3BD + (ydul_a)), 1, 105, 0.00)
                YDWESetUnitAbilityDataReal(udg_WJYX[LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0x6F96F2D2)], LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xF374F3BD + (ydul_a)), 1, 109, 0.00)
                YDWESetUnitAbilityDataReal(udg_WJYX[LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0x6F96F2D2)], LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xF374F3BD + (ydul_a)), 1, 106, 0.00)
                YDWESetUnitAbilityDataString(udg_WJYX[LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0x6F96F2D2)], LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xF374F3BD + (ydul_a)), 1, 204, "war3mapImported\\alpha.blp")
                YDWESetUnitAbilityDataString(udg_WJYX[LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0x6F96F2D2)], LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xF374F3BD + (ydul_a)), 1, 215, "")
                YDWESetUnitAbilityDataString(udg_WJYX[LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0x6F96F2D2)], LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xF374F3BD + (ydul_a)), 1, 218, "")
                SaveInteger(YDHT, ((GetHandleId((LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()), 0x48656946))))), ((LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xF374F3BD + (ydul_a)))), ((0x41706C79)))
                UnitRemoveAbility(udg_WJYX[LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0x6F96F2D2)], LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xF374F3BD + (ydul_a)))
                UnitAddAbilityBJ(LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xF374F3BD + (ydul_a)), udg_WJYX[LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0x6F96F2D2)])
                DoNothing()
                if true then
                    break
                end
            else
            end
            ydul_a = ydul_a + 1
        end
        DialogClear(GetClickedDialogBJ())
        FlushChildHashtable(YDLOC, GetHandleId(GetTriggeringTrigger()))
        DestroyTrigger(GetTriggeringTrigger())
    else
    end
end

function Trig_YJ_QJFunc013Func001Func002Func002Func013A()
    RemoveUnit(GetEnumUnit())
end

function Trig_YJ_QJActions()
    local ydul_a = nil
    local ydl_trigger = nil
    local ydl_group = nil
    local ydl_unit = nil
    local ydul_b = nil
    local ydul_c = nil
    local ydl_localvar_step = LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xCFDE6C76)
    ydl_localvar_step = ydl_localvar_step + 3
    SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xCFDE6C76, ydl_localvar_step)
    SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xECE825E7, ydl_localvar_step)
    if ((LoadBoolean(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x0F91E21F) == true)) then
        SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xE1F12512, LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xE1F12512))
        SavePlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946, LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))
    else
        SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xE1F12512, ((DzGetTriggerKey())))
        SavePlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946, DzGetTriggerKeyPlayer())
    end
    if ((LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xE1F12512) == 117)) then
        SaveDialogHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x90F4A78E, DialogCreate())
        DialogSetMessage(LoadDialogHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x90F4A78E), "选择你要删除的技能")
        ydul_a = 1
        while true do
            if ydul_a > 4 then
                break
            end
            SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xF374F3BD + (ydul_a), (LoadInteger(YDHT, ((GetHandleId((LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))))), (StringHash(I2S(ydul_a))))))
            DialogAddButtonBJ(LoadDialogHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x90F4A78E), GetAbilityName((LoadInteger(YDHT, ((GetHandleId((LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))))), ((LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xF374F3BD + (ydul_a))))))))
            SaveButtonHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x07C93ED7 + (ydul_a), bj_lastCreatedButton)
            ydul_a = ydul_a + 1
        end
        DialogAddButtonWithHotkeyBJ(LoadDialogHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x90F4A78E), "算了，我在想想", 773)
        SaveButtonHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x07C93ED7 + (5), bj_lastCreatedButton)
        DialogDisplayBJ(true, LoadDialogHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x90F4A78E), LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))
        ydl_trigger = CreateTrigger()
        SavePlayerHandle(YDLOC, GetHandleId(ydl_trigger), 0x48656946, LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))
        SaveButtonHandle(YDLOC, GetHandleId(ydl_trigger), 0x07C93ED7 + (1), LoadButtonHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x07C93ED7 + (1)))
        SaveButtonHandle(YDLOC, GetHandleId(ydl_trigger), 0x07C93ED7 + (2), LoadButtonHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x07C93ED7 + (2)))
        SaveButtonHandle(YDLOC, GetHandleId(ydl_trigger), 0x07C93ED7 + (3), LoadButtonHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x07C93ED7 + (3)))
        SaveButtonHandle(YDLOC, GetHandleId(ydl_trigger), 0x07C93ED7 + (4), LoadButtonHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x07C93ED7 + (4)))
        SaveButtonHandle(YDLOC, GetHandleId(ydl_trigger), 0x07C93ED7 + (5), LoadButtonHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x07C93ED7 + (5)))
        SaveInteger(YDLOC, GetHandleId(ydl_trigger), 0x6F96F2D2, LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x6F96F2D2))
        SaveInteger(YDLOC, GetHandleId(ydl_trigger), 0xF374F3BD, LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xF374F3BD))
        TriggerRegisterDialogEvent(ydl_trigger, LoadDialogHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x90F4A78E))
        TriggerAddCondition(ydl_trigger, Condition(Trig_YJ_QJFunc009Func001Func008Conditions))
    else
    end
    if ((LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xE1F12512) == 9)) then
        if ((LoadBoolean(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x55B032F5) == false)) then
            SaveBoolean(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x55B032F5, true)
            if ((LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946) == GetLocalPlayer())) then
                DzFrameShow(udg_UI_MB[0], true)
            else
            end
        else
            SaveBoolean(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x55B032F5, false)
            if ((LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946) == GetLocalPlayer())) then
                DzFrameShow(udg_UI_MB[0], false)
            else
            end
        end
    else
    end
    if ((LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xE1F12512) == 116)) then
        if ((GetPlayerTechCountSimple(0x52303044, Player(5)) >= 3)) then
            if ((LoadBoolean(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x9134E1DF) == false)) then
                SaveBoolean(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x9134E1DF, true)
                if ((LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946) == GetLocalPlayer())) then
                    DzFrameShow(udg_UI_TF[0], true)
                    DzFrameSetText(udg_UI_TF[4], ("[通关获取]可用天赋点：" .. I2S(LoadInteger(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x7E36BC89))))
                else
                end
            else
                SaveBoolean(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x9134E1DF, false)
                if ((LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946) == GetLocalPlayer())) then
                    DzFrameShow(udg_UI_TF[0], false)
                    DzFrameSetText(udg_UI_TF[4], ("[通关获取]可用天赋点：" .. I2S(LoadInteger(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x7E36BC89))))
                else
                end
            end
        else
            DisplayTimedTextToPlayer(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946), 0, 0, 6.00, (YDWEGetPlayerColorString(Player(4), "【系统】：") .. YDWEGetPlayerColorString(Player(5), "难度≥3开启天赋树")))
        end
    else
    end
    if ((LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xE1F12512) == 115)) then
        if ((LoadBoolean(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x92F49EBB) == true)) then
            if ((LoadBoolean(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x712CE12C) == false)) then
                SaveBoolean(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x712CE12C, true)
                if ((LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946) == GetLocalPlayer())) then
                    DzSyncData("yxqd", ("zy1"))
                else
                end
                if ((LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946) == GetLocalPlayer())) then
                    DzFrameShow(udg_UI_FL[0], true)
                else
                end
            else
                SaveBoolean(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x712CE12C, false)
                if ((LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946) == GetLocalPlayer())) then
                    DzFrameShow(udg_UI_FL[0], false)
                else
                end
            end
        else
            DisplayTextToPlayer(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946), 0, 0, (YDWEGetPlayerColorString(Player(4), "[系统]：") .. "需要先完成新手任务才能打开存档界面"))
        end
    else
    end
    if ((LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xE1F12512) == 113)) then
        if ((LoadBoolean(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x92F49EBB) == true)) then
            if ((IsUnitAliveBJ(udg_WJYX[GetConvertedPlayerId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))]) == true)) then
                SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x6F96F2D2, GetConvertedPlayerId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)))
                SetUnitPosition(udg_WJYX[LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x6F96F2D2)], -124.00, 253.00)
                JK_CameraTranslation(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946), GetUnitX(udg_WJYX[LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x6F96F2D2)]), GetUnitY(udg_WJYX[LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x6F96F2D2)]), 0.00)
                SetUnitInvulnerable(udg_WJYX[LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x6F96F2D2)], true)
                SetUnitInvulnerable(udg_WJYX[LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x6F96F2D2)], false)
                SelectUnitForPlayerSingle(udg_WJYX[GetConvertedPlayerId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))], LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))
                RemoveUnit(LoadUnitHandle(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x5F9850BF))
                RemoveUnit(LoadUnitHandle(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x9D4D1A01))
                SaveBoolean(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0xDAA3C8E8, true)
                if ((LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946) == GetLocalPlayer())) then
                    DzFrameShow(udg_UI_FL[0], false)
                    DzFrameShow(udg_UI_MB[0], false)
                else
                end
                SaveGroupHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x7B2D08E8, YDWEGetUnitsInRectOfPlayerNull(udg_ZDQY[GetConvertedPlayerId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))], Player(7)))
                ForGroupBJ(LoadGroupHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x7B2D08E8), Trig_YJ_QJFunc013Func001Func002Func002Func013A)
                GroupClear(LoadGroupHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x7B2D08E8))
                DestroyGroup(LoadGroupHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x7B2D08E8))
            else
            end
        else
        end
    else
    end
    if ((LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xE1F12512) == 114)) then
        if ((LoadBoolean(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x6BEB6A81) == true)) then
            if ((IsUnitAliveBJ(udg_WJYX[GetConvertedPlayerId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))]) == true)) then
                SaveBoolean(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x9837AD59, true)
                SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x6F96F2D2, GetConvertedPlayerId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)))
                SetUnitPosition(udg_WJYX[LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x6F96F2D2)], udg_LGFZB_x[GetConvertedPlayerId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))], udg_LGFZB_y[GetConvertedPlayerId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))])
                JK_CameraTranslation(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946), udg_LGFZB_x[GetConvertedPlayerId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))], udg_LGFZB_y[GetConvertedPlayerId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))], 0.00)
                SetUnitInvulnerable(udg_WJYX[LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x6F96F2D2)], true)
                SetUnitInvulnerable(udg_WJYX[LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x6F96F2D2)], false)
                SelectUnitForPlayerSingle(udg_WJYX[GetConvertedPlayerId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))], LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))
                SaveBoolean(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0xDAA3C8E8, true)
                if ((LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946) == GetLocalPlayer())) then
                    DzFrameShow(udg_UI_FL[0], false)
                    DzFrameShow(udg_UI_MB[0], false)
                else
                end
            else
            end
        else
        end
    else
    end
    if ((DzGetTriggerKey() == 0x5A)) then
        if (((udg_WJYX[GetConvertedPlayerId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))] == LoadUnitHandle(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0xDD032F66)) or (udg_WJYXX[GetConvertedPlayerId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))] == LoadUnitHandle(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0xDD032F66)))) then
            SavePlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946, DzGetTriggerKeyPlayer())
            SaveUnitHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x911D5DC2, LoadUnitHandle(YDHT, GetHandleId(DzGetTriggerKeyPlayer()), 0xDD032F66))
            ydul_a = 1
            while true do
                if ydul_a > 6 then
                    break
                end
                if ((UnitItemInSlotBJ(LoadUnitHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x911D5DC2), ydul_a) ~= nil)) then
                    SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB0497EE9 + (ydul_a), GetItemTypeId(UnitItemInSlotBJ(LoadUnitHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x911D5DC2), ydul_a)))
                    SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x73698DCD + (ydul_a), S2I(EXExecuteScript("(require'jass.slk').item[" .. I2S(GetItemTypeId(UnitItemInSlotBJ(LoadUnitHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x911D5DC2), ydul_a))) .. "].oldlevel")))
                else
                end
                ydul_a = ydul_a + 1
            end
            ydul_a = 50
            while true do
                if ydul_a > 59 then
                    break
                end
                ydul_b = 1
                while true do
                    if ydul_b > 6 then
                        break
                    end
                    if ((LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x73698DCD + (ydul_b)) == ydul_a)) then
                        SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x41B6C83B, ydul_a)
                        SaveInteger(YDHT, ((GetHandleId((GetTriggeringTrigger())))), (LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x41B6C83B)), (((LoadInteger(YDHT, ((GetHandleId((GetTriggeringTrigger())))), (LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x41B6C83B)))) + 1)))
                        if (((LoadInteger(YDHT, ((GetHandleId((GetTriggeringTrigger())))), (LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x41B6C83B)))) == 3)) then
                            ydul_c = 1
                            while true do
                                if ydul_c > 6 then
                                    break
                                end
                                if ((UnitItemInSlotBJ(LoadUnitHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x911D5DC2), ydul_c) ~= nil)) then
                                    if ((S2I(EXExecuteScript("(require'jass.slk').item[" .. I2S(GetItemTypeId(UnitItemInSlotBJ(LoadUnitHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x911D5DC2), ydul_c))) .. "].oldLevel")) == LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x41B6C83B))) then
                                        if (((LoadInteger(YDHT, ((GetHandleId((GetTriggeringTrigger())))), (LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x41B6C83B)))) ~= 0)) then
                                            SaveInteger(YDHT, ((GetHandleId((GetTriggeringTrigger())))), (LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x41B6C83B)), (((LoadInteger(YDHT, ((GetHandleId((GetTriggeringTrigger())))), (LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x41B6C83B)))) - 1)))
                                            RemoveItem(UnitItemInSlotBJ(LoadUnitHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x911D5DC2), ydul_c))
                                        else
                                        end
                                    else
                                    end
                                else
                                end
                                ydul_c = ydul_c + 1
                            end
                            UnitAddItemByIdSwapped(ChooseRandomItemBJ((LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x41B6C83B) + 1)), LoadUnitHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x911D5DC2))
                            DestroyEffect(AddSpecialEffectTarget("Abilities\\Spells\\Other\\Monsoon\\MonsoonBoltTarget.mdl", LoadUnitHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x911D5DC2), "chest"))
                            DisplayTimedTextToPlayer(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946), 0, 0, 2.00, GetItemName(bj_lastCreatedItem))
                        else
                        end
                    else
                    end
                    ydul_b = ydul_b + 1
                end
                ydul_a = ydul_a + 1
            end
            SaveUnitHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x911D5DC2, nil)
            FlushChildHashtable(YDHT, ((GetHandleId((GetTriggeringTrigger())))))
        else
        end
    else
    end
    FlushChildHashtable(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step)
    ydl_trigger = nil
    ydl_group = nil
    ydl_unit = nil
end

function InitTrig_YJ_QJ()
    gg_trg_YJ_QJ = CreateTrigger()
    DzTriggerRegisterKeyEventTrg(gg_trg_YJ_QJ, 1, ((113)))
    DzTriggerRegisterKeyEventTrg(gg_trg_YJ_QJ, 1, ((114)))
    DzTriggerRegisterKeyEventTrg(gg_trg_YJ_QJ, 1, ((115)))
    DzTriggerRegisterKeyEventTrg(gg_trg_YJ_QJ, 1, ((116)))
    DzTriggerRegisterKeyEventTrg(gg_trg_YJ_QJ, 1, ((90)))
    DzTriggerRegisterKeyEventTrg(gg_trg_YJ_QJ, 1, ((9)))
    DzTriggerRegisterKeyEventTrg(gg_trg_YJ_QJ, 1, ((117)))
    TriggerAddAction(gg_trg_YJ_QJ, Trig_YJ_QJActions)
end

function Trig________jnActions()
    DestroyTrigger(GetTriggeringTrigger())
    SaveInteger(YDHT, StringHash(("天赋技能")), StringHash(("1")), (0x53483031))
    SaveInteger(YDHT, StringHash(("天赋技能")), StringHash(("2")), (0x53483032))
    SaveInteger(YDHT, StringHash(("天赋技能")), StringHash(("3")), (0x53483033))
    SaveInteger(YDHT, StringHash(("天赋技能")), StringHash(("4")), (0x53483034))
    SaveInteger(YDHT, StringHash(("天赋技能")), StringHash(("5")), (0x53483035))
    SaveInteger(YDHT, StringHash(("天赋技能")), StringHash(("6")), (0x53483036))
    SaveInteger(YDHT, StringHash(("天赋技能")), StringHash(("7")), (0x53483037))
    SaveInteger(YDHT, StringHash(("天赋技能")), StringHash(("8")), (0x53483038))
    SaveInteger(YDHT, StringHash(("天赋技能")), StringHash(("9")), (0x53483039))
    SaveInteger(YDHT, StringHash(("天赋技能")), StringHash(("10")), (0x53483130))
    SaveInteger(YDHT, StringHash(("天赋技能")), StringHash(("11")), (0x53483131))
    SaveInteger(YDHT, StringHash(("天赋技能")), StringHash(("12")), (0x53483132))
    SaveInteger(YDHT, StringHash(("天赋技能")), StringHash(("13")), (0x53483133))
    SaveInteger(YDHT, StringHash(("天赋技能")), StringHash(("14")), (0x53483134))
    SaveInteger(YDHT, StringHash(("天赋技能")), StringHash(("15")), (0x53483135))
    SaveInteger(YDHT, StringHash(("天赋技能")), StringHash(("16")), (0x53483136))
    SaveInteger(YDHT, StringHash(("天赋技能")), StringHash(("17")), (0x53483137))
    SaveInteger(YDHT, StringHash(("天赋技能")), StringHash(("18")), (0x53483138))
    SaveInteger(YDHT, StringHash(("天赋技能")), StringHash(("19")), (0x53483139))
    SaveInteger(YDHT, StringHash(("天赋技能")), StringHash(("20")), (0x53483230))
    SaveInteger(YDHT, StringHash(("天赋技能")), StringHash(("21")), (0x53483231))
    SaveInteger(YDHT, StringHash(("天赋技能")), StringHash(("22")), (0x53483232))
    SaveInteger(YDHT, StringHash(("天赋技能")), StringHash(("23")), (0x53483233))
    SaveInteger(YDHT, StringHash(("天赋技能")), StringHash(("24")), (0x53483234))
    SaveInteger(YDHT, StringHash(("天赋技能")), StringHash(("25")), (0x53483235))
    SaveInteger(YDHT, 0x59583031, 0x800C68E2, 0x54463031)
    SaveInteger(YDHT, 0x59583032, 0x800C68E2, 0x54463032)
    SaveInteger(YDHT, 0x59583033, 0x800C68E2, 0x54463033)
    SaveInteger(YDHT, 0x59583034, 0x800C68E2, 0x54463034)
    SaveInteger(YDHT, 0x59583035, 0x800C68E2, 0x54463035)
    SaveInteger(YDHT, 0x59583036, 0x800C68E2, 0x54463036)
    SaveInteger(YDHT, 0x59583037, 0x800C68E2, 0x54463037)
    SaveInteger(YDHT, 0x59583038, 0x800C68E2, 0x54463038)
    SaveInteger(YDHT, 0x59583039, 0x800C68E2, 0x54463039)
    SaveInteger(YDHT, 0x59583130, 0x800C68E2, 0x54463130)
    SaveInteger(YDHT, 0x59583131, 0x800C68E2, 0x54463131)
    SaveInteger(YDHT, 0x59583132, 0x800C68E2, 0x54463132)
    SaveInteger(YDHT, 0x59583133, 0x800C68E2, 0x54463133)
    SaveInteger(YDHT, 0x59583134, 0x800C68E2, 0x54463134)
    SaveInteger(YDHT, 0x59583135, 0x800C68E2, 0x54463135)
    SaveInteger(YDHT, 0x59583136, 0x800C68E2, 0x54463136)
    SaveInteger(YDHT, 0x59583137, 0x800C68E2, 0x54463137)
    SaveInteger(YDHT, 0x59583138, 0x800C68E2, 0x54463138)
    SaveInteger(YDHT, 0x59583139, 0x800C68E2, 0x54463139)
    SaveInteger(YDHT, 0x59583230, 0x800C68E2, 0x54463230)
    SaveInteger(YDHT, 0x59583231, 0x800C68E2, 0x54463231)
    SaveInteger(YDHT, 0x59583232, 0x800C68E2, 0x54463232)
    SaveInteger(YDHT, 0x59583233, 0x800C68E2, 0x54463233)
    SaveInteger(YDHT, 0x59583234, 0x800C68E2, 0x54463234)
    SaveInteger(YDHT, 0x59583235, 0x800C68E2, 0x54463235)
    SaveInteger(YDHT, 0x59583236, 0x800C68E2, 0x54463236)
    SaveInteger(YDHT, 0x59583237, 0x800C68E2, 0x54463237)
    SaveInteger(YDHT, 0x59583238, 0x800C68E2, 0x54463238)
    SaveInteger(YDHT, 0x59583239, 0x800C68E2, 0x54463239)
    SaveInteger(YDHT, 0x59583330, 0x800C68E2, 0x54463330)
    SaveInteger(YDHT, 0x59583331, 0x800C68E2, 0x54463331)
    SaveInteger(YDHT, 0x59583332, 0x800C68E2, 0x54463332)
    SaveInteger(YDHT, 0x59583333, 0x800C68E2, 0x54463333)
    SaveInteger(YDHT, 0x59583334, 0x800C68E2, 0x54463334)
    SaveInteger(YDHT, 0x59583335, 0x800C68E2, 0x54463335)
    SaveInteger(YDHT, 0x59583336, 0x800C68E2, 0x54463336)
    udg_JN_HG[1] = 0x58303031
    udg_JN_HG[2] = 0x58303032
    udg_JN_HG[3] = 0x58303033
    udg_JN_HG[4] = 0x58303034
    udg_JN_HG[5] = 0x58303035
    udg_JN_HG[6] = 0x58303036
    udg_JN_HG[7] = 0x58303037
    udg_JN_HG[8] = 0x58303038
    udg_JN_HG[9] = 0x58303039
    udg_JN_HG[10] = 0x58303130
    udg_JN_HG[11] = 0x58303131
    SaveInteger(YDHT, (0x4A503031), 0x800C68E2, (0x4A4E3031))
    SaveInteger(YDHT, (0x4A503032), 0x800C68E2, (0x4A4E3032))
    SaveInteger(YDHT, (0x4A503033), 0x800C68E2, (0x4A4E3033))
    SaveInteger(YDHT, (0x4A503034), 0x800C68E2, (0x4A4E3034))
    SaveInteger(YDHT, (0x4A503035), 0x800C68E2, (0x4A4E3035))
    SaveInteger(YDHT, (0x4A503036), 0x800C68E2, (0x4A4E3036))
    SaveInteger(YDHT, (0x4A503037), 0x800C68E2, (0x4A4E3037))
    SaveInteger(YDHT, (0x4A503038), 0x800C68E2, (0x4A4E3038))
    SaveInteger(YDHT, (0x4A503039), 0x800C68E2, (0x4A4E3039))
    SaveInteger(YDHT, (0x4A503130), 0x800C68E2, (0x4A4E3130))
    SaveInteger(YDHT, (0x4A503131), 0x800C68E2, (0x4A4E3131))
    SaveInteger(YDHT, (0x4A503132), 0x800C68E2, (0x4A4E3132))
    SaveInteger(YDHT, (0x4A503133), 0x800C68E2, (0x4A4E3133))
    SaveInteger(YDHT, (0x4A503134), 0x800C68E2, (0x4A4E3134))
    SaveInteger(YDHT, (0x4A503135), 0x800C68E2, (0x4A4E3135))
    SaveInteger(YDHT, (0x4A503136), 0x800C68E2, (0x4A4E3136))
    SaveInteger(YDHT, (0x4A503137), 0x800C68E2, (0x4A4E3137))
    SaveInteger(YDHT, (0x4A503138), 0x800C68E2, (0x4A4E3138))
    SaveInteger(YDHT, (0x4A503139), 0x800C68E2, (0x4A4E3139))
    SaveInteger(YDHT, (0x4A503230), 0x800C68E2, (0x4A4E3230))
    SaveInteger(YDHT, (0x4A503231), 0x800C68E2, (0x4A4E3231))
    SaveInteger(YDHT, (0x4A503232), 0x800C68E2, (0x4A4E3232))
    SaveInteger(YDHT, (0x4A503233), 0x800C68E2, (0x4A4E3233))
    SaveInteger(YDHT, (0x4A503234), 0x800C68E2, (0x4A4E3234))
    SaveInteger(YDHT, (0x4A503235), 0x800C68E2, (0x4A4E3235))
    SaveInteger(YDHT, (0x4A503236), 0x800C68E2, (0x4A4E3236))
    SaveInteger(YDHT, (0x4A503237), 0x800C68E2, (0x4A4E3237))
    SaveInteger(YDHT, (0x4A503238), 0x800C68E2, (0x4A4E3238))
    SaveInteger(YDHT, (0x4A503239), 0x800C68E2, (0x4A4E3239))
    SaveInteger(YDHT, (0x4A503330), 0x800C68E2, (0x4A4E3330))
    SaveInteger(YDHT, (0x4A503331), 0x800C68E2, (0x4A4E3331))
    SaveInteger(YDHT, (0x4A503332), 0x800C68E2, (0x4A4E3332))
    SaveInteger(YDHT, (0x4A503333), 0x800C68E2, (0x4A4E3333))
    SaveInteger(YDHT, (0x4A503334), 0x800C68E2, (0x4A4E3334))
    SaveInteger(YDHT, (0x4A503335), 0x800C68E2, (0x4A4E3335))
    SaveInteger(YDHT, (0x4A503336), 0x800C68E2, (0x4A4E3336))
    SaveInteger(YDHT, (0x4A503337), 0x800C68E2, (0x4A4E3337))
    SaveInteger(YDHT, (0x4A503338), 0x800C68E2, (0x4A4E3338))
    SaveInteger(YDHT, (0x4A503339), 0x800C68E2, (0x4A4E3339))
    SaveInteger(YDHT, (0x4A503430), 0x800C68E2, (0x4A4E3430))
    SaveInteger(YDHT, (0x4A503431), 0x800C68E2, (0x4A4E3431))
    SaveInteger(YDHT, (0x4A503432), 0x800C68E2, (0x4A4E3432))
    SaveInteger(YDHT, (0x4A503433), 0x800C68E2, (0x4A4E3433))
    SaveInteger(YDHT, (0x4A503434), 0x800C68E2, (0x4A4E3434))
    SaveInteger(YDHT, (0x4A503435), 0x800C68E2, (0x4A4E3435))
    SaveInteger(YDHT, (0x4A503436), 0x800C68E2, (0x4A4E3436))
    SaveInteger(YDHT, (0x4A503437), 0x800C68E2, (0x4A4E3437))
    SaveInteger(YDHT, (0x4A503438), 0x800C68E2, (0x4A4E3438))
    SaveInteger(YDHT, (0x4A503439), 0x800C68E2, (0x4A4E3439))
    SaveInteger(YDHT, (0x4A503530), 0x800C68E2, (0x4A4E3530))
    SaveInteger(YDHT, (0x4A503531), 0x800C68E2, (0x4A4E3531))
    SaveInteger(YDHT, (0x4A503532), 0x800C68E2, (0x4A4E3532))
    SaveInteger(YDHT, (0x4A503533), 0x800C68E2, (0x4A4E3533))
    SaveInteger(YDHT, (0x4A503534), 0x800C68E2, (0x4A4E3534))
    SaveInteger(YDHT, (0x4A503535), 0x800C68E2, (0x4A4E3535))
    SaveInteger(YDHT, (0x4A503536), 0x800C68E2, (0x4A4E3536))
    SaveInteger(YDHT, (0x4A503537), 0x800C68E2, (0x4A4E3537))
    SaveInteger(YDHT, (0x4A503538), 0x800C68E2, (0x4A4E3538))
    SaveInteger(YDHT, (0x4A503539), 0x800C68E2, (0x4A4E3539))
    SaveInteger(YDHT, (0x4A503630), 0x800C68E2, (0x4A4E3630))
    SaveInteger(YDHT, StringHash(("天赋技能库")), StringHash(("1")), (0x54463031))
    SaveInteger(YDHT, StringHash(("天赋技能库")), StringHash(("2")), (0x54463032))
    SaveInteger(YDHT, StringHash(("天赋技能库")), StringHash(("3")), (0x54463033))
    SaveInteger(YDHT, StringHash(("天赋技能库")), StringHash(("4")), (0x54463034))
    SaveInteger(YDHT, StringHash(("天赋技能库")), StringHash(("5")), (0x54463035))
    SaveInteger(YDHT, StringHash(("天赋技能库")), StringHash(("6")), (0x54463036))
    SaveInteger(YDHT, StringHash(("天赋技能库")), StringHash(("7")), (0x54463037))
    SaveInteger(YDHT, StringHash(("天赋技能库")), StringHash(("8")), (0x54463038))
    SaveInteger(YDHT, StringHash(("天赋技能库")), StringHash(("9")), (0x54463039))
    SaveInteger(YDHT, StringHash(("天赋技能库")), StringHash(("10")), (0x54463130))
    SaveInteger(YDHT, StringHash(("天赋技能库")), StringHash(("11")), (0x54463131))
    SaveInteger(YDHT, StringHash(("天赋技能库")), StringHash(("12")), (0x54463132))
    SaveInteger(YDHT, StringHash(("天赋技能库")), StringHash(("13")), (0x54463133))
    SaveInteger(YDHT, StringHash(("天赋技能库")), StringHash(("14")), (0x54463134))
    SaveInteger(YDHT, StringHash(("天赋技能库")), StringHash(("15")), (0x54463135))
    SaveInteger(YDHT, StringHash(("天赋技能库")), StringHash(("16")), (0x54463136))
    SaveInteger(YDHT, StringHash(("天赋技能库")), StringHash(("17")), (0x54463137))
    SaveInteger(YDHT, StringHash(("天赋技能库")), StringHash(("18")), (0x54463138))
    SaveInteger(YDHT, StringHash(("天赋技能库")), StringHash(("19")), (0x54463139))
    SaveInteger(YDHT, StringHash(("天赋技能库")), StringHash(("20")), (0x54463230))
    SaveInteger(YDHT, StringHash(("天赋技能库")), StringHash(("21")), (0x54463231))
    SaveInteger(YDHT, StringHash(("天赋技能库")), StringHash(("22")), (0x54463232))
    SaveInteger(YDHT, StringHash(("天赋技能库")), StringHash(("23")), (0x54463233))
    SaveInteger(YDHT, StringHash(("天赋技能库")), StringHash(("24")), (0x54463234))
    SaveInteger(YDHT, StringHash(("天赋技能库")), StringHash(("25")), (0x54463235))
    SaveInteger(YDHT, StringHash(("天赋技能库")), StringHash(("26")), (0x54463236))
    SaveInteger(YDHT, StringHash(("天赋技能库")), StringHash(("27")), (0x54463237))
    SaveInteger(YDHT, StringHash(("天赋技能库")), StringHash(("28")), (0x54463238))
    SaveInteger(YDHT, StringHash(("天赋技能库")), StringHash(("29")), (0x54463239))
    SaveInteger(YDHT, StringHash(("天赋技能库")), StringHash(("30")), (0x54463330))
    SaveInteger(YDHT, StringHash(("天赋技能库")), StringHash(("31")), (0x54463331))
    SaveInteger(YDHT, StringHash(("天赋技能库")), StringHash(("32")), (0x54463332))
    SaveInteger(YDHT, StringHash(("天赋技能库")), StringHash(("33")), (0x54463333))
    SaveInteger(YDHT, StringHash(("天赋技能库")), StringHash(("34")), (0x54463334))
    SaveInteger(YDHT, StringHash(("天赋技能库")), StringHash(("35")), (0x54463335))
    SaveInteger(YDHT, StringHash(("天赋技能库")), StringHash(("36")), (0x54463336))
    SaveInteger(YDHT, StringHash(("天赋技能库")), StringHash(("37")), (0x54463337))
    SaveInteger(YDHT, StringHash(("天赋技能库")), StringHash(("38")), (0x54463338))
    SaveInteger(YDHT, StringHash(("天赋技能库")), StringHash(("39")), (0x54463339))
    SaveInteger(YDHT, StringHash(("天赋技能库")), StringHash(("40")), (0x54463430))
    SaveInteger(YDHT, StringHash(("天赋技能库")), StringHash(("41")), (0x54463431))
    SaveInteger(YDHT, StringHash(("天赋技能库")), StringHash(("42")), (0x54463432))
    SaveInteger(YDHT, 0x77303031, 0x800C68E2, 0x43573031)
    SaveInteger(YDHT, 0x77303032, 0x800C68E2, 0x43573032)
    SaveInteger(YDHT, 0x77303033, 0x800C68E2, 0x43573033)
    SaveInteger(YDHT, 0x77303034, 0x800C68E2, 0x43573034)
    SaveInteger(YDHT, 0x77303035, 0x800C68E2, 0x43573035)
    SaveInteger(YDHT, 0x77303036, 0x800C68E2, 0x43573036)
    SaveInteger(YDHT, 0x77303037, 0x800C68E2, 0x43573037)
    SaveInteger(YDHT, 0x77303038, 0x800C68E2, 0x43573038)
    SaveInteger(YDHT, 0x77303039, 0x800C68E2, 0x43573039)
    SaveInteger(YDHT, 0x53303131, 0x64675C01, 0x57313039)
    SaveInteger(YDHT, 0x53303132, 0x64675C01, 0x5A5A5A5A)
    SaveInteger(YDHT, 0x53303133, 0x64675C01, 0x57333034)
    SaveInteger(YDHT, 0x53303134, 0x64675C01, 0x57323038)
    SaveInteger(YDHT, 0x53303135, 0x64675C01, 0x57343032)
    SaveInteger(YDHT, 0x53353131, 0x64675C01, 0x57313130)
    SaveInteger(YDHT, 0x53353132, 0x64675C01, 0x5A5A5A5A)
    SaveInteger(YDHT, 0x53353133, 0x64675C01, 0x57333031)
    SaveInteger(YDHT, 0x53353134, 0x64675C01, 0x57333032)
    SaveInteger(YDHT, 0x53353135, 0x64675C01, 0x57333033)
    SaveInteger(YDHT, 0x53353136, 0x64675C01, 0x57323037)
    SaveInteger(YDHT, 0x53353137, 0x64675C01, 0x57343034)
    SaveInteger(YDHT, 0x53353138, 0x64675C01, 0x57343035)
    SaveInteger(YDHT, 0x53373032, 0x64675C01, 0x57313031)
    SaveInteger(YDHT, 0x53373033, 0x64675C01, 0x57313032)
    SaveInteger(YDHT, 0x53373034, 0x64675C01, 0x57313033)
    SaveInteger(YDHT, 0x53373035, 0x64675C01, 0x57313034)
    SaveInteger(YDHT, 0x53373036, 0x64675C01, 0x57313035)
    SaveInteger(YDHT, 0x53373037, 0x64675C01, 0x57313036)
    SaveInteger(YDHT, 0x53373038, 0x64675C01, 0x57313038)
    SaveInteger(YDHT, 0x53373039, 0x64675C01, 0x5A5A5A5A)
    SaveInteger(YDHT, 0x53373130, 0x64675C01, 0x5A5A5A5A)
    SaveInteger(YDHT, 0x53373131, 0x64675C01, 0x5A5A5A5A)
    SaveInteger(YDHT, 0x53373132, 0x64675C01, 0x5A5A5A5A)
    SaveInteger(YDHT, 0x53373133, 0x64675C01, 0x5A5A5A5A)
    SaveInteger(YDHT, 0x53373134, 0x64675C01, 0x5A5A5A5A)
    SaveInteger(YDHT, 0x53373135, 0x64675C01, 0x5A5A5A5A)
    SaveInteger(YDHT, 0x53373136, 0x64675C01, 0x57333035)
    SaveInteger(YDHT, 0x53373137, 0x64675C01, 0x57333036)
    SaveInteger(YDHT, 0x53373138, 0x64675C01, 0x57333037)
    SaveInteger(YDHT, 0x53373139, 0x64675C01, 0x57333038)
    SaveInteger(YDHT, 0x53373230, 0x64675C01, 0x57323031)
    SaveInteger(YDHT, 0x53373231, 0x64675C01, 0x57323032)
    SaveInteger(YDHT, 0x53373232, 0x64675C01, 0x57323033)
    SaveInteger(YDHT, 0x53373233, 0x64675C01, 0x57323034)
    SaveInteger(YDHT, 0x53373234, 0x64675C01, 0x57323035)
    SaveInteger(YDHT, 0x53373235, 0x64675C01, 0x57323036)
    SaveInteger(YDHT, 0x53373236, 0x64675C01, 0x57343031)
    SaveInteger(YDHT, 0x53373237, 0x64675C01, 0x57343033)
    udg_SH_JN[1] = (0x7A783031)
    udg_SH_JN[2] = (0x7A783032)
    udg_SH_JN[3] = (0x7A783033)
    udg_SH_JN[4] = (0x7A783034)
    udg_SH_JN[5] = (0x7A783035)
    udg_SH_JN[6] = (0x7A783036)
    udg_SH_JN[7] = (0x7A783037)
    udg_SH_JN[8] = (0x7A783038)
    udg_SH_JN[9] = (0x7A783039)
    udg_SH_JN[10] = (0x7A783130)
    udg_SH_JN[11] = (0x7A783131)
    udg_SH_JN[12] = (0x7A783132)
    udg_SH_JN[13] = (0x7A783133)
    udg_SH_JN[14] = (0x7A783134)
    udg_SH_JN[15] = (0x7A783135)
    udg_SH_JN[16] = (0x7A783136)
    udg_SH_JN[17] = (0x7A783137)
    udg_SH_JN[18] = (0x7A783138)
    udg_SH_JN[19] = (0x7A783139)
    udg_SH_JN[20] = (0x7A783230)
    udg_SH_JN[21] = (0x7A783231)
    udg_SH_JN[22] = (0x7A783232)
    udg_SH_JN[23] = (0x7A783233)
    udg_SH_JN[24] = (0x7A783234)
    udg_SH_JN[25] = (0x7A783235)
    udg_SH_JN[26] = (0x7A783236)
    udg_SH_JN[27] = (0x7A783237)
    udg_SH_JN[28] = (0x7A783238)
    udg_SH_JN[29] = (0x7A783239)
    udg_SH_JN[30] = (0x7A783330)
    udg_SH_JN[31] = (0x7A783331)
    udg_SH_JN[32] = (0x7A783332)
    SaveInteger(YDHT, (0x4A303144), 0x800C68E2, (0x30314A44))
    SaveInteger(YDHT, (0x4A303244), 0x800C68E2, (0x30324A44))
    SaveInteger(YDHT, (0x4A303344), 0x800C68E2, (0x30334A44))
    SaveInteger(YDHT, (0x4A303444), 0x800C68E2, (0x30344A44))
    SaveInteger(YDHT, StringHash("xinqing1"), 0xDB6427C9, (0x514D4A31))
    SaveInteger(YDHT, StringHash("xinqing2"), 0xDB6427C9, (0x514D4A32))
    SaveInteger(YDHT, StringHash("xinqing3"), 0xDB6427C9, (0x514D4A33))
    SaveInteger(YDHT, StringHash("xinqing4"), 0xDB6427C9, (0x514D4A34))
    SaveInteger(YDHT, ((GetHandleId((Player(0))))), (StringHash("1")), ((0x6B6B6A31)))
    SaveInteger(YDHT, ((GetHandleId((Player(0))))), (StringHash("2")), ((0x6B6B6A32)))
    SaveInteger(YDHT, ((GetHandleId((Player(0))))), (StringHash("3")), ((0x6B6B6A33)))
    SaveInteger(YDHT, ((GetHandleId((Player(0))))), (StringHash("4")), ((0x6B6B6A34)))
    SaveInteger(YDHT, ((GetHandleId((Player(1))))), (StringHash("1")), ((0x6B6B6931)))
    SaveInteger(YDHT, ((GetHandleId((Player(1))))), (StringHash("2")), ((0x6B6B6932)))
    SaveInteger(YDHT, ((GetHandleId((Player(1))))), (StringHash("3")), ((0x6B6B6933)))
    SaveInteger(YDHT, ((GetHandleId((Player(1))))), (StringHash("4")), ((0x6B6B6934)))
    SaveInteger(YDHT, ((GetHandleId((Player(2))))), (StringHash("1")), ((0x6B6B6E31)))
    SaveInteger(YDHT, ((GetHandleId((Player(2))))), (StringHash("2")), ((0x6B6B6E32)))
    SaveInteger(YDHT, ((GetHandleId((Player(2))))), (StringHash("3")), ((0x6B6B6E33)))
    SaveInteger(YDHT, ((GetHandleId((Player(2))))), (StringHash("4")), ((0x6B6B6E34)))
    SaveInteger(YDHT, ((GetHandleId((Player(3))))), (StringHash("1")), ((0x6B6B7531)))
    SaveInteger(YDHT, ((GetHandleId((Player(3))))), (StringHash("2")), ((0x6B6B7532)))
    SaveInteger(YDHT, ((GetHandleId((Player(3))))), (StringHash("3")), ((0x6B6B7533)))
    SaveInteger(YDHT, ((GetHandleId((Player(3))))), (StringHash("4")), ((0x6B6B7534)))
    SaveInteger(YDHT, StringHash(("技能库")), StringHash(("1")), (0x41436374))
    SaveInteger(YDHT, StringHash(("技能库")), StringHash(("2")), (0x41436372))
    SaveInteger(YDHT, StringHash(("技能库")), StringHash(("3")), (0x41437369))
    SaveInteger(YDHT, StringHash(("技能库")), StringHash(("4")), (0x414E6232))
    SaveInteger(YDHT, StringHash(("技能库")), StringHash(("5")), (0x414E7432))
    SaveInteger(YDHT, StringHash(("技能库")), StringHash(("6")), (0x41437673))
    SaveInteger(YDHT, StringHash(("技能库")), StringHash(("7")), (0x41436666))
    SaveInteger(YDHT, StringHash(("技能库")), StringHash(("8")), (0x4143736B))
    SaveInteger(YDHT, StringHash(("技能库")), StringHash(("9")), (0x41667A79))
    SaveInteger(YDHT, StringHash(("技能库")), StringHash(("10")), (0x41437463))
    SaveInteger(YDHT, StringHash(("技能库")), StringHash(("11")), (0x41436D32))
    SaveInteger(YDHT, StringHash(("技能库")), StringHash(("12")), (0x53437661))
    SaveInteger(YDHT, StringHash(("技能库")), StringHash(("13")), (0x41436573))
    SaveInteger(YDHT, StringHash(("技能库")), StringHash(("14")), (0x41436661))
    SaveInteger(YDHT, StringHash(("技能库")), StringHash(("15")), (0x4143726E))
end

function InitTrig________jn()
    gg_trg________jn = CreateTrigger()
    TriggerAddAction(gg_trg________jn, Trig________jnActions)
end
end
