-- Converted from 342.w3x map/map/war3map.j.
-- Trigger functions grouped by feature.
-- InitTrig_QJFH
-- InitTrig_rw_001
-- InitTrig_rwjs_002
-- InitTrig_sw_001
-- InitTrig_sw_002
-- InitTrig_sw_003
-- InitTrig_sw_004
-- InitTrig_sw_005
-- InitTrig_sw_006
-- InitTrig_sw_007
-- InitTrig_sw_008
-- InitTrig_sw_009
-- InitTrig_sw_010
-- InitTrig_sw_011
-- InitTrig_sw_012
-- InitTrig_cfq___________05
-- InitTrig_qjyd
-- InitTrig_qjyd_sj
-- InitTrig_SDDH______________001
-- InitTrig_QJ_1s
-- InitTrig_QJ_3s
return function(_ENV)
function Trig_QJFHFunc006T()
    SaveLocationHandle(YDLOC, GetHandleId(GetExpiredTimer()), 0x9CD60476, JK_Round(S2R(EXExecuteScript("(require'jass.slk').unit[" .. I2S(LoadInteger(YDLOC, GetHandleId(GetExpiredTimer()), 0x688DFB59)) .. "].Cool2")), S2R(EXExecuteScript("(require'jass.slk').unit[" .. I2S(LoadInteger(YDLOC, GetHandleId(GetExpiredTimer()), 0x688DFB59)) .. "].HFact2")), S2R(EXExecuteScript("(require'jass.slk').unit[" .. I2S(LoadInteger(YDLOC, GetHandleId(GetExpiredTimer()), 0x688DFB59)) .. "].Qfact2"))))
    CreateNUnitsAtLocFacingLocBJ(1, LoadInteger(YDLOC, GetHandleId(GetExpiredTimer()), 0x688DFB59), Player(PLAYER_NEUTRAL_AGGRESSIVE), LoadLocationHandle(YDLOC, GetHandleId(GetExpiredTimer()), 0x9CD60476), LoadLocationHandle(YDLOC, GetHandleId(GetExpiredTimer()), 0x9CD60476))
    SetUnitState(bj_lastCreatedUnit, UNIT_STATE_MAX_LIFE, LoadReal(YDLOC, GetHandleId(GetExpiredTimer()), 0x52DB984E))
    SetUnitState(bj_lastCreatedUnit, ConvertUnitState(0x12), LoadReal(YDLOC, GetHandleId(GetExpiredTimer()), 0x5039AFFB))
    SetUnitState(bj_lastCreatedUnit, ConvertUnitState(0x51), LoadReal(YDLOC, GetHandleId(GetExpiredTimer()), 0x23E43AEF))
    EXSetUnitFacing(bj_lastCreatedUnit, -90.00)
    SetUnitLifePercentBJ(bj_lastCreatedUnit, 100)
    RemoveLocation(LoadLocationHandle(YDLOC, GetHandleId(GetExpiredTimer()), 0x9CD60476))
    SaveUnitHandle(YDLOC, GetHandleId(GetExpiredTimer()), 0x258119AC, nil)
    FlushChildHashtable(YDLOC, GetHandleId(GetExpiredTimer()))
    DestroyTimer(GetExpiredTimer())
end

function Trig_QJFHActions()
    local ydl_timer = nil
    local ydl_localvar_step = LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xCFDE6C76)
    ydl_localvar_step = ydl_localvar_step + 3
    SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xCFDE6C76, ydl_localvar_step)
    SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xECE825E7, ydl_localvar_step)
    if ((LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x688DFB59) == (0x66303032))) then
        FlushChildHashtable(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step)
        ydl_timer = nil
        do
            return
        end
    else
    end
    SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x688DFB59, LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x688DFB59))
    SaveReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x52DB984E, LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x52DB984E))
    SaveReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x5039AFFB, LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x5039AFFB))
    SaveReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x23E43AEF, LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x23E43AEF))
    ydl_timer = CreateTimer()
    SaveLocationHandle(YDLOC, GetHandleId(ydl_timer), 0x9CD60476, LoadLocationHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x9CD60476))
    SaveReal(YDLOC, GetHandleId(ydl_timer), 0x5039AFFB, LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x5039AFFB))
    SaveReal(YDLOC, GetHandleId(ydl_timer), 0x23E43AEF, LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x23E43AEF))
    SaveInteger(YDLOC, GetHandleId(ydl_timer), 0x688DFB59, LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x688DFB59))
    SaveReal(YDLOC, GetHandleId(ydl_timer), 0x52DB984E, LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x52DB984E))
    TimerStart(ydl_timer, 1.50, false, Trig_QJFHFunc006T)
    FlushChildHashtable(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step)
    ydl_timer = nil
end

function InitTrig_QJFH()
    gg_trg_QJFH = CreateTrigger()
    DisableTrigger(gg_trg_QJFH)
    TriggerAddAction(gg_trg_QJFH, Trig_QJFHActions)
end

function Trig_rw_001Func004Func005T()
    IssueNeutralPointOrder(Player(5), LoadUnitHandle(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetExpiredTimer()), 0x48656946)), 0x5F2C6BD0), "patrol", 5130.00, -113.00)
    FlushChildHashtable(YDLOC, GetHandleId(GetExpiredTimer()))
    DestroyTimer(GetExpiredTimer())
end

function Trig_rw_001Func004Func013Conditions()
    local ydl_triggerstep = nil
    local ydl_trigger = nil
    if (((EVENT_UNIT_DEATH == GetTriggerEventId()) ~= true)) then
        if ((IsUnitAliveBJ(LoadUnitHandle(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()), 0x48656946)), 0x5F2C6BD0)) == true)) then
            ydl_trigger = gg_trg_rwjs_002
            ydl_triggerstep = GetHandleId(ydl_trigger) * (LoadInteger(YDLOC, GetHandleId(ydl_trigger), 0xCFDE6C76) + 3)
            SavePlayerHandle(YDLOC, ydl_triggerstep, 0x48656946, LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()), 0x48656946))
            SaveInteger(YDLOC, ydl_triggerstep, 0xB49B2751, LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xB49B2751))
            TriggerExecute(ydl_trigger)
        else
        end
    else
    end
    RemoveUnit(LoadUnitHandle(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()), 0x48656946)), 0x5F2C6BD0))
    RemoveSavedHandle(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()), 0x48656946)), 0x5F2C6BD0)
    FlushChildHashtable(YDLOC, GetHandleId(GetTriggeringTrigger()))
    DestroyTrigger(GetTriggeringTrigger())
    ydl_trigger = nil
end

function Trig_rw_001Func005Func002Func003Conditions()
    local ydl_triggerstep = nil
    local ydl_trigger = nil
    if ((IsUnitType(GetTriggerUnit(), UNIT_TYPE_HERO) == true) and (IsUnitEnemy(GetTriggerUnit(), Player(6)) == true)) then
        ydl_trigger = gg_trg_rwjs_002
        ydl_triggerstep = GetHandleId(ydl_trigger) * (LoadInteger(YDLOC, GetHandleId(ydl_trigger), 0xCFDE6C76) + 3)
        SavePlayerHandle(YDLOC, ydl_triggerstep, 0x48656946, GetOwningPlayer(GetTriggerUnit()))
        SaveInteger(YDLOC, ydl_triggerstep, 0xB49B2751, LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xB49B2751))
        TriggerExecute(ydl_trigger)
    else
    end
    ydl_trigger = nil
end

function Trig_rw_001Actions()
    local ydl_timer = nil
    local ydl_trigger = nil
    local ydl_localvar_step = LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xCFDE6C76)
    ydl_localvar_step = ydl_localvar_step + 3
    SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xCFDE6C76, ydl_localvar_step)
    SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xECE825E7, ydl_localvar_step)
    SavePlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946, LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))
    SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x6C2DED4E, LoadInteger(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x21F5563F))
    SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB49B2751, LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB49B2751))
    if ((LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x6C2DED4E) == 2)) then
        RemoveUnit(LoadUnitHandle(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x5F2C6BD0))
        SaveUnitHandle(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x5F2C6BD0, CreateUnit(Player(5), 0x68706561, 4100.00, 1500.00, 270.00))
        IssueNeutralPointOrder(Player(5), LoadUnitHandle(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x5F2C6BD0), "patrol", 5130.00, -113.00)
        ydl_timer = CreateTimer()
        SavePlayerHandle(YDLOC, GetHandleId(ydl_timer), 0x48656946, LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))
        TimerStart(ydl_timer, 0.50, false, Trig_rw_001Func004Func005T)
        CreateUnit(Player(PLAYER_NEUTRAL_AGGRESSIVE), (0x66303032), 4200.00, 903.00, bj_UNIT_FACING)
        CreateUnit(Player(PLAYER_NEUTRAL_AGGRESSIVE), (0x66303032), 4500.00, 608.00, bj_UNIT_FACING)
        CreateUnit(Player(PLAYER_NEUTRAL_AGGRESSIVE), (0x66303032), 4300.00, 370.00, bj_UNIT_FACING)
        CreateUnit(Player(PLAYER_NEUTRAL_AGGRESSIVE), (0x66303032), 4200.00, 290.00, bj_UNIT_FACING)
        CreateUnit(Player(PLAYER_NEUTRAL_AGGRESSIVE), (0x66303032), 4343.00, 200.00, bj_UNIT_FACING)
        CreateUnit(Player(PLAYER_NEUTRAL_AGGRESSIVE), (0x66303032), 4500.00, 0.00, bj_UNIT_FACING)
        UnitApplyTimedLifeBJ(12.00, 0x42487765, LoadUnitHandle(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x5F2C6BD0))
        ydl_trigger = CreateTrigger()
        SavePlayerHandle(YDLOC, GetHandleId(ydl_trigger), 0x48656946, LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))
        SaveInteger(YDLOC, GetHandleId(ydl_trigger), 0xB49B2751, LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB49B2751))
        TriggerRegisterUnitEvent(ydl_trigger, LoadUnitHandle(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x5F2C6BD0), EVENT_UNIT_DEATH)
        TriggerRegisterTimerEventSingle(ydl_trigger, 11.00)
        TriggerAddCondition(ydl_trigger, Condition(Trig_rw_001Func004Func013Conditions))
    else
    end
    if ((LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x6C2DED4E) == 9)) then
        if ((LoadBoolean(YDHT, GetHandleId(GetTriggeringTrigger()), 0xA81D0697) ~= true)) then
            SaveBoolean(YDHT, GetHandleId(GetTriggeringTrigger()), 0xA81D0697, true)
            ydl_trigger = CreateTrigger()
            SaveInteger(YDLOC, GetHandleId(ydl_trigger), 0xB49B2751, LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB49B2751))
            YDWETriggerRegisterEnterRectSimpleNull(ydl_trigger, gg_rct______________000)
            TriggerAddCondition(ydl_trigger, Condition(Trig_rw_001Func005Func002Func003Conditions))
        else
        end
    else
    end
    FlushChildHashtable(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step)
    ydl_timer = nil
    ydl_trigger = nil
end

function InitTrig_rw_001()
    gg_trg_rw_001 = CreateTrigger()
    TriggerAddAction(gg_trg_rw_001, Trig_rw_001Actions)
end

function Trig_rwjs_002Func004Func010Func001Func004T()
    JK_CameraTranslation(LoadPlayerHandle(YDLOC, GetHandleId(GetExpiredTimer()), 0x48656946), GetUnitX((LoadUnitHandle(YDHT, ((GetHandleId((LoadPlayerHandle(YDLOC, GetHandleId(GetExpiredTimer()), 0x48656946))))), (StringHash("10NPC"))))), GetUnitY((LoadUnitHandle(YDHT, ((GetHandleId((LoadPlayerHandle(YDLOC, GetHandleId(GetExpiredTimer()), 0x48656946))))), (StringHash("10NPC"))))), 1.00)
    FlushChildHashtable(YDLOC, GetHandleId(GetExpiredTimer()))
    DestroyTimer(GetExpiredTimer())
end

function Trig_rwjs_002Actions()
    local ydl_triggerstep = nil
    local ydl_trigger = nil
    local ydl_timer = nil
    local ydl_localvar_step = LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xCFDE6C76)
    ydl_localvar_step = ydl_localvar_step + 3
    SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xCFDE6C76, ydl_localvar_step)
    SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xECE825E7, ydl_localvar_step)
    SavePlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946, LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))
    SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB49B2751, LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB49B2751))
    SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xF374F3BD, LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xF374F3BD))
    RemoveUnit(LoadUnitHandle(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x7558D62A))
    SaveUnitHandle(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x7558D62A, CreateUnit(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946), LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB49B2751), 0, 0, 0))
    JK_UnitTranslationB(udg_WJYX[GetConvertedPlayerId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))], udg_LGFZB_x[GetConvertedPlayerId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))], udg_LGFZB_y[GetConvertedPlayerId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))], bj_lastCreatedEffect, 0.00, "任务完成", true)
    PlaySoundOnUnitBJ(gg_snd_ArcaneSanctumWhat1, 100, udg_WJYX[GetConvertedPlayerId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))])
    SaveEffectHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x62C50DE6, AddSpecialEffect("[ui].mdx", GetUnitX(udg_WJYX[GetConvertedPlayerId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))]), (GetUnitY(udg_WJYX[GetConvertedPlayerId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))]) - 800.00)))
    EXSetEffectSize(LoadEffectHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x62C50DE6), 5.00)
    YDWETimerDestroyEffect(1.00, LoadEffectHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x62C50DE6))
    SaveInteger(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x21F5563F, (LoadInteger(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x21F5563F) + 1))
    if ((LoadInteger(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x21F5563F) == 2)) then
        AddPlayerTechResearched(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946), 0x52303042, 1)
        ydl_trigger = gg_trg_ui_3x1
        ydl_triggerstep = GetHandleId(ydl_trigger) * (LoadInteger(YDLOC, GetHandleId(ydl_trigger), 0xCFDE6C76) + 3)
        SavePlayerHandle(YDLOC, ydl_triggerstep, 0x48656946, LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))
        SaveBoolean(YDLOC, ydl_triggerstep, 0x471AD3BB, true)
        TriggerExecute(ydl_trigger)
    else
    end
    if ((LoadInteger(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x21F5563F) == 6)) then
        ShowUnit((LoadUnitHandle(YDHT, ((GetHandleId((LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))))), (StringHash("10NPC")))), true)
        DestroyEffect(AddSpecialEffectTarget("E\\[e] (7).mdl", (LoadUnitHandle(YDHT, ((GetHandleId((LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))))), (StringHash("10NPC")))), "origin"))
        ydl_timer = CreateTimer()
        SavePlayerHandle(YDLOC, GetHandleId(ydl_timer), 0x48656946, LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))
        TimerStart(ydl_timer, 1.00, false, Trig_rwjs_002Func004Func010Func001Func004T)
    else
    end
    if ((LoadInteger(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x21F5563F) == 3)) then
        AddPlayerTechResearched(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946), 0x52303042, 1)
        SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x8DFA4095, GetRandomInt(1, 18))
        ydl_trigger = gg_trg_jn_load
        ydl_triggerstep = GetHandleId(ydl_trigger) * (LoadInteger(YDLOC, GetHandleId(ydl_trigger), 0xCFDE6C76) + 3)
        SavePlayerHandle(YDLOC, ydl_triggerstep, 0x48656946, LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))
        SaveInteger(YDLOC, ydl_triggerstep, 0xF374F3BD, (LoadInteger(YDHT, ((GetHandleId((Player(PLAYER_NEUTRAL_AGGRESSIVE))))), (StringHash(("jn_bd_" .. I2S(LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x8DFA4095))))))))
        SaveInteger(YDLOC, ydl_triggerstep, 0x6F96F2D2, GetConvertedPlayerId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)))
        SaveInteger(YDLOC, ydl_triggerstep, 0x6D77F75F, 2)
        TriggerExecute(ydl_trigger)
        ydl_trigger = gg_trg_UI_tips
        ydl_triggerstep = GetHandleId(ydl_trigger) * (LoadInteger(YDLOC, GetHandleId(ydl_trigger), 0xCFDE6C76) + 3)
        SavePlayerHandle(YDLOC, ydl_triggerstep, 0x48656946, LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))
        SaveInteger(YDLOC, ydl_triggerstep, 0x9CD60476, udg_JN_BUTTON[10])
        TriggerExecute(ydl_trigger)
    else
    end
    SaveBoolean(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x9837AD59, true)
    if ((YDWEUnitHasItemOfTypeBJNull(LoadUnitHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x911D5DC2), 0x58535735) == true)) then
        RemoveItem(YDWEGetItemOfTypeFromUnitBJNull(LoadUnitHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x911D5DC2), 0x58535735))
        UnitAddItemByIdSwapped(0x58535737, LoadUnitHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x911D5DC2))
        SaveUnitHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xEA59A379, (LoadUnitHandle(YDHT, ((GetHandleId((LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))))), (125))))
        ShowUnitShow(LoadUnitHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xEA59A379))
    else
    end
    if ((SubStringBJ((EXExecuteScript("(require'jass.slk').ability[" .. I2S(LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xF374F3BD)) .. "].Animnames")), 1, 1) == "n")) then
        YDWEReplaceUnitBJNull((LoadUnitHandle(YDHT, ((GetHandleId((LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))))), (StringHash("01NPC")))), (YDWES2Id(((EXExecuteScript("(require'jass.slk').ability[" .. I2S(LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xF374F3BD)) .. "].Animnames"))))), bj_UNIT_STATE_METHOD_DEFAULTS)
        SaveUnitHandle(YDHT, ((GetHandleId((LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))))), (StringHash("01NPC")), (bj_lastReplacedUnit))
    else
    end
    FlushChildHashtable(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step)
    ydl_trigger = nil
    ydl_timer = nil
end

function InitTrig_rwjs_002()
    gg_trg_rwjs_002 = CreateTrigger()
    TriggerAddAction(gg_trg_rwjs_002, Trig_rwjs_002Actions)
end

function Trig_sw_001Func004Func002Func004Func012Func001T()
    if ((LoadReal(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetExpiredTimer()), 0x48656946)), 0x37FA6B89) >= 50.00)) then
        ShowUnit((LoadUnitHandle(YDHT, ((GetHandleId((LoadPlayerHandle(YDLOC, GetHandleId(GetExpiredTimer()), 0x48656946))))), (StringHash("04NPC")))), true)
        JK_CameraTranslation(LoadPlayerHandle(YDLOC, GetHandleId(GetExpiredTimer()), 0x48656946), GetUnitX((LoadUnitHandle(YDHT, ((GetHandleId((LoadPlayerHandle(YDLOC, GetHandleId(GetExpiredTimer()), 0x48656946))))), (StringHash("04NPC"))))), GetUnitY((LoadUnitHandle(YDHT, ((GetHandleId((LoadPlayerHandle(YDLOC, GetHandleId(GetExpiredTimer()), 0x48656946))))), (StringHash("04NPC"))))), 0.00)
        DestroyEffect(AddSpecialEffectTarget("E\\[e] (7).mdl", (LoadUnitHandle(YDHT, ((GetHandleId((LoadPlayerHandle(YDLOC, GetHandleId(GetExpiredTimer()), 0x48656946))))), (StringHash("04NPC")))), "origin"))
        FlushChildHashtable(YDLOC, GetHandleId(GetExpiredTimer()))
        DestroyTimer(GetExpiredTimer())
    else
    end
end

function Trig_sw_001Actions()
    local ydl_triggerstep = nil
    local ydl_trigger = nil
    local ydl_timer = nil
    local ydl_localvar_step = LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xCFDE6C76)
    local d = nil
    local d1 = nil
    ydl_localvar_step = ydl_localvar_step + 3
    SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xCFDE6C76, ydl_localvar_step)
    SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xECE825E7, ydl_localvar_step)
    d = GetKillingUnit()
    d1 = GetTriggerUnit()
    if ((GetUnitTypeId((d1)) == (0x78736731))) then
        SaveInteger(YDHT, ((GetHandleId((GetOwningPlayer((d)))))), (StringHash("xsg1")), (((LoadInteger(YDHT, ((GetHandleId((GetOwningPlayer((d)))))), (StringHash("xsg1")))) + 1)))
        if ((GetOwningPlayer((d)) == GetLocalPlayer())) then
            DzFrameSetText(udg_UI_RWK[3], (("|cff00ff00螃蟹：(") .. (((I2S((LoadInteger(YDHT, ((GetHandleId((GetOwningPlayer((d)))))), (StringHash("xsg1")))))) .. ("/") .. ("10"))) .. ("）|r")))
        else
        end
        if (((LoadInteger(YDHT, ((GetHandleId((GetOwningPlayer((d)))))), (StringHash("xsg1")))) == 10)) then
            YDWETimerDestroyEffect(2, AddSpecialEffectTarget("[ui].mdl", d, "overhead"))
            PlaySoundOnUnitBJ(gg_snd_CrateDeath1, 100, d)
            SaveBoolean(YDHT, ((GetHandleId((GetOwningPlayer((d)))))), ((GetUnitTypeId((d1)))), (true))
            DzFrameSetParent(udg_UI, udg_UI_RWK[0])
            DzFrameSetParent(udg_UI_RWK[5], udg_UI)
            DzFrameSetSize(udg_UI, 0.18, 0.08)
            DzFrameSetPoint(udg_UI, 0, udg_UI_RWK[0], 0, 0.15, -0.012)
            DzFrameSetFont(udg_UI, "war3mapImported\\text.ttf", 0.01, 0)
            UnitAddItemByIdSwapped(0x78737731, (d))
            udg_wp[GetConvertedPlayerId(GetOwningPlayer((d)))] = GetLastCreatedItem()
            SetItemCharges(udg_wp[GetConvertedPlayerId(GetOwningPlayer((d)))], 500)
            if ((GetOwningPlayer((d)) == GetLocalPlayer())) then
                DzFrameShow(udg_UI, true)
                DzFrameSetText(udg_UI, "")
                DzFrameSetText(udg_UI_RWK[3], (("|cff00ff00白眼狼：(") .. (((I2S((LoadInteger(YDHT, ((GetHandleId((GetOwningPlayer((d)))))), (StringHash("xsg2")))))) .. ("/") .. ("1"))) .. ("）|r")))
                DzFrameSetText(udg_UI_RWK[2], "")
            else
            end
            ydl_trigger = gg_trg_UI_TEXT_002
            ydl_triggerstep = GetHandleId(ydl_trigger) * (LoadInteger(YDLOC, GetHandleId(ydl_trigger), 0xCFDE6C76) + 3)
            udg_UIzx[0] = "|cff00ffff仙子：听说最近村里出了个白眼狼,吃了不少人了,快去把它除掉！|r"
            SaveReal(YDLOC, ydl_triggerstep, 0x0050BBB8, 0.01)
            TriggerExecute(ydl_trigger)
            JK_UnitTranslationB(d, -4400.00, -185.00, bj_lastCreatedEffect, 0.00, "", true)
        else
        end
    else
    end
    if ((GetUnitTypeId((d1)) == (0x78736732))) then
        if (((LoadInteger(YDHT, ((GetHandleId((GetOwningPlayer((d)))))), (StringHash("xsg1")))) == 10)) then
            SaveInteger(YDHT, ((GetHandleId((GetOwningPlayer((d)))))), (StringHash("xsg2")), (((LoadInteger(YDHT, ((GetHandleId((GetOwningPlayer((d)))))), (StringHash("xsg2")))) + 1)))
            if ((GetOwningPlayer((d)) == GetLocalPlayer())) then
                DzFrameSetText(udg_UI_RWK[3], (("|cff00ff00任务目标|n白眼狼：(") .. (((I2S((LoadInteger(YDHT, ((GetHandleId((GetOwningPlayer((d)))))), (StringHash("xsg2")))))) .. ("/") .. ("1"))) .. ("）|r")))
            else
            end
            if (((LoadInteger(YDHT, ((GetHandleId((GetOwningPlayer((d)))))), (StringHash("xsg2")))) == 1)) then
                YDWETimerDestroyEffect(2, AddSpecialEffectTarget("[ui].mdl", d, "overhead"))
                PlaySoundOnUnitBJ(gg_snd_CrateDeath1, 100, d)
                SaveBoolean(YDHT, ((GetHandleId((GetOwningPlayer((d)))))), ((GetUnitTypeId((d1)))), (true))
                UnitAddAbilityBJ((0x58544731), d)
                if ((GetOwningPlayer((d)) == GetLocalPlayer())) then
                    DzFrameShow(udg_UI, true)
                    DzFrameSetText(udg_UI, "")
                    DzFrameSetText(udg_UI_RWK[3], (("|cff00ff00任务目标|n修为历练NPC,进行修炼") .. ("") .. ("|r")))
                else
                end
                JK_UnitTranslationB((d), udg_LGFZB_x[GetConvertedPlayerId(GetOwningPlayer((d)))], udg_LGFZB_y[GetConvertedPlayerId(GetOwningPlayer((d)))], bj_lastCreatedEffect, 0.00, "", true)
                SaveBoolean(YDHT, GetHandleId(GetOwningPlayer((d))), 0x92F49EBB, true)
                SaveBoolean(YDHT, GetHandleId(GetOwningPlayer(d)), 0x6BEB6A81, true)
                SaveInteger(YDHT, GetHandleId(GetOwningPlayer(d)), 0x133A1C8F, 3)
                ydl_trigger = gg_trg_UI_TEXT_002
                ydl_triggerstep = GetHandleId(ydl_trigger) * (LoadInteger(YDLOC, GetHandleId(ydl_trigger), 0xCFDE6C76) + 3)
                udg_UIzx[0] = "|cff00ffff仙子：现在点击修为历练NPC进行一次修炼吧！|r"
                SaveReal(YDLOC, ydl_triggerstep, 0x0050BBB8, 0.01)
                TriggerExecute(ydl_trigger)
                ydl_timer = CreateTimer()
                SavePlayerHandle(YDLOC, GetHandleId(ydl_timer), 0x48656946, GetOwningPlayer(d))
                TimerStart(ydl_timer, 1.00, true, Trig_sw_001Func004Func002Func004Func012Func001T)
                if ((GetOwningPlayer(GetKillingUnit()) == GetLocalPlayer())) then
                    DzFrameShow(udg_ui_BYDJ[0], true)
                else
                end
                ydl_trigger = gg_trg_UI_tips
                ydl_triggerstep = GetHandleId(ydl_trigger) * (LoadInteger(YDLOC, GetHandleId(ydl_trigger), 0xCFDE6C76) + 3)
                SavePlayerHandle(YDLOC, ydl_triggerstep, 0x48656946, GetOwningPlayer(GetKillingUnit()))
                SaveInteger(YDLOC, ydl_triggerstep, 0x9CD60476, udg_ui_BYDJ[0])
                TriggerExecute(ydl_trigger)
                ydl_trigger = gg_trg_ui_3x1
                ydl_triggerstep = GetHandleId(ydl_trigger) * (LoadInteger(YDLOC, GetHandleId(ydl_trigger), 0xCFDE6C76) + 3)
                SavePlayerHandle(YDLOC, ydl_triggerstep, 0x48656946, GetOwningPlayer(GetKillingUnit()))
                SaveBoolean(YDLOC, ydl_triggerstep, 0x312C4181, true)
                TriggerExecute(ydl_trigger)
            else
            end
        else
            DisplayTimedTextToPlayer(GetOwningPlayer(d), 0, 0, 5.00, "还是先帮仙子除掉池塘的大闸蟹吧……")
        end
    else
    end
    d = nil
    d1 = nil
    FlushChildHashtable(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step)
    ydl_trigger = nil
    ydl_timer = nil
end

function InitTrig_sw_001()
    gg_trg_sw_001 = CreateTrigger()
    TriggerAddAction(gg_trg_sw_001, Trig_sw_001Actions)
end

function Trig_sw_002Actions()
    local ydul_a = nil
    local ydl_triggerstep = nil
    local ydl_trigger = nil
    local ydl_localvar_step = LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xCFDE6C76)
    local d = nil
    local d1 = nil
    local d2 = nil
    ydl_localvar_step = ydl_localvar_step + 3
    SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xCFDE6C76, ydl_localvar_step)
    SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xECE825E7, ydl_localvar_step)
    d = GetKillingUnit()
    d1 = GetTriggerUnit()
    d2 = (LoadUnitHandle(YDHT, ((GetHandleId((GetOwningPlayer(d))))), (StringHash("01NPC"))))
    SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x6C2DED4E, GetUnitPointValue(d1))
    if ((LoadInteger(YDHT, GetHandleId(GetOwningPlayer(d)), 0x21F5563F) == LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x6C2DED4E))) then
        SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x004A6956, S2I(EXExecuteScript("(require'jass.slk').unit[" .. I2S(GetUnitTypeId(d1)) .. "].Farea2")))
        SaveInteger(YDHT, ((GetHandleId((GetOwningPlayer((d)))))), (StringHash(GetUnitName(d1))), (((LoadInteger(YDHT, ((GetHandleId((GetOwningPlayer((d)))))), (StringHash(GetUnitName(d1))))) + 1)))
        SavePlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946, GetOwningPlayer(d))
        SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xF374F3BD, (LoadInteger(YDHT, ((GetHandleId((GetOwningPlayer(d))))), ((GetHandleId((GetTriggeringTrigger())))))))
        SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x3B60835B, StringLength(YDWEGetUnitAbilityDataString(d2, LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xF374F3BD), 1, 219)))
        SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x3B60835B, (LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x3B60835B) // 4))
        ydul_a = 1
        while true do
            if ydul_a > LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x3B60835B) then
                break
            end
            SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xA1CFBB06 + (ydul_a), (YDWES2Id((SubStringBJ(YDWEGetUnitAbilityDataString(d2, LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xF374F3BD), 1, 219), (((ydul_a - 1) * 4) + 1), (((ydul_a - 1) * 4) + 4))))))
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
        ydul_a = 1
        while true do
            if ydul_a > LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x3B60835B) then
                break
            end
            SaveStr(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x342E7AF5, "")
            SaveStr(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2D1FF186 + (ydul_a), "")
            ydul_a = ydul_a + 1
        end
        if (((LoadInteger(YDHT, ((GetHandleId((GetOwningPlayer((d)))))), (StringHash(GetUnitName(d1))))) == LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x004A6956))) then
            SaveBoolean(YDHT, ((GetHandleId((GetOwningPlayer((d)))))), ((GetUnitTypeId((d1)))), (true))
            YDWETimerDestroyEffect(2, AddSpecialEffectTarget("[ui].mdl", d, "overhead"))
            PlaySoundOnUnitBJ(gg_snd_CrateDeath1, 100, d)
        else
        end
        ydul_a = 1
        while true do
            if ydul_a > LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x3B60835B) then
                break
            end
            if (((LoadBoolean(YDHT, ((GetHandleId((LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))))), ((LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xA1CFBB06 + (ydul_a)))))) ~= true)) then
                SaveBoolean(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x312C4181, true)
            else
            end
            ydul_a = ydul_a + 1
        end
        if ((GetUnitTypeId(d1) == (0x66303038))) then
            JK_UnitTranslationB(d, 12200.00, 16900.00, bj_lastCreatedEffect, 0.00, "", true)
        else
        end
        if ((LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x6C2DED4E) == 14)) then
            SaveInteger(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0xBAC98546, (LoadInteger(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0xBAC98546) + 1))
            SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xD53CB158, (YDWES2Id((("f0" .. I2S(LoadInteger(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0xBAC98546)))))))
            SaveReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2392447A, S2R(EXExecuteScript("(require'jass.slk').unit[" .. I2S(LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xD53CB158)) .. "].HFact2")))
            SaveReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB0897302, S2R(EXExecuteScript("(require'jass.slk').unit[" .. I2S(LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xD53CB158)) .. "].Qfact2")))
            JK_UnitTranslationB(d, LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2392447A), LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB0897302), bj_lastCreatedEffect, 0.00, "", true)
            if ((LoadInteger(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0xBAC98546) == 30)) then
                SaveBoolean(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x312C4181, false)
            else
                SaveBoolean(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x312C4181, true)
            end
        else
        end
        if ((LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x6C2DED4E) == 37)) then
            SaveInteger(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x42F55AB2, (LoadInteger(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x42F55AB2) + 1))
            SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xD53CB158, (YDWES2Id((("f0" .. I2S(LoadInteger(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x42F55AB2)))))))
            SaveReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2392447A, S2R(EXExecuteScript("(require'jass.slk').unit[" .. I2S(LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xD53CB158)) .. "].HFact2")))
            SaveReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB0897302, S2R(EXExecuteScript("(require'jass.slk').unit[" .. I2S(LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xD53CB158)) .. "].Qfact2")))
            JK_UnitTranslationB(d, LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2392447A), LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB0897302), bj_lastCreatedEffect, 0.00, "", true)
            if ((LoadInteger(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x42F55AB2) == 76)) then
                SaveBoolean(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x312C4181, false)
            else
                SaveBoolean(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x312C4181, true)
            end
        else
        end
        if ((LoadBoolean(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x312C4181) == false)) then
            ydl_trigger = gg_trg_rwjs_002
            ydl_triggerstep = GetHandleId(ydl_trigger) * (LoadInteger(YDLOC, GetHandleId(ydl_trigger), 0xCFDE6C76) + 3)
            SavePlayerHandle(YDLOC, ydl_triggerstep, 0x48656946, LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))
            SaveInteger(YDLOC, ydl_triggerstep, 0xB49B2751, (YDWES2Id(((EXExecuteScript("(require'jass.slk').ability[" .. I2S(LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xF374F3BD)) .. "].TargetArt"))))))
            SaveInteger(YDLOC, ydl_triggerstep, 0xF374F3BD, LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xF374F3BD))
            TriggerExecute(ydl_trigger)
        else
        end
    else
    end
    d = nil
    d1 = nil
    d2 = nil
    FlushChildHashtable(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step)
    ydl_trigger = nil
end

function InitTrig_sw_002()
    gg_trg_sw_002 = CreateTrigger()
    TriggerAddAction(gg_trg_sw_002, Trig_sw_002Actions)
end

function Trig_sw_003Actions()
    local ydl_triggerstep = nil
    local ydl_trigger = nil
    local ydul_a = nil
    local ydl_localvar_step = LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xCFDE6C76)
    local d = nil
    local d1 = nil
    local d2 = nil
    ydl_localvar_step = ydl_localvar_step + 3
    SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xCFDE6C76, ydl_localvar_step)
    SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xECE825E7, ydl_localvar_step)
    d = GetKillingUnit()
    d1 = GetTriggerUnit()
    d2 = (LoadUnitHandle(YDHT, ((GetHandleId((GetOwningPlayer(d))))), (StringHash("09NPC"))))
    SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xF374F3BD, (LoadInteger(YDHT, ((GetHandleId((GetOwningPlayer(d))))), ((GetHandleId((GetTriggeringTrigger())))))))
    SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x6C2DED4E, GetUnitPointValue(d1))
    if ((LoadInteger(YDHT, GetHandleId(GetOwningPlayer(d)), 0xB79358DF) == (LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x6C2DED4E) - 1))) then
        SavePlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946, GetOwningPlayer(d))
        SaveInteger(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0xB79358DF, (LoadInteger(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0xB79358DF) + 1))
        SaveBoolean(YDHT, ((GetHandleId((GetOwningPlayer((d)))))), ((GetUnitTypeId((d1)))), (true))
        UnitRemoveAbilityBJ((LoadInteger(YDHT, ((GetHandleId((GetOwningPlayer(d))))), ((GetHandleId((GetTriggeringTrigger())))))), d2)
        SavePlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946, GetOwningPlayer(d))
        if ((LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x6C2DED4E) ~= 2) and (LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x6C2DED4E) ~= 4)) then
            SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x3B60835B, StringLength((EXExecuteScript("(require'jass.slk').unit[" .. I2S(GetUnitTypeId(d1)) .. "].Description"))))
            SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB0497EE9 + (0), (YDWES2Id((SubStringBJ((EXExecuteScript("(require'jass.slk').unit[" .. I2S(GetUnitTypeId(d1)) .. "].Description")), 1, 4)))))
            SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB0497EE9 + (1), (YDWES2Id((SubStringBJ((EXExecuteScript("(require'jass.slk').unit[" .. I2S(GetUnitTypeId(d1)) .. "].Description")), 5, 8)))))
            ydl_trigger = gg_trg_xiandaochufa_ui
            ydl_triggerstep = GetHandleId(ydl_trigger) * (LoadInteger(YDLOC, GetHandleId(ydl_trigger), 0xCFDE6C76) + 3)
            SavePlayerHandle(YDLOC, ydl_triggerstep, 0x48656946, LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))
            SaveInteger(YDLOC, ydl_triggerstep, 0xDE0B82C4, LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB0497EE9 + (0)))
            SaveInteger(YDLOC, ydl_triggerstep, 0x356763AF, LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB0497EE9 + (1)))
            TriggerExecute(ydl_trigger)
        else
            SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB0497EE9, (YDWES2Id(((EXExecuteScript("(require'jass.slk').unit[" .. I2S(GetUnitTypeId(d1)) .. "].Tip"))))))
            SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xC30BA26B, LoadInteger(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0xB79358DF))
            SaveInteger(YDHT, ((GetHandleId((LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))))), (((udg_UI_9GG3[LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xC30BA26B)]))), (LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB0497EE9)))
            DisplayTextToPlayer(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946), 0, 0, "仙术学习成功！")
            SaveBoolean(YDHT, StringHash((GetPlayerName(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)))), StringHash(((EXExecuteScript("(require'jass.slk').item[" .. I2S(LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB0497EE9)) .. "].Name")))), (true))
            if ((LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946) == GetLocalPlayer())) then
                DzFrameSetTexture(udg_UI_9GG3[LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xC30BA26B)], (EXExecuteScript("(require'jass.slk').item[" .. I2S(LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB0497EE9)) .. "].Art")), 0)
                ydul_a = 0
                while true do
                    if ydul_a > 11 then
                        break
                    end
                    DzFrameShow(udg_UI_xsxz[ydul_a], false)
                    ydul_a = ydul_a + 1
                end
            else
            end
            SavePlayerHandle(YDHT, GetHandleId(Player(PLAYER_NEUTRAL_AGGRESSIVE)), 0x119572DE, GetOwningPlayer(d))
            SaveBoolean(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x8A0F9432, true)
            SaveInteger(YDHT, GetHandleId(Player(PLAYER_NEUTRAL_AGGRESSIVE)), 0x171487D7, LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB0497EE9))
            TriggerExecute(gg_trg_qjyd)
            ydl_trigger = gg_trg_UI_tips
            ydl_triggerstep = GetHandleId(ydl_trigger) * (LoadInteger(YDLOC, GetHandleId(ydl_trigger), 0xCFDE6C76) + 3)
            SavePlayerHandle(YDLOC, ydl_triggerstep, 0x48656946, LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))
            SaveInteger(YDLOC, ydl_triggerstep, 0x9CD60476, udg_UI_9GG3[LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xC30BA26B)])
            TriggerExecute(ydl_trigger)
        end
        JK_UnitTranslationB(d, udg_LGFZB_x[GetConvertedPlayerId(GetOwningPlayer(d))], udg_LGFZB_y[GetConvertedPlayerId(GetOwningPlayer(d))], bj_lastCreatedEffect, 0.00, "", true)
    else
    end
    d = nil
    d1 = nil
    d2 = nil
    FlushChildHashtable(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step)
    ydl_trigger = nil
end

function InitTrig_sw_003()
    gg_trg_sw_003 = CreateTrigger()
    TriggerAddAction(gg_trg_sw_003, Trig_sw_003Actions)
end

function Trig_sw_004Func006Func008Conditions()
    CreateItem(ChooseRandomItemBJ(GetUnitPointValue(GetTriggerUnit())), GetUnitX(GetTriggerUnit()), GetUnitY(GetTriggerUnit()))
    FlushChildHashtable(YDLOC, GetHandleId(GetTriggeringTrigger()))
    DestroyTrigger(GetTriggeringTrigger())
end

function Trig_sw_004Actions()
    local ydl_trigger = nil
    local ydl_localvar_step = LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xCFDE6C76)
    local d = nil
    local d1 = nil
    local d2 = nil
    ydl_localvar_step = ydl_localvar_step + 3
    SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xCFDE6C76, ydl_localvar_step)
    SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xECE825E7, ydl_localvar_step)
    d = GetKillingUnit()
    d1 = GetTriggerUnit()
    d2 = (LoadUnitHandle(YDHT, ((GetHandleId((GetOwningPlayer(d))))), (StringHash("01NPC"))))
    SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x6C2DED4E, GetUnitPointValue(d1))
    SaveInteger(YDHT, ((GetHandleId((GetOwningPlayer((d)))))), (StringHash(GetUnitName(d1))), (((LoadInteger(YDHT, ((GetHandleId((GetOwningPlayer((d)))))), (StringHash(GetUnitName(d1))))) + 1)))
    if (((LoadInteger(YDHT, ((GetHandleId((GetOwningPlayer((d)))))), (StringHash(GetUnitName(d1))))) == 35)) then
        SaveInteger(YDHT, ((GetHandleId((GetOwningPlayer((d)))))), (StringHash(GetUnitName(d1))), (0))
        SaveUnitHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x384C9D86, CreateUnit(Player(7), GetUnitTypeId(d1), GetUnitX(d1), GetUnitY(d1), 0))
        JK_SX_Change(LoadUnitHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x384C9D86), UNIT_STATE_MAX_LIFE, 1, (GetUnitStateSwap(UNIT_STATE_MAX_LIFE, d1) * 2.00))
        JK_SX_Change(LoadUnitHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x384C9D86), UNIT_STATE_LIFE, 1, (GetUnitStateSwap(UNIT_STATE_LIFE, d1) * 2.00))
        JK_SX_Change(LoadUnitHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x384C9D86), ConvertUnitState(0x12), 1, (GetUnitStateSwap(ConvertUnitState(0x12), d1) * 2.00))
        SetUnitVertexColor(LoadUnitHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x384C9D86), 255, 0, 0, 255)
        ydl_trigger = CreateTrigger()
        TriggerRegisterUnitEvent(ydl_trigger, LoadUnitHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x384C9D86), EVENT_UNIT_DEATH)
        TriggerAddCondition(ydl_trigger, Condition(Trig_sw_004Func006Func008Conditions))
        SaveUnitHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x384C9D86, nil)
    else
    end
    if ((GetUnitTypeId(d1) == (0x65623036))) then
        SavePlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946, GetOwningPlayer(d))
        SaveBoolean(YDHT, ((GetHandleId((GetOwningPlayer((d)))))), ((GetUnitTypeId((d1)))), (true))
        UnitRemoveAbilityBJ((0x77783036), (LoadUnitHandle(YDHT, ((GetHandleId((LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))))), (StringHash("08NPC")))))
        UnitAddAbilityBJ((0x77783037), (LoadUnitHandle(YDHT, ((GetHandleId((LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))))), (StringHash("08NPC")))))
        UnitAddAbilityBJ((0x77783038), (LoadUnitHandle(YDHT, ((GetHandleId((LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))))), (StringHash("08NPC")))))
        UnitAddAbilityBJ((0x77783039), (LoadUnitHandle(YDHT, ((GetHandleId((LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))))), (StringHash("08NPC")))))
        UnitAddAbilityBJ((0x77783130), (LoadUnitHandle(YDHT, ((GetHandleId((LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))))), (StringHash("08NPC")))))
        UnitAddAbilityBJ((0x77783131), (LoadUnitHandle(YDHT, ((GetHandleId((LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))))), (StringHash("08NPC")))))
    else
    end
    if ((GetRandomReal(0, 1) <= 0.02)) then
        CreateItem(ChooseRandomItemBJ(LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x6C2DED4E)), GetUnitX(d1), GetUnitY(d1))
    else
    end
    d = nil
    d1 = nil
    d2 = nil
    FlushChildHashtable(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step)
    ydl_trigger = nil
end

function InitTrig_sw_004()
    gg_trg_sw_004 = CreateTrigger()
    TriggerAddAction(gg_trg_sw_004, Trig_sw_004Actions)
end

function Trig_sw_005Actions()
    local ydl_localvar_step = LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xCFDE6C76)
    local d = nil
    local d1 = nil
    local d2 = nil
    ydl_localvar_step = ydl_localvar_step + 3
    SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xCFDE6C76, ydl_localvar_step)
    SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xECE825E7, ydl_localvar_step)
    d = GetKillingUnit()
    d1 = GetTriggerUnit()
    d2 = (LoadUnitHandle(YDHT, ((GetHandleId((GetOwningPlayer(d))))), (StringHash("04NPC"))))
    if ((GetUnitTypeId(d1) == (0x53443039))) then
        SaveBoolean(YDHT, ((GetHandleId((GetOwningPlayer((d)))))), ((GetUnitTypeId((d1)))), (true))
        RemoveItemFromStockBJ((0x424D3039), LoadUnitHandle(YDHT, GetHandleId(GetOwningPlayer(d)), 0x29F18A93))
        SavePlayerHandle(YDHT, GetHandleId(GetOwningPlayer(d)), 0x119572DE, GetOwningPlayer(d))
        SaveInteger(YDHT, GetHandleId(GetOwningPlayer(d)), 0x171487D7, (0x424D3039))
        TriggerExecute(gg_trg_qjyd)
        JK_UnitTranslationB(d, udg_LGFZB_x[GetConvertedPlayerId(GetOwningPlayer(d))], udg_LGFZB_y[GetConvertedPlayerId(GetOwningPlayer(d))], bj_lastCreatedEffect, 0.00, "", true)
        SaveInteger(YDHT, GetHandleId(GetOwningPlayer(d)), 0xCA61D8CA, (LoadInteger(YDHT, GetHandleId(GetOwningPlayer(d)), 0xCA61D8CA) + 1))
        SaveBoolean(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x312C4181, true)
    else
        SaveInteger(YDHT, ((GetHandleId((GetOwningPlayer((d)))))), (StringHash(GetUnitName(d1))), (((LoadInteger(YDHT, ((GetHandleId((GetOwningPlayer((d)))))), (StringHash(GetUnitName(d1))))) + 1)))
        DisplayTimedTextToPlayer(GetOwningPlayer(d), 0, 0, 1.00, (YDWEGetPlayerColorString(Player(0), (("[三花聚顶第") .. (I2S(LoadInteger(YDHT, GetHandleId(GetOwningPlayer(d)), 0x926CF5E7))) .. ("重]："))) .. YDWEGetPlayerColorString(Player(6), ((I2S((LoadInteger(YDHT, ((GetHandleId((GetOwningPlayer(d))))), (StringHash(GetUnitName(d1))))))) .. ("/25") .. ("")))))
        if (((LoadInteger(YDHT, ((GetHandleId((GetOwningPlayer((d)))))), (StringHash(GetUnitName(d1))))) == 25)) then
            DisplayTimedTextToPlayer(GetOwningPlayer(d), 0, 0, 1.00, (YDWEGetPlayerColorString(Player(0), (("[三花聚顶第") .. (I2S(LoadInteger(YDHT, GetHandleId(GetOwningPlayer(d)), 0x926CF5E7))) .. ("重]："))) .. YDWEGetPlayerColorString(Player(2), "已经突破玄关！")))
            SaveInteger(YDHT, ((GetHandleId((GetOwningPlayer((d)))))), (StringHash(GetUnitName(d1))), (0))
            SaveInteger(YDHT, GetHandleId(GetOwningPlayer(d)), 0x926CF5E7, (LoadInteger(YDHT, GetHandleId(GetOwningPlayer(d)), 0x926CF5E7) + 1))
            DestroyEffect(AddSpecialEffectTarget("war3mapImported\\[QH_Xin]TX_z (5).MDX", d, "overhead"))
            if ((LoadInteger(YDHT, GetHandleId(GetOwningPlayer(d)), 0x926CF5E7) == 4)) then
                SaveBoolean(YDHT, ((GetHandleId((GetOwningPlayer((d)))))), ((GetUnitTypeId((d1)))), (true))
                RemoveItemFromStockBJ((0x424D3130), LoadUnitHandle(YDHT, GetHandleId(GetOwningPlayer(d)), 0x29F18A93))
                SavePlayerHandle(YDHT, GetHandleId(GetOwningPlayer(d)), 0x119572DE, GetOwningPlayer(d))
                SaveInteger(YDHT, GetHandleId(GetOwningPlayer(d)), 0x171487D7, (0x424D3130))
                TriggerExecute(gg_trg_qjyd)
                JK_UnitTranslationB(d, udg_LGFZB_x[GetConvertedPlayerId(GetOwningPlayer(d))], udg_LGFZB_y[GetConvertedPlayerId(GetOwningPlayer(d))], bj_lastCreatedEffect, 0.00, "", true)
                SaveInteger(YDHT, GetHandleId(GetOwningPlayer(d)), 0xCA61D8CA, (LoadInteger(YDHT, GetHandleId(GetOwningPlayer(d)), 0xCA61D8CA) + 1))
                SaveBoolean(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x312C4181, true)
            else
            end
        else
        end
    end
    if ((LoadInteger(YDHT, GetHandleId(GetOwningPlayer(d)), 0xCA61D8CA) == 21) and (LoadBoolean(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x312C4181) == true)) then
        SavePlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946, GetOwningPlayer(d))
        AddItemToStockBJ((0x424D3132), LoadUnitHandle(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x29F18A93), 1, 1)
        AddItemToStockBJ((0x424D3133), LoadUnitHandle(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x29F18A93), 1, 1)
        AddItemToStockBJ((0x424D3134), LoadUnitHandle(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x29F18A93), 1, 1)
        AddItemToStockBJ((0x424D3135), LoadUnitHandle(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x29F18A93), 1, 1)
        AddItemToStockBJ((0x424D3136), LoadUnitHandle(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x29F18A93), 1, 1)
        AddItemToStockBJ((0x424D3137), LoadUnitHandle(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x29F18A93), 1, 1)
        AddItemToStockBJ((0x424D3138), LoadUnitHandle(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x29F18A93), 1, 1)
        AddItemToStockBJ((0x424D3139), LoadUnitHandle(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x29F18A93), 1, 1)
        AddItemToStockBJ((0x424D3230), LoadUnitHandle(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x29F18A93), 1, 1)
        SaveInteger(YDHT, ((GetHandleId((LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))))), (((udg_JN_BUTTON[1]))), ((0x424D3132)))
        SaveInteger(YDHT, ((GetHandleId((LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))))), (((udg_JN_BUTTON[2]))), ((0x424D3133)))
        SaveInteger(YDHT, ((GetHandleId((LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))))), (((udg_JN_BUTTON[3]))), ((0x424D3134)))
        SaveInteger(YDHT, ((GetHandleId((LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))))), (((udg_JN_BUTTON[4]))), ((0x424D3135)))
        SaveInteger(YDHT, ((GetHandleId((LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))))), (((udg_JN_BUTTON[5]))), ((0x424D3136)))
        SaveInteger(YDHT, ((GetHandleId((LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))))), (((udg_JN_BUTTON[6]))), ((0x424D3137)))
        SaveInteger(YDHT, ((GetHandleId((LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))))), (((udg_JN_BUTTON[7]))), ((0x424D3138)))
        SaveInteger(YDHT, ((GetHandleId((LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))))), (((udg_JN_BUTTON[8]))), ((0x424D3139)))
        SaveInteger(YDHT, ((GetHandleId((LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))))), (((udg_JN_BUTTON[9]))), ((0x424D3230)))
    else
    end
    if (true) then
    else
    end
    d = nil
    d1 = nil
    d2 = nil
    FlushChildHashtable(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step)
end

function InitTrig_sw_005()
    gg_trg_sw_005 = CreateTrigger()
    TriggerAddAction(gg_trg_sw_005, Trig_sw_005Actions)
end

function Trig_sw_006Actions()
    local d = GetKillingUnit()
    local d1 = GetTriggerUnit()
    local d2 = (LoadUnitHandle(YDHT, ((GetHandleId((GetOwningPlayer(d))))), (StringHash("04NPC"))))
    if ((S2I(EXExecuteScript("(require'jass.slk').unit[" .. I2S(GetUnitTypeId(d1)) .. "].Requiresamount")) == GetPlayerTechCountSimple(0x52303065, GetOwningPlayer(d)))) then
        SaveBoolean(YDHT, ((GetHandleId((GetOwningPlayer((d)))))), ((GetUnitTypeId((d1)))), (true))
        AddPlayerTechResearched(GetOwningPlayer(d), 0x52303065, 1)
        if (((LoadInteger(YDHT, ((GetHandleId((GetOwningPlayer(d))))), (StringHash(GetUnitName(d1))))) == 9)) then
        else
        end
    else
    end
    d = nil
    d1 = nil
    d2 = nil
end

function InitTrig_sw_006()
    gg_trg_sw_006 = CreateTrigger()
    TriggerAddAction(gg_trg_sw_006, Trig_sw_006Actions)
end

function Trig_sw_007Actions()
end

function InitTrig_sw_007()
    gg_trg_sw_007 = CreateTrigger()
    TriggerAddAction(gg_trg_sw_007, Trig_sw_007Actions)
end

function Trig_sw_008Actions()
end

function InitTrig_sw_008()
    gg_trg_sw_008 = CreateTrigger()
    TriggerAddAction(gg_trg_sw_008, Trig_sw_008Actions)
end

function Trig_sw_009Actions()
end

function InitTrig_sw_009()
    gg_trg_sw_009 = CreateTrigger()
    TriggerAddAction(gg_trg_sw_009, Trig_sw_009Actions)
end

function Trig_sw_010Actions()
end

function InitTrig_sw_010()
    gg_trg_sw_010 = CreateTrigger()
    TriggerAddAction(gg_trg_sw_010, Trig_sw_010Actions)
end

function Trig_sw_011Actions()
end

function InitTrig_sw_011()
    gg_trg_sw_011 = CreateTrigger()
    TriggerAddAction(gg_trg_sw_011, Trig_sw_011Actions)
end

function Trig_sw_012Actions()
end

function InitTrig_sw_012()
    gg_trg_sw_012 = CreateTrigger()
    TriggerAddAction(gg_trg_sw_012, Trig_sw_012Actions)
end

function Trig_cfq___________05Actions()
    SaveTriggerHandle(YDHT, ((GetHandleId((Player(PLAYER_NEUTRAL_AGGRESSIVE))))), (StringHash(("cfq1"))), (gg_trg_sw_001))
    SaveTriggerHandle(YDHT, ((GetHandleId((Player(PLAYER_NEUTRAL_AGGRESSIVE))))), (StringHash(("cfq2"))), (gg_trg_sw_002))
    SaveTriggerHandle(YDHT, ((GetHandleId((Player(PLAYER_NEUTRAL_AGGRESSIVE))))), (StringHash(("cfq3"))), (gg_trg_sw_003))
    SaveTriggerHandle(YDHT, ((GetHandleId((Player(PLAYER_NEUTRAL_AGGRESSIVE))))), (StringHash(("cfq4"))), (gg_trg_sw_004))
    SaveTriggerHandle(YDHT, ((GetHandleId((Player(PLAYER_NEUTRAL_AGGRESSIVE))))), (StringHash(("cfq5"))), (gg_trg_sw_005))
    SaveTriggerHandle(YDHT, ((GetHandleId((Player(PLAYER_NEUTRAL_AGGRESSIVE))))), (StringHash(("cfq6"))), (gg_trg_sw_006))
    SaveTriggerHandle(YDHT, ((GetHandleId((Player(PLAYER_NEUTRAL_AGGRESSIVE))))), (StringHash(("cfq7"))), (gg_trg_sw_007))
    SaveTriggerHandle(YDHT, ((GetHandleId((Player(PLAYER_NEUTRAL_AGGRESSIVE))))), (StringHash(("cfq8"))), (gg_trg_sw_008))
    SaveTriggerHandle(YDHT, ((GetHandleId((Player(PLAYER_NEUTRAL_AGGRESSIVE))))), (StringHash(("cfq9"))), (gg_trg_sw_009))
    SaveTriggerHandle(YDHT, ((GetHandleId((Player(PLAYER_NEUTRAL_AGGRESSIVE))))), (StringHash(("cfq10"))), (gg_trg_sw_010))
    SaveTriggerHandle(YDHT, ((GetHandleId((Player(PLAYER_NEUTRAL_AGGRESSIVE))))), (StringHash(("cfq11"))), (gg_trg_sw_011))
    SaveTriggerHandle(YDHT, ((GetHandleId((Player(PLAYER_NEUTRAL_AGGRESSIVE))))), (StringHash(("cfq12"))), (gg_trg_sw_012))
end

function InitTrig_cfq___________05()
    gg_trg_cfq___________05 = CreateTrigger()
    TriggerAddAction(gg_trg_cfq___________05, Trig_cfq___________05Actions)
end

function Trig_qjydActions()
    local ydul_a = nil
    local ydl_localvar_step = LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xCFDE6C76)
    ydl_localvar_step = ydl_localvar_step + 3
    SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xCFDE6C76, ydl_localvar_step)
    SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xECE825E7, ydl_localvar_step)
    SavePlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946, LoadPlayerHandle(YDHT, GetHandleId(Player(PLAYER_NEUTRAL_AGGRESSIVE)), 0x119572DE))
    SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x6F96F2D2, GetConvertedPlayerId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)))
    if ((LoadBoolean(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xAC98E756) == true)) then
        SavePlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946, LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))
        SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xBCFAAC25, LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xBCFAAC25))
    else
        SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xBCFAAC25, (LoadInteger(YDHT, GetHandleId(Player(PLAYER_NEUTRAL_AGGRESSIVE)), 0x171487D7)))
    end
    SaveItemHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x8C98F085, LoadItemHandle(YDHT, GetHandleId(Player(PLAYER_NEUTRAL_AGGRESSIVE)), 0x8C98F085))
    SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x6F96F2D2, GetConvertedPlayerId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)))
    SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x6C2DED4E, 2)
    SaveUnitHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x911D5DC2, udg_WJYX[LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x6F96F2D2)])
    SaveReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2D1E4992 + (84), (LoadReal(udg_jnorwp[LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x6C2DED4E)], LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xBCFAAC25), 84) * RSignBJ(LoadReal(YDHT, GetHandleId(Player(PLAYER_NEUTRAL_AGGRESSIVE)), 0xE8319FBA))))
    ydul_a = 1
    while true do
        if ydul_a > 86 then
            break
        end
        if ((ydul_a ~= 84)) then
            SaveReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2D1E4992 + (ydul_a), (LoadReal(udg_jnorwp[LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x6C2DED4E)], LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xBCFAAC25), ydul_a) * RSignBJ(LoadReal(YDHT, GetHandleId(Player(PLAYER_NEUTRAL_AGGRESSIVE)), 0xE8319FBA))))
            if ((LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2D1E4992 + (84)) ~= 0.00) and (LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2D1E4992 + (ydul_a)) ~= 0.00)) then
                SaveReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2D1E4992 + (ydul_a), (LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2D1E4992 + (ydul_a)) * (1.00 + (LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2D1E4992 + (84)) * I2R(LoadInteger(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0xB43FB128))))))
            else
            end
        else
        end
        ydul_a = ydul_a + 1
    end
    if ((LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2D1E4992 + (1)) ~= 0.00)) then
        if ((LoadBoolean(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x8A0F9432) == true)) then
            XY_UnitSetBonus_WB(udg_WJYX[GetConvertedPlayerId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))], 3, 1, R2I(LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2D1E4992 + (1))))
        else
            JK_SX_Change(udg_WJYX[GetConvertedPlayerId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))], ConvertUnitState(0x12), 1, LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2D1E4992 + (1)))
        end
    else
    end
    if ((LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2D1E4992 + (2)) ~= 0.00)) then
        if ((LoadBoolean(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x8A0F9432) == true)) then
            XY_UnitSetBonus_WB(udg_WJYX[GetConvertedPlayerId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))], 4, 1, R2I(LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2D1E4992 + (2))))
        else
            JK_SX_Change(udg_WJYX[GetConvertedPlayerId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))], ConvertUnitState(0x20), 1, LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2D1E4992 + (2)))
        end
    else
    end
    if ((LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2D1E4992 + (3)) ~= 0.00)) then
        SaveReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x4EF7B695, GetUnitLifePercent(LoadUnitHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x911D5DC2)))
        SetUnitState(LoadUnitHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x911D5DC2), UNIT_STATE_MAX_LIFE, (GetUnitState(LoadUnitHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x911D5DC2), UNIT_STATE_MAX_LIFE) + LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2D1E4992 + (3))))
        SetUnitLifePercentBJ(LoadUnitHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x911D5DC2), LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x4EF7B695))
    else
    end
    if ((LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2D1E4992 + (4)) ~= 0.00)) then
        if (((EXExecuteScript("(require'jass.slk').unit[" .. I2S(GetUnitTypeId(LoadUnitHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x911D5DC2))) .. "].Primary")) == "STR")) then
            XY_UnitSetBonus_WB(LoadUnitHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x911D5DC2), 8, 1, R2I(LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2D1E4992 + (4))))
        else
            if (((EXExecuteScript("(require'jass.slk').unit[" .. I2S(GetUnitTypeId(LoadUnitHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x911D5DC2))) .. "].Primary")) == "AGI")) then
                XY_UnitSetBonus_WB(LoadUnitHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x911D5DC2), 9, 1, R2I(LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2D1E4992 + (4))))
            else
                if (((EXExecuteScript("(require'jass.slk').unit[" .. I2S(GetUnitTypeId(LoadUnitHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x911D5DC2))) .. "].Primary")) == "INT")) then
                    XY_UnitSetBonus_WB(LoadUnitHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x911D5DC2), 10, 1, R2I(LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2D1E4992 + (4))))
                else
                end
            end
        end
    else
    end
    if ((LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2D1E4992 + (5)) ~= 0.00)) then
        XY_UnitSetBonus_WB(LoadUnitHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x911D5DC2), 8, 1, R2I(LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2D1E4992 + (5))))
        XY_UnitSetBonus_WB(LoadUnitHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x911D5DC2), 9, 1, R2I(LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2D1E4992 + (5))))
        XY_UnitSetBonus_WB(LoadUnitHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x911D5DC2), 10, 1, R2I(LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2D1E4992 + (5))))
    else
    end
    if ((LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2D1E4992 + (6)) ~= 0.00)) then
        if ((GetUnitAbilityLevelSwapped((0x53483037), LoadUnitHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x911D5DC2)) > 0)) then
            SaveReal(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x08BAB87E, (LoadReal(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x08BAB87E) + (LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2D1E4992 + (6)) * 0.01)))
        else
            SaveReal(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x25495654, (LoadReal(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x25495654) + (LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2D1E4992 + (6)) * 0.01)))
        end
    else
    end
    if ((LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2D1E4992 + (7)) ~= 0.00)) then
        SaveReal(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x340B6D5D, (LoadReal(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x340B6D5D) + (LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2D1E4992 + (7)) * 0.01)))
    else
    end
    if ((LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2D1E4992 + (8)) ~= 0.00)) then
        if ((GetUnitAbilityLevelSwapped((0x53483037), LoadUnitHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x911D5DC2)) > 0)) then
            SaveReal(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x08BAB87E, (LoadReal(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x08BAB87E) + (LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2D1E4992 + (8)) * 0.01)))
        else
            if ((GetUnitAbilityLevelSwapped((0x53483039), GetEventDamageSource()) > 0)) then
                if ((LoadReal(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x09DB3E68) > 3.00)) then
                    SaveReal(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x16C5C392, (LoadReal(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x16C5C392) + (LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2D1E4992 + (8)) * 0.01)))
                else
                    SaveReal(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x09DB3E68, (LoadReal(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x09DB3E68) + (LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2D1E4992 + (8)) * 0.01)))
                end
            else
                SaveReal(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x09DB3E68, (LoadReal(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x09DB3E68) + (LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2D1E4992 + (8)) * 0.01)))
            end
        end
    else
    end
    if ((LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2D1E4992 + (9)) ~= 0.00)) then
        SaveReal(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x1514A9DB, (LoadReal(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x1514A9DB) + (LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2D1E4992 + (9)) * 0.01)))
    else
    end
    if ((LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2D1E4992 + (10)) ~= 0.00)) then
        SaveReal(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x11767CA1, (LoadReal(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x11767CA1) + (LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2D1E4992 + (10)) * 0.01)))
    else
    end
    if ((LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2D1E4992 + (11)) ~= 0.00)) then
        SaveReal(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x77194C38, (LoadReal(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x77194C38) + (LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2D1E4992 + (11)) * 1.00)))
    else
    end
    if ((LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2D1E4992 + (12)) ~= 0.00)) then
        SaveReal(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0xD4E85C3E, (LoadReal(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0xD4E85C3E) + (LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2D1E4992 + (12)) * 1.00)))
    else
    end
    if ((LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2D1E4992 + (13)) ~= 0.00)) then
        udg_BSBHF[GetConvertedPlayerId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))] = (udg_BSBHF[GetConvertedPlayerId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))] + LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2D1E4992 + (13)))
    else
    end
    if ((LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2D1E4992 + (14)) ~= 0.00)) then
        udg_SDJQ[GetConvertedPlayerId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))] = (udg_SDJQ[GetConvertedPlayerId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))] + (LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2D1E4992 + (14)) * 0.01))
    else
    end
    if ((LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2D1E4992 + (15)) ~= 0.00)) then
        SaveReal(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0xB00B5016, (LoadReal(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0xB00B5016) + (LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2D1E4992 + (15)) * 0.01)))
    else
    end
    if ((LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2D1E4992 + (16)) ~= 0.00)) then
        SaveReal(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x508FB3EA, (LoadReal(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x508FB3EA) + (LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2D1E4992 + (16)) * 0.01)))
    else
    end
    if ((LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2D1E4992 + (17)) ~= 0.00)) then
        SaveReal(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x08BAB87E, (LoadReal(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x08BAB87E) + (LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2D1E4992 + (17)) * 0.01)))
    else
    end
    if ((LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2D1E4992 + (18)) ~= 0.00)) then
        SaveReal(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x0098CEEB, (LoadReal(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x0098CEEB) + (LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2D1E4992 + (18)) * 0.01)))
    else
    end
    if ((LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2D1E4992 + (19)) ~= 0.00)) then
        SaveReal(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0xC08430F1, (LoadReal(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0xC08430F1) + (LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2D1E4992 + (19)) * 0.01)))
    else
    end
    if ((LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2D1E4992 + (20)) ~= 0.00)) then
        SaveReal(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0xFB8FACBD, (LoadReal(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0xFB8FACBD) + (LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2D1E4992 + (20)) * 0.01)))
    else
    end
    if ((LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2D1E4992 + (21)) ~= 0.00)) then
        SaveReal(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x16C5C392, (LoadReal(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x16C5C392) + (LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2D1E4992 + (21)) * 0.01)))
    else
    end
    if ((LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2D1E4992 + (22)) ~= 0.00)) then
        XY_UnitSetBonus_WB(LoadUnitHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x911D5DC2), 8, 1, R2I(LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2D1E4992 + (22))))
    else
    end
    if ((LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2D1E4992 + (23)) ~= 0.00)) then
        SaveReal(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x858DB907, (LoadReal(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x858DB907) + (LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2D1E4992 + (23)) * 0.01)))
    else
    end
    if ((LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2D1E4992 + (24)) ~= 0.00)) then
        JK_SX_Change(LoadUnitHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x911D5DC2), UNIT_STATE_MAX_MANA, 1, LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2D1E4992 + (24)))
    else
    end
    if ((LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2D1E4992 + (25)) ~= 0.00)) then
        JK_SX_Change(LoadUnitHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x911D5DC2), ConvertUnitState(0x25), 2, LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2D1E4992 + (25)))
        SetUnitState(LoadUnitHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x911D5DC2), ConvertUnitState(0x25), RMaxBJ(0.40, GetUnitStateSwap(ConvertUnitState(0x25), LoadUnitHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x911D5DC2))))
    else
    end
    if ((LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2D1E4992 + (26)) ~= 0.00)) then
        XY_UnitSetBonus_WB(LoadUnitHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x911D5DC2), 9, 1, R2I(LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2D1E4992 + (26))))
    else
    end
    if ((LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2D1E4992 + (27)) ~= 0.00)) then
        udg_SDJQ3[GetConvertedPlayerId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))] = (udg_SDJQ3[GetConvertedPlayerId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))] + (LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2D1E4992 + (27)) * 0.01))
    else
    end
    if ((LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2D1E4992 + (28)) ~= 0.00)) then
        SaveReal(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0xEEEA13B0, (LoadReal(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0xEEEA13B0) + (LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2D1E4992 + (28)) * 0.01)))
    else
    end
    if ((LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2D1E4992 + (29)) ~= 0.00)) then
        SaveReal(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x9691B869, (LoadReal(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x9691B869) + (LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2D1E4992 + (29)) * 0.01)))
    else
    end
    if ((LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2D1E4992 + (30)) ~= 0.00)) then
        SaveInteger(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x0CC2B67B, (LoadInteger(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x0CC2B67B) + R2I(LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2D1E4992 + (30)))))
    else
    end
    if ((LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2D1E4992 + (31)) ~= 0.00)) then
        SaveReal(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0xF11499E9, (LoadReal(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0xF11499E9) + (LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2D1E4992 + (31)) * 0.01)))
    else
    end
    if ((LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2D1E4992 + (32)) ~= 0.00)) then
        SaveReal(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x8B470E4E, (LoadReal(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x8B470E4E) + (LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2D1E4992 + (32)) * 0.01)))
    else
    end
    if ((LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2D1E4992 + (33)) ~= 0.00)) then
        SaveReal(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x54BD8D0F, (LoadReal(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x54BD8D0F) + (LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2D1E4992 + (33)) * 0.01)))
    else
    end
    if ((LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2D1E4992 + (34)) ~= 0.00)) then
        udg_SDJQ4[GetConvertedPlayerId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))] = (udg_SDJQ4[GetConvertedPlayerId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))] + (LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2D1E4992 + (34)) * 0.01))
    else
    end
    if ((LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2D1E4992 + (35)) ~= 0.00)) then
        SaveReal(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x8B1CE21E, (LoadReal(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x8B1CE21E) + (LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2D1E4992 + (35)) * 0.01)))
    else
    end
    if ((LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2D1E4992 + (36)) ~= 0.00)) then
        SaveInteger(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x28ECE0C5, (LoadInteger(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x28ECE0C5) + R2I(LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2D1E4992 + (36)))))
        if ((GetUnitAbilityLevelSwapped((0x53483231), udg_WJYX[GetConvertedPlayerId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))]) > 0)) then
            SaveInteger(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x28ECE0C5, (LoadInteger(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x28ECE0C5) + R2I(LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2D1E4992 + (36)))))
        else
        end
    else
    end
    if ((LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2D1E4992 + (37)) ~= 0.00)) then
        udg_GLSH[GetConvertedPlayerId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))] = (udg_GLSH[GetConvertedPlayerId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))] + (LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2D1E4992 + (37)) * 0.01))
    else
    end
    if ((LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2D1E4992 + (38)) ~= 0.00)) then
        SaveInteger(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x7DE8906F, (LoadInteger(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x7DE8906F) + R2I(LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2D1E4992 + (38)))))
    else
    end
    if ((LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2D1E4992 + (39)) ~= 0.00)) then
        udg_SDJQ2[GetConvertedPlayerId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))] = (udg_SDJQ2[GetConvertedPlayerId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))] + (LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2D1E4992 + (39)) * 0.01))
    else
    end
    if ((LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2D1E4992 + (40)) ~= 0.00)) then
        SaveReal(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0xDA717BFA, (LoadReal(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0xDA717BFA) + (LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2D1E4992 + (40)) * 0.01)))
    else
    end
    if ((LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2D1E4992 + (41)) ~= 0.00)) then
    else
    end
    if ((LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2D1E4992 + (42)) ~= 0.00)) then
        SaveReal(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x49E8B4D6, (LoadReal(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x49E8B4D6) + (LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2D1E4992 + (42)) * 0.01)))
    else
    end
    if ((LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2D1E4992 + (43)) ~= 0.00)) then
        JK_SX_Change(LoadUnitHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x911D5DC2), ConvertUnitState(0x51), 1, (LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2D1E4992 + (43)) * 0.01))
    else
    end
    if ((LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2D1E4992 + (44)) ~= 0.00)) then
        SaveReal(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0xE574B4E8, (LoadReal(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0xE574B4E8) + LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2D1E4992 + (44))))
    else
    end
    if ((LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2D1E4992 + (45)) ~= 0.00)) then
        SaveReal(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x72AFA36E, (LoadReal(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x72AFA36E) + LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2D1E4992 + (45))))
    else
    end
    if ((LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2D1E4992 + (46)) ~= 0.00)) then
        SaveReal(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x6FEEDF3C, (LoadReal(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x6FEEDF3C) + LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2D1E4992 + (46))))
    else
    end
    if ((LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2D1E4992 + (47)) ~= 0.00)) then
        SaveReal(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0xCF107893, (LoadReal(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0xCF107893) + LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2D1E4992 + (47))))
    else
    end
    if ((LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2D1E4992 + (48)) ~= 0.00)) then
        SaveReal(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0xB168A63C, (LoadReal(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0xB168A63C) + LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2D1E4992 + (48))))
    else
    end
    if ((LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2D1E4992 + (49)) ~= 0.00)) then
        SaveReal(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x5700935B, (LoadReal(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x5700935B) + LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2D1E4992 + (49))))
    else
    end
    if ((LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2D1E4992 + (50)) ~= 0.00)) then
        SaveReal(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x31EAADD3, (LoadReal(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x31EAADD3) + LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2D1E4992 + (50))))
    else
    end
    if ((LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2D1E4992 + (51)) ~= 0.00)) then
        SaveReal(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x7BD21826, (LoadReal(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x7BD21826) + (LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2D1E4992 + (51)) * 0.01)))
    else
    end
    if ((LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2D1E4992 + (52)) ~= 0.00)) then
        XY_UnitSetBonus_WB(LoadUnitHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x911D5DC2), 10, 1, R2I(LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2D1E4992 + (52))))
    else
    end
    if ((LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2D1E4992 + (53)) ~= 0.00)) then
        SaveReal(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x821C5818, (LoadReal(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x821C5818) + LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2D1E4992 + (53))))
    else
    end
    if ((LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2D1E4992 + (54)) ~= 0.00)) then
        AdjustPlayerStateBJ(R2I(LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2D1E4992 + (54))), LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946), PLAYER_STATE_RESOURCE_GOLD)
    else
    end
    if ((LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2D1E4992 + (55)) ~= 0.00)) then
        SaveInteger(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x7E36BC89, (LoadInteger(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x7E36BC89) + R2I(LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2D1E4992 + (55)))))
    else
    end
    if ((LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2D1E4992 + (56)) ~= 0.00)) then
        SaveReal(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x356FC9A7, (LoadReal(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x356FC9A7) + LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2D1E4992 + (56))))
    else
    end
    if ((LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2D1E4992 + (57)) ~= 0.00)) then
        SaveReal(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0xC40EA960, (LoadReal(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0xC40EA960) + LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2D1E4992 + (57))))
    else
    end
    if ((LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2D1E4992 + (58)) ~= 0.00)) then
        SaveReal(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0xE99A9DEA, (LoadReal(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0xE99A9DEA) + LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2D1E4992 + (58))))
    else
    end
    if ((LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2D1E4992 + (59)) ~= 0.00)) then
        SaveReal(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0xE78FC751, (LoadReal(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0xE78FC751) + (LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2D1E4992 + (59)) * 0.01)))
    else
    end
    if ((LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2D1E4992 + (60)) ~= 0.00)) then
        SaveInteger(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x3CCC25B9, (LoadInteger(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x3CCC25B9) + R2I(LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2D1E4992 + (60)))))
    else
    end
    if ((LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2D1E4992 + (61)) ~= 0.00)) then
        ydul_a = 1
        while true do
            if ydul_a > R2I(LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2D1E4992 + (61))) then
                break
            end
            SaveItemHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xD14F34A9, PlaceRandomItem(cjc1, udg_LGFZB_x[GetConvertedPlayerId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))], (udg_LGFZB_y[GetConvertedPlayerId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))] - 300.00)))
            DisplayTimedTextToPlayer(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946), 0, 0, 3.00, YDWEGetPlayerColorString(Player(0), GetItemName(LoadItemHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xD14F34A9))))
            SaveItemHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xD14F34A9, nil)
            ydul_a = ydul_a + 1
        end
    else
    end
    if ((LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2D1E4992 + (62)) ~= 0.00)) then
        ydul_a = 1
        while true do
            if ydul_a > R2I(LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2D1E4992 + (62))) then
                break
            end
            SaveItemHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xD14F34A9, PlaceRandomItem(cjc2, udg_LGFZB_x[GetConvertedPlayerId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))], (udg_LGFZB_y[GetConvertedPlayerId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))] - 300.00)))
            DisplayTimedTextToPlayer(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946), 0, 0, 3.00, YDWEGetPlayerColorString(Player(0), GetItemName(LoadItemHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xD14F34A9))))
            SaveItemHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xD14F34A9, nil)
            ydul_a = ydul_a + 1
        end
    else
    end
    if ((LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2D1E4992 + (63)) ~= 0.00)) then
        ydul_a = 1
        while true do
            if ydul_a > R2I(LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2D1E4992 + (63))) then
                break
            end
            SaveItemHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xD14F34A9, PlaceRandomItem(cjc3, udg_LGFZB_x[GetConvertedPlayerId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))], (udg_LGFZB_y[GetConvertedPlayerId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))] - 300.00)))
            DisplayTimedTextToPlayer(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946), 0, 0, 3.00, YDWEGetPlayerColorString(Player(0), GetItemName(LoadItemHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xD14F34A9))))
            SaveItemHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xD14F34A9, nil)
            ydul_a = ydul_a + 1
        end
    else
    end
    if ((LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2D1E4992 + (64)) ~= 0.00)) then
        ydul_a = 1
        while true do
            if ydul_a > R2I(LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2D1E4992 + (64))) then
                break
            end
            SaveItemHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xD14F34A9, PlaceRandomItem(cjc4, udg_LGFZB_x[GetConvertedPlayerId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))], (udg_LGFZB_y[GetConvertedPlayerId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))] - 300.00)))
            DisplayTimedTextToPlayer(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946), 0, 0, 3.00, YDWEGetPlayerColorString(Player(0), GetItemName(LoadItemHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xD14F34A9))))
            SaveItemHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xD14F34A9, nil)
            ydul_a = ydul_a + 1
        end
    else
    end
    if ((LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2D1E4992 + (65)) ~= 0.00)) then
        SaveReal(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0xFE5A5BB9, (LoadReal(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0xFE5A5BB9) + (LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2D1E4992) * 0.01)))
    else
    end
    if ((LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2D1E4992 + (68)) ~= 0.00)) then
        SaveReal(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x692728ED, (LoadReal(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x692728ED) + LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2D1E4992 + (68))))
    else
    end
    if ((LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2D1E4992 + (69)) ~= 0.00)) then
        SaveInteger(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x9597BD9A, (LoadInteger(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x9597BD9A) + R2I(LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2D1E4992 + (69)))))
    else
    end
    if ((LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2D1E4992 + (70)) ~= 0.00)) then
        SaveReal(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0xACF05DFE, (LoadReal(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0xACF05DFE) + (0.01 * LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2D1E4992 + (70)))))
    else
    end
    if ((LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2D1E4992 + (71)) ~= 0.00)) then
        SaveReal(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x714E35BA, (LoadReal(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x714E35BA) + (0.01 * LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2D1E4992 + (71)))))
    else
    end
    if ((LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2D1E4992 + (72)) ~= 0.00)) then
        AdjustPlayerStateBJ(R2I(LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2D1E4992 + (72))), LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946), PLAYER_STATE_RESOURCE_LUMBER)
    else
    end
    if ((LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2D1E4992 + (73)) ~= 0.00)) then
        SaveReal(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0xEFCC22B2, (LoadReal(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0xEFCC22B2) + (0.01 * LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2D1E4992 + (73)))))
    else
    end
    if ((LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2D1E4992 + (74)) ~= 0.00)) then
        SaveReal(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0xDA11E22C, (LoadReal(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0xDA11E22C) + LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2D1E4992 + (74))))
    else
    end
    if ((LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2D1E4992 + (75)) ~= 0.00)) then
        SaveReal(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0xCD14A018, (LoadReal(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0xCD14A018) + LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2D1E4992 + (75))))
    else
    end
    if ((LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2D1E4992 + (76)) ~= 0.00)) then
        SaveReal(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0xF6C85294, (LoadReal(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0xF6C85294) + (0.01 * LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2D1E4992 + (76)))))
    else
    end
    if ((LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2D1E4992 + (77)) ~= 0.00)) then
        SaveReal(YDHT, StringHash((GetPlayerName(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)))), StringHash((("元素1"))), ((((LoadReal(YDHT, StringHash((GetPlayerName(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)))), StringHash((("元素1"))))) + LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2D1E4992 + (77)))) * 1.0))
    else
    end
    if ((LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2D1E4992 + (78)) ~= 0.00)) then
        SaveInteger(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0xF7A2AE48, (LoadInteger(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0xF7A2AE48) + R2I(LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2D1E4992 + (78)))))
    else
    end
    if ((LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2D1E4992 + (79)) ~= 0.00)) then
        SaveInteger(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x1290B274, (LoadInteger(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x1290B274) + R2I(LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2D1E4992 + (79)))))
    else
    end
    if ((LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2D1E4992 + (80)) ~= 0.00)) then
        SaveInteger(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0xDBA17425, (LoadInteger(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0xDBA17425) + R2I(LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2D1E4992 + (80)))))
    else
    end
    if ((LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2D1E4992 + (81)) ~= 0.00)) then
        SaveInteger(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0xEC60725F, (LoadInteger(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0xEC60725F) + R2I(LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2D1E4992 + (81)))))
    else
    end
    if ((LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2D1E4992 + (82)) ~= 0.00)) then
        SaveInteger(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x37F60CCB, (LoadInteger(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x37F60CCB) + R2I(LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2D1E4992 + (82)))))
    else
    end
    if ((LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2D1E4992 + (83)) ~= 0.00)) then
        SaveInteger(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0xA22918A3, (LoadInteger(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0xA22918A3) + R2I(LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2D1E4992 + (83)))))
    else
    end
    if ((LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2D1E4992 + (85)) ~= 0.00)) then
        SaveInteger(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x93EDC219, (LoadInteger(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x93EDC219) + R2I(LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2D1E4992 + (85)))))
    else
    end
    if ((LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2D1E4992 + (86)) ~= 0.00)) then
        SaveInteger(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0xFA2D6C2A, (LoadInteger(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0xFA2D6C2A) + R2I(LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2D1E4992 + (86)))))
    else
    end
    if ((LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2D1E4992 + (87)) ~= 0.00)) then
        if (((EXExecuteScript("(require'jass.slk').unit[" .. I2S(GetUnitTypeId(LoadUnitHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x911D5DC2))) .. "].Primary")) == "STR")) then
            SaveReal(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x08BAB87E, (LoadReal(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x08BAB87E) + (0.01 * LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2D1E4992 + (87)))))
        else
            if (((EXExecuteScript("(require'jass.slk').unit[" .. I2S(GetUnitTypeId(LoadUnitHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x911D5DC2))) .. "].Primary")) == "AGI")) then
                SaveReal(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x0098CEEB, (LoadReal(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x0098CEEB) + (0.01 * LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2D1E4992 + (87)))))
            else
                if (((EXExecuteScript("(require'jass.slk').unit[" .. I2S(GetUnitTypeId(LoadUnitHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x911D5DC2))) .. "].Primary")) == "INT")) then
                    SaveReal(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0xC08430F1, (LoadReal(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0xC08430F1) + (0.01 * LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2D1E4992 + (87)))))
                else
                end
            end
        end
    else
    end
    SaveUnitHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x911D5DC2, nil)
    SaveItemHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x8C98F085, nil)
    RemoveSavedHandle(YDHT, GetHandleId(Player(PLAYER_NEUTRAL_AGGRESSIVE)), 0x8C98F085)
    RemoveSavedInteger(YDHT, GetHandleId(Player(PLAYER_NEUTRAL_AGGRESSIVE)), 0x171487D7)
    RemoveSavedReal(YDHT, GetHandleId(Player(PLAYER_NEUTRAL_AGGRESSIVE)), 0xE8319FBA)
    RemoveSavedBoolean(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x8A0F9432)
    FlushChildHashtable(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step)
end

function InitTrig_qjyd()
    gg_trg_qjyd = CreateTrigger()
    DisableTrigger(gg_trg_qjyd)
    TriggerAddAction(gg_trg_qjyd, Trig_qjydActions)
end

function Trig_qjyd_sjActions()
    local ydul_a = nil
    local ydl_triggerstep = nil
    local ydl_trigger = nil
    local ydl_localvar_step = LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xCFDE6C76)
    ydl_localvar_step = ydl_localvar_step + 3
    SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xCFDE6C76, ydl_localvar_step)
    SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xECE825E7, ydl_localvar_step)
    SavePlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946, LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))
    SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB2B2BF95, LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB2B2BF95))
    SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xA1CFBB06, LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xA1CFBB06))
    SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2C0CE731, S2I(EXExecuteScript("(require'jass.slk').unit[" .. I2S(LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xA1CFBB06)) .. "].bldtm")))
    SaveStr(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x0F770854, YDWEGetPlayerColorString(ConvertedPlayer((LoadInteger(YDHT, ((GetHandleId((LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))))), (StringHash(((EXExecuteScript("(require'jass.slk').unit[" .. I2S(LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xA1CFBB06)) .. "].Name")) .. "JY")))))), (I2S((LoadInteger(YDHT, ((GetHandleId((LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))))), (StringHash(((EXExecuteScript("(require'jass.slk').unit[" .. I2S(LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xA1CFBB06)) .. "].Name")) .. "JY")))))) .. "星属性:")))
    SaveStr(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xF5D49B57 + (1), (LoadStr(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x0F770854) .. "[S]."))
    SaveStr(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xF5D49B57 + (2), (LoadStr(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x0F770854) .. "[A]."))
    SaveStr(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xF5D49B57 + (3), (LoadStr(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x0F770854) .. "[B]."))
    SaveStr(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xF5D49B57 + (4), (LoadStr(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x0F770854) .. "[C]."))
    SaveStr(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xF5D49B57 + (5), (LoadStr(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x0F770854) .. "[D]."))
    if ((LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2C0CE731) == 1)) then
        SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x3B38F46F, GetRandomInt(1, 5))
        if ((LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x3B38F46F) == 1)) then
            SaveReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xCA6CA6BE, GetRandomReal(0.50, 3.00))
            ydul_a = 1
            while true do
                if ydul_a > 5 then
                    break
                end
                if ((LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xCA6CA6BE) >= (0.50 * (I2R((6 - ydul_a)) * 1.00)))) then
                    SaveStr(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xF5D49B57, LoadStr(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xF5D49B57 + (ydul_a)))
                    DoNothing()
                    if true then
                        break
                    end
                else
                end
                ydul_a = ydul_a + 1
            end
            SaveReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2D1E4992, (LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xCA6CA6BE) * I2R(LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB2B2BF95))))
            SaveReal((wp), (LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xA1CFBB06)), 17, (LoadReal((wp), (LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xA1CFBB06)), 17) + LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2D1E4992)))
            SaveStr(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2D1FF186 + (0), ((YDWEGetPlayerColorString(Player(2), LoadStr(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xF5D49B57)) .. "力量百分比+") .. (R2SW(LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2D1E4992), 1, 0) .. "%")))
        else
            if ((LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x3B38F46F) == 2)) then
                SaveReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xCA6CA6BE, GetRandomReal(0.50, 3.00))
                ydul_a = 1
                while true do
                    if ydul_a > 5 then
                        break
                    end
                    if ((LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xCA6CA6BE) >= (0.50 * (I2R((6 - ydul_a)) * 1.00)))) then
                        SaveStr(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xF5D49B57, LoadStr(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xF5D49B57 + (ydul_a)))
                        DoNothing()
                        if true then
                            break
                        end
                    else
                    end
                    ydul_a = ydul_a + 1
                end
                SaveReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2D1E4992, (LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xCA6CA6BE) * I2R(LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB2B2BF95))))
                SaveReal((wp), (LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xA1CFBB06)), 21, (LoadReal((wp), (LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xA1CFBB06)), 21) + LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2D1E4992)))
                SaveStr(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2D1FF186 + (0), ((YDWEGetPlayerColorString(Player(2), LoadStr(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xF5D49B57)) .. "生命百分比+") .. (R2SW(LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2D1E4992), 1, 0) .. "%")))
            else
                if ((LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x3B38F46F) == 3)) then
                    SaveReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xCA6CA6BE, GetRandomReal(0.50, 3.00))
                    ydul_a = 1
                    while true do
                        if ydul_a > 5 then
                            break
                        end
                        if ((LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xCA6CA6BE) >= (0.50 * (I2R((6 - ydul_a)) * 1.00)))) then
                            SaveStr(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xF5D49B57, LoadStr(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xF5D49B57 + (ydul_a)))
                            DoNothing()
                            if true then
                                break
                            end
                        else
                        end
                        ydul_a = ydul_a + 1
                    end
                    SaveReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2D1E4992, (LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xCA6CA6BE) * I2R(LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB2B2BF95))))
                    SaveReal((wp), (LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xA1CFBB06)), 28, (LoadReal((wp), (LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xA1CFBB06)), 28) + LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2D1E4992)))
                    SaveStr(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2D1FF186 + (0), ((YDWEGetPlayerColorString(Player(2), LoadStr(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xF5D49B57)) .. "物理伤害增幅+") .. (R2SW(LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2D1E4992), 1, 0) .. "")))
                else
                    if ((LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x3B38F46F) == 4)) then
                        SaveReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xCA6CA6BE, GetRandomReal(1.00, 3.00))
                        ydul_a = 1
                        while true do
                            if ydul_a > 5 then
                                break
                            end
                            if ((LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xCA6CA6BE) >= (1.00 * (I2R((6 - ydul_a)) * 1.00)))) then
                                SaveStr(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xF5D49B57, LoadStr(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xF5D49B57 + (ydul_a)))
                                DoNothing()
                                if true then
                                    break
                                end
                            else
                            end
                            ydul_a = ydul_a + 1
                        end
                        SaveReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2D1E4992, (LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xCA6CA6BE) * I2R(LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB2B2BF95))))
                        SaveStr(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2D1FF186 + (0), ((YDWEGetPlayerColorString(Player(2), LoadStr(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xF5D49B57)) .. "每秒力量+") .. (R2SW(LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2D1E4992), 1, 0) .. "%")))
                        SaveReal((wp), (LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xA1CFBB06)), 78, (LoadReal((wp), (LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xA1CFBB06)), 78) + LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2D1E4992)))
                    else
                        if ((LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x3B38F46F) == 5)) then
                            SaveReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xCA6CA6BE, GetRandomReal(10.00, 30.00))
                            ydul_a = 1
                            while true do
                                if ydul_a > 5 then
                                    break
                                end
                                if ((LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xCA6CA6BE) >= (1.00 * (I2R((6 - ydul_a)) * 1.00)))) then
                                    SaveStr(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xF5D49B57, LoadStr(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xF5D49B57 + (ydul_a)))
                                    DoNothing()
                                    if true then
                                        break
                                    end
                                else
                                end
                                ydul_a = ydul_a + 1
                            end
                            SaveReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2D1E4992, (LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xCA6CA6BE) * I2R(LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB2B2BF95))))
                            SaveStr(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2D1FF186 + (0), ((YDWEGetPlayerColorString(Player(2), LoadStr(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xF5D49B57)) .. "每秒生命+") .. (R2SW(LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2D1E4992), 1, 0) .. "%")))
                            SaveReal((wp), (LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xA1CFBB06)), 47, (LoadReal((wp), (LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xA1CFBB06)), 47) + LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2D1E4992)))
                        else
                        end
                    end
                end
            end
        end
    else
        if ((LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2C0CE731) == 2)) then
            SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x3B38F46F, GetRandomInt(1, 5))
            if ((LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x3B38F46F) == 1)) then
                SaveReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xCA6CA6BE, GetRandomReal(0.50, 3.00))
                ydul_a = 1
                while true do
                    if ydul_a > 5 then
                        break
                    end
                    if ((LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xCA6CA6BE) >= (0.50 * (I2R((6 - ydul_a)) * 1.00)))) then
                        SaveStr(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xF5D49B57, LoadStr(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xF5D49B57 + (ydul_a)))
                        DoNothing()
                        if true then
                            break
                        end
                    else
                    end
                    ydul_a = ydul_a + 1
                end
                SaveReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2D1E4992, (LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xCA6CA6BE) * I2R(LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB2B2BF95))))
                SaveReal((wp), (LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xA1CFBB06)), 18, (LoadReal((wp), (LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xA1CFBB06)), 18) + LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2D1E4992)))
                SaveStr(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2D1FF186 + (0), ((YDWEGetPlayerColorString(Player(2), LoadStr(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xF5D49B57)) .. "敏捷百分比+") .. (R2SW(LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2D1E4992), 1, 0) .. "%")))
            else
                if ((LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x3B38F46F) == 2)) then
                    SaveReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xCA6CA6BE, GetRandomReal(2.00, 5.00))
                    ydul_a = 1
                    while true do
                        if ydul_a > 5 then
                            break
                        end
                        if ((LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xCA6CA6BE) >= (2.00 * (I2R((6 - ydul_a)) * 1.00)))) then
                            SaveStr(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xF5D49B57, LoadStr(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xF5D49B57 + (ydul_a)))
                            DoNothing()
                            if true then
                                break
                            end
                        else
                        end
                        ydul_a = ydul_a + 1
                    end
                    SaveReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2D1E4992, (LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xCA6CA6BE) * I2R(LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB2B2BF95))))
                    SaveStr(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2D1FF186 + (0), ((YDWEGetPlayerColorString(Player(2), LoadStr(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xF5D49B57)) .. "攻速+") .. (R2SW(LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2D1E4992), 1, 0) .. "%")))
                    SaveReal((wp), (LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xA1CFBB06)), 43, (LoadReal((wp), (LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xA1CFBB06)), 43) + LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2D1E4992)))
                else
                    if ((LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x3B38F46F) == 3)) then
                        SaveReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xCA6CA6BE, GetRandomReal(0.50, 3.00))
                        ydul_a = 1
                        while true do
                            if ydul_a > 5 then
                                break
                            end
                            if ((LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xCA6CA6BE) >= (0.50 * (I2R((6 - ydul_a)) * 1.00)))) then
                                SaveStr(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xF5D49B57, LoadStr(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xF5D49B57 + (ydul_a)))
                                DoNothing()
                                if true then
                                    break
                                end
                            else
                            end
                            ydul_a = ydul_a + 1
                        end
                        SaveReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2D1E4992, (LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xCA6CA6BE) * I2R(LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB2B2BF95))))
                        SaveStr(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2D1FF186 + (0), ((YDWEGetPlayerColorString(Player(2), LoadStr(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xF5D49B57)) .. "物理伤害增幅+") .. (R2SW(LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2D1E4992), 1, 0) .. "%")))
                        SaveReal((wp), (LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xA1CFBB06)), 28, (LoadReal((wp), (LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xA1CFBB06)), 28) + LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2D1E4992)))
                    else
                        if ((LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x3B38F46F) == 4)) then
                            SaveReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xCA6CA6BE, GetRandomReal(1.00, 3.00))
                            ydul_a = 1
                            while true do
                                if ydul_a > 5 then
                                    break
                                end
                                if ((LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xCA6CA6BE) >= (1.00 * (I2R((6 - ydul_a)) * 1.00)))) then
                                    SaveStr(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xF5D49B57, LoadStr(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xF5D49B57 + (ydul_a)))
                                    DoNothing()
                                    if true then
                                        break
                                    end
                                else
                                end
                                ydul_a = ydul_a + 1
                            end
                            SaveReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2D1E4992, (LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xCA6CA6BE) * I2R(LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB2B2BF95))))
                            SaveStr(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2D1FF186 + (0), ((YDWEGetPlayerColorString(Player(2), LoadStr(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xF5D49B57)) .. "每秒敏捷+") .. (R2SW(LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2D1E4992), 1, 0) .. "")))
                            SaveReal((wp), (LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xA1CFBB06)), 79, (LoadReal((wp), (LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xA1CFBB06)), 79) + LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2D1E4992)))
                        else
                            if ((LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x3B38F46F) == 5)) then
                                SaveReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xCA6CA6BE, GetRandomReal(1.00, 2.00))
                                ydul_a = 1
                                while true do
                                    if ydul_a > 5 then
                                        break
                                    end
                                    if ((LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xCA6CA6BE) >= (1.00 * (I2R((6 - ydul_a)) * 1.00)))) then
                                        SaveStr(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xF5D49B57, LoadStr(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xF5D49B57 + (ydul_a)))
                                        DoNothing()
                                        if true then
                                            break
                                        end
                                    else
                                    end
                                    ydul_a = ydul_a + 1
                                end
                                SaveReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2D1E4992, (LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xCA6CA6BE) * I2R(LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB2B2BF95))))
                                SaveStr(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2D1FF186 + (0), ((YDWEGetPlayerColorString(Player(2), LoadStr(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xF5D49B57)) .. "物理吸血+") .. (R2SW(LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2D1E4992), 1, 0) .. "")))
                                SaveReal((wp), (LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xA1CFBB06)), 35, (LoadReal((wp), (LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xA1CFBB06)), 35) + LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2D1E4992)))
                            else
                            end
                        end
                    end
                end
            end
        else
            if ((LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2C0CE731) == 3)) then
                SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x3B38F46F, GetRandomInt(1, 5))
                if ((LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x3B38F46F) == 1)) then
                    SaveReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xCA6CA6BE, GetRandomReal(0.50, 3.00))
                    ydul_a = 1
                    while true do
                        if ydul_a > 5 then
                            break
                        end
                        if ((LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xCA6CA6BE) >= (0.50 * (I2R((6 - ydul_a)) * 1.00)))) then
                            SaveStr(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xF5D49B57, LoadStr(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xF5D49B57 + (ydul_a)))
                            DoNothing()
                            if true then
                                break
                            end
                        else
                        end
                        ydul_a = ydul_a + 1
                    end
                    SaveReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2D1E4992, (LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xCA6CA6BE) * I2R(LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB2B2BF95))))
                    SaveStr(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2D1FF186 + (0), ((YDWEGetPlayerColorString(Player(2), LoadStr(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xF5D49B57)) .. "智力百分比+") .. (R2SW(LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2D1E4992), 1, 0) .. "%")))
                    SaveReal((wp), (LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xA1CFBB06)), 18, (LoadReal((wp), (LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xA1CFBB06)), 18) + LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2D1E4992)))
                else
                    if ((LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x3B38F46F) == 2)) then
                        SaveReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xCA6CA6BE, GetRandomReal(0.50, 3.00))
                        ydul_a = 1
                        while true do
                            if ydul_a > 5 then
                                break
                            end
                            if ((LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xCA6CA6BE) >= (2.00 * (I2R((6 - ydul_a)) * 1.00)))) then
                                SaveStr(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xF5D49B57, LoadStr(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xF5D49B57 + (ydul_a)))
                                DoNothing()
                                if true then
                                    break
                                end
                            else
                            end
                            ydul_a = ydul_a + 1
                        end
                        SaveReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2D1E4992, (LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xCA6CA6BE) * I2R(LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB2B2BF95))))
                        SaveStr(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2D1FF186 + (0), ((YDWEGetPlayerColorString(Player(2), LoadStr(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xF5D49B57)) .. "法术吸血+") .. (R2SW(LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2D1E4992), 1, 0) .. "%")))
                        SaveReal((wp), (LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xA1CFBB06)), 42, (LoadReal((wp), (LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xA1CFBB06)), 42) + LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2D1E4992)))
                    else
                        if ((LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x3B38F46F) == 3)) then
                            SaveReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xCA6CA6BE, GetRandomReal(0.50, 3.00))
                            ydul_a = 1
                            while true do
                                if ydul_a > 5 then
                                    break
                                end
                                if ((LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xCA6CA6BE) >= (0.50 * (I2R((6 - ydul_a)) * 1.00)))) then
                                    SaveStr(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xF5D49B57, LoadStr(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xF5D49B57 + (ydul_a)))
                                    DoNothing()
                                    if true then
                                        break
                                    end
                                else
                                end
                                ydul_a = ydul_a + 1
                            end
                            SaveReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2D1E4992, (LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xCA6CA6BE) * I2R(LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB2B2BF95))))
                            SaveStr(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2D1FF186 + (0), ((YDWEGetPlayerColorString(Player(2), LoadStr(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xF5D49B57)) .. "魔法伤害增幅+") .. (R2SW(LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2D1E4992), 1, 0) .. "")))
                            SaveReal((wp), (LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xA1CFBB06)), 29, (LoadReal((wp), (LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xA1CFBB06)), 29) + LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2D1E4992)))
                        else
                            if ((LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x3B38F46F) == 4)) then
                                SaveReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xCA6CA6BE, GetRandomReal(1.00, 3.00))
                                ydul_a = 1
                                while true do
                                    if ydul_a > 5 then
                                        break
                                    end
                                    if ((LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xCA6CA6BE) >= (1.00 * (I2R((6 - ydul_a)) * 1.00)))) then
                                        SaveStr(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xF5D49B57, LoadStr(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xF5D49B57 + (ydul_a)))
                                        DoNothing()
                                        if true then
                                            break
                                        end
                                    else
                                    end
                                    ydul_a = ydul_a + 1
                                end
                                SaveReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2D1E4992, (LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xCA6CA6BE) * I2R(LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB2B2BF95))))
                                SaveStr(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2D1FF186 + (0), ((YDWEGetPlayerColorString(Player(2), LoadStr(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xF5D49B57)) .. "每秒智力+") .. (R2SW(LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2D1E4992), 1, 0) .. "%")))
                                SaveReal((wp), (LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xA1CFBB06)), 80, (LoadReal((wp), (LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xA1CFBB06)), 80) + LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2D1E4992)))
                            else
                                if ((LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x3B38F46F) == 5)) then
                                    SaveReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xCA6CA6BE, GetRandomReal(1.00, 2.00))
                                    ydul_a = 1
                                    while true do
                                        if ydul_a > 5 then
                                            break
                                        end
                                        if ((LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xCA6CA6BE) >= (1.00 * (I2R((6 - ydul_a)) * 1.00)))) then
                                            SaveStr(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xF5D49B57, LoadStr(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xF5D49B57 + (ydul_a)))
                                            DoNothing()
                                            if true then
                                                break
                                            end
                                        else
                                        end
                                        ydul_a = ydul_a + 1
                                    end
                                    SaveReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2D1E4992, (LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xCA6CA6BE) * I2R(LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB2B2BF95))))
                                    SaveStr(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2D1FF186 + (0), ((YDWEGetPlayerColorString(Player(2), LoadStr(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xF5D49B57)) .. "法术加深+") .. (R2SW(LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2D1E4992), 1, 0) .. "")))
                                    SaveReal((wp), (LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xA1CFBB06)), 16, (LoadReal((wp), (LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xA1CFBB06)), 16) + LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2D1E4992)))
                                else
                                end
                            end
                        end
                    end
                end
            else
            end
        end
    end
    SaveStr((wp), (LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xA1CFBB06)), 0, ((LoadStr((wp), (LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xA1CFBB06)), 0)) .. ("|n") .. (LoadStr(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2D1FF186 + (0)))))
    ydl_trigger = gg_trg_qjyd
    ydl_triggerstep = GetHandleId(ydl_trigger) * (LoadInteger(YDLOC, GetHandleId(ydl_trigger), 0xCFDE6C76) + 3)
    SavePlayerHandle(YDLOC, ydl_triggerstep, 0x48656946, LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))
    SaveInteger(YDLOC, ydl_triggerstep, 0xBCFAAC25, (LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xA1CFBB06)))
    SaveBoolean(YDLOC, ydl_triggerstep, 0xAC98E756, true)
    TriggerExecute(ydl_trigger)
    FlushChildHashtable(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step)
    ydl_trigger = nil
end

function InitTrig_qjyd_sj()
    gg_trg_qjyd_sj = CreateTrigger()
    DisableTrigger(gg_trg_qjyd_sj)
    TriggerAddAction(gg_trg_qjyd_sj, Trig_qjyd_sjActions)
end

function Trig_SDDH______________001Actions()
    local ydl_localvar_step = LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xCFDE6C76)
    ydl_localvar_step = ydl_localvar_step + 3
    SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xCFDE6C76, ydl_localvar_step)
    SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xECE825E7, ydl_localvar_step)
    SavePlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946, LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))
    SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB0497EE9, LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB0497EE9))
    if (((LoadBoolean(YDHT, StringHash((GetPlayerName(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)))), StringHash(((EXExecuteScript("(require'jass.slk').item[" .. I2S(LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB0497EE9)) .. "].Name")))))) ~= true)) then
        if ((S2I(EXExecuteScript("(require'jass.slk').item[" .. I2S(LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB0497EE9)) .. "].level")) == 1)) then
            if ((R2I(LoadReal(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x692728ED)) >= S2I(EXExecuteScript("(require'jass.slk').item[" .. I2S(LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB0497EE9)) .. "].prio")))) then
                SaveReal(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x692728ED, (LoadReal(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x692728ED) - I2R(S2I(EXExecuteScript("(require'jass.slk').item[" .. I2S(LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB0497EE9)) .. "].prio")))))
                if ((GetRandomReal(0, 1) <= (0.20 + (LoadReal(YDHT, ((GetHandleId((LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))))), ((LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB0497EE9)))))))) then
                    YDWETimerDestroyEffect(2, AddSpecialEffectTarget("Abilities\\Spells\\Undead\\DarkRitual\\DarkRitualTarget.mdl", udg_WJYX[GetConvertedPlayerId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))], "origin"))
                    YDWETimerDestroyEffect(2, AddSpecialEffectTarget("[ui].mdx", udg_WJYX[GetConvertedPlayerId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))], "overhead"))
                    SavePlayerHandle(YDHT, GetHandleId(Player(PLAYER_NEUTRAL_AGGRESSIVE)), 0x119572DE, LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))
                    SaveInteger(YDHT, GetHandleId(Player(PLAYER_NEUTRAL_AGGRESSIVE)), 0x171487D7, LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB0497EE9))
                    TriggerExecute(gg_trg_qjyd)
                    DisplayTextToPlayer(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946), 0, 0, ("|cffff0000[系统]：|r" .. ((EXExecuteScript("(require'jass.slk').item[" .. I2S(LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB0497EE9)) .. "].Name")) .. "|cff00ff00已成功激活！|r")))
                    SaveBoolean(YDHT, StringHash((GetPlayerName(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)))), StringHash(((EXExecuteScript("(require'jass.slk').item[" .. I2S(LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB0497EE9)) .. "].Name")))), (true))
                    RemoveItemFromStockBJ(LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB0497EE9), LoadUnitHandle(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x29F18A93))
                    SaveInteger(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0xCA61D8CA, (LoadInteger(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0xCA61D8CA) + 1))
                    if ((LoadInteger(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0xCA61D8CA) == 9)) then
                        AddItemToStockBJ((0x4C303139), LoadUnitHandle(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x29F18A93), 1, 1)
                        AddItemToStockBJ((0x4C303230), LoadUnitHandle(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x29F18A93), 1, 1)
                    else
                    end
                    if ((LoadInteger(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0xCA61D8CA) == 11)) then
                        AddItemToStockBJ((0x424D3031), LoadUnitHandle(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x29F18A93), 1, 1)
                        AddItemToStockBJ((0x424D3032), LoadUnitHandle(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x29F18A93), 1, 1)
                        AddItemToStockBJ((0x424D3033), LoadUnitHandle(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x29F18A93), 1, 1)
                        AddItemToStockBJ((0x424D3034), LoadUnitHandle(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x29F18A93), 1, 1)
                        AddItemToStockBJ((0x424D3035), LoadUnitHandle(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x29F18A93), 1, 1)
                        AddItemToStockBJ((0x424D3036), LoadUnitHandle(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x29F18A93), 1, 1)
                        AddItemToStockBJ((0x424D3037), LoadUnitHandle(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x29F18A93), 1, 1)
                        AddItemToStockBJ((0x424D3038), LoadUnitHandle(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x29F18A93), 1, 1)
                        SaveInteger(YDHT, ((GetHandleId((LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))))), (((udg_JN_BUTTON[1]))), ((0x424D3031)))
                        SaveInteger(YDHT, ((GetHandleId((LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))))), (((udg_JN_BUTTON[2]))), ((0x424D3032)))
                        SaveInteger(YDHT, ((GetHandleId((LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))))), (((udg_JN_BUTTON[3]))), ((0x424D3033)))
                        SaveInteger(YDHT, ((GetHandleId((LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))))), (((udg_JN_BUTTON[4]))), ((0x424D3034)))
                        SaveInteger(YDHT, ((GetHandleId((LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))))), (((udg_JN_BUTTON[5]))), ((0x424D3035)))
                        SaveInteger(YDHT, ((GetHandleId((LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))))), (((udg_JN_BUTTON[6]))), ((0x424D3036)))
                        SaveInteger(YDHT, ((GetHandleId((LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))))), (((udg_JN_BUTTON[7]))), ((0x424D3037)))
                        SaveInteger(YDHT, ((GetHandleId((LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))))), (((udg_JN_BUTTON[8]))), ((0x424D3038)))
                    else
                    end
                    DisplayTextToPlayer(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946), 0, 0, ("|cffff0000[系统]：|r|cff00ff00解锁成功|r"))
                else
                    DisplayTextToPlayer(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946), 0, 0, ("|cffff0000[系统]：|r|cff00ff00解锁失败|r"))
                    SaveReal(YDHT, ((GetHandleId((LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))))), ((LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB0497EE9))), ((((LoadReal(YDHT, ((GetHandleId((LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))))), ((LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB0497EE9))))) + 0.02)) * 1.0))
                end
            else
                DisplayTextToPlayer(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946), 0, 0, ("|cffff0000[系统]：|r|cff00ff00杀敌数不足|r"))
            end
            SetPlayerStateBJ(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946), PLAYER_STATE_RESOURCE_FOOD_USED, R2I(LoadReal(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x692728ED)))
            FlushChildHashtable(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step)
            do
                return
            end
        else
        end
        if ((S2I(EXExecuteScript("(require'jass.slk').item[" .. I2S(LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB0497EE9)) .. "].level")) == 9)) then
            if ((R2I(LoadReal(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x692728ED)) >= S2I(EXExecuteScript("(require'jass.slk').item[" .. I2S(LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB0497EE9)) .. "].prio")))) then
                SaveReal(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x692728ED, (LoadReal(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x692728ED) - I2R(S2I(EXExecuteScript("(require'jass.slk').item[" .. I2S(LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB0497EE9)) .. "].prio")))))
                SetPlayerStateBJ(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946), PLAYER_STATE_RESOURCE_FOOD_USED, R2I(LoadReal(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x692728ED)))
                if (((LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB0497EE9) == (0x424D3039)) or (LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB0497EE9) == (0x424D3130)))) then
                    JK_UnitTranslationB(udg_WJYX[GetConvertedPlayerId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))], LoadReal(YDHT, LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB0497EE9), 0xA99320FA), LoadReal(YDHT, LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB0497EE9), 0xFDF65382), bj_lastCreatedEffect, 0.00, "", true)
                    FlushChildHashtable(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step)
                    do
                        return
                    end
                else
                end
                if ((GetRandomReal(0, 1) <= 0.75)) then
                    YDWETimerDestroyEffect(2, AddSpecialEffectTarget("[ui].mdx", udg_WJYX[GetConvertedPlayerId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))], "overhead"))
                    YDWETimerDestroyEffect(2, AddSpecialEffectTarget("Abilities\\Spells\\Undead\\DarkRitual\\DarkRitualTarget.mdl", udg_WJYX[GetConvertedPlayerId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))], "origin"))
                    SavePlayerHandle(YDHT, GetHandleId(Player(PLAYER_NEUTRAL_AGGRESSIVE)), 0x119572DE, LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))
                    SaveInteger(YDHT, GetHandleId(Player(PLAYER_NEUTRAL_AGGRESSIVE)), 0x171487D7, LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB0497EE9))
                    TriggerExecute(gg_trg_qjyd)
                    RemoveItemFromStockBJ(LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB0497EE9), LoadUnitHandle(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x29F18A93))
                    DisplayTextToPlayer(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946), 0, 0, (YDWEGetPlayerColorString(Player(0), "[系统]：") .. YDWEGetPlayerColorString(Player(4), ("恭喜成功解锁" .. (EXExecuteScript("(require'jass.slk').item[" .. I2S(LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB0497EE9)) .. "].Name"))))))
                    SaveInteger(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0xCA61D8CA, (LoadInteger(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0xCA61D8CA) + 1))
                    SaveBoolean(YDHT, StringHash((GetPlayerName(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)))), StringHash(((EXExecuteScript("(require'jass.slk').item[" .. I2S(LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB0497EE9)) .. "].Name")))), (true))
                    if ((LoadInteger(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0xCA61D8CA) == 19)) then
                        AddItemToStockBJ((0x424D3130), LoadUnitHandle(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x29F18A93), 1, 1)
                        AddItemToStockBJ((0x424D3039), LoadUnitHandle(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x29F18A93), 1, 1)
                        SaveInteger(YDHT, ((GetHandleId((LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))))), (((udg_JN_BUTTON[9]))), ((0x424D3039)))
                        SaveInteger(YDHT, ((GetHandleId((LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))))), (((udg_JN_BUTTON[10]))), ((0x424D3130)))
                    else
                    end
                else
                    DisplayTextToPlayer(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946), 0, 0, (YDWEGetPlayerColorString(Player(0), "[系统]：") .. YDWEGetPlayerColorString(Player(6), ("很遗憾本次没能解锁"))))
                end
            else
                DisplayTextToPlayer(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946), 0, 0, "杀敌数不足！")
            end
        else
        end
    else
    end
    if ((S2I(EXExecuteScript("(require'jass.slk').item[" .. I2S(LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB0497EE9)) .. "].level")) == 10)) then
        if ((R2I(LoadReal(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x692728ED)) >= S2I(EXExecuteScript("(require'jass.slk').item[" .. I2S(LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB0497EE9)) .. "].prio")))) then
            if ((GetRandomReal(0, 1) <= (1.00 - (LoadReal(YDHT, ((GetHandleId((LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))))), ((LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB0497EE9)))))))) then
                SaveReal(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x692728ED, (LoadReal(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x692728ED) - I2R(S2I(EXExecuteScript("(require'jass.slk').item[" .. I2S(LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB0497EE9)) .. "].prio")))))
                SetPlayerStateBJ(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946), PLAYER_STATE_RESOURCE_FOOD_USED, R2I(LoadReal(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x692728ED)))
                YDWETimerDestroyEffect(2, AddSpecialEffectTarget("[ui].mdx", udg_WJYX[GetConvertedPlayerId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))], "overhead"))
                YDWETimerDestroyEffect(2, AddSpecialEffectTarget("Abilities\\Spells\\Undead\\DarkRitual\\DarkRitualTarget.mdl", udg_WJYX[GetConvertedPlayerId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))], "origin"))
                SaveBoolean(YDHT, StringHash((GetPlayerName(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)))), StringHash(((EXExecuteScript("(require'jass.slk').item[" .. I2S(LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB0497EE9)) .. "].Name")))), (true))
                SavePlayerHandle(YDHT, GetHandleId(Player(PLAYER_NEUTRAL_AGGRESSIVE)), 0x119572DE, LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))
                SaveInteger(YDHT, GetHandleId(Player(PLAYER_NEUTRAL_AGGRESSIVE)), 0x171487D7, LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB0497EE9))
                TriggerExecute(gg_trg_qjyd)
                DisplayTextToPlayer(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946), 0, 0, (YDWEGetPlayerColorString(Player(0), "[系统]：") .. YDWEGetPlayerColorString(Player(4), ("恭喜成功解锁" .. (EXExecuteScript("(require'jass.slk').item[" .. I2S(LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB0497EE9)) .. "].Name"))))))
                SaveInteger(YDHT, ((GetHandleId((LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))))), ((LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB0497EE9))), (((LoadInteger(YDHT, ((GetHandleId((LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))))), ((LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB0497EE9))))) + 1)))
                SaveReal(YDHT, ((GetHandleId((LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))))), (StringHash((EXExecuteScript("(require'jass.slk').item[" .. I2S(LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB0497EE9)) .. "].Name")))), ((((LoadReal(YDHT, ((GetHandleId((LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))))), (StringHash((EXExecuteScript("(require'jass.slk').item[" .. I2S(LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB0497EE9)) .. "].Name")))))) + 0.02)) * 1.0))
            else
                DisplayTextToPlayer(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946), 0, 0, "没能解锁")
            end
        else
            DisplayTextToPlayer(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946), 0, 0, "杀敌数不足！")
        end
    else
    end
    FlushChildHashtable(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step)
end

function InitTrig_SDDH______________001()
    gg_trg_SDDH______________001 = CreateTrigger()
    TriggerAddAction(gg_trg_SDDH______________001, Trig_SDDH______________001Actions)
end

function Trig_QJ_1sFunc002Func002Func004Func004Func002A()
    CustomVictoryBJ(GetEnumPlayer(), true, true)
end

function Trig_QJ_1sFunc005Func002Func001Func005Func006Func001Func007Func001Func004Func002Func003T()
    local ydul_a = nil
    SaveReal(YDLOC, GetHandleId(GetExpiredTimer()), 0x8E2E3B1A, (LoadReal(YDLOC, GetHandleId(GetExpiredTimer()), 0x8E2E3B1A) + 0.01))
    if ((LoadReal(YDLOC, GetHandleId(GetExpiredTimer()), 0x8E2E3B1A) >= 1.00)) then
        if ((LoadReal(YDLOC, GetHandleId(GetExpiredTimer()), 0xA99320FA) >= 0.05)) then
            SaveReal(YDLOC, GetHandleId(GetExpiredTimer()), 0xA99320FA, (LoadReal(YDLOC, GetHandleId(GetExpiredTimer()), 0xA99320FA) - 0.01))
        else
        end
        if ((LoadReal(YDLOC, GetHandleId(GetExpiredTimer()), 0xFDF65382) <= 0.50)) then
            SaveReal(YDLOC, GetHandleId(GetExpiredTimer()), 0xFDF65382, (LoadReal(YDLOC, GetHandleId(GetExpiredTimer()), 0xFDF65382) + 0.01))
        else
        end
        if ((LoadPlayerHandle(YDLOC, GetHandleId(GetExpiredTimer()), 0x48656946) == GetLocalPlayer())) then
            DzFrameSetAbsolutePoint(udg_Frame_zdl[11], 4, LoadReal(YDLOC, GetHandleId(GetExpiredTimer()), 0xA99320FA), LoadReal(YDLOC, GetHandleId(GetExpiredTimer()), 0xFDF65382))
        else
        end
        if ((LoadReal(YDLOC, GetHandleId(GetExpiredTimer()), 0xA99320FA) <= 0.13) and (LoadReal(YDLOC, GetHandleId(GetExpiredTimer()), 0xFDF65382) >= 0.50)) then
            if ((LoadPlayerHandle(YDLOC, GetHandleId(GetExpiredTimer()), 0x48656946) == GetLocalPlayer())) then
                DzFrameShow(udg_Frame_zdl[11], false)
            else
            end
            SaveBoolean(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetExpiredTimer()), 0x48656946)), 0xB1F4D1A7, false)
            FlushChildHashtable(YDLOC, GetHandleId(GetExpiredTimer()))
            DestroyTimer(GetExpiredTimer())
        else
        end
    else
    end
    if ((LoadReal(YDLOC, GetHandleId(GetExpiredTimer()), 0x8E2E3B1A) < 1.00)) then
        if ((LoadReal(YDLOC, GetHandleId(GetExpiredTimer()), 0x160A3F34) >= 200000.00)) then
            SaveReal(YDLOC, GetHandleId(GetExpiredTimer()), 0x160A3F34, (LoadReal(YDLOC, GetHandleId(GetExpiredTimer()), 0x160A3F34) / 10000.00))
            SaveBoolean(YDLOC, GetHandleId(GetExpiredTimer()), 0x73F59EC0, true)
        else
        end
        SaveReal(YDLOC, GetHandleId(GetExpiredTimer()), 0x1B5C932E, (LoadReal(YDLOC, GetHandleId(GetExpiredTimer()), 0x160A3F34) * LoadReal(YDLOC, GetHandleId(GetExpiredTimer()), 0x8E2E3B1A)))
        SaveInteger(YDLOC, GetHandleId(GetExpiredTimer()), 0x3B60835B, StringLength(I2S(R2I(LoadReal(YDLOC, GetHandleId(GetExpiredTimer()), 0x1B5C932E)))))
        ydul_a = 12
        while true do
            if ydul_a > 21 then
                break
            end
            if (((ydul_a - 11) > LoadInteger(YDLOC, GetHandleId(GetExpiredTimer()), 0x3B60835B))) then
                if ((LoadPlayerHandle(YDLOC, GetHandleId(GetExpiredTimer()), 0x48656946) == GetLocalPlayer())) then
                    DzFrameShow(udg_Frame_zdl[ydul_a], false)
                else
                end
            else
                SaveStr(YDLOC, GetHandleId(GetExpiredTimer()), 0x2DAC16A7 + ((ydul_a - 11)), SubStringBJ(I2S(R2I(LoadReal(YDLOC, GetHandleId(GetExpiredTimer()), 0x1B5C932E))), (ydul_a - 11), (ydul_a - 11)))
                SaveStr(YDLOC, GetHandleId(GetExpiredTimer()), 0xDB1FE63B + ((ydul_a - 11)), (LoadStr(YDHT, StringHash(("Number")), StringHash((LoadStr(YDLOC, GetHandleId(GetExpiredTimer()), 0x2DAC16A7 + ((ydul_a - 11))))))))
                if ((LoadPlayerHandle(YDLOC, GetHandleId(GetExpiredTimer()), 0x48656946) == GetLocalPlayer())) then
                    DzFrameShow(udg_Frame_zdl[11], true)
                    DzFrameSetAbsolutePoint(udg_Frame_zdl[11], 4, 0.40, 0.35)
                    DzFrameSetTexture(udg_Frame_zdl[ydul_a], LoadStr(YDLOC, GetHandleId(GetExpiredTimer()), 0xDB1FE63B + ((ydul_a - 11))), 0)
                    DzFrameShow(udg_Frame_zdl[ydul_a], true)
                else
                end
                SaveStr(YDLOC, GetHandleId(GetExpiredTimer()), 0x2DAC16A7 + (ydul_a), "")
                SaveStr(YDLOC, GetHandleId(GetExpiredTimer()), 0xDB1FE63B + (ydul_a), "")
            end
            ydul_a = ydul_a + 1
        end
        if ((LoadBoolean(YDLOC, GetHandleId(GetExpiredTimer()), 0x91BCD34C) == true)) then
            SaveInteger(YDLOC, GetHandleId(GetExpiredTimer()), 0x3B60835B, StringLength(I2S(R2I(LoadReal(YDLOC, GetHandleId(GetExpiredTimer()), 0x1B5C932E)))))
            if ((LoadPlayerHandle(YDLOC, GetHandleId(GetExpiredTimer()), 0x48656946) == GetLocalPlayer())) then
                DzFrameSetTexture(udg_Frame_zdl[(LoadInteger(YDLOC, GetHandleId(GetExpiredTimer()), 0x3B60835B) + 11)], "war3mapImported\\TP (wan).tga", 0)
                DzFrameShow(udg_Frame_zdl[(LoadInteger(YDLOC, GetHandleId(GetExpiredTimer()), 0x3B60835B) + 11)], true)
            else
            end
        else
        end
        SaveBoolean(YDLOC, GetHandleId(GetExpiredTimer()), 0x73F59EC0, false)
    else
    end
end

function Trig_QJ_1sActions()
    local ydul_b = nil
    local ydl_timer = nil
    local ydul_a = nil
    local ydl_localvar_step = LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xCFDE6C76)
    local cjlocgn_00000000 = nil
    local cjlocgn_00000001 = nil
    local cjlocgn_00000002 = nil
    ydl_localvar_step = ydl_localvar_step + 3
    SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xCFDE6C76, ydl_localvar_step)
    SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xECE825E7, ydl_localvar_step)
    SaveInteger(YDHT, GetHandleId(Player(PLAYER_NEUTRAL_AGGRESSIVE)), 0x6DEEAE1F, (LoadInteger(YDHT, GetHandleId(Player(PLAYER_NEUTRAL_AGGRESSIVE)), 0x6DEEAE1F) + 1))
    if ((LoadInteger(YDHT, GetHandleId(Player(PLAYER_NEUTRAL_AGGRESSIVE)), 0x6DEEAE1F) == 60)) then
        SaveInteger(YDHT, GetHandleId(Player(PLAYER_NEUTRAL_AGGRESSIVE)), 0x6DEEAE1F, 0)
        SaveInteger(YDHT, GetHandleId(Player(PLAYER_NEUTRAL_AGGRESSIVE)), 0x56BEADF5, (LoadInteger(YDHT, GetHandleId(Player(PLAYER_NEUTRAL_AGGRESSIVE)), 0x56BEADF5) + 1))
        if ((LoadInteger(YDHT, GetHandleId(Player(PLAYER_NEUTRAL_AGGRESSIVE)), 0x56BEADF5) == 60)) then
            SaveInteger(YDHT, GetHandleId(Player(PLAYER_NEUTRAL_AGGRESSIVE)), 0x56BEADF5, 0)
            SaveInteger(YDHT, GetHandleId(Player(PLAYER_NEUTRAL_AGGRESSIVE)), 0x89E474DB, (LoadInteger(YDHT, GetHandleId(Player(PLAYER_NEUTRAL_AGGRESSIVE)), 0x89E474DB) + 1))
            if ((LoadInteger(YDHT, GetHandleId(Player(PLAYER_NEUTRAL_AGGRESSIVE)), 0x89E474DB) == 7)) then
                ForForce(GetPlayersAll(), Trig_QJ_1sFunc002Func002Func004Func004Func002A)
            else
            end
        else
        end
    else
    end
    bj_forLoopAIndex = 1
    bj_forLoopAIndexEnd = 4
    while true do
        if bj_forLoopAIndex > bj_forLoopAIndexEnd then
            break
        end
        SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x6F96F2D2, bj_forLoopAIndex)
        if ((udg_WJYX[LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x6F96F2D2)] ~= nil)) then
            SavePlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946, ConvertedPlayer(LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x6F96F2D2)))
            AdjustPlayerStateBJ(LoadInteger(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0xFA2D6C2A), LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946), PLAYER_STATE_RESOURCE_GOLD)
            SaveReal(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x692728ED, (LoadReal(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x692728ED) + LoadReal(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0xE99A9DEA)))
            SetPlayerStateBJ(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946), PLAYER_STATE_RESOURCE_FOOD_USED, R2I(LoadReal(YDHT, GetHandleId(ConvertedPlayer(LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x6F96F2D2))), 0x692728ED)))
            SetPlayerStateBJ(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946), PLAYER_STATE_RESOURCE_FOOD_CAP, 0)
            JK_SX_Change(udg_WJYX[LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x6F96F2D2)], ConvertUnitState(0x12), 1, LoadReal(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x6FEEDF3C))
            JK_SX_Change(udg_WJYX[LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x6F96F2D2)], UNIT_STATE_MAX_LIFE, 1, LoadReal(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0xCF107893))
            JK_SX_Change(udg_WJYX[LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x6F96F2D2)], ConvertUnitState(0x20), 1, LoadReal(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x5552D03D))
            SaveReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x159DFA4B, RMinBJ(100.00, (GetUnitLifePercent(udg_WJYX[GetConvertedPlayerId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))]) + (udg_BSBHF[GetConvertedPlayerId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))] * 1.00))))
            SetUnitLifePercentBJ(udg_WJYX[GetConvertedPlayerId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))], LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x159DFA4B))
            ModifyHeroStat(bj_HEROSTAT_STR, udg_WJYX[LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x6F96F2D2)], bj_MODIFYMETHOD_ADD, (LoadInteger(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0xF7A2AE48) + LoadInteger(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x28ECE0C5)))
            ModifyHeroStat(bj_HEROSTAT_AGI, udg_WJYX[LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x6F96F2D2)], bj_MODIFYMETHOD_ADD, (LoadInteger(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x1290B274) + LoadInteger(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x28ECE0C5)))
            ModifyHeroStat(bj_HEROSTAT_INT, udg_WJYX[LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x6F96F2D2)], bj_MODIFYMETHOD_ADD, (LoadInteger(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0xDBA17425) + LoadInteger(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x28ECE0C5)))
            if ((LoadBoolean(YDHT, GetHandleId(ConvertedPlayer(LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x6F96F2D2))), 0x9837AD59) == true) and (CountUnitsInGroup(udg_LGFdwz[bj_forLoopAIndex]) == 0)) then
                udg_LGFJBJL[LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x6F96F2D2)] = S2I(EXExecuteScript("(require'jass.slk').unit[" .. I2S(udg_LGFDWLX[LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x6F96F2D2)]) .. "].cargoSize"))
                ydul_b = 1
                while true do
                    if ydul_b > (9 + LoadInteger(YDHT, GetHandleId(ConvertedPlayer(bj_forLoopAIndex)), 0x3CCC25B9)) then
                        break
                    end
                    SaveLocationHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x9CD60476, Location(udg_LGFZB_x[bj_forLoopAIndex], udg_LGFZB_y[bj_forLoopAIndex]))
                    CreateNUnitsAtLocFacingLocBJ(1, udg_LGFDWLX[LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x6F96F2D2)], Player(6), LoadLocationHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x9CD60476), LoadLocationHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x9CD60476))
                    GroupAddUnitSimple(bj_lastCreatedUnit, udg_LGFdwz[bj_forLoopAIndex])
                    RemoveLocation(LoadLocationHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x9CD60476))
                    ydul_b = ydul_b + 1
                end
            else
            end
            MultiboardSetTitleText(udg_duomianban, ((((I2S(LoadInteger(YDHT, GetHandleId(Player(PLAYER_NEUTRAL_AGGRESSIVE)), 0x89E474DB)) .. "：")) .. ((I2S(LoadInteger(YDHT, GetHandleId(Player(PLAYER_NEUTRAL_AGGRESSIVE)), 0x56BEADF5)) .. "：")) .. (I2S(LoadInteger(YDHT, GetHandleId(Player(PLAYER_NEUTRAL_AGGRESSIVE)), 0x6DEEAE1F)))) .. (("   ") .. ("难度:") .. (I2S(LoadInteger(YDHT, GetHandleId(Player(PLAYER_NEUTRAL_AGGRESSIVE)), 0xB43FB128))))))
            YDWEMultiboardSetItemValueBJNull(udg_duomianban, 3, (GetConvertedPlayerId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)) + 1), I2S(LoadInteger(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x58FD9FA3)))
            YDWEMultiboardSetItemValueBJNull(udg_duomianban, 4, (GetConvertedPlayerId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)) + 1), I2S(R2I(LoadReal(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x37FA6B89))))
            YDWEMultiboardSetItemValueBJNull(udg_duomianban, 5, (GetConvertedPlayerId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)) + 1), LoadStr(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x8B1153E1))
            if ((LoadUnitHandle(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0xDD032F66) ~= nil)) then
                if ((GetUnitStateSwap(UNIT_STATE_MAX_LIFE, LoadUnitHandle(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0xDD032F66)) >= 200000.00)) then
                    cjlocgn_00000000 = I2S(R2I((GetUnitStateSwap(UNIT_STATE_LIFE, LoadUnitHandle(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0xDD032F66)) / 10000.00)))
                    cjlocgn_00000001 = I2S(R2I((GetUnitStateSwap(UNIT_STATE_MAX_LIFE, LoadUnitHandle(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0xDD032F66)) / 10000.00)))
                    cjlocgn_00000002 = (((cjlocgn_00000000 .. "万")) .. ("/") .. ((cjlocgn_00000001 .. "万")))
                    if ((LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946) == GetLocalPlayer())) then
                        DzFrameSetText(udg_UI_XL[1], (("|cffff0000") .. ((cjlocgn_00000002)) .. ("|r")))
                    else
                    end
                    cjlocgn_00000000 = nil
                    cjlocgn_00000001 = nil
                    cjlocgn_00000002 = nil
                else
                    cjlocgn_00000000 = I2S(R2I((GetUnitStateSwap(UNIT_STATE_LIFE, LoadUnitHandle(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0xDD032F66)) / 1.00)))
                    cjlocgn_00000001 = I2S(R2I((GetUnitStateSwap(UNIT_STATE_MAX_LIFE, LoadUnitHandle(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0xDD032F66)) / 1.00)))
                    cjlocgn_00000002 = ((cjlocgn_00000000) .. ("/") .. (cjlocgn_00000001))
                    if ((LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946) == GetLocalPlayer())) then
                        DzFrameSetText(udg_UI_XL[1], (("|cffff0000") .. ((cjlocgn_00000002)) .. ("|r")))
                    else
                    end
                    cjlocgn_00000000 = nil
                    cjlocgn_00000001 = nil
                    cjlocgn_00000002 = nil
                end
            else
            end
            SaveReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xFBEDEC54, ((GetUnitStateSwap(ConvertUnitState(0x12), udg_WJYX[LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x6F96F2D2)]) + GetUnitStateSwap(ConvertUnitState(0x13), udg_WJYX[GetConvertedPlayerId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))])) + (GetUnitStateSwap(ConvertUnitState(0x20), udg_WJYX[LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x6F96F2D2)]) * 100.00)))
            SaveReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xFBEDEC54, (LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xFBEDEC54) + I2R(GetHeroStr(udg_WJYX[LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x6F96F2D2)], true))))
            SaveReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xFBEDEC54, (LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xFBEDEC54) + I2R(GetHeroAgi(udg_WJYX[LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x6F96F2D2)], true))))
            SaveReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xFBEDEC54, (LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xFBEDEC54) + I2R(GetHeroInt(udg_WJYX[LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x6F96F2D2)], true))))
            SaveReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xFBEDEC54, (LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xFBEDEC54) + (GetUnitStateSwap(UNIT_STATE_MAX_LIFE, udg_WJYX[LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x6F96F2D2)]) / 7.00)))
            SaveReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xFA4531C3, (LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xFBEDEC54) * 0.03))
            if ((LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xFA4531C3) > (LoadReal(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x37FA6B89) + (LoadReal(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x37FA6B89) * 0.08))) and (LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xFA4531C3) > 1000.00)) then
                SaveReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x160A3F34, (LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xFA4531C3) - LoadReal(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x37FA6B89)))
                if ((LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x160A3F34) > 100.00)) then
                    if ((LoadBoolean(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0xB1F4D1A7) ~= true)) then
                        SaveBoolean(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0xB1F4D1A7, true)
                        ydl_timer = CreateTimer()
                        SavePlayerHandle(YDLOC, GetHandleId(ydl_timer), 0x48656946, LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))
                        SaveReal(YDLOC, GetHandleId(ydl_timer), 0x8E2E3B1A, 0.00)
                        SaveReal(YDLOC, GetHandleId(ydl_timer), 0xA99320FA, 0.40)
                        SaveReal(YDLOC, GetHandleId(ydl_timer), 0xFDF65382, 0.35)
                        SaveReal(YDLOC, GetHandleId(ydl_timer), 0x160A3F34, LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x160A3F34))
                        SaveInteger(YDLOC, GetHandleId(ydl_timer), 0x3B60835B, LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x3B60835B))
                        SaveBoolean(YDLOC, GetHandleId(ydl_timer), 0x91BCD34C, LoadBoolean(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x91BCD34C))
                        SaveReal(YDLOC, GetHandleId(ydl_timer), 0x1B5C932E, LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x1B5C932E))
                        SaveStr(YDLOC, GetHandleId(ydl_timer), 0xDB1FE63B, LoadStr(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xDB1FE63B))
                        SaveStr(YDLOC, GetHandleId(ydl_timer), 0x2DAC16A7, LoadStr(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2DAC16A7))
                        TimerStart(ydl_timer, 0.03, true, Trig_QJ_1sFunc005Func002Func001Func005Func006Func001Func007Func001Func004Func002Func003T)
                    else
                    end
                else
                end
            else
            end
            SaveReal(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x37FA6B89, LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xFA4531C3))
            if ((LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xFA4531C3) >= 200000.00)) then
                SaveReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xFA4531C3, (LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xFA4531C3) / 10000.00))
                SaveBoolean(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x91BCD34C, true)
            else
            end
            SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x3B60835B, StringLength(I2S(R2I(LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xFA4531C3)))))
            ydul_a = 1
            while true do
                if ydul_a > 6 then
                    break
                end
                if ((ydul_a > LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x3B60835B))) then
                    if ((LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946) == GetLocalPlayer())) then
                        DzFrameShow(udg_Frame_zdl[ydul_a], false)
                    else
                    end
                else
                    SaveStr(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2DAC16A7 + (ydul_a), SubStringBJ(I2S(R2I(LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xFA4531C3))), ydul_a, ydul_a))
                    SaveStr(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xDB1FE63B + (ydul_a), (LoadStr(YDHT, StringHash(("Number")), StringHash((LoadStr(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2DAC16A7 + (ydul_a)))))))
                    if ((LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946) == GetLocalPlayer())) then
                        DzFrameSetTexture(udg_Frame_zdl[ydul_a], LoadStr(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xDB1FE63B + (ydul_a)), 0)
                        DzFrameShow(udg_Frame_zdl[ydul_a], true)
                    else
                    end
                    SaveStr(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2DAC16A7 + (ydul_a), "")
                    SaveStr(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xDB1FE63B + (ydul_a), "")
                end
                ydul_a = ydul_a + 1
            end
            if ((LoadBoolean(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x91BCD34C) == true)) then
                SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x3B60835B, StringLength(I2S(R2I(LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xFA4531C3)))))
                if ((LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946) == GetLocalPlayer())) then
                    DzFrameSetTexture(udg_Frame_zdl[(LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x3B60835B) + 1)], "war3mapImported\\TP (wan).tga", 0)
                    DzFrameShow(udg_Frame_zdl[(LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x3B60835B) + 1)], true)
                else
                end
            else
            end
            SaveBoolean(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x91BCD34C, false)
            SaveReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xFBEDEC54, 0.00)
            SaveReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xFA4531C3, (LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xFBEDEC54) * 0.03))
            if ((GetUnitAbilityLevelSwapped((0x53483033), udg_WJYX[LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x6F96F2D2)]) > 0)) then
                JK_RouDam(udg_WJYX[LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x6F96F2D2)], 350.00, GetUnitX(udg_WJYX[LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x6F96F2D2)]), GetUnitY(udg_WJYX[LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x6F96F2D2)]), (I2R(GetHeroStr(udg_WJYX[LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x6F96F2D2)], true)) * 1.56), "", false, true, ATTACK_TYPE_NORMAL, DAMAGE_TYPE_NORMAL, WEAPON_TYPE_WHOKNOWS)
                DestroyEffect(AddSpecialEffectTarget("Attack.mdl", udg_WJYX[LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x6F96F2D2)], "origin"))
            else
            end
            if ((LoadBoolean(YDHT, GetHandleId(ConvertedPlayer(bj_forLoopAIndex)), 0x4953E9BA) ~= true)) then
                if ((RectContainsUnit(gg_rct______________001, udg_WJYX[bj_forLoopAIndex]) == true)) then
                    SaveBoolean(YDHT, GetHandleId(ConvertedPlayer(bj_forLoopAIndex)), 0x4953E9BA, true)
                    if ((ConvertedPlayer(bj_forLoopAIndex) == GetLocalPlayer())) then
                        DzFrameShow(udg_UI_WXTB[0], true)
                    else
                    end
                else
                end
            else
                if ((RectContainsUnit(gg_rct______________001, udg_WJYX[bj_forLoopAIndex]) ~= true)) then
                    SaveBoolean(YDHT, GetHandleId(ConvertedPlayer(bj_forLoopAIndex)), 0x4953E9BA, false)
                    if ((ConvertedPlayer(bj_forLoopAIndex) == GetLocalPlayer())) then
                        DzFrameShow(udg_UI_WXTB[0], false)
                    else
                    end
                else
                end
            end
        else
        end
        bj_forLoopAIndex = bj_forLoopAIndex + 1
    end
    FlushChildHashtable(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step)
    ydl_timer = nil
end

function InitTrig_QJ_1s()
    gg_trg_QJ_1s = CreateTrigger()
    TriggerRegisterTimerEventPeriodic(gg_trg_QJ_1s, 1.00)
    TriggerAddAction(gg_trg_QJ_1s, Trig_QJ_1sActions)
end

function Trig_QJ_3sFunc003Func001Func006Func002A()
    SetUnitPosition(GetEnumUnit(), GetUnitX(udg_WJYX[bj_forLoopAIndex]), GetUnitY(udg_WJYX[bj_forLoopAIndex]))
    SetUnitState(GetEnumUnit(), ConvertUnitState(0x12), (I2R(GetHeroInt(udg_WJYX[bj_forLoopAIndex], true)) * 0.80))
end

function Trig_QJ_3sFunc003Func001Func008Func002T()
    SaveInteger(YDLOC, GetHandleId(GetExpiredTimer()), 0x6C2DED4E, (LoadInteger(YDLOC, GetHandleId(GetExpiredTimer()), 0x6C2DED4E) + 1))
    if ((LoadInteger(YDLOC, GetHandleId(GetExpiredTimer()), 0x6C2DED4E) == 4)) then
        DestroyEffect(LoadEffectHandle(YDLOC, GetHandleId(GetExpiredTimer()), 0x62C50DE6))
        FlushChildHashtable(YDLOC, GetHandleId(GetExpiredTimer()))
        DestroyTimer(GetExpiredTimer())
    else
        SaveReal(YDLOC, GetHandleId(GetExpiredTimer()), 0xA99320FA, GetUnitX(udg_WJYX[GetConvertedPlayerId(LoadPlayerHandle(YDLOC, GetHandleId(GetExpiredTimer()), 0x48656946))]))
        SaveReal(YDLOC, GetHandleId(GetExpiredTimer()), 0xFDF65382, GetUnitY(udg_WJYX[GetConvertedPlayerId(LoadPlayerHandle(YDLOC, GetHandleId(GetExpiredTimer()), 0x48656946))]))
        JK_RouDam(udg_WJYX[GetConvertedPlayerId(LoadPlayerHandle(YDLOC, GetHandleId(GetExpiredTimer()), 0x48656946))], 250.00, LoadReal(YDLOC, GetHandleId(GetExpiredTimer()), 0xA99320FA), LoadReal(YDLOC, GetHandleId(GetExpiredTimer()), 0xFDF65382), (I2R(GetHeroInt(udg_WJYX[GetConvertedPlayerId(LoadPlayerHandle(YDLOC, GetHandleId(GetExpiredTimer()), 0x48656946))], true)) * 2.00), "", false, true, ATTACK_TYPE_NORMAL, DAMAGE_TYPE_NORMAL, WEAPON_TYPE_METAL_LIGHT_CHOP)
    end
end

function Trig_QJ_3sActions()
    local ydl_triggerstep = nil
    local ydl_trigger = nil
    local ydl_group = nil
    local ydl_unit = nil
    local ydl_timer = nil
    local ydl_localvar_step = LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xCFDE6C76)
    ydl_localvar_step = ydl_localvar_step + 3
    SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xCFDE6C76, ydl_localvar_step)
    SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xECE825E7, ydl_localvar_step)
    ForceUICancelBJ(Player(0))
    bj_forLoopAIndex = 1
    bj_forLoopAIndexEnd = 4
    while true do
        if bj_forLoopAIndex > bj_forLoopAIndexEnd then
            break
        end
        if ((udg_WJYX[bj_forLoopAIndex] ~= nil)) then
            SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x6F96F2D2, bj_forLoopAIndex)
            SavePlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946, ConvertedPlayer(LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x6F96F2D2)))
            XG_UnitSetBonus(udg_WJYX[LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x6F96F2D2)], 4, -1, R2I(LoadReal(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0xA870B608)))
            SaveReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB259B269, (GetUnitStateSwap(ConvertUnitState(0x20), LoadUnitHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x911D5DC2)) * LoadReal(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x7BD21826)))
            SaveReal(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0xA870B608, LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB259B269))
            XG_UnitSetBonus(udg_WJYX[LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x6F96F2D2)], 4, 1, R2I(LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB259B269)))
            SaveReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xFCD961C9, GetUnitLifePercent(udg_WJYX[LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x6F96F2D2)]))
            XG_UnitSetBonus(udg_WJYX[LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x6F96F2D2)], 1, -1, R2I(LoadReal(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x53F6A707)))
            SaveReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB259B269, (GetUnitStateSwap(UNIT_STATE_MAX_LIFE, udg_WJYX[LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x6F96F2D2)]) * LoadReal(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x16C5C392)))
            SaveReal(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x53F6A707, LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB259B269))
            XG_UnitSetBonus(udg_WJYX[LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x6F96F2D2)], 1, 1, R2I(LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB259B269)))
            SetUnitLifePercentBJ(udg_WJYX[LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x6F96F2D2)], LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xFCD961C9))
            XG_UnitSetBonus(udg_WJYX[LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x6F96F2D2)], 3, -1, R2I(LoadReal(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x33D95D7C)))
            SaveReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB259B269, (GetUnitStateSwap(ConvertUnitState(0x12), udg_WJYX[LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x6F96F2D2)]) * LoadReal(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0xE2DD07B4)))
            SaveReal(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x33D95D7C, LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB259B269))
            XG_UnitSetBonus(udg_WJYX[LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x6F96F2D2)], 3, 1, R2I(LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB259B269)))
            XG_UnitSetBonus(udg_WJYX[LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x6F96F2D2)], 8, -1, R2I(LoadReal(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x07CB5D64)))
            SaveReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB259B269, (I2R(GetHeroStr(udg_WJYX[LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x6F96F2D2)], false)) * LoadReal(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x08BAB87E)))
            SaveReal(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x07CB5D64, LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB259B269))
            XG_UnitSetBonus(udg_WJYX[LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x6F96F2D2)], 8, 1, R2I(LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB259B269)))
            XG_UnitSetBonus(udg_WJYX[LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x6F96F2D2)], 9, -1, R2I(LoadReal(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x755CC6E2)))
            SaveReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB259B269, (I2R(GetHeroAgi(udg_WJYX[LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x6F96F2D2)], false)) * LoadReal(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x0098CEEB)))
            SaveReal(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x755CC6E2, LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB259B269))
            XG_UnitSetBonus(udg_WJYX[LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x6F96F2D2)], 9, 1, R2I(LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB259B269)))
            XG_UnitSetBonus(udg_WJYX[LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x6F96F2D2)], 10, -1, R2I(LoadReal(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x3C05C2C6)))
            SaveReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB259B269, (I2R(GetHeroInt(udg_WJYX[LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x6F96F2D2)], false)) * LoadReal(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0xC08430F1)))
            SaveReal(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x3C05C2C6, LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB259B269))
            XG_UnitSetBonus(udg_WJYX[LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x6F96F2D2)], 10, 1, R2I(LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB259B269)))
            if ((HaveSavedHandle(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0xFB35C934) == true)) then
                SetUnitState(LoadUnitHandle(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0xFB35C934), ConvertUnitState(0x12), (GetUnitStateSwap(ConvertUnitState(0x12), udg_WJYX[GetConvertedPlayerId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))]) * 0.50))
                SetUnitAcquireRange(LoadUnitHandle(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0xFB35C934), 1100.00)
                SetUnitState(LoadUnitHandle(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0xFB35C934), ConvertUnitState(0x51), (GetUnitStateSwap(ConvertUnitState(0x51), udg_WJYX[GetConvertedPlayerId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))]) * 0.70))
                if ((YDWEDistanceBetweenUnits(udg_WJYX[LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x6F96F2D2)], LoadUnitHandle(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0xFB35C934)) >= 1000.00)) then
                    SetUnitPosition(LoadUnitHandle(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0xFB35C934), GetUnitX(udg_WJYX[GetConvertedPlayerId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))]), (GetUnitY(udg_WJYX[GetConvertedPlayerId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))]) - 350.00))
                else
                end
            else
            end
            if ((HaveSavedHandle(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x1136BE0E) == true)) then
                SetUnitState(LoadUnitHandle(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x1136BE0E), ConvertUnitState(0x12), (GetUnitStateSwap(ConvertUnitState(0x12), udg_WJYX[GetConvertedPlayerId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))]) * 0.50))
                SetUnitAcquireRange(LoadUnitHandle(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x1136BE0E), 1100.00)
                SetUnitState(LoadUnitHandle(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x1136BE0E), ConvertUnitState(0x51), (GetUnitStateSwap(ConvertUnitState(0x51), udg_WJYX[GetConvertedPlayerId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))]) * 0.70))
                if ((YDWEDistanceBetweenUnits(udg_WJYX[LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x6F96F2D2)], LoadUnitHandle(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x1136BE0E)) >= 1000.00)) then
                    SetUnitPosition(LoadUnitHandle(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x1136BE0E), GetUnitX(udg_WJYX[GetConvertedPlayerId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))]), (GetUnitY(udg_WJYX[GetConvertedPlayerId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))]) - 350.00))
                else
                end
            else
            end
            if ((LoadBoolean(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x55B032F5) == true)) then
                ydl_trigger = gg_trg_chufaqi_shuxingmianban
                ydl_triggerstep = GetHandleId(ydl_trigger) * (LoadInteger(YDLOC, GetHandleId(ydl_trigger), 0xCFDE6C76) + 3)
                SavePlayerHandle(YDLOC, ydl_triggerstep, 0x48656946, LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))
                TriggerExecute(ydl_trigger)
            else
            end
            if ((GetUnitAbilityLevelSwapped((0x53483138), udg_WJYX[bj_forLoopAIndex]) > 0)) then
                ForGroupBJ(udg_js_dwz[bj_forLoopAIndex], Trig_QJ_3sFunc003Func001Func006Func002A)
            else
            end
            if ((GetUnitAbilityLevelSwapped((0x53483139), udg_WJYX[bj_forLoopAIndex]) > 0)) then
                SetUnitPosition(LoadUnitHandle(YDHT, GetHandleId(ConvertedPlayer(bj_forLoopAIndex)), 0x5A8056B2), GetUnitX(udg_WJYX[bj_forLoopAIndex]), GetUnitY(udg_WJYX[bj_forLoopAIndex]))
                SetUnitState(LoadUnitHandle(YDHT, GetHandleId(ConvertedPlayer(bj_forLoopAIndex)), 0x5A8056B2), ConvertUnitState(0x12), (I2R(GetHeroInt(udg_WJYX[bj_forLoopAIndex], true)) * 2.00))
            else
            end
            if ((GetUnitAbilityLevelSwapped((0x53483230), udg_WJYX[bj_forLoopAIndex]) > 0)) then
                ydl_timer = CreateTimer()
                SavePlayerHandle(YDLOC, GetHandleId(ydl_timer), 0x48656946, LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))
                SaveInteger(YDLOC, GetHandleId(ydl_timer), 0x6C2DED4E, 0)
                SaveEffectHandle(YDLOC, GetHandleId(ydl_timer), 0x62C50DE6, AddSpecialEffect("E\\[E] (31).mdl", LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xA99320FA), LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xFDF65382)))
                SaveReal(YDLOC, GetHandleId(ydl_timer), 0xA99320FA, LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xA99320FA))
                SaveReal(YDLOC, GetHandleId(ydl_timer), 0xFDF65382, LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xFDF65382))
                TimerStart(ydl_timer, 1.00, true, Trig_QJ_3sFunc003Func001Func008Func002T)
            else
            end
        else
        end
        bj_forLoopAIndex = bj_forLoopAIndex + 1
    end
    SaveInteger(YDHT, GetHandleId(Player(PLAYER_NEUTRAL_AGGRESSIVE)), 0x809D3A90, (LoadInteger(YDHT, GetHandleId(Player(PLAYER_NEUTRAL_AGGRESSIVE)), 0x809D3A90) + 1))
    if ((LoadInteger(YDHT, GetHandleId(Player(PLAYER_NEUTRAL_AGGRESSIVE)), 0x809D3A90) == 100)) then
        SaveInteger(YDHT, GetHandleId(Player(PLAYER_NEUTRAL_AGGRESSIVE)), 0x809D3A90, 0)
        SaveBoolean(YDHT, GetHandleId(Player(7)), 0x1F11FE90, false)
        DisplayTimedTextToPlayer(GetLocalPlayer(), 0, 0, 10.00, (YDWEGetPlayerColorString(Player(0), "【系统】：") .. YDWEGetPlayerColorString(Player(5), (LoadStr(YDHT, StringHash(("小tip")), StringHash((("小tip" .. I2S(GetRandomInt(1, 23))))))))))
    else
    end
    FlushChildHashtable(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step)
    ydl_trigger = nil
    ydl_group = nil
    ydl_unit = nil
    ydl_timer = nil
end

function InitTrig_QJ_3s()
    gg_trg_QJ_3s = CreateTrigger()
    TriggerRegisterTimerEventPeriodic(gg_trg_QJ_3s, 3.00)
    TriggerAddAction(gg_trg_QJ_3s, Trig_QJ_3sActions)
end
end
