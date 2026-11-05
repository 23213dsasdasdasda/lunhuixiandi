-- Converted from 342.w3x map/map/war3map.j.
-- Trigger functions grouped by feature.
-- InitTrig_WP_PICK
-- InitTrig_WP_LOSE
-- InitTrig_wp_uese
-- InitTrig_wendaxuanren6
return function(_ENV)
function Trig_WP_PICKConditions()
    do
        return ((IsUnitIllusionBJ(GetTriggerUnit()) == false))
    end
end

function Trig_WP_PICKActions()
    local ydl_localvar_step = LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xCFDE6C76)
    ydl_localvar_step = ydl_localvar_step + 3
    SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xCFDE6C76, ydl_localvar_step)
    SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xECE825E7, ydl_localvar_step)
    SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x6F96F2D2, GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit())))
    SavePlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946, ConvertedPlayer(LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x6F96F2D2)))
    if ((GetItemTypeId(GetManipulatedItem()) == (0x53585734))) then
        UnitAddItemByIdSwapped(ChooseRandomItemExBJ(GetRandomInt(2000, 2003), ITEM_TYPE_ANY), GetTriggerUnit())
        FlushChildHashtable(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step)
        do
            return
        end
    else
    end
    if (((IsUnitType(GetTriggerUnit(), UNIT_TYPE_HERO) == true) or (GetUnitTypeId(GetTriggerUnit()) == (0x65303039)))) then
        if ((S2I(EXExecuteScript("(require'jass.slk').item[" .. I2S(GetItemTypeId(GetManipulatedItem())) .. "].prio")) == 9200)) then
            SavePlayerHandle(YDHT, GetHandleId(Player(PLAYER_NEUTRAL_AGGRESSIVE)), 0x119572DE, GetOwningPlayer(GetTriggerUnit()))
            SaveBoolean(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x8A0F9432, true)
            SaveInteger(YDHT, GetHandleId(Player(PLAYER_NEUTRAL_AGGRESSIVE)), 0x171487D7, GetItemTypeId(GetManipulatedItem()))
            SaveItemHandle(YDHT, GetHandleId(Player(PLAYER_NEUTRAL_AGGRESSIVE)), 0x8C98F085, GetManipulatedItem())
            TriggerExecute(gg_trg_qjyd)
        else
        end
    else
    end
    if ((GetItemLevel(GetManipulatedItem()) == 11)) then
        SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x04D36C47, S2I(EXExecuteScript("(require'jass.slk').item[" .. I2S(GetItemTypeId(GetManipulatedItem())) .. "].goldcost")))
        SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x077065E1, S2I(EXExecuteScript("(require'jass.slk').item[" .. I2S(GetItemTypeId(GetManipulatedItem())) .. "].stockStart")))
        UnitAddItemByIdSwapped(ChooseRandomItemExBJ(GetRandomInt(LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x04D36C47), LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x077065E1)), ITEM_TYPE_ANY), udg_WJYX[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))])
        DestroyEffect(AddSpecialEffect("G\\[g] (8).mdl", GetUnitX(udg_WJYX[GetConvertedPlayerId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))]), GetUnitY(udg_WJYX[GetConvertedPlayerId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))])))
    else
    end
    FlushChildHashtable(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step)
end

function InitTrig_WP_PICK()
    gg_trg_WP_PICK = CreateTrigger()
    TriggerRegisterAnyUnitEventBJ(gg_trg_WP_PICK, EVENT_PLAYER_UNIT_PICKUP_ITEM)
    TriggerAddCondition(gg_trg_WP_PICK, Condition(Trig_WP_PICKConditions))
    TriggerAddAction(gg_trg_WP_PICK, Trig_WP_PICKActions)
end

function Trig_WP_LOSEConditions()
    do
        return ((IsUnitIllusionBJ(GetTriggerUnit()) == false))
    end
end

function Trig_WP_LOSEActions()
    local ydl_localvar_step = LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xCFDE6C76)
    ydl_localvar_step = ydl_localvar_step + 3
    SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xCFDE6C76, ydl_localvar_step)
    SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xECE825E7, ydl_localvar_step)
    SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x6F96F2D2, GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit())))
    SavePlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946, ConvertedPlayer(LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x6F96F2D2)))
    SaveReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x52DB984E, GetItemLifeBJ(GetManipulatedItem()))
    if (((IsUnitType(GetTriggerUnit(), UNIT_TYPE_HERO) == true) or (GetUnitTypeId(GetTriggerUnit()) == (0x65303039)))) then
        if ((S2I(EXExecuteScript("(require'jass.slk').item[" .. I2S(GetItemTypeId(GetManipulatedItem())) .. "].prio")) == 9200)) then
            SavePlayerHandle(YDHT, GetHandleId(Player(PLAYER_NEUTRAL_AGGRESSIVE)), 0x119572DE, GetOwningPlayer(GetTriggerUnit()))
            SaveBoolean(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x8A0F9432, true)
            SaveInteger(YDHT, GetHandleId(Player(PLAYER_NEUTRAL_AGGRESSIVE)), 0x171487D7, GetItemTypeId(GetManipulatedItem()))
            SaveItemHandle(YDHT, GetHandleId(Player(PLAYER_NEUTRAL_AGGRESSIVE)), 0x8C98F085, GetManipulatedItem())
            SaveReal(YDHT, GetHandleId(Player(PLAYER_NEUTRAL_AGGRESSIVE)), 0xE8319FBA, -1.00)
            TriggerExecute(gg_trg_qjyd)
        else
        end
    else
    end
    FlushChildHashtable(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step)
end

function InitTrig_WP_LOSE()
    gg_trg_WP_LOSE = CreateTrigger()
    TriggerRegisterAnyUnitEventBJ(gg_trg_WP_LOSE, EVENT_PLAYER_UNIT_DROP_ITEM)
    TriggerAddCondition(gg_trg_WP_LOSE, Condition(Trig_WP_LOSEConditions))
    TriggerAddAction(gg_trg_WP_LOSE, Trig_WP_LOSEActions)
end

function Trig_wp_ueseFunc005Func001Func002Func020Conditions()
    local ydl_triggerstep = nil
    local ydl_trigger = nil
    if ((IsUnitAliveBJ(GetKillingUnit()) == true) and (GetKillingUnit() == udg_WJYX[LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0x6F96F2D2)])) then
        SaveInteger(YDHT, GetHandleId(GetOwningPlayer(GetKillingUnit())), 0xF66DEA03, (LoadInteger(YDHT, GetHandleId(GetOwningPlayer(GetKillingUnit())), 0xF66DEA03) + 1))
        YDWETimerDestroyEffect(2, AddSpecialEffectTarget("G\\[g].mdl", GetKillingUnit(), "origin"))
        YDWETimerDestroyEffect(2, AddSpecialEffectTarget("[pf] (2).mdl", GetKillingUnit(), "overhead"))
        SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xB0497EE9, GetItemTypeId(udg_wp[LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0x6F96F2D2)]))
        RemoveItem(udg_wp[LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0x6F96F2D2)])
        if ((LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xB0497EE9) == (0x78737735))) then
            ydl_trigger = gg_trg_UI_tips
            ydl_triggerstep = GetHandleId(ydl_trigger) * (LoadInteger(YDLOC, GetHandleId(ydl_trigger), 0xCFDE6C76) + 3)
            SavePlayerHandle(YDLOC, ydl_triggerstep, 0x48656946, ConvertedPlayer(LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0x6F96F2D2)))
            SaveInteger(YDLOC, ydl_triggerstep, 0x9CD60476, DzFrameGetCommandBarButton(1, 0))
            SaveInteger(YDLOC, GetHandleId(ydl_trigger), 0x6F96F2D2, LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0x6F96F2D2))
            TriggerExecute(ydl_trigger)
            SaveLocationHandle(YDLOC, GetHandleId(GetTriggeringTrigger()), 0x9CD60476, GetUnitLoc((LoadUnitHandle(YDHT, ((GetHandleId((GetOwningPlayer(GetKillingUnit()))))), (StringHash("14NPC"))))))
            ShowUnitShow((LoadUnitHandle(YDHT, ((GetHandleId((GetOwningPlayer(GetKillingUnit()))))), (StringHash("14NPC")))))
            YDWETimerDestroyEffect(0.00, AddSpecialEffectTarget("G\\[g] (11).mdl", (LoadUnitHandle(YDHT, ((GetHandleId((GetOwningPlayer(GetKillingUnit()))))), (StringHash("14NPC")))), "chest"))
            PanCameraToTimedLocForPlayer(GetOwningPlayer(GetKillingUnit()), LoadLocationHandle(YDLOC, GetHandleId(GetTriggeringTrigger()), 0x9CD60476), 1.00)
            RemoveLocation(LoadLocationHandle(YDLOC, GetHandleId(GetTriggeringTrigger()), 0x9CD60476))
        else
            UnitAddItemByIdSwapped((YDWES2Id(((EXExecuteScript("(require'jass.slk').item[" .. I2S(LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xB0497EE9)) .. "].class"))))), udg_WJYX[LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0x6F96F2D2)])
            udg_wp[GetConvertedPlayerId(GetOwningPlayer(GetKillingUnit()))] = GetLastCreatedItem()
            SetItemCharges(udg_wp[GetConvertedPlayerId(GetOwningPlayer(GetKillingUnit()))], ((LoadInteger(YDHT, GetHandleId(GetOwningPlayer(GetKillingUnit())), 0xF66DEA03) + LoadInteger(YDHT, GetHandleId(GetOwningPlayer(GetKillingUnit())), 0xF66DEA03)) * 400))
        end
        if ((GetOwningPlayer(GetKillingUnit()) == GetLocalPlayer())) then
            DzFrameShow(udg_GAOLIANG_UI, false)
        else
        end
    else
    end
    FlushChildHashtable(YDLOC, GetHandleId(GetTriggeringTrigger()))
    DestroyTrigger(GetTriggeringTrigger())
    ydl_trigger = nil
end

function Trig_wp_ueseActions()
    local ydl_trigger = nil
    local ydl_triggerstep = nil
    local ydul_a = nil
    local ydl_localvar_step = LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xCFDE6C76)
    ydl_localvar_step = ydl_localvar_step + 3
    SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xCFDE6C76, ydl_localvar_step)
    SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xECE825E7, ydl_localvar_step)
    SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x6F96F2D2, GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit())))
    SavePlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946, ConvertedPlayer(LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x6F96F2D2)))
    SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB0497EE9, GetItemTypeId(GetManipulatedItem()))
    if ((GetManipulatedItem() == udg_wp[LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x6F96F2D2)])) then
        if ((GetItemCharges(udg_wp[LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x6F96F2D2)]) ~= 0)) then
            SetItemCharges(udg_wp[LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x6F96F2D2)], (GetItemCharges(udg_wp[LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x6F96F2D2)]) + 1))
        else
            KillUnit(LoadUnitHandle(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x9D4D1A01))
            RemoveUnit(LoadUnitHandle(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x9D4D1A01))
            SaveUnitHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x384C9D86, CreateUnit(Player(7), (0x534C4659), udg_LGFZB_x[GetConvertedPlayerId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))], (udg_LGFZB_y[GetConvertedPlayerId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))] + 700.00), (GetRandomReal(240.00, 300.00))))
            YDWEJumpTimer(LoadUnitHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x384C9D86), GetUnitFacing(LoadUnitHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x384C9D86)), GetRandomReal(800.00, 950.00), 0.50, 0.01, 300.00)
            SetUnitVertexColor(LoadUnitHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x384C9D86), 200, 255, 0, 255)
            SetUnitScale(LoadUnitHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x384C9D86), 1.30, 1.30, 1.30)
            SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xA1CFBB06, (YDWES2Id(((EXExecuteScript("(require'jass.slk').item[" .. I2S(GetItemTypeId(GetManipulatedItem())) .. "].file"))))))
            SetUnitState(LoadUnitHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x384C9D86), ConvertUnitState(0x12), (S2R(EXExecuteScript("(require'jass.slk').unit[" .. I2S(LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xA1CFBB06)) .. "].dmgplus1")) * 0.88))
            SetUnitState(LoadUnitHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x384C9D86), UNIT_STATE_MAX_LIFE, (S2R(EXExecuteScript("(require'jass.slk').unit[" .. I2S(LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xA1CFBB06)) .. "].HP")) * 0.88))
            SetUnitState(LoadUnitHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x384C9D86), ConvertUnitState(0x20), (S2R(EXExecuteScript("(require'jass.slk').unit[" .. I2S(LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xA1CFBB06)) .. "].def")) * 0.88))
            SetUnitState(LoadUnitHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x384C9D86), ConvertUnitState(0x51), 200.00)
            SetUnitUserData(LoadUnitHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x384C9D86), (LoadInteger(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0xF66DEA03) + 1))
            SetUnitLifePercentBJ(LoadUnitHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x384C9D86), 100)
            UnitApplyTimedLifeBJ(14.00, 0x42487765, LoadUnitHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x384C9D86))
            SaveUnitHandle(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x9D4D1A01, LoadUnitHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x384C9D86))
            SaveEffectHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x62C50DE6, AddSpecialEffectTarget("war3mapImported\\[xt]boss_djs_15.mdx", LoadUnitHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x384C9D86), "chest"))
            YDWETimerDestroyEffect(15.00, LoadEffectHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x62C50DE6))
            ydl_trigger = CreateTrigger()
            SaveInteger(YDLOC, GetHandleId(ydl_trigger), 0x6F96F2D2, LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x6F96F2D2))
            SaveLocationHandle(YDLOC, GetHandleId(ydl_trigger), 0x9CD60476, LoadLocationHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x9CD60476))
            SaveInteger(YDLOC, GetHandleId(ydl_trigger), 0xB0497EE9, LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB0497EE9))
            TriggerRegisterTimerEventSingle(ydl_trigger, 15.00)
            TriggerRegisterUnitEvent(ydl_trigger, LoadUnitHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x384C9D86), EVENT_UNIT_DEATH)
            TriggerAddCondition(ydl_trigger, Condition(Trig_wp_ueseFunc005Func001Func002Func020Conditions))
        end
    else
    end
    if (((GetItemTypeId(GetManipulatedItem()) == (0x58535738)) or (GetItemTypeId(GetManipulatedItem()) == (0x58535739)))) then
        if ((GetItemTypeId(GetManipulatedItem()) == (0x58535738))) then
            JK_UnitTranslationB(udg_WJYX[GetConvertedPlayerId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))], 1346.00, -10420.00, bj_lastCreatedEffect, 0.00, "", true)
        else
        end
        if ((GetItemTypeId(GetManipulatedItem()) == (0x58535739))) then
            JK_UnitTranslationB(udg_WJYX[GetConvertedPlayerId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))], -10500.00, -1828.00, bj_lastCreatedEffect, 0.00, "", true)
        else
        end
    else
    end
    if ((GetItemLifeBJ(GetManipulatedItem()) == 4477.00)) then
        if (((LoadBoolean(YDHT, ((GetHandleId((LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))))), ((LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB0497EE9))))) ~= true)) then
            SaveBoolean(YDHT, ((GetHandleId((LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))))), ((LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB0497EE9))), (true))
            SavePlayerHandle(YDHT, GetHandleId(Player(PLAYER_NEUTRAL_AGGRESSIVE)), 0x119572DE, LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))
            SaveInteger(YDHT, GetHandleId(Player(PLAYER_NEUTRAL_AGGRESSIVE)), 0x171487D7, LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB0497EE9))
            ConditionalTriggerExecute(gg_trg_qjyd)
            DisplayTextToPlayer(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946), 0, 0, (YDWEGetPlayerColorString(Player(0), "[系统]：") .. ((EXExecuteScript("(require'jass.slk').item[" .. I2S(LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB0497EE9)) .. "].Name")) .. "已激活。")))
            ydl_trigger = gg_trg_wuxingchufa_paichu
            ydl_triggerstep = GetHandleId(ydl_trigger) * (LoadInteger(YDLOC, GetHandleId(ydl_trigger), 0xCFDE6C76) + 3)
            SavePlayerHandle(YDLOC, ydl_triggerstep, 0x48656946, LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))
            TriggerExecute(ydl_trigger)
            if ((LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946) == GetLocalPlayer())) then
                DzFrameSetTexture(udg_UI_WXTB[(S2I(EXExecuteScript("(require'jass.slk').item[" .. I2S(LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB0497EE9)) .. "].prio")) + 9)], (EXExecuteScript("(require'jass.slk').item[" .. I2S(GetItemTypeId(GetManipulatedItem())) .. "].Art")), 0)
            else
            end
        else
            SaveInteger(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0xE257723F, (LoadInteger(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0xE257723F) + S2I(EXExecuteScript("(require'jass.slk').item[" .. I2S(LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB0497EE9)) .. "].stockRegen"))))
            DisplayTextToPlayer(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946), 0, 0, (YDWEGetPlayerColorString(Player(0), "[系统]：") .. ((EXExecuteScript("(require'jass.slk').item[" .. I2S(LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB0497EE9)) .. "].Name")) .. (("已激活") .. ("~转化符印数量：") .. (I2S(S2I(EXExecuteScript("(require'jass.slk').item[" .. I2S(LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB0497EE9)) .. "].stockRegen"))))))))
            if ((GetOwningPlayer(GetTriggerUnit()) == GetLocalPlayer())) then
                DzFrameSetText(udg_UI_WXTB[19], ("x " .. I2S(LoadInteger(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0xE257723F))))
            else
            end
        end
    else
    end
    if ((S2I(EXExecuteScript("(require'jass.slk').item[" .. I2S(GetItemTypeId(GetManipulatedItem())) .. "].prio")) == 10010)) then
        if ((LoadInteger(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x9ACF35AF) >= 1)) then
            DisplayTimedTextToPlayer(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946), 0, 0, 6.00, (YDWEGetPlayerColorString(Player(6), "[系统]：") .. (GetAbilityName(LoadInteger(YDHT, LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB0497EE9), 0x800C68E2)) .. "")))
            ydul_a = 1
            while true do
                if ydul_a > 3 then
                    break
                end
                SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xF374F3BD + (ydul_a), (LoadInteger(YDHT, ((GetHandleId((LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))))), (StringHash(I2S(ydul_a))))))
                if (((LoadInteger(YDHT, ((GetHandleId((LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))))), ((LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xF374F3BD + (ydul_a)))))) == (0x41706C79))) then
                    SaveInteger(YDHT, StringHash((I2S(LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x6F96F2D2)))), StringHash((GetAbilityName(LoadInteger(YDHT, LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB0497EE9), 0x800C68E2)))), (1))
                    SaveInteger(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x9ACF35AF, (LoadInteger(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x9ACF35AF) - 1))
                    SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xF374F3BD, LoadInteger(YDHT, LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB0497EE9), 0x800C68E2))
                    DisplayTimedTextToPlayer(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946), 0, 0, 6.00, (YDWEGetPlayerColorString(Player(6), "[系统]：") .. (GetAbilityName(LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xF374F3BD)) .. "学习成功")))
                    DoNothing()
                    if true then
                        break
                    end
                else
                end
                ydul_a = ydul_a + 1
            end
        else
            DisplayTimedTextToPlayer(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946), 0, 0, 6.00, (YDWEGetPlayerColorString(Player(6), "[系统]：") .. "无可用的技能槽"))
            UnitAddItemByIdSwapped(GetItemTypeId(GetManipulatedItem()), GetTriggerUnit())
        end
    else
    end
    FlushChildHashtable(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step)
    ydl_trigger = nil
end

function InitTrig_wp_uese()
    gg_trg_wp_uese = CreateTrigger()
    TriggerRegisterAnyUnitEventBJ(gg_trg_wp_uese, EVENT_PLAYER_UNIT_USE_ITEM)
    TriggerAddAction(gg_trg_wp_uese, Trig_wp_ueseActions)
end

function Trig_wendaxuanren6Func002Func001Func002Func006Func001Conditions()
    if ((LoadBoolean(YDHT, GetHandleId(DzGetTriggerKeyPlayer()), 0x712CE12C) == true)) then
        SaveBoolean(YDHT, GetHandleId(DzGetTriggerKeyPlayer()), 0x712CE12C, false)
        if ((DzGetTriggerKeyPlayer() == GetLocalPlayer())) then
            DzFrameShow(udg_UI_FL[0], false)
        else
        end
    else
    end
    if ((LoadBoolean(YDHT, GetHandleId(DzGetTriggerKeyPlayer()), 0x55B032F5) == true)) then
        SaveBoolean(YDHT, GetHandleId(DzGetTriggerKeyPlayer()), 0x55B032F5, false)
        if ((DzGetTriggerKeyPlayer() == GetLocalPlayer())) then
            DzFrameShow(udg_UI_MB[0], false)
        else
        end
    else
    end
end

function Trig_wendaxuanren6Func002Func001Func002Func007Func001Conditions()
    local ydul_a = nil
    local ydl_triggerstep = nil
    local ydl_trigger = nil
    DisableTrigger(GetTriggeringTrigger())
    if ((GetUnitTypeId(GetTriggerUnit()) == (0x6E303034))) then
        if ((GetTriggerPlayer() == GetLocalPlayer())) then
            if ((LoadInteger(YDHT, GetHandleId(GetTriggerPlayer()), 0xF5B58222) >= 100)) then
                DzFrameShow(LoadInteger(YDHT, GetHandleId(GetTriggerPlayer()), 0x8F7DE16C), true)
            else
                DzFrameShow(LoadInteger(YDHT, GetHandleId(GetTriggerPlayer()), 0x8F7DE16C), false)
            end
            DzFrameSetText(LoadInteger(YDHT, GetHandleId(GetTriggerPlayer()), 0xFCB78772), (("|cff000000") .. (("宗门威望：" .. I2S(LoadInteger(YDHT, GetHandleId(GetTriggerPlayer()), 0xF5B58222)))) .. ("|r")))
            DzFrameSetTexture(LoadInteger(YDHT, GetHandleId(GetTriggerPlayer()), 0xDF0C831B), "war3mapImported\\ui_huajing (5).blp", 0)
            DzFrameShow(LoadInteger(YDHT, GetHandleId(GetTriggerPlayer()), 0xEED500CF), true)
            DzFrameSetText(udg_ui_BYDJ[8], ("Lv " .. I2S(LoadInteger(YDHT, GetHandleId(GetTriggerPlayer()), 0x680D1141))))
            ydul_a = 1
            while true do
                if ydul_a > 4 then
                    break
                end
                DzFrameShow(udg_UI_shuaxin[ydul_a], true)
                ydul_a = ydul_a + 1
            end
        else
        end
        if ((LoadInteger(YDHT, GetHandleId(GetTriggerPlayer()), 0xF5B58222) >= 100)) then
            DestroyEffect(LoadEffectHandle(YDHT, GetHandleId(GetTriggerPlayer()), 0xC407111D))
            SaveEffectHandle(YDHT, GetHandleId(GetTriggerPlayer()), 0xC407111D, AddSpecialEffectTarget("ui (4).mdl", (LoadUnitHandle(YDHT, ((GetHandleId((GetTriggerPlayer())))), (StringHash("05NPC")))), "origin"))
        else
            DestroyEffect(LoadEffectHandle(YDHT, GetHandleId(GetTriggerPlayer()), 0xC407111D))
        end
    else
        if ((LoadUnitHandle(YDHT, GetHandleId(GetTriggerPlayer()), 0xDD032F66) == (LoadUnitHandle(YDHT, ((GetHandleId((GetTriggerPlayer())))), (StringHash("05NPC")))))) then
            if ((GetTriggerPlayer() == GetLocalPlayer())) then
                DzFrameShow(LoadInteger(YDHT, GetHandleId(GetTriggerPlayer()), 0xEED500CF), false)
                ydul_a = 1
                while true do
                    if ydul_a > 4 then
                        break
                    end
                    DzFrameShow(udg_UI_shuaxin[ydul_a], false)
                    ydul_a = ydul_a + 1
                end
            else
            end
        else
        end
    end
    if ((GetUnitTypeId(GetTriggerUnit()) == (0x6E30304F))) then
        if ((HaveSavedHandle(YDHT, GetHandleId(GetTriggerPlayer()), 0xC43A1D5D) == true)) then
            ydl_trigger = gg_trg_XTGQ_006________________u
            ydl_triggerstep = GetHandleId(ydl_trigger) * (LoadInteger(YDLOC, GetHandleId(ydl_trigger), 0xCFDE6C76) + 3)
            SavePlayerHandle(YDLOC, ydl_triggerstep, 0x48656946, LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()), 0x48656946))
            TriggerExecute(ydl_trigger)
        else
        end
    else
    end
    SaveUnitHandle(YDHT, GetHandleId(GetTriggerPlayer()), 0xDD032F66, GetTriggerUnit())
    if ((GetTriggerUnit() ~= udg_WJYX[GetConvertedPlayerId(GetTriggerPlayer())])) then
        if ((GetTriggerPlayer() == GetLocalPlayer())) then
            DzFrameShow(udg_ui_sjtz[1], false)
            DzFrameShow(udg_Highlight, false)
            DzFrameShow(udg_GAOLIANG_UI2, false)
            DzFrameShow(udg_GAOLIANG_UI, false)
            DzFrameShow(udg_GAOLIANG_UI3[0], false)
        else
        end
    else
        if ((GetTriggerPlayer() == GetLocalPlayer())) then
            DzFrameShow(udg_ui_sjtz[1], true)
            if ((IsSuspendedXP(udg_WJYX[GetConvertedPlayerId(GetTriggerPlayer())]) == true)) then
                DzFrameSetTexture(udg_ui_sjtz[4], "war3mapImported\\ui_tp (1).tga", 0)
            else
            end
            if ((IsItemOwned(udg_wp[GetConvertedPlayerId(GetTriggerPlayer())]) == true)) then
                if ((GetItemCharges(udg_wp[GetConvertedPlayerId(GetTriggerPlayer())]) == 0)) then
                    DzFrameShow(udg_GAOLIANG_UI, true)
                    DzFrameSetPoint(udg_GAOLIANG_UI, 4, DzFrameGetItemBarButton(0), 4, 0, 0)
                else
                end
            else
            end
            if ((HaveSavedHandle(YDHT, GetHandleId(GetTriggerPlayer()), 0xC43A1D5D) == true)) then
                DzFrameShow(udg_GAOLIANG_UI3[0], true)
            else
            end
        else
        end
    end
    if ((IsUnitAlly(GetTriggerUnit(), Player(5)) == true)) then
        if ((IsUnitInForce(GetTriggerUnit(), udg_ZXWJZ) == true)) then
            if ((IsUnitType(GetTriggerUnit(), UNIT_TYPE_HERO) ~= true)) then
                if ((GetOwningPlayer(GetTriggerUnit()) ~= GetTriggerPlayer())) then
                    SelectUnitRemoveForPlayer(GetTriggerUnit(), GetTriggerPlayer())
                else
                end
            else
            end
        else
        end
    else
    end
    EnableTrigger(GetTriggeringTrigger())
    ydl_trigger = nil
end

function Trig_wendaxuanren6Func002Func001Func002Func011Func005Func002001002()
    do
        return ((IsUnitType(GetFilterUnit(), UNIT_TYPE_STRUCTURE) ~= true))
    end
end

function Trig_wendaxuanren6Func002Func001Func002Func011Func005Func002002()
    RemoveUnit(GetEnumUnit())
end

function Trig_wendaxuanren6Func002Func001Func002Func011Conditions()
    if (((EVENT_PLAYER_UNIT_ISSUED_TARGET_ORDER == GetTriggerEventId()) ~= true)) then
        if ((GetIssuedOrderIdBJ() == (851971))) then
            if (((GetTriggerUnit() == udg_WJYXX[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))]) or ((LoadInteger(YDHT, StringHash((GetPlayerName(GetOwningPlayer(GetTriggerUnit())))), StringHash(("2")))) == 1))) then
                SaveLocationHandle(YDLOC, GetHandleId(GetTriggeringTrigger()), 0x9CD60476, GetOrderPointLoc())
                if ((JK_001(GetUnitX(GetTriggerUnit()), GetUnitY(GetTriggerUnit()), GetLocationX(LoadLocationHandle(YDLOC, GetHandleId(GetTriggeringTrigger()), 0x9CD60476)), GetLocationY(LoadLocationHandle(YDLOC, GetHandleId(GetTriggeringTrigger()), 0x9CD60476))) >= 500.00)) then
                    SetUnitPosition(GetTriggerUnit(), GetLocationX(LoadLocationHandle(YDLOC, GetHandleId(GetTriggeringTrigger()), 0x9CD60476)), GetLocationY(LoadLocationHandle(YDLOC, GetHandleId(GetTriggeringTrigger()), 0x9CD60476)))
                    DestroyEffect(AddSpecialEffectTarget("Abilities\\Spells\\NightElf\\Blink\\BlinkTarget.mdl", GetTriggerUnit(), "chest"))
                    SetUnitFacing(GetTriggerUnit(), 270.00)
                else
                end
                RemoveLocation(LoadLocationHandle(YDLOC, GetHandleId(GetTriggeringTrigger()), 0x9CD60476))
            else
            end
        else
        end
    else
        if (((GetTriggerUnit() == udg_WJYX[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))]) or (GetTriggerUnit() == udg_WJYXX[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))]))) then
            SaveItemHandle(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xD14F34A9, GetOrderTargetItem())
            if ((IsItemOwned(LoadItemHandle(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xD14F34A9)) == true)) then
                SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xEB182CFC, YDWEGetInventoryIndexOfItemTypeBJNull(GetTriggerUnit(), GetItemTypeId(LoadItemHandle(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xD14F34A9))))
                if ((LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xEB182CFC) == 1)) then
                    if ((GetIssuedOrderIdBJ() == (852002))) then
                        if ((GetTriggerUnit() == udg_WJYXX[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))])) then
                            UnitAddItemSwapped(LoadItemHandle(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xD14F34A9), udg_WJYX[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))])
                        else
                            UnitAddItemSwapped(LoadItemHandle(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xD14F34A9), udg_WJYXX[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))])
                        end
                    else
                    end
                    do
                        return
                    end
                else
                end
                if ((LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xEB182CFC) == 2)) then
                    if ((GetIssuedOrderIdBJ() == (852003))) then
                        if ((GetTriggerUnit() == udg_WJYXX[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))])) then
                            UnitAddItemSwapped(LoadItemHandle(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xD14F34A9), udg_WJYX[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))])
                        else
                            UnitAddItemSwapped(LoadItemHandle(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xD14F34A9), udg_WJYXX[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))])
                        end
                    else
                    end
                    do
                        return
                    end
                else
                end
                if ((LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xEB182CFC) == 3)) then
                    if ((GetIssuedOrderIdBJ() == (852004))) then
                        if ((GetTriggerUnit() == udg_WJYXX[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))])) then
                            UnitAddItemSwapped(LoadItemHandle(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xD14F34A9), udg_WJYX[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))])
                        else
                            UnitAddItemSwapped(LoadItemHandle(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xD14F34A9), udg_WJYXX[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))])
                        end
                    else
                    end
                    do
                        return
                    end
                else
                end
                if ((LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xEB182CFC) == 4)) then
                    if ((GetIssuedOrderIdBJ() == (852005))) then
                        if ((GetTriggerUnit() == udg_WJYXX[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))])) then
                            UnitAddItemSwapped(LoadItemHandle(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xD14F34A9), udg_WJYX[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))])
                        else
                            UnitAddItemSwapped(LoadItemHandle(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xD14F34A9), udg_WJYXX[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))])
                        end
                    else
                    end
                    do
                        return
                    end
                else
                end
                if ((LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xEB182CFC) == 5)) then
                    if ((GetIssuedOrderIdBJ() == (852006))) then
                        if ((GetTriggerUnit() == udg_WJYXX[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))])) then
                            UnitAddItemSwapped(LoadItemHandle(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xD14F34A9), udg_WJYX[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))])
                        else
                            UnitAddItemSwapped(LoadItemHandle(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xD14F34A9), udg_WJYXX[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))])
                        end
                    else
                    end
                    do
                        return
                    end
                else
                end
                if ((LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xEB182CFC) == 6)) then
                    if ((GetIssuedOrderIdBJ() == (852007))) then
                        if ((GetTriggerUnit() == udg_WJYXX[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))])) then
                            UnitAddItemSwapped(LoadItemHandle(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xD14F34A9), udg_WJYX[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))])
                        else
                            UnitAddItemSwapped(LoadItemHandle(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xD14F34A9), udg_WJYXX[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))])
                        end
                    else
                    end
                    do
                        return
                    end
                else
                end
            else
            end
        else
        end
    end
    if (((EVENT_PLAYER_LEAVE == GetTriggerEventId()) == true)) then
        ForGroupBJ(YDWEGetUnitsOfPlayerMatchingNull(GetTriggerPlayer(), Condition(Trig_wendaxuanren6Func002Func001Func002Func011Func005Func002001002)), Trig_wendaxuanren6Func002Func001Func002Func011Func005Func002002)
        DestroyGroup(GetLastCreatedGroup())
        ForceRemovePlayerSimple(GetTriggerPlayer(), udg_ZXWJZ)
        DisplayTimedTextToForce(GetPlayersAll(), 10.00, (GetPlayerName(GetTriggerPlayer()) .. "|cffFF0000已经逃跑！."))
        FlushChildHashtable(YDLOC, GetHandleId(GetTriggeringTrigger()))
        DestroyTrigger(GetTriggeringTrigger())
    else
    end
end

function Trig_wendaxuanren6Actions()
    local ydl_trigger = nil
    local ydul_a = nil
    local ydl_localvar_step = LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xCFDE6C76)
    local cjlocgn_00000000 = nil
    local cjlocgn_00000001 = nil
    ydl_localvar_step = ydl_localvar_step + 3
    SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xCFDE6C76, ydl_localvar_step)
    SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xECE825E7, ydl_localvar_step)
    SavePlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946, LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))
    if ((IsPlayerInForce(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946), udg_ZXWJZ) == true)) then
        if ((udg_WJYX[GetConvertedPlayerId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))] == nil)) then
            SaveStr(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x12BBBFB9, GetPlayerName(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)))
            SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xA1CFBB06, LoadInteger(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x9D65F313))
            udg_WJYX[GetConvertedPlayerId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))] = CreateUnit(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946), LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xA1CFBB06), -6400.00, 266.00, 270.00)
            cjlocgn_00000000 = udg_WJYX[GetConvertedPlayerId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))]
            ydl_trigger = CreateTrigger()
            DzTriggerRegisterKeyEventTrg(ydl_trigger, 1, ((27)))
            TriggerAddCondition(ydl_trigger, Condition(Trig_wendaxuanren6Func002Func001Func002Func006Func001Conditions))
            ydl_trigger = CreateTrigger()
            SavePlayerHandle(YDLOC, GetHandleId(ydl_trigger), 0x48656946, LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))
            TriggerRegisterPlayerSelectionEventBJ(ydl_trigger, LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946), true)
            TriggerAddCondition(ydl_trigger, Condition(Trig_wendaxuanren6Func002Func001Func002Func007Func001Conditions))
            SaveReal(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x8B1CE21E, (LoadReal(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x8B1CE21E) + 0.10))
            SetUnitState(cjlocgn_00000000, ConvertUnitState(0x51), 100)
            AdjustPlayerStateBJ(100, LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946), PLAYER_STATE_RESOURCE_GOLD)
            udg_LGFDWLX[GetConvertedPlayerId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))] = (0x6C676D31)
            SetPlayerTechResearchedSwap(0x52303032, 1, LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))
            udg_WJYXX[GetConvertedPlayerId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))] = CreateUnit(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946), (0x6F303030), GetRectCenterX(udg_ZDQY[GetConvertedPlayerId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))]), GetRectCenterY(udg_ZDQY[GetConvertedPlayerId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))]), 0)
            cjlocgn_00000001 = udg_WJYXX[GetConvertedPlayerId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))]
            ydl_trigger = CreateTrigger()
            SaveLocationHandle(YDLOC, GetHandleId(ydl_trigger), 0x9CD60476, LoadLocationHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x9CD60476))
            SaveInteger(YDLOC, GetHandleId(ydl_trigger), 0xEB182CFC, LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xEB182CFC))
            SaveItemHandle(YDLOC, GetHandleId(ydl_trigger), 0xD14F34A9, LoadItemHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xD14F34A9))
            TriggerRegisterUnitEvent(ydl_trigger, cjlocgn_00000001, EVENT_UNIT_ISSUED_POINT_ORDER)
            TriggerRegisterPlayerUnitEventSimple(ydl_trigger, LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946), EVENT_PLAYER_UNIT_ISSUED_TARGET_ORDER)
            TriggerRegisterPlayerEventLeave(ydl_trigger, LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))
            TriggerAddCondition(ydl_trigger, Condition(Trig_wendaxuanren6Func002Func001Func002Func011Conditions))
            cjlocgn_00000001 = nil
            SetCameraBoundsToRectForPlayerBJ(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946), GetPlayableMapRect())
            UnitAddAbilityBJ((0x48465158), udg_WJYX[GetConvertedPlayerId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))])
            UnitAddAbilityBJ(udg_YXJN[GetConvertedPlayerId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))], udg_WJYX[GetConvertedPlayerId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))])
            YDWESetUnitAbilityDataString(cjlocgn_00000000, udg_YXJN[GetConvertedPlayerId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))], 1, 204, (EXExecuteScript("(require'jass.slk').unit[" .. I2S(GetUnitTypeId(cjlocgn_00000000)) .. "].Art")))
            UnitAddAbilityBJ(udg_shj[GetConvertedPlayerId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))], udg_WJYX[GetConvertedPlayerId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))])
            UnitAddAbilityBJ((0x66796A6E), udg_WJYX[GetConvertedPlayerId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))])
            udg_dwlx1[GetConvertedPlayerId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))] = GetUnitTypeId(cjlocgn_00000000)
            UnitAddAbilityBJ(udg_jux[GetConvertedPlayerId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))], udg_WJYX[GetConvertedPlayerId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))])
            YDWESetUnitAbilityDataString(udg_WJYX[GetConvertedPlayerId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))], udg_jux[GetConvertedPlayerId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))], 1, 204, (EXExecuteScript("(require'jass.slk').unit[" .. I2S((YDWES2Id(((EXExecuteScript("(require'jass.slk').unit[" .. I2S(udg_dwlx1[GetConvertedPlayerId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))]) .. "].Requires")))))) .. "].Art")))
            ydul_a = 1
            while true do
                if ydul_a > 3 then
                    break
                end
                UnitAddAbilityBJ((LoadInteger(YDHT, ((GetHandleId((LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))))), (StringHash(I2S(ydul_a))))), udg_WJYX[GetConvertedPlayerId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))])
                ydul_a = ydul_a + 1
            end
            if (((EXExecuteScript("(require'jass.slk').unit[" .. I2S(GetUnitTypeId(udg_WJYX[GetConvertedPlayerId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))])) .. "].Primary")) == "STR")) then
                SaveStr(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0xFA19F30A, "力")
            else
                if (((EXExecuteScript("(require'jass.slk').unit[" .. I2S(GetUnitTypeId(udg_WJYX[GetConvertedPlayerId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))])) .. "].Primary")) == "AGI")) then
                    SaveStr(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0xFA19F30A, "敏")
                else
                    if (((EXExecuteScript("(require'jass.slk').unit[" .. I2S(GetUnitTypeId(udg_WJYX[GetConvertedPlayerId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))])) .. "].Primary")) == "INT")) then
                        SaveStr(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0xFA19F30A, "智")
                    else
                    end
                end
            end
            SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x65306FA9, LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x6C2DED4E))
            SaveInteger(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x14708DA6, (LoadInteger(YDHT, StringHash(("天赋技能")), StringHash((I2S(LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x65306FA9)))))))
            RemoveSavedInteger(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x9D65F313)
            if ((LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946) == GetLocalPlayer())) then
                DzFrameShow(udg_UI_RWK[0], true)
            else
            end
            cjlocgn_00000000 = nil
        else
        end
    else
    end
    FlushChildHashtable(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step)
    ydl_trigger = nil
end

function InitTrig_wendaxuanren6()
    gg_trg_wendaxuanren6 = CreateTrigger()
    DisableTrigger(gg_trg_wendaxuanren6)
    TriggerAddAction(gg_trg_wendaxuanren6, Trig_wendaxuanren6Actions)
end
end
