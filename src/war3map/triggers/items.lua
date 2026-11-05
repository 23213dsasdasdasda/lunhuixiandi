-- Converted from 342.w3x map/map/war3map.j.
-- Trigger functions grouped by feature.
-- InitTrig_TSDJ
-- InitTrig_A6_Sellitem
-- InitTrig_jgc01
-- InitTrig_jgc02
return function(_ENV)
function Trig_TSDJConditions()
    do
        return ((IsUnitInForce(GetTriggerUnit(), udg_ZXWJZ) == true))
    end
end

function Trig_TSDJFunc004Func004T()
    if ((GetOwningPlayer(LoadUnitHandle(YDLOC, GetHandleId(GetExpiredTimer()), 0x458B7DE9)) == GetLocalPlayer())) then
        DzFrameSetAnimateOffset(udg_ui_sjtz[2], 1.00)
    else
    end
    FlushChildHashtable(YDLOC, GetHandleId(GetExpiredTimer()))
    DestroyTimer(GetExpiredTimer())
end

function Trig_TSDJActions()
    local ydl_timer = nil
    local ydl_triggerstep = nil
    local ydl_trigger = nil
    local ydl_localvar_step = LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xCFDE6C76)
    ydl_localvar_step = ydl_localvar_step + 3
    SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xCFDE6C76, ydl_localvar_step)
    SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xECE825E7, ydl_localvar_step)
    if ((GetOwningPlayer(GetTriggerUnit()) == GetLocalPlayer())) then
        DzFrameSetText(udg_ui_sjtz[5], (((YDWEGetPlayerColorString(Player(4), "等级：") .. I2S(GetHeroLevel(GetTriggerUnit())))) .. ("") .. ("")))
    else
    end
    if ((GetHeroLevel(GetTriggerUnit()) == (LoadInteger(YDHT, GetHandleId(GetOwningPlayer(GetTriggerUnit())), 0x861E1815) * 10))) then
        SuspendHeroXPBJ(false, GetTriggerUnit())
        if ((GetOwningPlayer(GetTriggerUnit()) == GetLocalPlayer())) then
            DzFrameSetTexture(udg_ui_sjtz[4], "war3mapImported\\ui_tp (1).tga", 0)
            DzFrameShow(udg_ui_sjtz[7], true)
        else
        end
        ydl_timer = CreateTimer()
        SaveUnitHandle(YDLOC, GetHandleId(ydl_timer), 0x458B7DE9, GetTriggerUnit())
        TimerStart(ydl_timer, 0.03, false, Trig_TSDJFunc004Func004T)
    else
    end
    if ((GetHeroLevel(GetTriggerUnit()) == 50)) then
        AddPlayerTechResearched(GetOwningPlayer(GetTriggerUnit()), 0x66797979, 1)
        SelectUnitForPlayerSingle(GetTriggerUnit(), GetOwningPlayer(GetTriggerUnit()))
    else
    end
    if ((GetHeroLevel(GetTriggerUnit()) == 35)) then
        SavePlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946, GetOwningPlayer(GetTriggerUnit()))
        ShowUnit((LoadUnitHandle(YDHT, ((GetHandleId((LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))))), (StringHash("08NPC")))), true)
        JK_CameraTranslation(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946), GetUnitX((LoadUnitHandle(YDHT, ((GetHandleId((LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))))), (StringHash("08NPC"))))), GetUnitY((LoadUnitHandle(YDHT, ((GetHandleId((LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))))), (StringHash("08NPC"))))), 0.00)
        DestroyEffect(AddSpecialEffectTarget("E\\[e] (7).mdl", (LoadUnitHandle(YDHT, ((GetHandleId((GetOwningPlayer(GetTriggerUnit()))))), (StringHash("08NPC")))), "origin"))
    else
    end
    if ((GetHeroLevel(GetTriggerUnit()) == 100)) then
        AddPlayerTechResearched(GetOwningPlayer(GetTriggerUnit()), 0x66797979, 1)
        ydl_trigger = gg_trg_UI_tips
        ydl_triggerstep = GetHandleId(ydl_trigger) * (LoadInteger(YDLOC, GetHandleId(ydl_trigger), 0xCFDE6C76) + 3)
        SavePlayerHandle(YDLOC, ydl_triggerstep, 0x48656946, GetOwningPlayer(GetTriggerUnit()))
        SaveInteger(YDLOC, ydl_triggerstep, 0x9CD60476, DzFrameGetCommandBarButton(2, 3))
        TriggerExecute(ydl_trigger)
    else
    end
    FlushChildHashtable(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step)
    ydl_timer = nil
    ydl_trigger = nil
end

function InitTrig_TSDJ()
    gg_trg_TSDJ = CreateTrigger()
    TriggerRegisterAnyUnitEventBJ(gg_trg_TSDJ, EVENT_PLAYER_HERO_LEVEL)
    TriggerAddCondition(gg_trg_TSDJ, Condition(Trig_TSDJConditions))
    TriggerAddAction(gg_trg_TSDJ, Trig_TSDJActions)
end

function Trig_A6_SellitemConditions()
    do
        return ((GetItemTypeId(GetSoldItem()) ~= (0x77703535)))
    end
end

function Trig_A6_SellitemFunc005Func002Func001Func002Func002Func002T()
    SaveInteger(YDLOC, GetHandleId(GetExpiredTimer()), 0xD963A09F, (LoadInteger(YDLOC, GetHandleId(GetExpiredTimer()), 0xD963A09F) + 1))
    IssueNeutralImmediateOrderById(LoadPlayerHandle(YDLOC, GetHandleId(GetExpiredTimer()), 0x48656946), LoadUnitHandle(YDLOC, GetHandleId(GetExpiredTimer()), 0x458B7DE9), (YDWES2Id(((("lq") .. (I2S(LoadInteger(YDLOC, GetHandleId(GetExpiredTimer()), 0x437E2A40))) .. (I2S(LoadInteger(YDLOC, GetHandleId(GetExpiredTimer()), 0xD963A09F))))))))
    if ((LoadInteger(YDLOC, GetHandleId(GetExpiredTimer()), 0xD963A09F) == 9)) then
        FlushChildHashtable(YDLOC, GetHandleId(GetExpiredTimer()))
        DestroyTimer(GetExpiredTimer())
    else
    end
end

function Trig_A6_SellitemFunc006Func001Func001Func004Func001Func004T()
    SetUnitInvulnerable(LoadUnitHandle(YDLOC, GetHandleId(GetExpiredTimer()), 0x458B7DE9), false)
    FlushChildHashtable(YDLOC, GetHandleId(GetExpiredTimer()))
    DestroyTimer(GetExpiredTimer())
end

function Trig_A6_SellitemActions()
    local ydl_triggerstep = nil
    local ydl_trigger = nil
    local ydl_timer = nil
    local ydul_a = nil
    local ydl_localvar_step = LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xCFDE6C76)
    local cjlocgn_00000000 = nil
    local cjlocgn_00000001 = nil
    ydl_localvar_step = ydl_localvar_step + 3
    SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xCFDE6C76, ydl_localvar_step)
    SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xECE825E7, ydl_localvar_step)
    SavePlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946, GetOwningPlayer(GetBuyingUnit()))
    SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x6F96F2D2, GetConvertedPlayerId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)))
    SaveUnitHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x911D5DC2, udg_WJYX[LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x6F96F2D2)])
    SaveUnitHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xEA59A379, GetTriggerUnit())
    if ((GetTriggerUnit() == LoadUnitHandle(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x29F18A93))) then
        ydl_trigger = gg_trg_SDDH______________001
        ydl_triggerstep = GetHandleId(ydl_trigger) * (LoadInteger(YDLOC, GetHandleId(ydl_trigger), 0xCFDE6C76) + 3)
        SavePlayerHandle(YDLOC, ydl_triggerstep, 0x48656946, GetOwningPlayer(GetBuyingUnit()))
        SaveInteger(YDLOC, ydl_triggerstep, 0xB0497EE9, GetItemTypeId(GetSoldItem()))
        TriggerExecute(ydl_trigger)
    else
    end
    if ((GetUnitTypeId(GetTriggerUnit()) == (0x6E303030))) then
        SaveUnitHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x911D5DC2, nil)
        SaveUnitHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xEA59A379, nil)
        if ((GetItemTypeId(GetSoldItem()) == (0x4C303033))) then
            DisplayTimedTextToPlayer(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946), 0, 0, 10.00, YDWEGetPlayerColorString(Player(5), "兑换成功"))
            AdjustPlayerStateBJ(50000, LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946), PLAYER_STATE_RESOURCE_GOLD)
            FlushChildHashtable(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step)
            ydl_trigger = nil
            ydl_timer = nil
            do
                return
            end
        else
            if ((GetItemTypeId(GetSoldItem()) == (0x4C303034))) then
                DisplayTimedTextToPlayer(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946), 0, 0, 10.00, YDWEGetPlayerColorString(Player(5), "兑换成功"))
                AdjustPlayerStateBJ(100, LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946), PLAYER_STATE_RESOURCE_LUMBER)
                FlushChildHashtable(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step)
                ydl_trigger = nil
                ydl_timer = nil
                do
                    return
                end
            else
                if ((GetItemTypeId(GetSoldItem()) == (0x4C303035))) then
                    DisplayTimedTextToPlayer(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946), 0, 0, 10.00, YDWEGetPlayerColorString(Player(5), "兑换成功"))
                    SaveInteger(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x692728ED, (LoadInteger(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x692728ED) + 500))
                    FlushChildHashtable(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step)
                    ydl_trigger = nil
                    ydl_timer = nil
                    do
                        return
                    end
                else
                end
            end
        end
        if ((GetItemTypeId(GetSoldItem()) == (0x4C303032))) then
            RemoveUnit(LoadUnitHandle(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x9D4D1A01))
            SaveUnitHandle(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x9D4D1A01, CreateUnit(Player(7), udg_LGF[LoadInteger(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0xD0B486C5)], udg_LGFZB_x[LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x6F96F2D2)], (udg_LGFZB_y[LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x6F96F2D2)] + 700.00), (GetRandomReal(240.00, 300.00))))
            SetUnitUserData(LoadUnitHandle(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x9D4D1A01), 1234)
            YDWEJumpTimer(LoadUnitHandle(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x9D4D1A01), GetUnitFacing(LoadUnitHandle(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x9D4D1A01)), GetRandomReal(800.00, 950.00), 0.50, 0.01, 300.00)
            FlushChildHashtable(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step)
            ydl_trigger = nil
            ydl_timer = nil
            do
                return
            end
        else
        end
    else
    end
    if ((GetUnitAbilityLevelSwapped((0x41737564), GetTriggerUnit()) > 0)) then
        if ((GetOwningPlayer(GetTriggerUnit()) == LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))) then
            if ((GetItemTypeId(GetSoldItem()) == (0x594A584C))) then
                ydl_timer = CreateTimer()
                SaveInteger(YDLOC, GetHandleId(ydl_timer), 0x437E2A40, S2I(EXExecuteScript("(require'jass.slk').unit[" .. I2S(GetUnitTypeId(GetTriggerUnit())) .. "].prio")))
                SaveInteger(YDLOC, GetHandleId(ydl_timer), 0xD963A09F, 0)
                SaveUnitHandle(YDLOC, GetHandleId(ydl_timer), 0x458B7DE9, GetTriggerUnit())
                SavePlayerHandle(YDLOC, GetHandleId(ydl_timer), 0x48656946, LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))
                TimerStart(ydl_timer, 0.02, true, Trig_A6_SellitemFunc005Func002Func001Func002Func002Func002T)
            else
                SaveUnitHandle(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0xF3C2D462, GetTriggerUnit())
                SavePlayerHandle(YDHT, GetHandleId(Player(PLAYER_NEUTRAL_AGGRESSIVE)), 0x119572DE, LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))
                SaveInteger(YDHT, GetHandleId(Player(PLAYER_NEUTRAL_AGGRESSIVE)), 0x171487D7, GetItemTypeId(GetSoldItem()))
                RemoveUnit(LoadUnitHandle(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0xE4977C87))
                if ((S2I(EXExecuteScript("(require'jass.slk').item[" .. I2S(GetItemTypeId(GetSoldItem())) .. "].prio")) == 9)) then
                    UnitAddAbilityBJ((0x544A545A), GetTriggerUnit())
                else
                    SaveUnitHandle(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0xE4977C87, CreateUnit(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946), (YDWES2Id(((EXExecuteScript("(require'jass.slk').item[" .. I2S(GetItemTypeId(GetSoldItem())) .. "].class"))))), 0.00, 0.00, 0))
                end
                TriggerExecute(gg_trg_qjyd)
                if ((LoadInteger(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x133A1C8F) == 3)) then
                    SaveInteger(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x133A1C8F, 4)
                    ShowUnitShow((LoadUnitHandle(YDHT, ((GetHandleId((LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))))), (StringHash("01NPC")))))
                    YDWETimerDestroyEffect(0.00, AddSpecialEffectTarget("G\\[g] (11).mdl", (LoadUnitHandle(YDHT, ((GetHandleId((LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))))), (StringHash("01NPC")))), "chest"))
                    if ((LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946) == GetLocalPlayer())) then
                        DzFrameSetText(udg_UI_RWK[3], (("|cff00ff00") .. (("任务目标：|n完成1次主线任务")) .. ("|r")))
                        DzFrameShow(udg_UI, true)
                        DzFrameSetText(udg_UI, "")
                        DzFrameSetText(udg_UI_RWK[2], "")
                    else
                    end
                    ydl_trigger = gg_trg_UI_TEXT_002
                    ydl_triggerstep = GetHandleId(ydl_trigger) * (LoadInteger(YDLOC, GetHandleId(ydl_trigger), 0xCFDE6C76) + 3)
                    udg_UIzx[0] = "|cff00ffff仙子：选择主线故事NPC完成1次主线任务！|r"
                    SaveReal(YDLOC, ydl_triggerstep, 0x0050BBB8, 0.01)
                    TriggerExecute(ydl_trigger)
                else
                end
            end
        else
            SelectUnitRemoveForPlayer(GetTriggerUnit(), LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))
        end
        FlushChildHashtable(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step)
        ydl_trigger = nil
        ydl_timer = nil
        do
            return
        end
    else
    end
    if ((GetUnitTypeId(GetTriggerUnit()) == (0x6E303035))) then
        SavePlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946, GetOwningPlayer(GetBuyingUnit()))
        if ((GetItemLevel(GetSoldItem()) == 0)) then
            AdjustPlayerStateBJ(S2I(EXExecuteScript("(require'jass.slk').item[" .. I2S(GetItemTypeId(GetSoldItem())) .. "].lumbercost")), LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946), PLAYER_STATE_RESOURCE_LUMBER)
            SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x8DFA4095, GetRandomInt(1, 4))
            if ((LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x8DFA4095) == 1)) then
                SaveReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2D1E4992 + (1), (LoadReal((wp), (GetItemTypeId(GetSoldItem())), 1) * 1.00))
                DisplayTimedTextToPlayer(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946), 0, 0, 15.00, (YDWEGetPlayerColorString(Player(4), "【抽奖提示】：") .. ("攻击力+" .. R2SW(LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2D1E4992 + (1)), 1, 0))))
                JK_SX_Change(udg_WJYX[LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x6F96F2D2)], ConvertUnitState(0x12), 1, LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2D1E4992 + (1)))
            else
                if ((LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x8DFA4095) == 2)) then
                    SaveReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2D1E4992 + (1), (LoadReal((wp), (GetItemTypeId(GetSoldItem())), 5) * 1.00))
                    DisplayTimedTextToPlayer(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946), 0, 0, 15.00, (YDWEGetPlayerColorString(Player(4), "【抽奖提示】：") .. ("全属性+" .. R2SW(LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2D1E4992 + (1)), 1, 0))))
                    JK_SetSw(udg_WJYX[LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x6F96F2D2)], true, true, true, bj_MODIFYMETHOD_ADD, R2I(LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2D1E4992 + (1))), true)
                else
                    if ((LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x8DFA4095) == 3)) then
                        SaveReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2D1E4992 + (1), (LoadReal((wp), (GetItemTypeId(GetSoldItem())), 3) * 1.00))
                        DisplayTimedTextToPlayer(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946), 0, 0, 15.00, (YDWEGetPlayerColorString(Player(4), "【抽奖提示】：") .. ("生命+" .. R2SW(LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2D1E4992 + (1)), 1, 0))))
                        JK_SX_Change(udg_WJYX[LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x6F96F2D2)], UNIT_STATE_MAX_LIFE, 1, LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2D1E4992 + (1)))
                    else
                        if ((LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x8DFA4095) == 4)) then
                            ydul_a = 61
                            while true do
                                if ydul_a > 64 then
                                    break
                                end
                                SaveReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2D1E4992 + (1), (LoadReal((wp), (GetItemTypeId(GetSoldItem())), ydul_a) * 1.00))
                                if ((LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2D1E4992 + (1)) ~= 0.00)) then
                                    SavePlayerHandle(YDHT, GetHandleId(Player(PLAYER_NEUTRAL_AGGRESSIVE)), 0x119572DE, GetOwningPlayer(GetTriggerUnit()))
                                    SaveInteger(YDHT, GetHandleId(Player(PLAYER_NEUTRAL_AGGRESSIVE)), 0x171487D7, (YDWES2Id((("sjz" .. I2S((ydul_a - 60)))))))
                                    TriggerExecute(gg_trg_qjyd)
                                else
                                end
                                ydul_a = ydul_a + 1
                            end
                        else
                        end
                    end
                end
            end
            FlushChildHashtable(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step)
            ydl_trigger = nil
            ydl_timer = nil
            do
                return
            end
        else
        end
    else
    end
    if ((GetItemTypeId(GetSoldItem()) == (0x4B4C464C))) then
        SaveReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xA9BFF3AE, ((((I2R((udg_S * udg_S))) * (I2R((udg_S // 3))) * (I2R((udg_S // 4))))) * (2.00) + (0.00)))
        SaveReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xA9BFF3AE, ((LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xA9BFF3AE)) + (LoadReal(YDHT, GetHandleId(Player(PLAYER_NEUTRAL_AGGRESSIVE)), 0xFEB5B285)) + (0.00)))
        SaveReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x58304B3E, ((((I2R(udg_S)) * (I2R(udg_S)) * (I2R(udg_S)))) * ((I2R(udg_S) * 0.28)) * (1.00)))
        SaveReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xA9BFF3AE, (LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xA9BFF3AE) + LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x58304B3E)))
        cjlocgn_00000000 = CreateUnit(Player(7), (0x78736478), GetUnitX(GetTriggerUnit()), GetUnitY(GetTriggerUnit()), 0)
        JK_SX_Change(cjlocgn_00000000, ConvertUnitState(0x12), 1, ((LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xA9BFF3AE)) * (3.50) * (1.00)))
        JK_SX_Change(cjlocgn_00000000, UNIT_STATE_MAX_LIFE, 1, ((GetUnitStateSwap(ConvertUnitState(0x12), cjlocgn_00000000)) * (12.00) * (1.00)))
        JK_SX_Change(cjlocgn_00000000, ConvertUnitState(0x20), 1, ((I2R(udg_S)) * (LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xEF89346E)) * (1.00)))
        JK_SX_Change(cjlocgn_00000000, ConvertUnitState(0x51), 1, ((I2R(udg_S)) * (1.20) * (1.00)))
        YDWETimerDestroyEffect(15.00, AddSpecialEffectTarget("war3mapImported\\[xt]boss_djs_15.mdx", cjlocgn_00000000, "overhead"))
        SetUnitMoveSpeed(cjlocgn_00000000, 410.00)
        SetUnitLifePercentBJ(cjlocgn_00000000, 100)
        YDWETimerRemoveUnit(15.00, cjlocgn_00000000)
        cjlocgn_00000000 = nil
    else
    end
    if ((GetUnitTypeId(GetTriggerUnit()) == (0x4F303031))) then
        if ((GetItemTypeId(GetSoldItem()) == (0x4A443031))) then
            if ((LoadBoolean(YDHT, GetHandleId(Player(5)), 0xB9C24643) ~= true)) then
                DisplayTextToForce(GetPlayersAll(), ((GetPlayerName(GetOwningPlayer(GetBuyingUnit()))) .. ("购买了暂停进攻，快点发育吧！") .. ("")))
                PauseTimer(udg_JGjishi)
                StartTimerBJ(udg_tingguai, false, 180.00)
                CreateTimerDialogBJ(GetLastCreatedTimerBJ(), "停怪计时器")
                TimerDialogSetTitleColorBJ(GetLastCreatedTimerDialogBJ(), 100, 80, 20, 0)
                udg_tingguaiCK = bj_lastCreatedTimerDialog
                FlushChildHashtable(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step)
                ydl_trigger = nil
                ydl_timer = nil
                do
                    return
                end
            else
                DisplayTextToForce(GetPlayersAll(), ((GetPlayerName(GetOwningPlayer(GetBuyingUnit()))) .. ("无尽模式禁止停怪！") .. ("")))
            end
        else
        end
        if ((GetItemTypeId(GetSoldItem()) == (0x4A443032))) then
            if ((LoadInteger(YDHT, GetHandleId(GetTriggerUnit()), 0xB2B2BF95) < 20)) then
                SaveInteger(YDHT, GetHandleId(GetTriggerUnit()), 0xB2B2BF95, (LoadInteger(YDHT, GetHandleId(GetTriggerUnit()), 0xB2B2BF95) + 1))
                SaveReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xFCD961C9, GetUnitLifePercent(GetTriggerUnit()))
                JK_SX_Change(GetTriggerUnit(), UNIT_STATE_MAX_LIFE, 1, 500000.00)
                JK_SX_Change(GetTriggerUnit(), ConvertUnitState(0x20), 1, 200.00)
                SetUnitLifePercentBJ(GetTriggerUnit(), LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xFCD961C9))
                SetHeroLevelBJ(GetTriggerUnit(), (GetHeroLevel(GetTriggerUnit()) + 1), true)
                DisplayTextToForce(GetPlayersAll(), ((GetPlayerName(GetOwningPlayer(GetBuyingUnit()))) .. ("购买了基地升级，赠送10点守家积分！") .. ("")))
                SaveInteger(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x58FD9FA3, (LoadInteger(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x58FD9FA3) + 10))
                if (((LoadInteger(YDHT, ((GetHandleId((LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))))), (((udg_UI_TF[63]))))) == 1)) then
                    AdjustPlayerStateBJ(1500, LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946), PLAYER_STATE_RESOURCE_GOLD)
                else
                end
                if ((GetUnitStateSwap(UNIT_STATE_MAX_LIFE, GetTriggerUnit()) >= 15000000.00)) then
                    if ((LoadBoolean(YDHT, (GetHandleId((GetTriggerUnit()))), 0xDE63BEE6) ~= true)) then
                        SaveBoolean(YDHT, (GetHandleId((GetTriggerUnit()))), 0xDE63BEE6, true)
                        SavePlayerHandle(YDHT, GetHandleId(Player(PLAYER_NEUTRAL_AGGRESSIVE)), 0x119572DE, LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))
                        SaveStr(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2D1FF186, "CD")
                        SaveStr(YDHT, GetHandleId(Player(PLAYER_NEUTRAL_AGGRESSIVE)), 0x0DCA2EC5, LoadStr(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2D1FF186))
                        SaveInteger(YDHT, GetHandleId(Player(PLAYER_NEUTRAL_AGGRESSIVE)), 0x27A5056E, 4)
                        SaveStr(YDHT, GetHandleId(Player(PLAYER_NEUTRAL_AGGRESSIVE)), 0xF5CF51D7, "1")
                        SaveInteger(YDHT, GetHandleId(Player(PLAYER_NEUTRAL_AGGRESSIVE)), 0x20482DE3, 30)
                        SaveStr(YDHT, GetHandleId(Player(PLAYER_NEUTRAL_AGGRESSIVE)), 0xF99E56C4, "8")
                        DisplayTimedTextToPlayer(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946), 0, 0, 8.00, ((YDWEGetPlayerColorString(Player(4), "激活彩蛋==")) .. ((EXExecuteScript("(require'jass.slk').item[" .. I2S((LoadInteger(YDHT, StringHash(((((LoadStr(YDHT, GetHandleId(Player(PLAYER_NEUTRAL_AGGRESSIVE)), 0xF99E56C4) .. "y")) .. (LoadStr(YDHT, GetHandleId(Player(PLAYER_NEUTRAL_AGGRESSIVE)), 0xF5CF51D7)) .. (I2S(LoadInteger(YDHT, GetHandleId(Player(PLAYER_NEUTRAL_AGGRESSIVE)), 0x27A5056E)))))), StringHash((I2S(((udg_UI_FL[(LoadInteger(YDHT, GetHandleId(Player(PLAYER_NEUTRAL_AGGRESSIVE)), 0x27A5056E) + 14)])))))))) .. "].Name"))) .. ("==")))
                        TriggerExecute(gg_trg_DzApi_______u)
                    else
                    end
                else
                end
            else
                DisplayTextToForce(GetPlayersAll(), ((GetPlayerName(GetOwningPlayer(GetBuyingUnit()))) .. ("基地已经满级，无法购买。") .. ("")))
                AdjustPlayerStateBJ(3000, LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946), PLAYER_STATE_RESOURCE_GOLD)
            end
            FlushChildHashtable(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step)
            ydl_trigger = nil
            ydl_timer = nil
            do
                return
            end
        else
        end
        if ((GetItemTypeId(GetSoldItem()) == (0x4A443034))) then
            SetUnitInvulnerable(GetTriggerUnit(), true)
            YDWETimerDestroyEffect(30.00, AddSpecialEffectTarget("[mz]tx!1 (17).mdl", GetTriggerUnit(), "chest"))
            ydl_timer = CreateTimer()
            SaveUnitHandle(YDLOC, GetHandleId(ydl_timer), 0x458B7DE9, GetTriggerUnit())
            TimerStart(ydl_timer, 30.00, false, Trig_A6_SellitemFunc006Func001Func001Func004Func001Func004T)
            FlushChildHashtable(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step)
            ydl_trigger = nil
            ydl_timer = nil
            do
                return
            end
        else
        end
        if ((GetItemTypeId(GetSoldItem()) == (0x72617466))) then
            if ((LoadInteger(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x8015BB64) >= 4)) then
                FlushChildHashtable(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step)
                ydl_trigger = nil
                ydl_timer = nil
                do
                    return
                end
            else
                DisplayTextToForce(GetPlayersAll(), ((GetPlayerName(GetOwningPlayer(GetBuyingUnit()))) .. ("无法携带圣器") .. ("")))
                AdjustPlayerStateBJ(S2I(EXExecuteScript("(require'jass.slk').item[" .. I2S(GetItemTypeId(GetSoldItem())) .. "].goldcost")), LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946), PLAYER_STATE_RESOURCE_GOLD)
                AdjustPlayerStateBJ(S2I(EXExecuteScript("(require'jass.slk').item[" .. I2S(GetItemTypeId(GetSoldItem())) .. "].lumbercost")), LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946), PLAYER_STATE_RESOURCE_LUMBER)
                RemoveItem(GetSoldItem())
            end
        else
        end
        if (((GetItemTypeId(GetSoldItem()) == (0x7A737431)) or (GetItemTypeId(GetSoldItem()) == (0x7A737432)))) then
            if ((GetHeroLevel(udg_WJYX[LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x6F96F2D2)]) >= S2I(EXExecuteScript("(require'jass.slk').item[" .. I2S(GetItemTypeId(GetSoldItem())) .. "].goldcost")))) then
                SaveReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xA99320FA, LoadReal(YDHT, GetItemTypeId(GetSoldItem()), 0xA99320FA))
                SaveReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xFDF65382, LoadReal(YDHT, GetItemTypeId(GetSoldItem()), 0xFDF65382))
                JK_UnitTranslationB(LoadUnitHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x911D5DC2), LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xA99320FA), LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xFDF65382), AddSpecialEffectTarget("Abilities\\Spells\\Human\\MassTeleport\\MassTeleportTarget.mdl", LoadUnitHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x911D5DC2), "chest"), 0.00, "", true)
            else
                DisplayTextToPlayer(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946), 0, 0, (YDWEGetPlayerColorString(Player(0), "[系统]：") .. "不符合条件"))
            end
        else
        end
    else
    end
    if ((GetItemTypeId(GetSoldItem()) == (0x4A525836))) then
        cjlocgn_00000001 = UnitItemInSlotBJ(udg_WJYX[GetConvertedPlayerId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))], 1)
        SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xBA272FB6, LoadInteger(YDHT, GetHandleId(cjlocgn_00000001), 0x7715AED4))
        SaveReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x38AB9941, ((1.00 + LoadReal(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x714E35BA)) - ((I2R(LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xBA272FB6)) / 100.00) * 6.00)))
        if ((LoadInteger(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0xBE12F4A0) >= (LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xBA272FB6) * 10))) then
            if ((cjlocgn_00000001 ~= nil)) then
                SaveItemHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xD14F34A9, cjlocgn_00000001)
                if ((S2I(EXExecuteScript("(require'jass.slk').item[" .. I2S(GetItemTypeId(cjlocgn_00000001)) .. "].stockStart")) >= 1) and (S2I(EXExecuteScript("(require'jass.slk').item[" .. I2S(GetItemTypeId(cjlocgn_00000001)) .. "].stockStart")) <= 4) and (S2I(EXExecuteScript("(require'jass.slk').item[" .. I2S(GetItemTypeId(LoadItemHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xD14F34A9))) .. "].prio")) == 9200)) then
                    AdjustPlayerStateBJ((-1 * (LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xBA272FB6) * 10)), LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946), PLAYER_STATE_RESOURCE_LUMBER)
                    SaveInteger(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0xBE12F4A0, (LoadInteger(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0xBE12F4A0) - (LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xBA272FB6) * 10)))
                    UnitRemoveItemSwapped(cjlocgn_00000001, udg_WJYX[GetConvertedPlayerId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))])
                    if ((GetRandomReal(0, 1) <= LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x38AB9941))) then
                        SaveInteger(YDHT, GetHandleId(cjlocgn_00000001), 0x7715AED4, (LoadInteger(YDHT, GetHandleId(cjlocgn_00000001), 0x7715AED4) + 1))
                        SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x82CCE5FD, LoadInteger(YDHT, GetHandleId(cjlocgn_00000001), 0x7715AED4))
                        DisplayTimedTextToPlayer(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946), 0, 0, 8.00, ((YDWEGetPlayerColorString(Player(5), GetUnitName(GetTriggerUnit()))) .. (YDWEGetPlayerColorString(Player(4), ":强化成功")) .. ((GetItemName(LoadItemHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xD14F34A9)) .. ("强化等级提升：" .. I2S(LoadInteger(YDHT, GetHandleId(LoadItemHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xD14F34A9)), 0x7715AED4)))))))
                        PlaySoundOnUnitBJ(gg_snd_Switch, 100, GetBuyingUnit())
                        YDWETimerDestroyEffect(2, AddSpecialEffectTarget("Abilities\\Spells\\NightElf\\Tranquility\\Tranquility.mdl", GetTriggerUnit(), "overhead"))
                        if ((LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x82CCE5FD) == 13)) then
                            SavePlayerHandle(YDHT, GetHandleId(Player(PLAYER_NEUTRAL_AGGRESSIVE)), 0x119572DE, LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))
                            SaveStr(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2D1FF186, "CD")
                            SaveStr(YDHT, GetHandleId(Player(PLAYER_NEUTRAL_AGGRESSIVE)), 0x0DCA2EC5, LoadStr(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2D1FF186))
                            SaveInteger(YDHT, GetHandleId(Player(PLAYER_NEUTRAL_AGGRESSIVE)), 0x27A5056E, 2)
                            SaveStr(YDHT, GetHandleId(Player(PLAYER_NEUTRAL_AGGRESSIVE)), 0xF5CF51D7, "1")
                            SaveInteger(YDHT, GetHandleId(Player(PLAYER_NEUTRAL_AGGRESSIVE)), 0x20482DE3, 30)
                            SaveStr(YDHT, GetHandleId(Player(PLAYER_NEUTRAL_AGGRESSIVE)), 0xF99E56C4, "8")
                            DisplayTimedTextToPlayer(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946), 0, 0, 8.00, ((YDWEGetPlayerColorString(Player(4), "激活彩蛋==")) .. ((EXExecuteScript("(require'jass.slk').item[" .. I2S((LoadInteger(YDHT, StringHash(((((LoadStr(YDHT, GetHandleId(Player(PLAYER_NEUTRAL_AGGRESSIVE)), 0xF99E56C4) .. "y")) .. (LoadStr(YDHT, GetHandleId(Player(PLAYER_NEUTRAL_AGGRESSIVE)), 0xF5CF51D7)) .. (I2S(LoadInteger(YDHT, GetHandleId(Player(PLAYER_NEUTRAL_AGGRESSIVE)), 0x27A5056E)))))), StringHash((I2S(((udg_UI_FL[(LoadInteger(YDHT, GetHandleId(Player(PLAYER_NEUTRAL_AGGRESSIVE)), 0x27A5056E) + 14)])))))))) .. "].Name"))) .. ("==")))
                            TriggerExecute(gg_trg_DzApi_______u)
                        else
                        end
                    else
                        SaveInteger(YDHT, GetHandleId(cjlocgn_00000001), 0x7715AED4, (LoadInteger(YDHT, GetHandleId(cjlocgn_00000001), 0x7715AED4) - 1))
                        DisplayTimedTextToPlayer(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946), 0, 0, 8.00, ((YDWEGetPlayerColorString(Player(5), GetUnitName(GetTriggerUnit()))) .. (YDWEGetPlayerColorString(Player(0), ":强化失败")) .. ((GetItemName(LoadItemHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xD14F34A9)) .. ("强化等级提升：" .. I2S(LoadInteger(YDHT, GetHandleId(LoadItemHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xD14F34A9)), 0x7715AED4)))))))
                        PlaySoundOnUnitBJ(gg_snd_Switch, 100, GetBuyingUnit())
                    end
                    SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xBA272FB6, LoadInteger(YDHT, GetHandleId(cjlocgn_00000001), 0x7715AED4))
                    SaveReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xD9E23D83, ((((I2R(LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xBA272FB6))) + (I2R(LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xBA272FB6))) + (I2R(LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xBA272FB6)))) * 0.03) + (I2R(LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xBA272FB6)) * 0.04)))
                    if ((S2I(EXExecuteScript("(require'jass.slk').item[" .. I2S(GetItemTypeId(cjlocgn_00000001)) .. "].stockStart")) == 2)) then
                        SaveReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2D1E4992, LoadReal(udg_jnorwp[2], (GetItemTypeId(cjlocgn_00000001)), 1))
                        SaveReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB259B269, (LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2D1E4992) * LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xD9E23D83)))
                        SaveReal(YDHT, GetHandleId(cjlocgn_00000001), 0xF7F0D087, LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB259B269))
                        SaveStr(YDHT, GetHandleId(cjlocgn_00000001), 0xFD9CA15D, YDWEGetPlayerColorString(Player(2), ("强化增幅效果：" .. ("攻击力+" .. R2S(LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB259B269))))))
                    else
                    end
                    if ((S2I(EXExecuteScript("(require'jass.slk').item[" .. I2S(GetItemTypeId(cjlocgn_00000001)) .. "].stockStart")) == 3)) then
                        SaveReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2D1E4992, LoadReal(udg_jnorwp[2], (GetItemTypeId(cjlocgn_00000001)), 3))
                        SaveReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB259B269, (LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2D1E4992) * LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xD9E23D83)))
                        SaveReal(YDHT, GetHandleId(cjlocgn_00000001), 0xABDC11AE, LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB259B269))
                        SaveStr(YDHT, GetHandleId(cjlocgn_00000001), 0xFD9CA15D, YDWEGetPlayerColorString(Player(2), ("强化增幅效果：" .. ("生命+" .. R2S(LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB259B269))))))
                    else
                    end
                    if ((S2I(EXExecuteScript("(require'jass.slk').item[" .. I2S(GetItemTypeId(cjlocgn_00000001)) .. "].stockStart")) == 4)) then
                        if ((LoadReal(udg_jnorwp[2], (GetItemTypeId(cjlocgn_00000001)), 5) ~= 0.00)) then
                            SaveReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2D1E4992, LoadReal(udg_jnorwp[2], (GetItemTypeId(cjlocgn_00000001)), 5))
                            SaveReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB259B269, (LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2D1E4992) * LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xD9E23D83)))
                            SaveReal(YDHT, GetHandleId(cjlocgn_00000001), 0xA4585BCB, LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB259B269))
                            SaveStr(YDHT, GetHandleId(cjlocgn_00000001), 0xFD9CA15D, YDWEGetPlayerColorString(Player(2), ("强化增幅效果：" .. ("全属性+" .. R2S(LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB259B269))))))
                        else
                            if ((LoadReal(udg_jnorwp[2], (GetItemTypeId(cjlocgn_00000001)), 22) ~= 0.00)) then
                                SaveReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2D1E4992, LoadReal(udg_jnorwp[2], (GetItemTypeId(cjlocgn_00000001)), 22))
                                SaveReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB259B269, (LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2D1E4992) * LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xD9E23D83)))
                                SaveReal(YDHT, GetHandleId(cjlocgn_00000001), 0xA4585BCB, LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB259B269))
                                SaveStr(YDHT, GetHandleId(cjlocgn_00000001), 0xFD9CA15D, YDWEGetPlayerColorString(Player(2), ("强化增幅效果：" .. ("力量+" .. R2S(LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB259B269))))))
                            else
                                if ((LoadReal(udg_jnorwp[2], (GetItemTypeId(cjlocgn_00000001)), 26) ~= 0.00)) then
                                    SaveReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2D1E4992, LoadReal(udg_jnorwp[2], (GetItemTypeId(cjlocgn_00000001)), 26))
                                    SaveReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB259B269, (LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2D1E4992) * LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xD9E23D83)))
                                    SaveReal(YDHT, GetHandleId(cjlocgn_00000001), 0xA4585BCB, LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB259B269))
                                    SaveStr(YDHT, GetHandleId(cjlocgn_00000001), 0xFD9CA15D, YDWEGetPlayerColorString(Player(2), ("强化增幅效果：" .. ("敏捷+" .. R2S(LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB259B269))))))
                                else
                                    if ((LoadReal(udg_jnorwp[2], (GetItemTypeId(cjlocgn_00000001)), 52) ~= 0.00)) then
                                        SaveReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2D1E4992, LoadReal(udg_jnorwp[2], (GetItemTypeId(cjlocgn_00000001)), 52))
                                        SaveReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB259B269, (LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2D1E4992) * LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xD9E23D83)))
                                        SaveReal(YDHT, GetHandleId(cjlocgn_00000001), 0xA4585BCB, LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB259B269))
                                        SaveStr(YDHT, GetHandleId(cjlocgn_00000001), 0xFD9CA15D, YDWEGetPlayerColorString(Player(2), ("强化增幅效果：" .. ("智力+" .. R2S(LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB259B269))))))
                                    else
                                    end
                                end
                            end
                        end
                    else
                    end
                    UnitAddItemSwapped(cjlocgn_00000001, udg_WJYX[GetConvertedPlayerId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))])
                else
                    DisplayTimedTextToPlayer(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946), 0, 0, 8.00, ((YDWEGetPlayerColorString(Player(5), GetUnitName(GetTriggerUnit()))) .. (YDWEGetPlayerColorString(Player(4), ":当前装备无法强化")) .. ("")))
                    AdjustPlayerStateBJ(S2I(EXExecuteScript("(require'jass.slk').item[" .. I2S(GetItemTypeId(GetSoldItem())) .. "].goldcost")), LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946), PLAYER_STATE_RESOURCE_GOLD)
                end
                SaveItemHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xD14F34A9, nil)
            else
                DisplayTimedTextToPlayer(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946), 0, 0, 8.00, ((YDWEGetPlayerColorString(Player(5), GetUnitName(GetTriggerUnit()))) .. (YDWEGetPlayerColorString(Player(4), ":需要强化的装备放在第一格")) .. ("")))
                AdjustPlayerStateBJ(S2I(EXExecuteScript("(require'jass.slk').item[" .. I2S(GetItemTypeId(GetSoldItem())) .. "].goldcost")), LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946), PLAYER_STATE_RESOURCE_GOLD)
            end
        else
            DisplayTimedTextToPlayer(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946), 0, 0, 8.00, ((YDWEGetPlayerColorString(Player(5), GetUnitName(GetTriggerUnit()))) .. (YDWEGetPlayerColorString(Player(4), ":强化石不足")) .. ("")))
            AdjustPlayerStateBJ(S2I(EXExecuteScript("(require'jass.slk').item[" .. I2S(GetItemTypeId(GetSoldItem())) .. "].goldcost")), LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946), PLAYER_STATE_RESOURCE_GOLD)
        end
        cjlocgn_00000001 = nil
    else
    end
    if ((GetUnitTypeId(GetTriggerUnit()) == (0x6E303142))) then
        SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x183EAA6A, S2I(EXExecuteScript("(require'jass.slk').item[" .. I2S(GetItemTypeId(GetSoldItem())) .. "].prio")))
        if ((LoadInteger(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x58FD9FA3) >= LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x183EAA6A))) then
            SaveInteger(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x58FD9FA3, (LoadInteger(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x58FD9FA3) - LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x183EAA6A)))
        else
            RemoveItem(GetSoldItem())
        end
        FlushChildHashtable(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step)
        ydl_trigger = nil
        ydl_timer = nil
        do
            return
        end
    else
    end
    if ((GetItemLevel(GetSoldItem()) == 362)) then
        if ((GetHeroLevel(udg_WJYX[LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x6F96F2D2)]) >= S2I(EXExecuteScript("(require'jass.slk').item[" .. I2S(GetItemTypeId(GetSoldItem())) .. "].lumbercost"))) and (GetPlayerTechCountSimple(0x52303044, Player(5)) >= S2I(EXExecuteScript("(require'jass.slk').item[" .. I2S(GetItemTypeId(GetSoldItem())) .. "].goldcost")))) then
            SaveReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xA99320FA, LoadReal(YDHT, GetItemTypeId(GetSoldItem()), 0xA99320FA))
            SaveReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xFDF65382, LoadReal(YDHT, GetItemTypeId(GetSoldItem()), 0xFDF65382))
            JK_UnitTranslationB(LoadUnitHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x911D5DC2), LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xA99320FA), LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xFDF65382), AddSpecialEffectTarget("Abilities\\Spells\\Human\\MassTeleport\\MassTeleportTarget.mdl", LoadUnitHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x911D5DC2), "chest"), 0.00, "", true)
        else
            DisplayTextToPlayer(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946), 0, 0, "不符合进入要求。")
            AdjustPlayerStateBJ(S2I(EXExecuteScript("(require'jass.slk').item[" .. I2S(GetItemTypeId(GetSoldItem())) .. "].goldcost")), LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946), PLAYER_STATE_RESOURCE_GOLD)
            AdjustPlayerStateBJ(S2I(EXExecuteScript("(require'jass.slk').item[" .. I2S(GetItemTypeId(GetSoldItem())) .. "].lumbercost")), LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946), PLAYER_STATE_RESOURCE_LUMBER)
        end
        FlushChildHashtable(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step)
        ydl_trigger = nil
        ydl_timer = nil
        do
            return
        end
    else
    end
    SaveUnitHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x911D5DC2, nil)
    SaveUnitHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xEA59A379, nil)
    FlushChildHashtable(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step)
    ydl_trigger = nil
    ydl_timer = nil
end

function InitTrig_A6_Sellitem()
    gg_trg_A6_Sellitem = CreateTrigger()
    TriggerRegisterAnyUnitEventBJ(gg_trg_A6_Sellitem, EVENT_PLAYER_UNIT_SELL_ITEM)
    TriggerAddCondition(gg_trg_A6_Sellitem, Condition(Trig_A6_SellitemConditions))
    TriggerAddAction(gg_trg_A6_Sellitem, Trig_A6_SellitemActions)
end

function Trig_jgc01Func002T()
    SaveReal(YDLOC, GetHandleId(GetExpiredTimer()), 0x0050BBB8, (LoadReal(YDLOC, GetHandleId(GetExpiredTimer()), 0x0050BBB8) - 1.00))
    DzFrameSetText(LoadInteger(YDHT, GetHandleId(Player(PLAYER_NEUTRAL_AGGRESSIVE)), 0x1ECE59C8), (((("|cff000000") .. ((("怪物波数：（") .. (((I2S(udg_S)) .. ("/") .. (I2S(LoadInteger(YDHT, LoadInteger(YDHT, GetHandleId(Player(PLAYER_NEUTRAL_AGGRESSIVE)), 0xB43FB128), 0xF095A1F4))))) .. ("）"))) .. ("|r"))) .. ("|n") .. ((("|cff000000") .. (("敌人到来(" .. (I2S(R2I(LoadReal(YDLOC, GetHandleId(GetExpiredTimer()), 0x0050BBB8))) .. ")"))) .. ("|r")))))
    if ((LoadReal(YDLOC, GetHandleId(GetExpiredTimer()), 0x0050BBB8) == 0.00)) then
        TriggerExecute(gg_trg_jgc02)
        FlushChildHashtable(YDLOC, GetHandleId(GetExpiredTimer()))
        DestroyTimer(GetExpiredTimer())
    else
    end
end

function Trig_jgc01Actions()
    local ydl_timer = nil
    local ydl_localvar_step = LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xCFDE6C76)
    ydl_localvar_step = ydl_localvar_step + 3
    SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xCFDE6C76, ydl_localvar_step)
    SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xECE825E7, ydl_localvar_step)
    if ((LoadInteger(YDHT, GetHandleId(Player(5)), 0xDE87FC78) ~= 1)) then
        DisplayTimedTextToForce(GetPlayersAll(), 10.00, "|cff00ff00地图在读取数据……|r\r\n\r\n\r\n")
        SaveReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x0050BBB8, (150.00 + LoadReal(YDHT, GetHandleId(Player(PLAYER_NEUTRAL_AGGRESSIVE)), 0xF9A44E7C)))
        SaveInteger(YDHT, GetHandleId(Player(5)), 0xDE87FC78, 1)
    else
        udg_ang[20] = (45.00 - I2R((udg_S * 2)))
        SaveReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x0050BBB8, (80.00 + (udg_ang[20] * 2.00)))
    end
    ydl_timer = CreateTimer()
    SaveReal(YDLOC, GetHandleId(ydl_timer), 0x0050BBB8, LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x0050BBB8))
    TimerStart(ydl_timer, 1.00, true, Trig_jgc01Func002T)
    FlushChildHashtable(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step)
    ydl_timer = nil
end

function InitTrig_jgc01()
    gg_trg_jgc01 = CreateTrigger()
    DisableTrigger(gg_trg_jgc01)
    TriggerAddAction(gg_trg_jgc01, Trig_jgc01Actions)
end

function Trig_jgc02Func008T()
    local ydul_a = nil
    local ydul_b = nil
    if ((udg_ND == "杀戮")) then
        FlushChildHashtable(YDLOC, GetHandleId(GetExpiredTimer()))
        DestroyTimer(GetExpiredTimer())
    else
        if ((udg_SGzs >= 13)) then
            udg_SGzs = 0
            SaveInteger(YDLOC, GetHandleId(GetExpiredTimer()), 0xA1CFBB06 + (1), (0x65646F63))
            SaveInteger(YDLOC, GetHandleId(GetExpiredTimer()), 0xA1CFBB06 + (2), (0x656D7467))
            ydul_a = 1
            while true do
                if ydul_a > 2 then
                    break
                end
                SaveUnitHandle(YDLOC, GetHandleId(GetExpiredTimer()), 0x911D5DC2 + (ydul_a), CreateUnit(Player(7), LoadInteger(YDLOC, GetHandleId(GetExpiredTimer()), 0xA1CFBB06 + (ydul_a)), LoadReal(YDLOC, GetHandleId(GetExpiredTimer()), 0xA99320FA + (ydul_a)), LoadReal(YDLOC, GetHandleId(GetExpiredTimer()), 0xFDF65382 + (ydul_a)), 0))
                JK_SX_Change(LoadUnitHandle(YDLOC, GetHandleId(GetExpiredTimer()), 0x911D5DC2 + (ydul_a)), ConvertUnitState(0x12), 1, ((LoadReal(YDLOC, GetHandleId(GetExpiredTimer()), 0xA9BFF3AE)) * (1.30) * (LoadReal(YDLOC, GetHandleId(GetExpiredTimer()), 0xEF89346E))))
                JK_SX_Change(LoadUnitHandle(YDLOC, GetHandleId(GetExpiredTimer()), 0x911D5DC2 + (ydul_a)), UNIT_STATE_MAX_LIFE, 1, ((GetUnitStateSwap(ConvertUnitState(0x12), LoadUnitHandle(YDLOC, GetHandleId(GetExpiredTimer()), 0x911D5DC2 + (ydul_a)))) * (12.00) * (LoadReal(YDLOC, GetHandleId(GetExpiredTimer()), 0xEF89346E))))
                JK_SX_Change(LoadUnitHandle(YDLOC, GetHandleId(GetExpiredTimer()), 0x911D5DC2 + (ydul_a)), ConvertUnitState(0x20), 1, ((1.00) * (I2R(udg_S)) * (LoadReal(YDLOC, GetHandleId(GetExpiredTimer()), 0xEF89346E))))
                JK_SX_Change(LoadUnitHandle(YDLOC, GetHandleId(GetExpiredTimer()), 0x911D5DC2 + (ydul_a)), UNIT_STATE_LIFE, 1, 0.00)
                JK_SX_Change(LoadUnitHandle(YDLOC, GetHandleId(GetExpiredTimer()), 0x911D5DC2 + (ydul_a)), ConvertUnitState(0x51), 1, ((I2R(udg_S)) * (10.00) * (1.00)))
                SetUnitMoveSpeed(LoadUnitHandle(YDLOC, GetHandleId(GetExpiredTimer()), 0x911D5DC2 + (ydul_a)), 410.00)
                SetUnitLifePercentBJ(LoadUnitHandle(YDLOC, GetHandleId(GetExpiredTimer()), 0x911D5DC2 + (ydul_a)), 100)
                IssuePointOrder(LoadUnitHandle(YDLOC, GetHandleId(GetExpiredTimer()), 0x911D5DC2 + (ydul_a)), "attack", -127.00, -221.00)
                ydul_a = ydul_a + 1
            end
            SaveReal(YDHT, GetHandleId(Player(PLAYER_NEUTRAL_AGGRESSIVE)), 0xFEB5B285, LoadReal(YDLOC, GetHandleId(GetExpiredTimer()), 0xA9BFF3AE))
            SaveInteger(YDHT, GetHandleId(Player(PLAYER_NEUTRAL_AGGRESSIVE)), 0x49E33D16, (LoadInteger(YDHT, GetHandleId(Player(PLAYER_NEUTRAL_AGGRESSIVE)), 0x49E33D16) + 1))
            if ((LoadInteger(YDHT, GetHandleId(Player(PLAYER_NEUTRAL_AGGRESSIVE)), 0x49E33D16) == 16)) then
                SaveInteger(YDHT, GetHandleId(Player(PLAYER_NEUTRAL_AGGRESSIVE)), 0x49E33D16, 1)
            else
            end
            if ((GetPlayerTechCountSimple(0x52303044, Player(5)) >= 4)) then
                ydul_b = 1
                while true do
                    if ydul_b > 10 then
                        break
                    end
                    if (((udg_S + 1) == (LoadInteger(YDHT, GetHandleId(Player(7)), 0x015ED43C) * 3))) then
                        if ((LoadInteger(YDHT, GetHandleId(Player(7)), 0x015ED43C) ~= 11)) then
                            DisplayTimedTextToPlayer(GetLocalPlayer(), 0, 0, 6.00, YDWEGetPlayerColorString(Player(0), "特殊进攻怪物来袭！！！"))
                            SaveInteger(YDHT, GetHandleId(Player(7)), 0x015ED43C, (LoadInteger(YDHT, GetHandleId(Player(7)), 0x015ED43C) + 1))
                            ydul_a = 1
                            while true do
                                if ydul_a > 10 then
                                    break
                                end
                                SaveUnitHandle(YDLOC, GetHandleId(GetExpiredTimer()), 0x911D5DC2 + (ydul_a), CreateUnit(Player(7), udg_Sec[LoadInteger(YDHT, GetHandleId(Player(7)), 0x015ED43C)], 2796.00, -5862.00, 0))
                                JK_SX_Change(LoadUnitHandle(YDLOC, GetHandleId(GetExpiredTimer()), 0x911D5DC2 + (ydul_a)), ConvertUnitState(0x12), 1, (LoadReal(YDLOC, GetHandleId(GetExpiredTimer()), 0xA9BFF3AE) * 3.00))
                                JK_SX_Change(LoadUnitHandle(YDLOC, GetHandleId(GetExpiredTimer()), 0x911D5DC2 + (ydul_a)), UNIT_STATE_MAX_LIFE, 1, ((GetUnitStateSwap(ConvertUnitState(0x12), LoadUnitHandle(YDLOC, GetHandleId(GetExpiredTimer()), 0x911D5DC2 + (ydul_a)))) * (8.00) * (LoadReal(YDLOC, GetHandleId(GetExpiredTimer()), 0xEF89346E))))
                                JK_SX_Change(LoadUnitHandle(YDLOC, GetHandleId(GetExpiredTimer()), 0x911D5DC2 + (ydul_a)), ConvertUnitState(0x20), 1, ((23.00) * (I2R(udg_S)) * (LoadReal(YDLOC, GetHandleId(GetExpiredTimer()), 0xEF89346E))))
                                JK_SX_Change(LoadUnitHandle(YDLOC, GetHandleId(GetExpiredTimer()), 0x911D5DC2 + (ydul_a)), ConvertUnitState(0x51), 1, 20.00)
                                SetUnitState(LoadUnitHandle(YDLOC, GetHandleId(GetExpiredTimer()), 0x911D5DC2 + (ydul_a)), ConvertUnitState(0x25), 1.00)
                                SetUnitMoveSpeed(LoadUnitHandle(YDLOC, GetHandleId(GetExpiredTimer()), 0x911D5DC2 + (ydul_a)), 380.00)
                                SetUnitLifePercentBJ(LoadUnitHandle(YDLOC, GetHandleId(GetExpiredTimer()), 0x911D5DC2 + (ydul_a)), 100)
                                IssuePointOrder(LoadUnitHandle(YDLOC, GetHandleId(GetExpiredTimer()), 0x911D5DC2 + (ydul_a)), "attack", -127.00, -221.00)
                                ydul_a = ydul_a + 1
                            end
                        else
                        end
                    else
                    end
                    ydul_b = ydul_b + 1
                end
            else
            end
            if ((GetPlayerTechCountSimple(0x52303044, Player(5)) >= 6)) then
                ydul_a = 1
                while true do
                    if ydul_a > 1 then
                        break
                    end
                    SaveUnitHandle(YDLOC, GetHandleId(GetExpiredTimer()), 0x911D5DC2 + (ydul_a), CreateUnit(Player(7), (0x6E303139), 2796.00, -5862.00, 0))
                    JK_SX_Change(LoadUnitHandle(YDLOC, GetHandleId(GetExpiredTimer()), 0x911D5DC2 + (ydul_a)), ConvertUnitState(0x12), 1, (LoadReal(YDLOC, GetHandleId(GetExpiredTimer()), 0xA9BFF3AE) * 5.00))
                    JK_SX_Change(LoadUnitHandle(YDLOC, GetHandleId(GetExpiredTimer()), 0x911D5DC2 + (ydul_a)), UNIT_STATE_MAX_LIFE, 1, ((GetUnitStateSwap(ConvertUnitState(0x12), LoadUnitHandle(YDLOC, GetHandleId(GetExpiredTimer()), 0x911D5DC2 + (ydul_a)))) * (8.00) * (LoadReal(YDLOC, GetHandleId(GetExpiredTimer()), 0xEF89346E))))
                    JK_SX_Change(LoadUnitHandle(YDLOC, GetHandleId(GetExpiredTimer()), 0x911D5DC2 + (ydul_a)), ConvertUnitState(0x20), 1, ((23.00) * (I2R(udg_S)) * (LoadReal(YDLOC, GetHandleId(GetExpiredTimer()), 0xEF89346E))))
                    JK_SX_Change(LoadUnitHandle(YDLOC, GetHandleId(GetExpiredTimer()), 0x911D5DC2 + (ydul_a)), ConvertUnitState(0x51), 1, 20.00)
                    SetUnitState(LoadUnitHandle(YDLOC, GetHandleId(GetExpiredTimer()), 0x911D5DC2 + (ydul_a)), ConvertUnitState(0x25), 1.00)
                    SetUnitMoveSpeed(LoadUnitHandle(YDLOC, GetHandleId(GetExpiredTimer()), 0x911D5DC2 + (ydul_a)), 280.00)
                    SetUnitLifePercentBJ(LoadUnitHandle(YDLOC, GetHandleId(GetExpiredTimer()), 0x911D5DC2 + (ydul_a)), 100)
                    IssuePointOrder(LoadUnitHandle(YDLOC, GetHandleId(GetExpiredTimer()), 0x911D5DC2 + (ydul_a)), "attack", -127.00, -221.00)
                    ydul_a = ydul_a + 1
                end
            else
            end
            FlushChildHashtable(YDLOC, GetHandleId(GetExpiredTimer()))
            DestroyTimer(GetExpiredTimer())
        else
            udg_SGzs = (udg_SGzs + 1)
            ydul_a = 1
            while true do
                if ydul_a > 2 then
                    break
                end
                SaveUnitHandle(YDLOC, GetHandleId(GetExpiredTimer()), 0x911D5DC2 + (ydul_a), CreateUnit(Player(7), udg_JGGGG[udg_S], LoadReal(YDLOC, GetHandleId(GetExpiredTimer()), 0xA99320FA + (ydul_a)), LoadReal(YDLOC, GetHandleId(GetExpiredTimer()), 0xFDF65382 + (ydul_a)), 0))
                JK_SX_Change(LoadUnitHandle(YDLOC, GetHandleId(GetExpiredTimer()), 0x911D5DC2 + (ydul_a)), ConvertUnitState(0x20), 1, ((23.00) * (I2R(udg_S)) * (LoadReal(YDLOC, GetHandleId(GetExpiredTimer()), 0xEF89346E))))
                JK_SX_Change(LoadUnitHandle(YDLOC, GetHandleId(GetExpiredTimer()), 0x911D5DC2 + (ydul_a)), ConvertUnitState(0x51), 1, 20.00)
                SetUnitState(LoadUnitHandle(YDLOC, GetHandleId(GetExpiredTimer()), 0x911D5DC2 + (ydul_a)), ConvertUnitState(0x25), 1.00)
                SetUnitMoveSpeed(LoadUnitHandle(YDLOC, GetHandleId(GetExpiredTimer()), 0x911D5DC2 + (ydul_a)), 380.00)
                SetUnitUserData(LoadUnitHandle(YDLOC, GetHandleId(GetExpiredTimer()), 0x911D5DC2 + (ydul_a)), 549)
                SetUnitLifePercentBJ(LoadUnitHandle(YDLOC, GetHandleId(GetExpiredTimer()), 0x911D5DC2 + (ydul_a)), 100)
                IssuePointOrder(LoadUnitHandle(YDLOC, GetHandleId(GetExpiredTimer()), 0x911D5DC2 + (ydul_a)), "attack", -127.00, -221.00)
                ydul_a = ydul_a + 1
            end
        end
    end
end

function Trig_jgc02Actions()
    local ydul_a = nil
    local ydl_timer = nil
    local ydl_localvar_step = LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xCFDE6C76)
    ydl_localvar_step = ydl_localvar_step + 3
    SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xCFDE6C76, ydl_localvar_step)
    SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xECE825E7, ydl_localvar_step)
    DisplayTextToForce(GetPlayersAll(), ("LV:" .. (I2S(udg_S) .. ("怪物进攻已开始，注意回去防守！！"))))
    ydul_a = 1
    while true do
        if ydul_a > 8 then
            break
        end
        if ((udg_S == LoadInteger(YDHT, GetHandleId(ConvertedPlayer(ydul_a)), 0x1295852E))) then
            SaveBoolean(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x49645424, true)
            TriggerExecute(gg_trg_BOSSchufa________4__u)
            DoNothing()
            if true then
                break
            end
        else
        end
        ydul_a = ydul_a + 1
    end
    if ((LoadBoolean(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x49645424) ~= true)) then
        PlaySoundBJ(gg_snd_TheHornOfCenarius)
    else
        PlaySoundBJ(gg_snd_SargerasLaugh)
    end
    udg_S = (udg_S + 1)
    TriggerExecute(gg_trg_jgc01)
    DzFrameSetModel(udg_UI_DX, "jingongtishi.MDX", 0, 0)
    SaveReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xA9BFF3AE, ((((I2R((udg_S * udg_S))) * (I2R((udg_S // 3))) * (I2R((udg_S // 3))))) * (8.00) + (0.00)))
    SaveReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xA9BFF3AE, ((LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xA9BFF3AE)) + (LoadReal(YDHT, GetHandleId(Player(PLAYER_NEUTRAL_AGGRESSIVE)), 0xFEB5B285)) + (0.00)))
    SaveReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x58304B3E, ((((I2R(udg_S)) * (I2R(udg_S)) * (I2R(udg_S)))) * ((I2R(udg_S) * 0.28)) * (LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xEF89346E))))
    SaveReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xA9BFF3AE, (LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xA9BFF3AE) + LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x58304B3E)))
    SaveReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xA9BFF3AE, (LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xA9BFF3AE) + 100.00))
    if ((GetPlayerTechCountSimple(0x52303044, Player(5)) >= 7)) then
        DisplayTimedTextToPlayer(GetLocalPlayer(), 0, 0, 6.00, YDWEGetPlayerColorString(Player(0), ("进攻怪附带技能：" .. (EXExecuteScript("(require'jass.slk').ability[" .. I2S((LoadInteger(YDHT, StringHash(("技能库")), StringHash((I2S(LoadInteger(YDHT, GetHandleId(Player(PLAYER_NEUTRAL_AGGRESSIVE)), 0x49E33D16))))))) .. "].Tip")))))
    else
    end
    ydl_timer = CreateTimer()
    SaveReal(YDLOC, GetHandleId(ydl_timer), 0xEF89346E, ((I2R((GetPlayerTechCountSimple(0x52303044, Player(5)) - 1)) * 0.15) + 1.00))
    SaveReal(YDLOC, GetHandleId(ydl_timer), 0xA99320FA + (1), -1193.00)
    SaveReal(YDLOC, GetHandleId(ydl_timer), 0xFDF65382 + (1), 4300.00)
    SaveReal(YDLOC, GetHandleId(ydl_timer), 0xA99320FA + (2), 1000.00)
    SaveReal(YDLOC, GetHandleId(ydl_timer), 0xFDF65382 + (2), 4200.00)
    SaveReal(YDLOC, GetHandleId(ydl_timer), 0xA9BFF3AE, LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xA9BFF3AE))
    SaveUnitHandle(YDLOC, GetHandleId(ydl_timer), 0x911D5DC2, LoadUnitHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x911D5DC2))
    SaveInteger(YDLOC, GetHandleId(ydl_timer), 0xA1CFBB06, LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xA1CFBB06))
    SaveReal(YDLOC, GetHandleId(ydl_timer), 0xA99320FA, LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xA99320FA))
    SaveReal(YDLOC, GetHandleId(ydl_timer), 0xFDF65382, LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xFDF65382))
    TimerStart(ydl_timer, 0.10, true, Trig_jgc02Func008T)
    FlushChildHashtable(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step)
    ydl_timer = nil
end

function InitTrig_jgc02()
    gg_trg_jgc02 = CreateTrigger()
    TriggerAddAction(gg_trg_jgc02, Trig_jgc02Actions)
end
end
