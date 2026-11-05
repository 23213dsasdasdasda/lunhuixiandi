-- Converted from 342.w3x map/map/war3map.j.
-- Trigger functions grouped by feature.
-- InitTrig_UI_tips
-- InitTrig_xiandaochufa_ui
-- InitTrig_ui_3x1
-- InitTrig_UI_XSFB_____________u
-- InitTrig_ui_old
-- InitTrig_UI_button
-- InitTrig_UI_TBSJ
-- InitTrig_UI_TEXT_002
-- InitTrig_chufaqi_shuxingmianban
-- InitTrig_SHUBIAOGUNLUN
-- InitTrig_shuruxinxi
-- InitTrig_jinshouzhi
return function(_ENV)
function Trig_UI_tipsFunc002T()
    if ((LoadPlayerHandle(YDLOC, GetHandleId(GetExpiredTimer()), 0x48656946) == GetLocalPlayer())) then
        DzFrameShow(udg_Highlight, false)
    else
    end
    FlushChildHashtable(YDLOC, GetHandleId(GetExpiredTimer()))
    DestroyTimer(GetExpiredTimer())
end

function Trig_UI_tipsActions()
    local ydl_timer = nil
    local ydl_localvar_step = LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xCFDE6C76)
    ydl_localvar_step = ydl_localvar_step + 3
    SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xCFDE6C76, ydl_localvar_step)
    SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xECE825E7, ydl_localvar_step)
    if ((LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946) == GetLocalPlayer())) then
        DzFrameShow(udg_Highlight, true)
        DzFrameSetPoint(udg_Highlight, 6, LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x9CD60476), 4, 0, 0)
    else
    end
    ydl_timer = CreateTimer()
    SavePlayerHandle(YDLOC, GetHandleId(ydl_timer), 0x48656946, LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))
    TimerStart(ydl_timer, 3.00, false, Trig_UI_tipsFunc002T)
    FlushChildHashtable(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step)
    ydl_timer = nil
end

function InitTrig_UI_tips()
    gg_trg_UI_tips = CreateTrigger()
    TriggerAddAction(gg_trg_UI_tips, Trig_UI_tipsActions)
end

function Trig_xiandaochufa_uiFunc006T()
    local ydul_a = nil
    SaveReal(YDLOC, GetHandleId(GetExpiredTimer()), 0xB259B269, (LoadReal(YDLOC, GetHandleId(GetExpiredTimer()), 0xB259B269) + 0.01))
    if ((LoadPlayerHandle(YDLOC, GetHandleId(GetExpiredTimer()), 0x48656946) == GetLocalPlayer())) then
        DzFrameSetAnimateOffset(udg_UI_xsxz[3], LoadReal(YDLOC, GetHandleId(GetExpiredTimer()), 0xB259B269))
        DzFrameSetAnimateOffset(udg_UI_xsxz[5], LoadReal(YDLOC, GetHandleId(GetExpiredTimer()), 0xB259B269))
    else
    end
    if ((LoadReal(YDLOC, GetHandleId(GetExpiredTimer()), 0xB259B269) == 1.00)) then
        if ((LoadPlayerHandle(YDLOC, GetHandleId(GetExpiredTimer()), 0x48656946) == GetLocalPlayer())) then
            ydul_a = 0
            while true do
                if ydul_a > 11 then
                    break
                end
                DzFrameShow(udg_UI_xsxz[ydul_a], true)
                ydul_a = ydul_a + 1
            end
            DzFrameShow(udg_UI_xsxz[3], false)
            DzFrameShow(udg_UI_xsxz[5], false)
        else
        end
        FlushChildHashtable(YDLOC, GetHandleId(GetExpiredTimer()))
        DestroyTimer(GetExpiredTimer())
    else
    end
end

function Trig_xiandaochufa_uiActions()
    local ydul_a = nil
    local ydl_timer = nil
    local ydl_localvar_step = LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xCFDE6C76)
    ydl_localvar_step = ydl_localvar_step + 3
    SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xCFDE6C76, ydl_localvar_step)
    SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xECE825E7, ydl_localvar_step)
    SavePlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946, LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))
    SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB0497EE9 + (0), LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xDE0B82C4))
    SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB0497EE9 + (1), LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x356763AF))
    SaveInteger(YDHT, ((GetHandleId((LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))))), (((udg_UI_xsxz[0]))), (LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB0497EE9 + (0))))
    SaveInteger(YDHT, ((GetHandleId((LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))))), (((udg_UI_xsxz[1]))), (LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB0497EE9 + (1))))
    if ((LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946) == GetLocalPlayer())) then
        DzFrameShow(udg_UI_xsxz[0], false)
        DzFrameShow(udg_UI_xsxz[1], false)
        DzFrameShow(udg_UI_xsxz[2], false)
        DzFrameShow(udg_UI_xsxz[4], false)
        DzFrameShow(udg_UI_xsxz[3], true)
        DzFrameShow(udg_UI_xsxz[5], true)
        DzFrameSetText(udg_UI_xsxz[6], (("|cff00ffff") .. ((EXExecuteScript("(require'jass.slk').item[" .. I2S(LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB0497EE9 + (0))) .. "].Name"))) .. ("|r")))
        DzFrameSetText(udg_UI_xsxz[7], (("|cff00ffff") .. ((EXExecuteScript("(require'jass.slk').item[" .. I2S(LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB0497EE9 + (1))) .. "].Name"))) .. ("|r")))
        DzFrameSetText(udg_UI_xsxz[8], (("|cff000000") .. ((EXExecuteScript("(require'jass.slk').item[" .. I2S(LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB0497EE9 + (0))) .. "].Ubertip"))) .. ("|r")))
        DzFrameSetText(udg_UI_xsxz[9], (("|cff000000") .. ((EXExecuteScript("(require'jass.slk').item[" .. I2S(LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB0497EE9 + (1))) .. "].Ubertip"))) .. ("|r")))
        DzFrameSetTexture(udg_UI_xsxz[10], (EXExecuteScript("(require'jass.slk').item[" .. I2S(LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB0497EE9 + (0))) .. "].Art")), 0)
        DzFrameSetTexture(udg_UI_xsxz[11], (EXExecuteScript("(require'jass.slk').item[" .. I2S(LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB0497EE9 + (1))) .. "].Art")), 0)
        ydul_a = 6
        while true do
            if ydul_a > 11 then
                break
            end
            DzFrameShow(udg_UI_xsxz[ydul_a], false)
            ydul_a = ydul_a + 1
        end
    else
    end
    ydl_timer = CreateTimer()
    SavePlayerHandle(YDLOC, GetHandleId(ydl_timer), 0x48656946, LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))
    SaveReal(YDLOC, GetHandleId(ydl_timer), 0xB259B269, 0.00)
    TimerStart(ydl_timer, 0.01, true, Trig_xiandaochufa_uiFunc006T)
    FlushChildHashtable(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step)
    ydl_timer = nil
end

function InitTrig_xiandaochufa_ui()
    gg_trg_xiandaochufa_ui = CreateTrigger()
    TriggerAddAction(gg_trg_xiandaochufa_ui, Trig_xiandaochufa_uiActions)
end

function Trig_ui_3x1Func002Func004Func002T()
    local ydul_a = nil
    SaveReal(YDLOC, GetHandleId(GetExpiredTimer()), 0xB259B269, (LoadReal(YDLOC, GetHandleId(GetExpiredTimer()), 0xB259B269) + 0.01))
    if ((LoadReal(YDLOC, GetHandleId(GetExpiredTimer()), 0xB259B269) == 0.01)) then
        if ((LoadPlayerHandle(YDLOC, GetHandleId(GetExpiredTimer()), 0x48656946) == GetLocalPlayer())) then
            DzFrameShow(udg_UI_3x1[3], false)
            DzFrameShow(udg_UI_3x1[5], false)
            DzFrameShow(udg_UI_3x1[7], false)
            DzFrameShow(udg_UI_3x1[4], true)
            DzFrameShow(udg_UI_3x1[6], true)
            DzFrameShow(udg_UI_3x1[8], true)
            DzFrameSetTexture(udg_UI_3x1[3], (("UI_zhengmian (") .. ("1") .. (").tga")), 0)
            DzFrameSetModel(udg_UI_3x1[4], (("[ui]3x1 (") .. ("1") .. (").mdx")), 0, 0)
            DzFrameSetTexture(udg_UI_3x1[5], (("UI_zhengmian (") .. ("1") .. (").tga")), 0)
            DzFrameSetModel(udg_UI_3x1[6], (("[ui]3x1 (") .. ("1") .. (").mdx")), 0, 0)
            DzFrameSetTexture(udg_UI_3x1[7], (("UI_zhengmian (") .. ("1") .. (").tga")), 0)
            DzFrameSetModel(udg_UI_3x1[8], (("[ui]3x1 (") .. ("1") .. (").mdx")), 0, 0)
            DzFrameSetAnimate(udg_UI_3x1[4], 0, false)
            DzFrameSetAnimateOffset(udg_UI_3x1[4], 1.20)
            DzFrameSetAnimate(udg_UI_3x1[6], 0, false)
            DzFrameSetAnimateOffset(udg_UI_3x1[6], 1.20)
            DzFrameSetAnimate(udg_UI_3x1[8], 0, false)
            DzFrameSetAnimateOffset(udg_UI_3x1[8], 1.20)
        else
        end
    else
    end
    if ((LoadPlayerHandle(YDLOC, GetHandleId(GetExpiredTimer()), 0x48656946) == GetLocalPlayer())) then
        DzFrameSetAnimateOffset(udg_UI_3x1[4], LoadReal(YDLOC, GetHandleId(GetExpiredTimer()), 0xB259B269))
        DzFrameSetAnimateOffset(udg_UI_3x1[6], LoadReal(YDLOC, GetHandleId(GetExpiredTimer()), 0xB259B269))
        DzFrameSetAnimateOffset(udg_UI_3x1[8], LoadReal(YDLOC, GetHandleId(GetExpiredTimer()), 0xB259B269))
    else
    end
    if ((LoadReal(YDLOC, GetHandleId(GetExpiredTimer()), 0xB259B269) == 1.20)) then
        if ((LoadPlayerHandle(YDLOC, GetHandleId(GetExpiredTimer()), 0x48656946) == GetLocalPlayer())) then
            DzFrameShow(LoadInteger(YDHT, GetHandleId(Player(PLAYER_NEUTRAL_AGGRESSIVE)), 0x5445ECAC), true)
            DzFrameShow(udg_UI_3x1[4], false)
            DzFrameShow(udg_UI_3x1[6], false)
            DzFrameShow(udg_UI_3x1[8], false)
            DzFrameShow(udg_UI_3x1[3], true)
            DzFrameShow(udg_UI_3x1[5], true)
            DzFrameShow(udg_UI_3x1[7], true)
            ydul_a = 0
            while true do
                if ydul_a > 2 then
                    break
                end
                DzFrameShow(udg_UI_3x1[ydul_a], true)
                ydul_a = ydul_a + 1
            end
            DzFrameSetText(udg_UI_3x1[9], (("|cff000000") .. ((EXExecuteScript("(require'jass.slk').ability[" .. I2S(LoadInteger(YDLOC, GetHandleId(GetExpiredTimer()), 0xF374F3BD + (0))) .. "].Name"))) .. ("|r")))
            DzFrameSetText(udg_UI_3x1[10], (("|cff000000") .. ((EXExecuteScript("(require'jass.slk').ability[" .. I2S(LoadInteger(YDLOC, GetHandleId(GetExpiredTimer()), 0xF374F3BD + (1))) .. "].Name"))) .. ("|r")))
            DzFrameSetText(udg_UI_3x1[11], (("|cff000000") .. ((EXExecuteScript("(require'jass.slk').ability[" .. I2S(LoadInteger(YDLOC, GetHandleId(GetExpiredTimer()), 0xF374F3BD + (2))) .. "].Name"))) .. ("|r")))
            DzFrameSetText(udg_UI_3x1[12], (("|cff000000") .. (LoadStringBJ(2, (LoadInteger(YDLOC, GetHandleId(GetExpiredTimer()), 0xF374F3BD + (0))), (jn))) .. ("|r")))
            DzFrameSetText(udg_UI_3x1[13], (("|cff000000") .. (LoadStringBJ(2, (LoadInteger(YDLOC, GetHandleId(GetExpiredTimer()), 0xF374F3BD + (1))), (jn))) .. ("|r")))
            DzFrameSetText(udg_UI_3x1[14], (("|cff000000") .. (LoadStringBJ(2, (LoadInteger(YDLOC, GetHandleId(GetExpiredTimer()), 0xF374F3BD + (2))), (jn))) .. ("|r")))
            DzFrameSetTexture(udg_UI_3x1[15], (EXExecuteScript("(require'jass.slk').ability[" .. I2S(LoadInteger(YDLOC, GetHandleId(GetExpiredTimer()), 0xF374F3BD + (0))) .. "].Art")), 0)
            DzFrameSetTexture(udg_UI_3x1[16], (EXExecuteScript("(require'jass.slk').ability[" .. I2S(LoadInteger(YDLOC, GetHandleId(GetExpiredTimer()), 0xF374F3BD + (1))) .. "].Art")), 0)
            DzFrameSetTexture(udg_UI_3x1[17], (EXExecuteScript("(require'jass.slk').ability[" .. I2S(LoadInteger(YDLOC, GetHandleId(GetExpiredTimer()), 0xF374F3BD + (2))) .. "].Art")), 0)
        else
        end
        FlushChildHashtable(YDLOC, GetHandleId(GetExpiredTimer()))
        DestroyTimer(GetExpiredTimer())
    else
    end
end

function Trig_ui_3x1Func002Func004Func003T()
    local ydul_a = nil
    SaveReal(YDLOC, GetHandleId(GetExpiredTimer()), 0xB259B269, (LoadReal(YDLOC, GetHandleId(GetExpiredTimer()), 0xB259B269) + 0.01))
    if ((LoadReal(YDLOC, GetHandleId(GetExpiredTimer()), 0xB259B269) == 0.01)) then
        if ((LoadPlayerHandle(YDLOC, GetHandleId(GetExpiredTimer()), 0x48656946) == GetLocalPlayer())) then
            DzFrameShow(udg_UI_3x1[3], false)
            DzFrameShow(udg_UI_3x1[5], false)
            DzFrameShow(udg_UI_3x1[7], false)
            DzFrameShow(udg_UI_3x1[4], true)
            DzFrameShow(udg_UI_3x1[6], true)
            DzFrameShow(udg_UI_3x1[8], true)
            DzFrameSetTexture(LoadInteger(YDHT, GetHandleId(Player(PLAYER_NEUTRAL_AGGRESSIVE)), 0x5445ECAC), (("UI_zhengmian (") .. (I2S(S2I(EXExecuteScript("(require'jass.slk').item[" .. I2S(LoadInteger(YDLOC, GetHandleId(GetExpiredTimer()), 0xB0497EE9 + (0))) .. "].level")))) .. (").tga")), 0)
            DzFrameSetModel(udg_UI_3x1[4], (("[ui]3x1 (") .. (I2S(S2I(EXExecuteScript("(require'jass.slk').item[" .. I2S(LoadInteger(YDLOC, GetHandleId(GetExpiredTimer()), 0xB0497EE9 + (0))) .. "].Level")))) .. (").mdx")), 0, 0)
            DzFrameSetTexture(udg_UI_3x1[5], (("UI_zhengmian (") .. (I2S(S2I(EXExecuteScript("(require'jass.slk').item[" .. I2S(LoadInteger(YDLOC, GetHandleId(GetExpiredTimer()), 0xB0497EE9 + (1))) .. "].level")))) .. (").tga")), 0)
            DzFrameSetModel(udg_UI_3x1[6], (("[ui]3x1 (") .. (I2S(S2I(EXExecuteScript("(require'jass.slk').item[" .. I2S(LoadInteger(YDLOC, GetHandleId(GetExpiredTimer()), 0xB0497EE9 + (1))) .. "].Level")))) .. (").mdx")), 0, 0)
            DzFrameSetTexture(udg_UI_3x1[7], (("UI_zhengmian (") .. (I2S(S2I(EXExecuteScript("(require'jass.slk').item[" .. I2S(LoadInteger(YDLOC, GetHandleId(GetExpiredTimer()), 0xB0497EE9 + (2))) .. "].level")))) .. (").tga")), 0)
            DzFrameSetModel(udg_UI_3x1[8], (("[ui]3x1 (") .. (I2S(S2I(EXExecuteScript("(require'jass.slk').item[" .. I2S(LoadInteger(YDLOC, GetHandleId(GetExpiredTimer()), 0xB0497EE9 + (2))) .. "].Level")))) .. (").mdx")), 0, 0)
            DzFrameSetAnimate(udg_UI_3x1[4], 0, false)
            DzFrameSetAnimateOffset(udg_UI_3x1[4], 1.20)
            DzFrameSetAnimate(udg_UI_3x1[6], 0, false)
            DzFrameSetAnimateOffset(udg_UI_3x1[6], 1.20)
            DzFrameSetAnimate(udg_UI_3x1[8], 0, false)
            DzFrameSetAnimateOffset(udg_UI_3x1[8], 1.20)
        else
        end
    else
    end
    if ((LoadPlayerHandle(YDLOC, GetHandleId(GetExpiredTimer()), 0x48656946) == GetLocalPlayer())) then
        DzFrameSetAnimateOffset(udg_UI_3x1[4], LoadReal(YDLOC, GetHandleId(GetExpiredTimer()), 0xB259B269))
        DzFrameSetAnimateOffset(udg_UI_3x1[6], LoadReal(YDLOC, GetHandleId(GetExpiredTimer()), 0xB259B269))
        DzFrameSetAnimateOffset(udg_UI_3x1[8], LoadReal(YDLOC, GetHandleId(GetExpiredTimer()), 0xB259B269))
    else
    end
    if ((LoadReal(YDLOC, GetHandleId(GetExpiredTimer()), 0xB259B269) == 1.20)) then
        if ((LoadPlayerHandle(YDLOC, GetHandleId(GetExpiredTimer()), 0x48656946) == GetLocalPlayer())) then
            DzFrameShow(LoadInteger(YDHT, GetHandleId(Player(PLAYER_NEUTRAL_AGGRESSIVE)), 0x5445ECAC), true)
            DzFrameShow(udg_UI_3x1[4], false)
            DzFrameShow(udg_UI_3x1[6], false)
            DzFrameShow(udg_UI_3x1[8], false)
            DzFrameShow(udg_UI_3x1[3], true)
            DzFrameShow(udg_UI_3x1[5], true)
            DzFrameShow(udg_UI_3x1[7], true)
            ydul_a = 0
            while true do
                if ydul_a > 2 then
                    break
                end
                DzFrameShow(udg_UI_3x1[ydul_a], true)
                ydul_a = ydul_a + 1
            end
            DzFrameSetText(udg_UI_3x1[9], (EXExecuteScript("(require'jass.slk').item[" .. I2S(LoadInteger(YDLOC, GetHandleId(GetExpiredTimer()), 0xB0497EE9 + (0))) .. "].Name")))
            DzFrameSetText(udg_UI_3x1[10], (EXExecuteScript("(require'jass.slk').item[" .. I2S(LoadInteger(YDLOC, GetHandleId(GetExpiredTimer()), 0xB0497EE9 + (1))) .. "].Name")))
            DzFrameSetText(udg_UI_3x1[11], (EXExecuteScript("(require'jass.slk').item[" .. I2S(LoadInteger(YDLOC, GetHandleId(GetExpiredTimer()), 0xB0497EE9 + (2))) .. "].Name")))
            DzFrameSetText(udg_UI_3x1[12], (EXExecuteScript("(require'jass.slk').item[" .. I2S(LoadInteger(YDLOC, GetHandleId(GetExpiredTimer()), 0xB0497EE9 + (0))) .. "].Ubertip")))
            DzFrameSetText(udg_UI_3x1[13], (EXExecuteScript("(require'jass.slk').item[" .. I2S(LoadInteger(YDLOC, GetHandleId(GetExpiredTimer()), 0xB0497EE9 + (1))) .. "].Ubertip")))
            DzFrameSetText(udg_UI_3x1[14], (EXExecuteScript("(require'jass.slk').item[" .. I2S(LoadInteger(YDLOC, GetHandleId(GetExpiredTimer()), 0xB0497EE9 + (2))) .. "].Ubertip")))
            DzFrameSetTexture(udg_UI_3x1[15], (EXExecuteScript("(require'jass.slk').item[" .. I2S(LoadInteger(YDLOC, GetHandleId(GetExpiredTimer()), 0xB0497EE9 + (0))) .. "].Art")), 0)
            DzFrameSetTexture(udg_UI_3x1[16], (EXExecuteScript("(require'jass.slk').item[" .. I2S(LoadInteger(YDLOC, GetHandleId(GetExpiredTimer()), 0xB0497EE9 + (1))) .. "].Art")), 0)
            DzFrameSetTexture(udg_UI_3x1[17], (EXExecuteScript("(require'jass.slk').item[" .. I2S(LoadInteger(YDLOC, GetHandleId(GetExpiredTimer()), 0xB0497EE9 + (2))) .. "].Art")), 0)
        else
        end
        FlushChildHashtable(YDLOC, GetHandleId(GetExpiredTimer()))
        DestroyTimer(GetExpiredTimer())
    else
    end
end

function Trig_ui_3x1Actions()
    local ydul_a = nil
    local ydl_timer = nil
    local ydl_localvar_step = LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xCFDE6C76)
    ydl_localvar_step = ydl_localvar_step + 3
    SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xCFDE6C76, ydl_localvar_step)
    SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xECE825E7, ydl_localvar_step)
    SavePlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946, LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))
    if (((LoadBoolean(YDHT, ((GetHandleId((LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))))), ((GetHandleId((GetTriggeringTrigger())))))) ~= true)) then
        SaveBoolean(YDHT, ((GetHandleId((LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))))), ((GetHandleId((GetTriggeringTrigger())))), (true))
        if ((LoadBoolean(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xC6314D69) == true)) then
            SaveBoolean(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0xA96FD71C, true)
            ydul_a = 0
            while true do
                if ydul_a > 2 then
                    break
                end
                if (((EXExecuteScript("(require'jass.slk').unit[" .. I2S(GetUnitTypeId(udg_WJYX[GetConvertedPlayerId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))])) .. "].Primary")) == "STR")) then
                    SaveItemHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xD14F34A9, PlaceRandomItem(udg_dx_wpc[GetConvertedPlayerId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))], 0, 0))
                    SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB0497EE9 + (ydul_a), GetItemTypeId(LoadItemHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xD14F34A9)))
                    ItemPoolRemoveItemType(udg_dx_wpc[GetConvertedPlayerId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))], LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB0497EE9 + (ydul_a)))
                    RemoveItem(LoadItemHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xD14F34A9))
                    SaveItemHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xD14F34A9, nil)
                else
                    if (((EXExecuteScript("(require'jass.slk').unit[" .. I2S(GetUnitTypeId(udg_WJYX[GetConvertedPlayerId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))])) .. "].Primary")) == "AGI")) then
                        SaveItemHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xD14F34A9, PlaceRandomItem(udg_dx_wpc2[GetConvertedPlayerId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))], 0, 0))
                        SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB0497EE9 + (ydul_a), GetItemTypeId(LoadItemHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xD14F34A9)))
                        ItemPoolRemoveItemType(udg_dx_wpc2[GetConvertedPlayerId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))], LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB0497EE9 + (ydul_a)))
                        RemoveItem(LoadItemHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xD14F34A9))
                        SaveItemHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xD14F34A9, nil)
                    else
                        if (((EXExecuteScript("(require'jass.slk').unit[" .. I2S(GetUnitTypeId(udg_WJYX[GetConvertedPlayerId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))])) .. "].Primary")) == "INT")) then
                            SaveItemHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xD14F34A9, PlaceRandomItem(udg_dx_wpc3[GetConvertedPlayerId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))], 0, 0))
                            SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB0497EE9 + (ydul_a), GetItemTypeId(LoadItemHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xD14F34A9)))
                            ItemPoolRemoveItemType(udg_dx_wpc3[GetConvertedPlayerId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))], LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB0497EE9 + (ydul_a)))
                            RemoveItem(LoadItemHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xD14F34A9))
                            SaveItemHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xD14F34A9, nil)
                        else
                        end
                    end
                end
                ydul_a = ydul_a + 1
            end
            ydul_a = 0
            while true do
                if ydul_a > 2 then
                    break
                end
                SaveInteger(YDHT, ((GetHandleId((LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))))), (((udg_UI_3x1[ydul_a]))), (LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB0497EE9 + (ydul_a))))
                ydul_a = ydul_a + 1
            end
        else
            if ((LoadBoolean(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xC0E83A0E) == true)) then
                SaveBoolean(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0xB990C14A, true)
                if (((EXExecuteScript("(require'jass.slk').unit[" .. I2S(GetUnitTypeId(udg_WJYX[GetConvertedPlayerId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))])) .. "].Primary")) == "AGI")) then
                    SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x105781FA, 7)
                else
                    SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x105781FA, 6)
                end
                SaveGroupHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x7B2D08E8, CreateGroup())
                ydul_a = 0
                while true do
                    if ydul_a > LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x105781FA) then
                        break
                    end
                    SaveUnitHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x911D5DC2 + (ydul_a), CreateUnit(Player(PLAYER_NEUTRAL_PASSIVE), (0x65303030), 0, 0, 0))
                    GroupAddUnitSimple(LoadUnitHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x911D5DC2 + (ydul_a)), LoadGroupHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x7B2D08E8))
                    SaveInteger(YDHT, GetHandleId(LoadUnitHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x911D5DC2 + (ydul_a))), 0xE60C2E58, (ydul_a + 1))
                    ydul_a = ydul_a + 1
                end
                ydul_a = 0
                while true do
                    if ydul_a > LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x105781FA) then
                        break
                    end
                    SaveUnitHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xFF5230E0, GroupPickRandomUnit(LoadGroupHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x7B2D08E8)))
                    GroupRemoveUnit(LoadGroupHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x7B2D08E8), LoadUnitHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xFF5230E0))
                    SaveInteger(YDHT, ydul_a, 0x8DFA4095, LoadInteger(YDHT, GetHandleId(LoadUnitHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xFF5230E0)), 0xE60C2E58))
                    SaveUnitHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xFF5230E0, nil)
                    ydul_a = ydul_a + 1
                end
                ydul_a = 0
                while true do
                    if ydul_a > LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x105781FA) then
                        break
                    end
                    RemoveSavedInteger(YDHT, GetHandleId(LoadUnitHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x911D5DC2 + (ydul_a))), 0xE60C2E58)
                    RemoveUnit(LoadUnitHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x911D5DC2 + (ydul_a)))
                    ydul_a = ydul_a + 1
                end
                DestroyGroup(LoadGroupHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x7B2D08E8))
                if (((EXExecuteScript("(require'jass.slk').unit[" .. I2S(GetUnitTypeId(udg_WJYX[GetConvertedPlayerId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))])) .. "].Primary")) == "STR")) then
                    ydul_a = 0
                    while true do
                        if ydul_a > 2 then
                            break
                        end
                        SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xF374F3BD + (ydul_a), udg_JX_STR[LoadInteger(YDHT, ydul_a, 0x8DFA4095)])
                        ydul_a = ydul_a + 1
                    end
                else
                    if (((EXExecuteScript("(require'jass.slk').unit[" .. I2S(GetUnitTypeId(udg_WJYX[GetConvertedPlayerId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))])) .. "].Primary")) == "AGI")) then
                        ydul_a = 0
                        while true do
                            if ydul_a > 2 then
                                break
                            end
                            SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xF374F3BD + (ydul_a), udg_JX_AGI[LoadInteger(YDHT, ydul_a, 0x8DFA4095)])
                            ydul_a = ydul_a + 1
                        end
                    else
                        if (((EXExecuteScript("(require'jass.slk').unit[" .. I2S(GetUnitTypeId(udg_WJYX[GetConvertedPlayerId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))])) .. "].Primary")) == "INT")) then
                            ydul_a = 0
                            while true do
                                if ydul_a > 2 then
                                    break
                                end
                                SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xF374F3BD + (ydul_a), udg_JX_INT[LoadInteger(YDHT, ydul_a, 0x8DFA4095)])
                                ydul_a = ydul_a + 1
                            end
                        else
                        end
                    end
                end
                ydul_a = 0
                while true do
                    if ydul_a > 2 then
                        break
                    end
                    SaveInteger(YDHT, ((GetHandleId((LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))))), (((udg_UI_3x1[ydul_a]))), (LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xF374F3BD + (ydul_a))))
                    ydul_a = ydul_a + 1
                end
            else
                if ((LoadBoolean(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x471AD3BB) == true)) then
                    SaveBoolean(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x6D32013B, true)
                    SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x105781FA, 6)
                    SaveGroupHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x7B2D08E8, CreateGroup())
                    ydul_a = 0
                    while true do
                        if ydul_a > LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x105781FA) then
                            break
                        end
                        SaveUnitHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x911D5DC2 + (ydul_a), CreateUnit(Player(PLAYER_NEUTRAL_PASSIVE), (0x65303030), 0, 0, 0))
                        GroupAddUnitSimple(LoadUnitHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x911D5DC2 + (ydul_a)), LoadGroupHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x7B2D08E8))
                        SaveInteger(YDHT, GetHandleId(LoadUnitHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x911D5DC2 + (ydul_a))), 0xE60C2E58, (ydul_a + 1))
                        ydul_a = ydul_a + 1
                    end
                    ydul_a = 0
                    while true do
                        if ydul_a > LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x105781FA) then
                            break
                        end
                        SaveUnitHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xFF5230E0, GroupPickRandomUnit(LoadGroupHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x7B2D08E8)))
                        GroupRemoveUnit(LoadGroupHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x7B2D08E8), LoadUnitHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xFF5230E0))
                        SaveInteger(YDHT, ydul_a, 0x8DFA4095, LoadInteger(YDHT, GetHandleId(LoadUnitHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xFF5230E0)), 0xE60C2E58))
                        SaveUnitHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xFF5230E0, nil)
                        ydul_a = ydul_a + 1
                    end
                    ydul_a = 0
                    while true do
                        if ydul_a > LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x105781FA) then
                            break
                        end
                        RemoveSavedInteger(YDHT, GetHandleId(LoadUnitHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x911D5DC2 + (ydul_a))), 0xE60C2E58)
                        RemoveUnit(LoadUnitHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x911D5DC2 + (ydul_a)))
                        ydul_a = ydul_a + 1
                    end
                    DestroyGroup(LoadGroupHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x7B2D08E8))
                    if (((EXExecuteScript("(require'jass.slk').unit[" .. I2S(GetUnitTypeId(udg_WJYX[GetConvertedPlayerId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))])) .. "].Primary")) == "STR")) then
                        ydul_a = 0
                        while true do
                            if ydul_a > 2 then
                                break
                            end
                            SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xF374F3BD + (ydul_a), udg_jn1_l[LoadInteger(YDHT, ydul_a, 0x8DFA4095)])
                            ydul_a = ydul_a + 1
                        end
                    else
                        if (((EXExecuteScript("(require'jass.slk').unit[" .. I2S(GetUnitTypeId(udg_WJYX[GetConvertedPlayerId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))])) .. "].Primary")) == "AGI")) then
                            ydul_a = 0
                            while true do
                                if ydul_a > 2 then
                                    break
                                end
                                SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xF374F3BD + (ydul_a), udg_jn2_l[LoadInteger(YDHT, ydul_a, 0x8DFA4095)])
                                ydul_a = ydul_a + 1
                            end
                        else
                            if (((EXExecuteScript("(require'jass.slk').unit[" .. I2S(GetUnitTypeId(udg_WJYX[GetConvertedPlayerId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))])) .. "].Primary")) == "INT")) then
                                ydul_a = 0
                                while true do
                                    if ydul_a > 2 then
                                        break
                                    end
                                    SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xF374F3BD + (ydul_a), udg_jn3_l[LoadInteger(YDHT, ydul_a, 0x8DFA4095)])
                                    ydul_a = ydul_a + 1
                                end
                            else
                            end
                        end
                    end
                    ydul_a = 0
                    while true do
                        if ydul_a > 2 then
                            break
                        end
                        SaveInteger(YDHT, ((GetHandleId((LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))))), (((udg_UI_3x1[ydul_a]))), (LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xF374F3BD + (ydul_a))))
                        ydul_a = ydul_a + 1
                    end
                else
                    if ((LoadBoolean(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x312C4181) == true)) then
                        if (((EXExecuteScript("(require'jass.slk').unit[" .. I2S(GetUnitTypeId(udg_WJYX[GetConvertedPlayerId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))])) .. "].Primary")) == "STR")) then
                            SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x6D77F75F, 1)
                        else
                            if (((EXExecuteScript("(require'jass.slk').unit[" .. I2S(GetUnitTypeId(udg_WJYX[GetConvertedPlayerId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))])) .. "].Primary")) == "AGI")) then
                                SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x6D77F75F, 2)
                            else
                                if (((EXExecuteScript("(require'jass.slk').unit[" .. I2S(GetUnitTypeId(udg_WJYX[GetConvertedPlayerId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))])) .. "].Primary")) == "INT")) then
                                    SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x6D77F75F, 3)
                                else
                                end
                            end
                        end
                        ydul_a = 0
                        while true do
                            if ydul_a > 2 then
                                break
                            end
                            SaveItemHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xD14F34A9, PlaceRandomItem(udg_TFJN[LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x6D77F75F)], 0, 0))
                            SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB0497EE9 + (ydul_a), GetItemTypeId(LoadItemHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xD14F34A9)))
                            ItemPoolRemoveItemType(udg_TFJN[LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x6D77F75F)], LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB0497EE9 + (ydul_a)))
                            RemoveItem(LoadItemHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xD14F34A9))
                            SaveItemHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xD14F34A9, nil)
                            ydul_a = ydul_a + 1
                        end
                    else
                        ydul_a = 0
                        while true do
                            if ydul_a > 2 then
                                break
                            end
                            SaveItemHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xD14F34A9, PlaceRandomItem(udg_diyu_wpc[GetConvertedPlayerId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))], 0, 0))
                            SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB0497EE9 + (ydul_a), GetItemTypeId(LoadItemHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xD14F34A9)))
                            ItemPoolRemoveItemType(udg_diyu_wpc[GetConvertedPlayerId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))], LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB0497EE9 + (ydul_a)))
                            RemoveItem(LoadItemHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xD14F34A9))
                            SaveItemHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xD14F34A9, nil)
                            ydul_a = ydul_a + 1
                        end
                        ydul_a = 0
                        while true do
                            if ydul_a > 2 then
                                break
                            end
                            ItemPoolAddItemType(udg_diyu_wpc[GetConvertedPlayerId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))], LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB0497EE9 + (ydul_a)), (I2R(S2I(EXExecuteScript("(require'jass.slk').item[" .. I2S(LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB0497EE9 + (ydul_a))) .. "].HP"))) / 100.00))
                            ydul_a = ydul_a + 1
                        end
                    end
                    ydul_a = 0
                    while true do
                        if ydul_a > 2 then
                            break
                        end
                        SaveInteger(YDHT, ((GetHandleId((LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))))), (((udg_UI_3x1[ydul_a]))), (LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB0497EE9 + (ydul_a))))
                        ydul_a = ydul_a + 1
                    end
                end
            end
        end
        if (((LoadBoolean(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xC0E83A0E) == true) or (LoadBoolean(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x471AD3BB) == true))) then
            ydl_timer = CreateTimer()
            SavePlayerHandle(YDLOC, GetHandleId(ydl_timer), 0x48656946, LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))
            SaveInteger(YDLOC, GetHandleId(ydl_timer), 0xF374F3BD + (0), LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xF374F3BD + (0)))
            SaveInteger(YDLOC, GetHandleId(ydl_timer), 0xF374F3BD + (1), LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xF374F3BD + (1)))
            SaveInteger(YDLOC, GetHandleId(ydl_timer), 0xF374F3BD + (2), LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xF374F3BD + (2)))
            SaveReal(YDLOC, GetHandleId(ydl_timer), 0xB259B269, 0.00)
            TimerStart(ydl_timer, 0.01, true, Trig_ui_3x1Func002Func004Func002T)
        else
            ydl_timer = CreateTimer()
            SavePlayerHandle(YDLOC, GetHandleId(ydl_timer), 0x48656946, LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))
            SaveInteger(YDLOC, GetHandleId(ydl_timer), 0xB0497EE9 + (0), LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB0497EE9 + (0)))
            SaveInteger(YDLOC, GetHandleId(ydl_timer), 0xB0497EE9 + (1), LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB0497EE9 + (1)))
            SaveInteger(YDLOC, GetHandleId(ydl_timer), 0xB0497EE9 + (2), LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB0497EE9 + (2)))
            SaveReal(YDLOC, GetHandleId(ydl_timer), 0xB259B269, 0.00)
            TimerStart(ydl_timer, 0.01, true, Trig_ui_3x1Func002Func004Func003T)
        end
    else
        DisplayTextToPlayer(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946), 0, 0, "[系统]：过多奖励没有领取，请先领取上一阶段属性奖励。")
    end
    FlushChildHashtable(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step)
    ydl_timer = nil
end

function InitTrig_ui_3x1()
    gg_trg_ui_3x1 = CreateTrigger()
    TriggerAddAction(gg_trg_ui_3x1, Trig_ui_3x1Actions)
end

function Trig_UI_XSFB_____________uFunc001Func019T()
    local ydul_a = nil
    SaveReal(YDLOC, GetHandleId(GetExpiredTimer()), 0xB259B269, (LoadReal(YDLOC, GetHandleId(GetExpiredTimer()), 0xB259B269) + 0.001))
    DzFrameSetAnimateOffset(udg_ui_tfhgs[2], LoadReal(YDLOC, GetHandleId(GetExpiredTimer()), 0xB259B269))
    SaveStr(YDLOC, GetHandleId(GetExpiredTimer()), 0x12BBBFB9 + (0), ("击败进攻的十万天兵 x 50000黄金|n"))
    SaveStr(YDLOC, GetHandleId(GetExpiredTimer()), 0x12BBBFB9 + (1), ("击败哪吒 x A级装备|n"))
    SaveStr(YDLOC, GetHandleId(GetExpiredTimer()), 0x12BBBFB9 + (2), ("击败杨戬 x S级装备|n"))
    SaveStr(YDLOC, GetHandleId(GetExpiredTimer()), 0x12BBBFB9 + (3), ("击败托塔天王 x 杀敌数+2500|n"))
    SaveStr(YDLOC, GetHandleId(GetExpiredTimer()), 0x12BBBFB9 + (4), ("击败太上老君 x SSS级装备|n"))
    ydul_a = 0
    while true do
        if ydul_a > 4 then
            break
        end
        if (((LoadBoolean(YDHT, ((GetHandleId((Player(PLAYER_NEUTRAL_AGGRESSIVE))))), (((YDWES2Id(((("dnt" .. I2S((ydul_a + 1))) .. "")))))))) == true)) then
            SaveStr(YDLOC, GetHandleId(GetExpiredTimer()), 0x12BBBFB9 + (ydul_a), YDWEGetPlayerColorString(Player(2), LoadStr(YDLOC, GetHandleId(GetExpiredTimer()), 0x12BBBFB9 + (ydul_a))))
        else
            SaveStr(YDLOC, GetHandleId(GetExpiredTimer()), 0x12BBBFB9 + (ydul_a), YDWEGetPlayerColorString(Player(8), LoadStr(YDLOC, GetHandleId(GetExpiredTimer()), 0x12BBBFB9 + (ydul_a))))
        end
        ydul_a = ydul_a + 1
    end
    SaveStr(YDLOC, GetHandleId(GetExpiredTimer()), 0x12BBBFB9, ((LoadStr(YDLOC, GetHandleId(GetExpiredTimer()), 0x12BBBFB9 + (0))) .. (LoadStr(YDLOC, GetHandleId(GetExpiredTimer()), 0x12BBBFB9 + (1))) .. ((LoadStr(YDLOC, GetHandleId(GetExpiredTimer()), 0x12BBBFB9 + (2)) .. (LoadStr(YDLOC, GetHandleId(GetExpiredTimer()), 0x12BBBFB9 + (3)) .. LoadStr(YDLOC, GetHandleId(GetExpiredTimer()), 0x12BBBFB9 + (4)))))))
    DzFrameSetText(udg_ui_tfhgs[4], LoadStr(YDLOC, GetHandleId(GetExpiredTimer()), 0x12BBBFB9))
    SaveStr(YDLOC, GetHandleId(GetExpiredTimer()), 0x12BBBFB9, "")
    if ((LoadReal(YDLOC, GetHandleId(GetExpiredTimer()), 0xB259B269) == 1.00)) then
        DzFrameShow(udg_ui_tfhgs[1], false)
        FlushChildHashtable(YDLOC, GetHandleId(GetExpiredTimer()))
        DestroyTimer(GetExpiredTimer())
    else
    end
end

function Trig_UI_XSFB_____________uActions()
    local ydl_timer = nil
    local ydl_localvar_step = LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xCFDE6C76)
    ydl_localvar_step = ydl_localvar_step + 3
    SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xCFDE6C76, ydl_localvar_step)
    SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xECE825E7, ydl_localvar_step)
    udg_ui_tfhgs[1] = DzCreateFrameByTagName("SPRITE", "name", DzGetGameUI(), "template", 0)
    DzFrameSetModel(udg_ui_tfhgs[1], "UI_CS (23).mdx", 0, 0)
    DzFrameSetSize(udg_ui_tfhgs[1], 0.1, 0.025)
    DzFrameSetPoint(udg_ui_tfhgs[1], 7, DzGetGameUI(), 7, -0.25, 0.5)
    DzFrameShow(udg_ui_tfhgs[1], true)
    DzFrameSetModel(udg_ui_tfhgs[1], "UI_CS (5).mdx", 0, 0)
    DzFrameSetAnimate(udg_ui_tfhgs[1], 1, true)
    DzFrameSetAnimateOffset(udg_ui_tfhgs[1], 1.00)
    udg_ui_tfhgs[2] = DzCreateFrameByTagName("SPRITE", "name", udg_ui_tfhgs[1], "template", 0)
    DzFrameSetModel(udg_ui_tfhgs[2], "UI_CS (7).mdx", 0, 0)
    DzFrameSetSize(udg_ui_tfhgs[2], 0.1, 0.025)
    DzFrameSetPoint(udg_ui_tfhgs[2], 5, udg_ui_tfhgs[1], 5, 0.00, 0.00)
    DzFrameSetAnimate(udg_ui_tfhgs[2], 0, false)
    DzFrameSetAnimateOffset(udg_ui_tfhgs[2], 0.00)
    udg_ui_tfhgs[5] = DzCreateFrameByTagName("TEXT", "name", udg_ui_tfhgs[1], "template", 0)
    DzFrameSetSize(udg_ui_tfhgs[5], 0.25, 0.02)
    DzFrameSetPoint(udg_ui_tfhgs[5], 7, udg_ui_tfhgs[1], 1, 0.20, -0.01)
    DzFrameSetText(udg_ui_tfhgs[5], (((YDWEGetPlayerColorString(Player(4), "[保卫花果山]团队副本限时挑战,按下F2或者死亡即为退出挑战") .. "")) .. ("") .. ("")))
    DzFrameSetFont(udg_ui_tfhgs[5], "war3mapImported\\text.ttf", 0.012, 0)
    DzFrameSetTextAlignment(udg_ui_tfhgs[5], -10)
    udg_ui_tfhgs[4] = DzCreateFrameByTagName("TEXT", "name", udg_ui_tfhgs[1], "template", 0)
    DzFrameSetSize(udg_ui_tfhgs[4], 0.16, 0.15)
    DzFrameSetPoint(udg_ui_tfhgs[4], 2, udg_ui_tfhgs[2], 7, 0.40, 0.04)
    DzFrameSetFont(udg_ui_tfhgs[4], "war3mapImported\\text.ttf", 0.009, 0)
    DzFrameSetTextAlignment(udg_ui_tfhgs[4], -10)
    ydl_timer = CreateTimer()
    SaveReal(YDLOC, GetHandleId(ydl_timer), 0xB259B269, 0.00)
    SaveStr(YDLOC, GetHandleId(ydl_timer), 0x12BBBFB9, LoadStr(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x12BBBFB9))
    TimerStart(ydl_timer, 0.30, true, Trig_UI_XSFB_____________uFunc001Func019T)
    FlushChildHashtable(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step)
    ydl_timer = nil
end

function InitTrig_UI_XSFB_____________u()
    gg_trg_UI_XSFB_____________u = CreateTrigger()
    DisableTrigger(gg_trg_UI_XSFB_____________u)
    TriggerAddAction(gg_trg_UI_XSFB_____________u, Trig_UI_XSFB_____________uActions)
end

function Trig_ui_oldFunc008Func006Func006Func005FT()
    DzFrameSetTexture(udg_UI_MB[(LoadInteger(YDHT, ((DzGetTriggerUIEventFrame())), 0x6B954785) + 34)], (("war3mapImported\\lFF (") .. (I2S(LoadInteger(YDHT, ((DzGetTriggerUIEventFrame())), 0x6B954785))) .. (").tga")), 0)
end

function Trig_ui_oldFunc008Func006Func006Func006FT()
    DzSyncData("yxqd", ("TAB" .. I2S(LoadInteger(YDHT, ((DzGetTriggerUIEventFrame())), 0x6B954785))))
end

function Trig_ui_oldFunc008Func006Func006Func007FT()
    DzFrameSetTexture(udg_UI_MB[(LoadInteger(YDHT, ((DzGetTriggerUIEventFrame())), 0x6B954785) + 34)], (("war3mapImported\\FFF (") .. (I2S(LoadInteger(YDHT, ((DzGetTriggerUIEventFrame())), 0x6B954785))) .. (").tga")), 0)
end

function Trig_ui_oldFunc008Func007Func012FT()
    if ((LoadBoolean(YDHT, GetHandleId(DzGetTriggerUIEventPlayer()), 0xF5D496B8) ~= true)) then
        DzSyncData("yxqd", ("sf1"))
        DzFrameSetTexture(udg_UI_MB[44], "war3mapImported\\zidongshifa1.tga", 0)
    else
        DzSyncData("yxqd", ("sf2"))
        DzFrameSetTexture(udg_UI_MB[44], "war3mapImported\\zidongshifa2.tga", 0)
    end
end

function Trig_ui_oldFunc008Func008Func012FT()
    if ((LoadBoolean(YDHT, GetHandleId(DzGetTriggerUIEventPlayer()), 0x75A6BFC4) ~= true)) then
        DzSyncData("yxqd", ("sf3"))
        DzFrameSetTexture(udg_UI_SFMB[1], "war3mapImported\\zidongshifa2.tga", 0)
    else
        DzSyncData("yxqd", ("sf4"))
        DzFrameSetTexture(udg_UI_SFMB[1], "war3mapImported\\zidongshifa1.tga", 0)
    end
end

function Trig_ui_oldFunc016Func001Func027Func007Func002FT()
    DzFrameShow(udg_UI_xsxz[0], false)
    DzFrameShow(udg_UI_xsxz[1], false)
    DzFrameShow(udg_UI_xsxz[2], false)
    DzFrameShow(udg_UI_xsxz[4], false)
    DzSyncData("yxqd", ("xd" .. I2S(((DzGetTriggerUIEventFrame())))))
end

function Trig_ui_oldFunc016Func001Func027Func007Func003FT()
    if ((LoadInteger(YDHT, ((DzGetTriggerUIEventFrame())), 0x6B954785) == 0)) then
        DzFrameSetTexture(udg_UI_xsxz[2], "war3mapImported\\[UI][BW]buchongwang2.tga", 0)
    else
        DzFrameSetTexture(udg_UI_xsxz[4], "war3mapImported\\[UI][BW]buchongwang2.tga", 0)
    end
end

function Trig_ui_oldFunc016Func001Func027Func007Func004FT()
    if ((LoadInteger(YDHT, ((DzGetTriggerUIEventFrame())), 0x6B954785) == 0)) then
        DzFrameSetTexture(udg_UI_xsxz[2], "[UI][BW]buchongwang.blp", 0)
    else
        DzFrameSetTexture(udg_UI_xsxz[4], "[UI][BW]buchongwang.blp", 0)
    end
end

function Trig_ui_oldFunc017Func013Func004Func005FT()
    DzSyncData("yxqd", ("wx" .. I2S(((DzGetTriggerUIEventFrame())))))
end

function Trig_ui_oldFunc017Func013Func004Func006FT()
    local ydul_a = nil
    DzFrameShow(udg_UI_wpxs[0], true)
    DzFrameShow(udg_UI_wpxs[5], false)
    ydul_a = 0
    while true do
        if ydul_a > 5 then
            break
        end
        DzFrameClearAllPoints(udg_UI_wpxs[ydul_a])
        ydul_a = ydul_a + 1
    end
    DzFrameSetSize(udg_UI_wpxs[0], 0.25, 0.25)
    DzFrameSetSize(udg_UI_wpxs[2], 0.23, 0.02)
    DzFrameSetSize(udg_UI_wpxs[4], 0.23, 0.06)
    DzFrameSetSize(udg_UI_wpxs[3], 0.23, 0.20)
    DzFrameSetPoint(udg_UI_wpxs[0], 8, DzGetTriggerUIEventFrame(), 0, -0.03, -0.02)
    DzFrameSetPoint(udg_UI_wpxs[1], 0, udg_UI_wpxs[0], 0, 0.007, -0.02)
    DzFrameSetPoint(udg_UI_wpxs[2], 3, udg_UI_wpxs[1], 5, 0.007, 0.00)
    DzFrameSetPoint(udg_UI_wpxs[3], 0, udg_UI_wpxs[1], 6, 0.00, -0.02)
    DzFrameSetPoint(udg_UI_wpxs[4], 6, udg_UI_wpxs[0], 6, 0.007, 0.01)
    DzFrameSetTexture(udg_UI_wpxs[1], (EXExecuteScript("(require'jass.slk').item[" .. I2S((LoadInteger(YDHT, StringHash(("wuxing")), StringHash((((I2S(LoadInteger(YDHT, GetHandleId(DzGetTriggerUIEventPlayer()), 0x93DEBCFA))) .. ("y") .. (I2S(LoadInteger(YDHT, ((DzGetTriggerUIEventFrame())), 0x6B954785))))))))) .. "].Art")), 0)
    DzFrameSetText(udg_UI_wpxs[2], ((EXExecuteScript("(require'jass.slk').item[" .. I2S((LoadInteger(YDHT, StringHash(("wuxing")), StringHash((((I2S(LoadInteger(YDHT, GetHandleId(DzGetTriggerUIEventPlayer()), 0x93DEBCFA))) .. ("y") .. (I2S(LoadInteger(YDHT, ((DzGetTriggerUIEventFrame())), 0x6B954785))))))))) .. "].Name")) .. YDWEGetPlayerColorString(Player(2), ("激活需要消耗符印：" .. ((I2S(S2I(EXExecuteScript("(require'jass.slk').item[" .. I2S((LoadInteger(YDHT, StringHash(("wuxing")), StringHash((((I2S(LoadInteger(YDHT, GetHandleId(DzGetTriggerUIEventPlayer()), 0x93DEBCFA))) .. ("y") .. (I2S(LoadInteger(YDHT, ((DzGetTriggerUIEventFrame())), 0x6B954785))))))))) .. "].oldLevel")))) .. ("（") .. (("拥有" .. (I2S(LoadInteger(YDHT, GetHandleId(DzGetTriggerUIEventPlayer()), 0xE257723F)) .. "）"))))))))
    DzFrameSetText(udg_UI_wpxs[3], (EXExecuteScript("(require'jass.slk').item[" .. I2S((LoadInteger(YDHT, StringHash(("wuxing")), StringHash((((I2S(LoadInteger(YDHT, GetHandleId(DzGetTriggerUIEventPlayer()), 0x93DEBCFA))) .. ("y") .. (I2S(LoadInteger(YDHT, ((DzGetTriggerUIEventFrame())), 0x6B954785))))))))) .. "].Ubertip")))
    DzFrameSetPoint(udg_GAOLIANG_UI, 4, DzGetTriggerUIEventFrame(), 4, 0.00, 0.00)
    DzFrameShow(udg_GAOLIANG_UI, true)
end

function Trig_ui_oldFunc017Func013Func004Func007FT()
    DzFrameShow(udg_GAOLIANG_UI, false)
    DzFrameShow(udg_UI_wpxs[0], false)
end

function Trig_ui_oldFunc018Func005Func001Func006FT()
    local ydul_a = nil
    DzFrameShow(udg_UI_wpxs[0], true)
    ydul_a = 0
    while true do
        if ydul_a > 5 then
            break
        end
        DzFrameClearAllPoints(udg_UI_wpxs[ydul_a])
        ydul_a = ydul_a + 1
    end
    DzFrameSetSize(udg_UI_wpxs[0], 0.25, 0.25)
    DzFrameSetSize(udg_UI_wpxs[2], 0.20, 0.02)
    DzFrameSetSize(udg_UI_wpxs[4], 0.20, 0.03)
    DzFrameSetSize(udg_UI_wpxs[3], 0.15, 0.20)
    DzFrameSetPoint(udg_UI_wpxs[0], 6, DzGetTriggerUIEventFrame(), 5, -0.01, -0.02)
    DzFrameSetPoint(udg_UI_wpxs[1], 0, udg_UI_wpxs[0], 0, 0.007, -0.02)
    DzFrameSetPoint(udg_UI_wpxs[2], 3, udg_UI_wpxs[1], 5, 0.007, 0.00)
    DzFrameSetPoint(udg_UI_wpxs[3], 0, udg_UI_wpxs[1], 6, 0.00, -0.02)
    DzFrameSetPoint(udg_UI_wpxs[4], 0, udg_UI_wpxs[2], 6, 0.00, 0.00)
    if ((((LoadInteger(YDHT, ((GetHandleId((DzGetTriggerUIEventPlayer())))), (((udg_UI_9GG3[LoadInteger(YDHT, ((DzGetTriggerUIEventFrame())), 0x6B954785)])))))) > 0)) then
        DzFrameSetTexture(udg_UI_wpxs[1], (EXExecuteScript("(require'jass.slk').item[" .. I2S((LoadInteger(YDHT, ((GetHandleId((DzGetTriggerUIEventPlayer())))), (((udg_UI_9GG3[LoadInteger(YDHT, ((DzGetTriggerUIEventFrame())), 0x6B954785)])))))) .. "].Art")), 0)
        DzFrameSetText(udg_UI_wpxs[3], (EXExecuteScript("(require'jass.slk').item[" .. I2S((LoadInteger(YDHT, ((GetHandleId((DzGetTriggerUIEventPlayer())))), (((udg_UI_9GG3[LoadInteger(YDHT, ((DzGetTriggerUIEventFrame())), 0x6B954785)])))))) .. "].Ubertip")))
        DzFrameSetText(udg_UI_wpxs[2], (EXExecuteScript("(require'jass.slk').item[" .. I2S((LoadInteger(YDHT, ((GetHandleId((DzGetTriggerUIEventPlayer())))), (((udg_UI_9GG3[LoadInteger(YDHT, ((DzGetTriggerUIEventFrame())), 0x6B954785)])))))) .. "].Name")))
    else
        DzFrameSetTexture(udg_UI_wpxs[1], "war3mapImported\\[tb][jn]wupinsuo1.blp", 0)
        DzFrameSetText(udg_UI_wpxs[3], "练功房仙术挑战 获取仙术")
        DzFrameSetText(udg_UI_wpxs[2], "需要渡劫之后 才能开启挑战")
    end
end

function Trig_ui_oldFunc018Func005Func001Func007FT()
    DzFrameShow(udg_UI_wpxs[0], false)
end

function Trig_ui_oldFunc018Func006A()
    local ydul_B = nil
    ydul_B = 1
    while true do
        if ydul_B > 9 then
            break
        end
        SaveStr(YDHT, StringHash((GetPlayerName(GetEnumPlayer()))), StringHash((("武魂名字" .. I2S(((udg_UI_9GG3[ydul_B])))))), ("暂无"))
        ydul_B = ydul_B + 1
    end
end

function Trig_ui_oldFunc019Func009FT()
    DzSyncData("yxqd", "hq")
end

function Trig_ui_oldFunc019Func010Func011FT()
    local ydul_a = nil
    DzFrameShow(udg_UI_wpxs[0], true)
    ydul_a = 0
    while true do
        if ydul_a > 5 then
            break
        end
        DzFrameClearAllPoints(udg_UI_wpxs[ydul_a])
        ydul_a = ydul_a + 1
    end
    DzFrameSetSize(udg_UI_wpxs[0], 0.18, 0.30)
    DzFrameSetSize(udg_UI_wpxs[2], 0.15, 0.02)
    DzFrameSetSize(udg_UI_wpxs[4], 0.15, 0.03)
    DzFrameSetSize(udg_UI_wpxs[3], 0.15, 0.18)
    DzFrameSetPoint(udg_UI_wpxs[0], 6, DzGetTriggerUIEventFrame(), 2, 0.00, 0.00)
    DzFrameSetPoint(udg_UI_wpxs[1], 0, udg_UI_wpxs[0], 0, 0.007, -0.02)
    DzFrameSetPoint(udg_UI_wpxs[2], 3, udg_UI_wpxs[1], 5, 0.007, 0.00)
    DzFrameSetPoint(udg_UI_wpxs[3], 0, udg_UI_wpxs[1], 6, 0.00, -0.02)
    DzFrameSetPoint(udg_UI_wpxs[4], 0, udg_UI_wpxs[2], 6, 0.00, 0.00)
    DzFrameSetTexture(udg_UI_wpxs[1], (EXExecuteScript("(require'jass.slk').unit[" .. I2S((LoadInteger(YDHT, ((GetHandleId((DzGetTriggerUIEventPlayer())))), (((DzGetTriggerUIEventFrame())))))) .. "].Art")), 0)
    DzFrameSetText(udg_UI_wpxs[2], (((EXExecuteScript("(require'jass.slk').unit[" .. I2S((LoadInteger(YDHT, ((GetHandleId((DzGetTriggerUIEventPlayer())))), (((DzGetTriggerUIEventFrame())))))) .. "].Name"))) .. (YDWEGetPlayerColorString(Player(0), "|n（点击驱逐）请慎重")) .. ("")))
    SaveStr(YDLOC, 0x774BAD82, 0x9338B1BD, YDWEGetPlayerColorString(Player(4), ("当前门客星级：" .. I2S((LoadInteger(YDHT, ((GetHandleId((DzGetTriggerUIEventPlayer())))), (StringHash(((EXExecuteScript("(require'jass.slk').unit[" .. I2S((LoadInteger(YDHT, ((GetHandleId((DzGetTriggerUIEventPlayer())))), (((DzGetTriggerUIEventFrame())))))) .. "].Name")) .. "JY")))))))))
    SaveStr(YDLOC, 0x774BAD82, 0x329FF8E6, (EXExecuteScript("(require'jass.slk').unit[" .. I2S((LoadInteger(YDHT, ((GetHandleId((DzGetTriggerUIEventPlayer())))), (((DzGetTriggerUIEventFrame())))))) .. "].Ubertip")))
    SaveStr(YDLOC, 0x774BAD82, 0x50E50212, LoadStr((wp), ((LoadInteger(YDHT, ((GetHandleId((DzGetTriggerUIEventPlayer())))), (((DzGetTriggerUIEventFrame())))))), 0))
    SaveStr(YDLOC, 0x774BAD82, 0xD625A765, LoadStr((jn), ((LoadInteger(YDHT, ((GetHandleId((DzGetTriggerUIEventPlayer())))), (((DzGetTriggerUIEventFrame())))))), 6))
    DzFrameSetText(udg_UI_wpxs[3], ((((LoadStr(YDLOC, 0x774BAD82, 0x9338B1BD) .. "|n") .. LoadStr(YDLOC, 0x774BAD82, 0x329FF8E6))) .. (LoadStr(YDLOC, 0x774BAD82, 0x50E50212)) .. (LoadStr(YDLOC, 0x774BAD82, 0xD625A765))))
    DzFrameSetPoint(udg_GAOLIANG_UI, 4, DzGetTriggerUIEventFrame(), 4, 0.00, 0.00)
    DzFrameShow(udg_GAOLIANG_UI, true)
end

function Trig_ui_oldFunc019Func010Func012FT()
    local ydul_a = nil
    DzFrameShow(udg_GAOLIANG_UI, false)
    ydul_a = 0
    while true do
        if ydul_a > 5 then
            break
        end
        DzFrameClearAllPoints(udg_UI_wpxs[ydul_a])
        ydul_a = ydul_a + 1
    end
    DzFrameShow(udg_UI_wpxs[0], false)
end

function Trig_ui_oldFunc019Func010Func013FT()
    DzFrameShow(udg_UI_HQTB[(LoadInteger(YDHT, ((DzGetTriggerUIEventFrame())), 0x6B954785) + 20)], false)
    DzFrameShow(udg_UI_HQTB[(LoadInteger(YDHT, ((DzGetTriggerUIEventFrame())), 0x6B954785) - 20)], false)
    DzFrameShow(udg_UI_HQTB[(LoadInteger(YDHT, ((DzGetTriggerUIEventFrame())), 0x6B954785) - 0)], false)
    DzSyncData("yxqd", ("mk" .. I2S(LoadInteger(YDHT, ((DzGetTriggerUIEventFrame())), 0x6B954785))))
end

function Trig_ui_oldFunc020Func022Func015Func002FT()
    DzFrameShow(udg_UI_3x1[0], false)
    DzFrameShow(udg_UI_3x1[1], false)
    DzFrameShow(udg_UI_3x1[2], false)
    DzFrameShow(LoadInteger(YDHT, GetHandleId(Player(PLAYER_NEUTRAL_AGGRESSIVE)), 0x5445ECAC), false)
    DzSyncData("yxqd", ("3x" .. I2S(((DzGetTriggerUIEventFrame())))))
end

function Trig_ui_oldFunc020Func022Func015Func003FT()
    DzFrameShow(udg_ui_3x1_Highlight, true)
    DzFrameSetPoint(udg_ui_3x1_Highlight, 4, DzGetTriggerUIEventFrame(), 4, 0, 0)
end

function Trig_ui_oldFunc020Func022Func015Func004FT()
    DzFrameShow(udg_ui_3x1_Highlight, false)
end

function Trig_ui_oldFunc021Func021FT()
    local ydul_a = nil
    DzFrameShow(udg_UI_wpxs[0], true)
    ydul_a = 0
    while true do
        if ydul_a > 5 then
            break
        end
        DzFrameClearAllPoints(udg_UI_wpxs[ydul_a])
        ydul_a = ydul_a + 1
    end
    DzFrameSetSize(udg_UI_wpxs[0], 0.25, 0.25)
    DzFrameSetSize(udg_UI_wpxs[2], 0.20, 0.02)
    DzFrameSetSize(udg_UI_wpxs[4], 0.20, 0.03)
    DzFrameSetSize(udg_UI_wpxs[3], 0.15, 0.20)
    DzFrameSetPoint(udg_UI_wpxs[0], 6, DzFrameGetTooltip(), 6, -0.01, -0.02)
    DzFrameSetPoint(udg_UI_wpxs[1], 0, udg_UI_wpxs[0], 0, 0.007, -0.02)
    DzFrameSetPoint(udg_UI_wpxs[2], 3, udg_UI_wpxs[1], 5, 0.007, 0.00)
    DzFrameSetPoint(udg_UI_wpxs[3], 0, udg_UI_wpxs[1], 6, 0.00, -0.02)
    DzFrameSetPoint(udg_UI_wpxs[4], 0, udg_UI_wpxs[2], 6, 0.00, 0.00)
    DzFrameSetTexture(udg_UI_wpxs[1], (("war3mapImported\\jingshi (") .. (I2S(LoadInteger(YDHT, GetHandleId(DzGetTriggerUIEventPlayer()), 0x123EC98D))) .. (").tga")), 0)
    ydul_a = 1
    while true do
        if ydul_a > 6 then
            break
        end
        if ((LoadInteger(YDHT, GetHandleId(DzGetTriggerUIEventPlayer()), 0x7980F1A7) >= ydul_a)) then
            SaveStr(YDLOC, 0xD6FB7C74, 0x2D1FF186 + (ydul_a), YDWEGetPlayerColorString(Player(5), ((EXExecuteScript("(require'jass.slk').item[" .. I2S(udg_wp_cl_BMDJ[ydul_a]) .. "].Ubertip")) .. "|n")))
        else
            SaveStr(YDLOC, 0xD6FB7C74, 0x2D1FF186 + (ydul_a), YDWEGetPlayerColorString(Player(8), ((EXExecuteScript("(require'jass.slk').item[" .. I2S(udg_wp_cl_BMDJ[ydul_a]) .. "].Ubertip")) .. "|n")))
        end
        ydul_a = ydul_a + 1
    end
    DzFrameSetText(udg_UI_wpxs[3], (((YDWEGetPlayerColorString(Player(2), "金币效率：") .. YDWEGetPlayerColorString(Player(2), (I2S(LoadInteger(YDHT, GetHandleId(DzGetTriggerUIEventPlayer()), 0x123EC98D)) .. "%")))) .. ("|n") .. (YDWEGetPlayerColorString(Player(2), (("杀敌效率：") .. (I2S(LoadInteger(YDHT, GetHandleId(DzGetTriggerUIEventPlayer()), 0x123EC98D))) .. ((("%|n") .. (LoadStr(YDLOC, 0xD6FB7C74, 0x2D1FF186 + (1))) .. (((LoadStr(YDLOC, 0xD6FB7C74, 0x2D1FF186 + (2))) .. (LoadStr(YDLOC, 0xD6FB7C74, 0x2D1FF186 + (3))) .. (((LoadStr(YDLOC, 0xD6FB7C74, 0x2D1FF186 + (4))) .. (LoadStr(YDLOC, 0xD6FB7C74, 0x2D1FF186 + (5))) .. (LoadStr(YDLOC, 0xD6FB7C74, 0x2D1FF186 + (6))))))))))))))
    DzFrameSetText(udg_UI_wpxs[2], (YDWEGetPlayerColorString(Player(0), "本命道精 Lv") .. YDWEGetPlayerColorString(Player(0), I2S(LoadInteger(YDHT, GetHandleId(DzGetTriggerUIEventPlayer()), 0x9B72688C)))))
end

function Trig_ui_oldFunc021Func022FT()
    DzFrameShow(udg_UI_wpxs[0], false)
end

function Trig_ui_oldFunc021Func023FT()
    if ((LoadBoolean(YDHT, GetHandleId(DzGetTriggerUIEventPlayer()), 0x8498BB84) == true)) then
        DzSyncData("yxqd", ("dy" .. I2S(LoadInteger(YDHT, GetHandleId(DzGetTriggerUIEventPlayer()), 0x123EC98D))))
    else
    end
end

function Trig_ui_oldFunc021Func024Func013A()
    SaveInteger(YDHT, GetHandleId(GetEnumPlayer()), 0xEED500CF, LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0xF6D214A2 + (0)))
    SaveInteger(YDHT, GetHandleId(GetEnumPlayer()), 0xFCB78772, LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0xF6D214A2 + (1)))
    SaveInteger(YDHT, GetHandleId(GetEnumPlayer()), 0xDF0C831B, LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0xF6D214A2 + (2)))
    SaveInteger(YDHT, GetHandleId(GetEnumPlayer()), 0x57E31F7B, LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0xF6D214A2 + (3)))
    SaveInteger(YDHT, GetHandleId(GetEnumPlayer()), 0x8F7DE16C, LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0x757437F8))
end

function Trig_ui_oldFunc022Func004Func001Func001Func005FT()
    DzSyncData("yxqd", ("zc" .. (I2S((LoadInteger(YDHT, ((GetHandleId((Player(PLAYER_NEUTRAL_AGGRESSIVE))))), (((DzGetTriggerUIEventFrame())))))) .. I2S(((DzGetTriggerUIEventFrame()))))))
end

function Trig_ui_oldFunc022Func004Func001Func001Func006FT()
    DzFrameSetTexture(udg_ui_zcyp[(LoadInteger(YDHT, ((GetHandleId((Player(PLAYER_NEUTRAL_AGGRESSIVE))))), (((DzGetTriggerUIEventFrame())))))], (("war3mapImported\\ui_lzuoce (") .. (I2S((LoadInteger(YDHT, ((GetHandleId((Player(PLAYER_NEUTRAL_AGGRESSIVE))))), (((DzGetTriggerUIEventFrame()))))))) .. (").tga")), 0)
end

function Trig_ui_oldFunc022Func004Func001Func001Func007FT()
    DzFrameSetTexture(udg_ui_zcyp[(LoadInteger(YDHT, ((GetHandleId((Player(PLAYER_NEUTRAL_AGGRESSIVE))))), (((DzGetTriggerUIEventFrame())))))], (("war3mapImported\\ui_zuoce (") .. (I2S((LoadInteger(YDHT, ((GetHandleId((Player(PLAYER_NEUTRAL_AGGRESSIVE))))), (((DzGetTriggerUIEventFrame()))))))) .. (").tga")), 0)
end

function Trig_ui_oldFunc023Func002Func001Func001Func007FT()
    if (((LoadBoolean(YDHT, ((GetHandleId((DzGetTriggerUIEventPlayer())))), (((DzGetTriggerUIEventFrame()))))) ~= true)) then
        DzFrameSetTexture(udg_ui_tszb[(LoadInteger(YDHT, ((GetHandleId((Player(PLAYER_NEUTRAL_AGGRESSIVE))))), (((DzGetTriggerUIEventFrame())))))], "war3mapImported\\[ui][ts2].tga", 0)
    else
    end
end

function Trig_ui_oldFunc023Func002Func001Func001Func008FT()
    if (((LoadBoolean(YDHT, ((GetHandleId((DzGetTriggerUIEventPlayer())))), (((DzGetTriggerUIEventFrame()))))) ~= true)) then
        DzFrameSetTexture(udg_ui_tszb[(LoadInteger(YDHT, ((GetHandleId((Player(PLAYER_NEUTRAL_AGGRESSIVE))))), (((DzGetTriggerUIEventFrame())))))], "war3mapImported\\[ui][ts1].tga", 0)
    else
    end
end

function Trig_ui_oldFunc023Func002Func008A()
    SaveBoolean(YDHT, ((GetHandleId((GetEnumPlayer())))), (((udg_ui_tszb[(12 + 4)]))), (true))
    SaveBoolean(YDHT, ((GetHandleId((GetEnumPlayer())))), (((udg_ui_tszb[(12 + 7)]))), (true))
    SaveBoolean(YDHT, ((GetHandleId((GetEnumPlayer())))), (((udg_ui_tszb[(12 + 9)]))), (true))
    SaveBoolean(YDHT, ((GetHandleId((GetEnumPlayer())))), (((udg_ui_tszb[(12 + 11)]))), (true))
end

function Trig_ui_oldFunc026Func002Func001Func001FT()
    local ydul_a = nil
    if ((udg_WJYX[GetConvertedPlayerId(DzGetTriggerUIEventPlayer())] == LoadUnitHandle(YDHT, GetHandleId(DzGetTriggerUIEventPlayer()), 0xDD032F66)) and ((((DzGetTriggerUIEventFrame())) == ((udg_JN_BUTTON[9]))) or (((DzGetTriggerUIEventFrame())) == ((udg_JN_BUTTON[10]))) or (((DzGetTriggerUIEventFrame())) == ((udg_JN_BUTTON[11]))) or (((DzGetTriggerUIEventFrame())) == ((udg_JN_BUTTON[12]))))) then
        if (((LoadInteger(YDHT, StringHash((I2S(GetConvertedPlayerId(DzGetTriggerUIEventPlayer())))), StringHash(((I2S(((DzGetTriggerUIEventFrame()))) .. "技能kq"))))) == 1)) then
            DzFrameShow(udg_UI_wpxs[0], true)
            DzFrameShow(udg_UI_wpxs[5], false)
            ydul_a = 0
            while true do
                if ydul_a > 5 then
                    break
                end
                DzFrameClearAllPoints(udg_UI_wpxs[ydul_a])
                ydul_a = ydul_a + 1
            end
            DzFrameSetSize(udg_UI_wpxs[0], 0.25, 0.25)
            DzFrameSetSize(udg_UI_wpxs[2], 0.23, 0.02)
            DzFrameSetSize(udg_UI_wpxs[4], 0.23, 0.06)
            DzFrameSetSize(udg_UI_wpxs[3], 0.23, 0.20)
            DzFrameSetPoint(udg_UI_wpxs[0], 6, DzFrameGetTooltip(), 6, -0.01, -0.02)
            DzFrameSetPoint(udg_UI_wpxs[1], 0, udg_UI_wpxs[0], 0, 0.007, -0.02)
            DzFrameSetPoint(udg_UI_wpxs[2], 3, udg_UI_wpxs[1], 5, 0.007, 0.00)
            DzFrameSetPoint(udg_UI_wpxs[3], 0, udg_UI_wpxs[1], 6, 0.00, -0.02)
            DzFrameSetPoint(udg_UI_wpxs[4], 6, udg_UI_wpxs[0], 6, 0.007, 0.01)
            DzFrameSetTexture(udg_UI_wpxs[1], (EXExecuteScript("(require'jass.slk').ability[" .. I2S((LoadInteger(YDHT, ((GetHandleId((DzGetTriggerUIEventPlayer())))), (((LoadInteger(YDHT, ((GetHandleId((DzGetTriggerUIEventPlayer())))), (StringHash(I2S(LoadInteger(YDHT, ((DzGetTriggerUIEventFrame())), 0x6B954785))))))))))) .. "].Art")), 0)
            DzFrameSetText(udg_UI_wpxs[2], ((EXExecuteScript("(require'jass.slk').ability[" .. I2S((LoadInteger(YDHT, ((GetHandleId((DzGetTriggerUIEventPlayer())))), (((LoadInteger(YDHT, ((GetHandleId((DzGetTriggerUIEventPlayer())))), (StringHash(I2S(LoadInteger(YDHT, ((DzGetTriggerUIEventFrame())), 0x6B954785))))))))))) .. "].Name")) .. YDWEGetPlayerColorString(Player(2), ("Lv:" .. I2S((LoadInteger(YDHT, StringHash((I2S(GetConvertedPlayerId(DzGetTriggerUIEventPlayer())))), StringHash((GetAbilityName((LoadInteger(YDHT, ((GetHandleId((DzGetTriggerUIEventPlayer())))), ((LoadInteger(YDHT, ((GetHandleId((DzGetTriggerUIEventPlayer())))), (StringHash(I2S(LoadInteger(YDHT, ((DzGetTriggerUIEventFrame())), 0x6B954785)))))))))))))))))))
            DzFrameSetText(udg_UI_wpxs[3], (LoadStr((jn), ((LoadInteger(YDHT, ((GetHandleId((DzGetTriggerUIEventPlayer())))), (((LoadInteger(YDHT, ((GetHandleId((DzGetTriggerUIEventPlayer())))), (StringHash(I2S(LoadInteger(YDHT, ((DzGetTriggerUIEventFrame())), 0x6B954785))))))))))), 2) .. YDWEGetPlayerColorString(Player(2), "")))
        else
        end
    else
    end
    if ((((DzGetTriggerUIEventFrame())) == ((DzFrameGetCommandBarButton(0, 0))))) then
        if ((udg_WJYX[GetConvertedPlayerId(DzGetTriggerUIEventPlayer())] == LoadUnitHandle(YDHT, GetHandleId(DzGetTriggerUIEventPlayer()), 0xDD032F66))) then
            DzFrameShow(udg_UI_wpxs[0], true)
            DzFrameShow(udg_UI_wpxs[5], false)
            ydul_a = 0
            while true do
                if ydul_a > 5 then
                    break
                end
                DzFrameClearAllPoints(udg_UI_wpxs[ydul_a])
                ydul_a = ydul_a + 1
            end
            DzFrameSetSize(udg_UI_wpxs[0], 0.25, 0.25)
            DzFrameSetSize(udg_UI_wpxs[2], 0.23, 0.02)
            DzFrameSetSize(udg_UI_wpxs[4], 0.23, 0.06)
            DzFrameSetSize(udg_UI_wpxs[3], 0.23, 0.20)
            DzFrameSetPoint(udg_UI_wpxs[0], 6, DzFrameGetTooltip(), 6, -0.01, -0.02)
            DzFrameSetPoint(udg_UI_wpxs[1], 0, udg_UI_wpxs[0], 0, 0.007, -0.02)
            DzFrameSetPoint(udg_UI_wpxs[2], 3, udg_UI_wpxs[1], 5, 0.007, 0.00)
            DzFrameSetPoint(udg_UI_wpxs[3], 0, udg_UI_wpxs[1], 6, 0.00, -0.02)
            DzFrameSetPoint(udg_UI_wpxs[4], 6, udg_UI_wpxs[0], 6, 0.007, 0.01)
            DzFrameSetTexture(udg_UI_wpxs[1], "war3mapImported\\btnxitongtubiao013.blp", 0)
            DzFrameSetText(udg_UI_wpxs[2], ("山海有灵" .. YDWEGetPlayerColorString(Player(0), "(融合道源本精后开启)")))
            ydul_a = 1
            while true do
                if ydul_a > 9 then
                    break
                end
                if (((LoadBoolean(YDHT, ((GetHandleId((DzGetTriggerUIEventPlayer())))), ((udg_LZJZ[ydul_a])))) == true)) then
                    SaveStr(YDLOC, 0x0105DBB4, 0x2D1FF186 + (ydul_a), YDWEGetPlayerColorString(Player(2), ((EXExecuteScript("(require'jass.slk').unit[" .. I2S(udg_LZJZ[ydul_a]) .. "].Ubertip")) .. "|n")))
                else
                    SaveStr(YDLOC, 0x0105DBB4, 0x2D1FF186 + (ydul_a), YDWEGetPlayerColorString(Player(8), ((EXExecuteScript("(require'jass.slk').unit[" .. I2S(udg_LZJZ[ydul_a]) .. "].Ubertip")) .. "|n")))
                end
                ydul_a = ydul_a + 1
            end
            ydul_a = 1
            while true do
                if ydul_a > 9 then
                    break
                end
                SaveStr(YDLOC, 0x0105DBB4, 0x2D1FF186, (LoadStr(YDLOC, 0x0105DBB4, 0x2D1FF186) .. LoadStr(YDLOC, 0x0105DBB4, 0x2D1FF186 + (ydul_a))))
                ydul_a = ydul_a + 1
            end
            DzFrameSetText(udg_UI_wpxs[3], LoadStr(YDLOC, 0x0105DBB4, 0x2D1FF186))
            SaveStr(YDLOC, 0x0105DBB4, 0x2D1FF186, "")
        else
        end
    else
    end
    if ((udg_WJYX[GetConvertedPlayerId(DzGetTriggerUIEventPlayer())] == LoadUnitHandle(YDHT, GetHandleId(DzGetTriggerUIEventPlayer()), 0xDD032F66))) then
        if ((((DzGetTriggerUIEventFrame())) == ((DzFrameGetCommandBarButton(1, 0))))) then
            DzFrameShow(udg_UI_wpxs[0], true)
            DzFrameShow(udg_UI_wpxs[5], false)
            ydul_a = 0
            while true do
                if ydul_a > 5 then
                    break
                end
                DzFrameClearAllPoints(udg_UI_wpxs[ydul_a])
                ydul_a = ydul_a + 1
            end
            DzFrameSetSize(udg_UI_wpxs[0], 0.25, 0.25)
            DzFrameSetSize(udg_UI_wpxs[2], 0.23, 0.02)
            DzFrameSetSize(udg_UI_wpxs[4], 0.23, 0.06)
            DzFrameSetSize(udg_UI_wpxs[3], 0.23, 0.20)
            DzFrameSetPoint(udg_UI_wpxs[0], 6, DzFrameGetTooltip(), 6, -0.01, -0.02)
            DzFrameSetPoint(udg_UI_wpxs[1], 0, udg_UI_wpxs[0], 0, 0.007, -0.02)
            DzFrameSetPoint(udg_UI_wpxs[2], 3, udg_UI_wpxs[1], 5, 0.007, 0.00)
            DzFrameSetPoint(udg_UI_wpxs[3], 0, udg_UI_wpxs[1], 6, 0.00, -0.02)
            DzFrameSetPoint(udg_UI_wpxs[4], 6, udg_UI_wpxs[0], 6, 0.007, 0.01)
            DzFrameSetTexture(udg_UI_wpxs[1], (EXExecuteScript("(require'jass.slk').unit[" .. I2S(GetUnitTypeId(udg_WJYX[GetConvertedPlayerId(DzGetTriggerUIEventPlayer())])) .. "].Art")), 0)
            DzFrameSetText(udg_UI_wpxs[2], ((EXExecuteScript("(require'jass.slk').unit[" .. I2S(GetUnitTypeId(udg_WJYX[GetConvertedPlayerId(DzGetTriggerUIEventPlayer())])) .. "].Name")) .. YDWEGetPlayerColorString(Player(2), ("轮回次数：" .. I2S((LoadInteger(YDHT, ((GetHandleId((DzGetTriggerUIEventPlayer())))), ((udg_dwlx1[GetConvertedPlayerId(DzGetTriggerUIEventPlayer())])))))))))
            if ((LoadInteger(YDHT, GetHandleId(DzGetTriggerUIEventPlayer()), 0xF66DEA03) == 5)) then
                SaveStr(YDLOC, 0x0105DBB4, 0x2D1FF186 + (1), YDWEGetPlayerColorString(Player(2), (EXExecuteScript("(require'jass.slk').unit[" .. I2S(udg_dwlx1[GetConvertedPlayerId(DzGetTriggerUIEventPlayer())]) .. "].Description"))))
            else
                SaveStr(YDLOC, 0x0105DBB4, 0x2D1FF186 + (1), YDWEGetPlayerColorString(Player(8), (EXExecuteScript("(require'jass.slk').unit[" .. I2S(udg_dwlx1[GetConvertedPlayerId(DzGetTriggerUIEventPlayer())]) .. "].Description"))))
            end
            if ((GetUnitAbilityLevelSwapped((0x4C30364C), udg_WJYX[GetConvertedPlayerId(DzGetTriggerUIEventPlayer())]) > 0)) then
                SaveStr(YDLOC, 0x0105DBB4, 0x2D1FF186 + (2), YDWEGetPlayerColorString(Player(2), (EXExecuteScript("(require'jass.slk').unit[" .. I2S(udg_dwlx1[GetConvertedPlayerId(DzGetTriggerUIEventPlayer())]) .. "].Awakentip"))))
            else
                SaveStr(YDLOC, 0x0105DBB4, 0x2D1FF186 + (2), YDWEGetPlayerColorString(Player(8), "取回前世之力后解锁|n需要取回前世之力后才能查看效果"))
            end
            DzFrameSetText(udg_UI_wpxs[3], (((EXExecuteScript("(require'jass.slk').unit[" .. I2S(udg_dwlx1[GetConvertedPlayerId(DzGetTriggerUIEventPlayer())]) .. "].Ubertip"))) .. ((LoadStr(YDLOC, 0x0105DBB4, 0x2D1FF186 + (1)) .. LoadStr(YDLOC, 0x0105DBB4, 0x2D1FF186 + (2)))) .. ("")))
        else
        end
    else
    end
    if ((GetUnitTypeId(LoadUnitHandle(YDHT, GetHandleId(DzGetTriggerUIEventPlayer()), 0xDD032F66)) == (0x6E303034))) then
        if (((((DzGetTriggerUIEventFrame())) == ((udg_JN_BUTTON[5]))))) then
            DzFrameSetTexture(udg_UI_wpxs[1], "war3mapImported\\ui_huajing (5).blp", 0)
            SaveStr(YDLOC, 0x0105DBB4, 0x2D1FF186 + (1), (("|n升级所需经验：") .. (I2S(LoadInteger(YDHT, GetHandleId(DzGetTriggerUIEventPlayer()), 0x76A4D6D9))) .. (("/" .. I2S((10 * (LoadInteger(YDHT, GetHandleId(DzGetTriggerUIEventPlayer()), 0x680D1141) + 1)))))))
            DzFrameSetText(udg_UI_wpxs[2], ("宗门等级：" .. ((I2S(LoadInteger(YDHT, GetHandleId(DzGetTriggerUIEventPlayer()), 0x680D1141))) .. (YDWEGetPlayerColorString(Player(2), LoadStr(YDLOC, 0x0105DBB4, 0x2D1FF186 + (1)))) .. (""))))
            if ((LoadInteger(YDHT, GetHandleId(DzGetTriggerUIEventPlayer()), 0x680D1141) > 9)) then
                DzFrameSetText(udg_UI_wpxs[3], (EXExecuteScript("(require'jass.slk').item[" .. I2S((YDWES2Id(((("f") .. (I2S(LoadInteger(YDHT, GetHandleId(DzGetTriggerUIEventPlayer()), 0x680D1141))) .. ("j")))))) .. "].Ubertip")))
            else
                DzFrameSetText(udg_UI_wpxs[3], (EXExecuteScript("(require'jass.slk').item[" .. I2S((YDWES2Id(((("f0") .. (I2S(LoadInteger(YDHT, GetHandleId(DzGetTriggerUIEventPlayer()), 0x680D1141))) .. ("j")))))) .. "].Ubertip")))
            end
            SaveBoolean(YDLOC, 0x0105DBB4, 0xD9BF4A6A, true)
        else
            if (((((DzGetTriggerUIEventFrame())) == ((udg_JN_BUTTON[6]))) or (((DzGetTriggerUIEventFrame())) == ((udg_JN_BUTTON[7]))) or (((DzGetTriggerUIEventFrame())) == ((udg_JN_BUTTON[8]))))) then
                DzFrameSetTexture(udg_UI_wpxs[1], (("war3mapImported\\szll (") .. (I2S((LoadInteger(YDHT, ((DzGetTriggerUIEventFrame())), 0x6B954785) - 5))) .. (").blp")), 0)
                SaveStr(YDLOC, 0x0105DBB4, 0x2D1FF186 + (1), (("|n当前历练等级：") .. (I2S((LoadInteger(YDHT, ((GetHandleId((DzGetTriggerUIEventPlayer())))), ((udg_szjn[(LoadInteger(YDHT, ((DzGetTriggerUIEventFrame())), 0x6B954785) - 5)])))))) .. ("")))
                DzFrameSetText(udg_UI_wpxs[2], (GetAbilityName(udg_szjn[(LoadInteger(YDHT, ((DzGetTriggerUIEventFrame())), 0x6B954785) - 5)]) .. (("") .. (YDWEGetPlayerColorString(Player(2), LoadStr(YDLOC, 0x0105DBB4, 0x2D1FF186 + (1)))) .. (""))))
                DzFrameSetText(udg_UI_wpxs[3], LoadStr((jn), (udg_szjn[(LoadInteger(YDHT, ((DzGetTriggerUIEventFrame())), 0x6B954785) - 5)]), 2))
                SaveBoolean(YDLOC, 0x0105DBB4, 0xD9BF4A6A, true)
            else
            end
        end
        if (((LoadInteger(YDHT, ((GetHandleId((DzGetTriggerUIEventPlayer())))), (StringHash(("门客" .. I2S(LoadInteger(YDHT, ((DzGetTriggerUIEventFrame())), 0x6B954785))))))) ~= 0) and ((((DzGetTriggerUIEventFrame())) == ((udg_JN_BUTTON[1]))) or (((DzGetTriggerUIEventFrame())) == ((udg_JN_BUTTON[2]))) or (((DzGetTriggerUIEventFrame())) == ((udg_JN_BUTTON[3]))) or (((DzGetTriggerUIEventFrame())) == ((udg_JN_BUTTON[4]))))) then
            SaveInteger(YDLOC, 0x0105DBB4, 0x960ABFE3, StringHash(("门客" .. I2S(LoadInteger(YDHT, ((DzGetTriggerUIEventFrame())), 0x6B954785)))))
            DzFrameSetTexture(udg_UI_wpxs[1], (EXExecuteScript("(require'jass.slk').unit[" .. I2S((LoadInteger(YDHT, ((GetHandleId((DzGetTriggerUIEventPlayer())))), (LoadInteger(YDLOC, 0x0105DBB4, 0x960ABFE3))))) .. "].Art")), 0)
            DzFrameSetText(udg_UI_wpxs[2], (((EXExecuteScript("(require'jass.slk').unit[" .. I2S((LoadInteger(YDHT, ((GetHandleId((DzGetTriggerUIEventPlayer())))), (LoadInteger(YDLOC, 0x0105DBB4, 0x960ABFE3))))) .. "].Name"))) .. ("|n") .. (YDWEGetPlayerColorString(Player(5), ("招募所需威望:" .. ((I2S(LoadInteger(YDHT, GetHandleId(DzGetTriggerUIEventPlayer()), 0xF5B58222))) .. ("/") .. (I2S(S2I(EXExecuteScript("(require'jass.slk').unit[" .. I2S((LoadInteger(YDHT, ((GetHandleId((DzGetTriggerUIEventPlayer())))), (LoadInteger(YDLOC, 0x0105DBB4, 0x960ABFE3))))) .. "].cargoSize"))))))))))
            SaveStr(YDLOC, 0x0105DBB4, 0x50E50212, LoadStr((wp), ((LoadInteger(YDHT, ((GetHandleId((DzGetTriggerUIEventPlayer())))), (LoadInteger(YDLOC, 0x0105DBB4, 0x960ABFE3))))), 0))
            SaveStr(YDLOC, 0x0105DBB4, 0xD625A765, LoadStr((jn), ((LoadInteger(YDHT, ((GetHandleId((DzGetTriggerUIEventPlayer())))), (LoadInteger(YDLOC, 0x0105DBB4, 0x960ABFE3))))), 6))
            DzFrameSetText(udg_UI_wpxs[3], (((EXExecuteScript("(require'jass.slk').unit[" .. I2S((LoadInteger(YDHT, ((GetHandleId((DzGetTriggerUIEventPlayer())))), (LoadInteger(YDLOC, 0x0105DBB4, 0x960ABFE3))))) .. "].Ubertip"))) .. (LoadStr(YDLOC, 0x0105DBB4, 0x50E50212)) .. (LoadStr(YDLOC, 0x0105DBB4, 0xD625A765))))
            SaveBoolean(YDLOC, 0x0105DBB4, 0xD9BF4A6A, true)
        else
            if ((((DzGetTriggerUIEventFrame())) == ((udg_JN_BUTTON[11])))) then
                DzFrameSetTexture(udg_UI_wpxs[1], (EXExecuteScript("(require'jass.slk').ability[" .. I2S((0x73303763)) .. "].Art")), 0)
                DzFrameSetText(udg_UI_wpxs[2], (("[弟子-云游历练]") .. ("") .. ("")))
                DzFrameSetText(udg_UI_wpxs[3], LoadStr((jn), ((0x73303763)), 2))
                SaveBoolean(YDLOC, 0x0105DBB4, 0xD9BF4A6A, true)
            else
                if ((((DzGetTriggerUIEventFrame())) == ((udg_JN_BUTTON[12])))) then
                    DzFrameSetTexture(udg_UI_wpxs[1], (EXExecuteScript("(require'jass.slk').ability[" .. I2S((0x73303863)) .. "].Art")), 0)
                    DzFrameSetText(udg_UI_wpxs[2], (("炼化魂器：所需悟道点") .. (I2S(LoadInteger(YDHT, GetHandleId(DzGetTriggerUIEventPlayer()), 0xF5B58222))) .. (("/" .. I2S((3 + LoadInteger(YDHT, GetHandleId(DzGetTriggerUIEventPlayer()), 0x2D686226)))))))
                    DzFrameSetText(udg_UI_wpxs[3], LoadStr((jn), ((0x73303863)), 2))
                    SaveBoolean(YDLOC, 0x0105DBB4, 0xD9BF4A6A, true)
                else
                    if ((((DzGetTriggerUIEventFrame())) == ((udg_JN_BUTTON[9])))) then
                        DzFrameSetTexture(udg_UI_wpxs[1], (EXExecuteScript("(require'jass.slk').ability[" .. I2S((0x73303563)) .. "].Art")), 0)
                        DzFrameSetText(udg_UI_wpxs[2], (("[招收-门客].（所需门派威望：") .. (I2S(((1) * (LoadInteger(YDHT, GetHandleId(DzGetTriggerUIEventPlayer()), 0xF5B58222))))) .. ((("/") .. (I2S((LoadInteger(YDHT, GetHandleId(DzGetTriggerUIEventPlayer()), 0x680D1141) * 100))) .. (")")))))
                        DzFrameSetText(udg_UI_wpxs[3], LoadStr((jn), ((0x73303563)), 2))
                        SaveBoolean(YDLOC, 0x0105DBB4, 0xD9BF4A6A, true)
                    else
                        if ((((DzGetTriggerUIEventFrame())) == ((udg_JN_BUTTON[10])))) then
                            DzFrameSetTexture(udg_UI_wpxs[1], (EXExecuteScript("(require'jass.slk').ability[" .. I2S((0x73303663)) .. "].Art")), 0)
                            DzFrameSetText(udg_UI_wpxs[2], (("[免费刷新门客].（不消耗门派威望）") .. ("") .. ("")))
                            DzFrameSetText(udg_UI_wpxs[3], LoadStr((jn), ((0x73303663)), 2))
                            SaveBoolean(YDLOC, 0x0105DBB4, 0xD9BF4A6A, true)
                        else
                        end
                    end
                end
            end
        end
        if ((LoadBoolean(YDLOC, 0x0105DBB4, 0xD9BF4A6A) == true)) then
            DzFrameShow(udg_UI_wpxs[0], true)
            DzFrameShow(udg_UI_wpxs[5], false)
            ydul_a = 0
            while true do
                if ydul_a > 5 then
                    break
                end
                DzFrameClearAllPoints(udg_UI_wpxs[ydul_a])
                ydul_a = ydul_a + 1
            end
            DzFrameSetSize(udg_UI_wpxs[0], 0.25, 0.25)
            DzFrameSetSize(udg_UI_wpxs[2], 0.23, 0.02)
            DzFrameSetSize(udg_UI_wpxs[4], 0.23, 0.06)
            DzFrameSetSize(udg_UI_wpxs[3], 0.23, 0.20)
            DzFrameSetPoint(udg_UI_wpxs[0], 6, DzFrameGetTooltip(), 6, -0.01, -0.02)
            DzFrameSetPoint(udg_UI_wpxs[1], 0, udg_UI_wpxs[0], 0, 0.007, -0.02)
            DzFrameSetPoint(udg_UI_wpxs[2], 3, udg_UI_wpxs[1], 5, 0.007, 0.00)
            DzFrameSetPoint(udg_UI_wpxs[3], 0, udg_UI_wpxs[1], 6, 0.00, -0.02)
            SaveBoolean(YDLOC, 0x0105DBB4, 0xD9BF4A6A, false)
        else
        end
    else
    end
    if ((((DzGetTriggerUIEventFrame())) == ((udg_JN_BUTTON[2])))) then
        if ((udg_WJYX[GetConvertedPlayerId(DzGetTriggerUIEventPlayer())] == LoadUnitHandle(YDHT, GetHandleId(DzGetTriggerUIEventPlayer()), 0xDD032F66)) and (GetUnitTypeId(udg_WJYX[GetConvertedPlayerId(DzGetTriggerUIEventPlayer())]) == udg_dwlx2[GetConvertedPlayerId(DzGetTriggerUIEventPlayer())])) then
            DzFrameShow(udg_UI_wpxs[0], true)
            DzFrameShow(udg_UI_wpxs[5], false)
            ydul_a = 0
            while true do
                if ydul_a > 5 then
                    break
                end
                DzFrameClearAllPoints(udg_UI_wpxs[ydul_a])
                ydul_a = ydul_a + 1
            end
            DzFrameSetSize(udg_UI_wpxs[0], 0.25, 0.25)
            DzFrameSetSize(udg_UI_wpxs[2], 0.23, 0.02)
            DzFrameSetSize(udg_UI_wpxs[4], 0.23, 0.06)
            DzFrameSetSize(udg_UI_wpxs[3], 0.23, 0.20)
            DzFrameSetPoint(udg_UI_wpxs[0], 6, DzFrameGetTooltip(), 6, -0.01, -0.02)
            DzFrameSetPoint(udg_UI_wpxs[1], 0, udg_UI_wpxs[0], 0, 0.007, -0.02)
            DzFrameSetPoint(udg_UI_wpxs[2], 3, udg_UI_wpxs[1], 5, 0.007, 0.00)
            DzFrameSetPoint(udg_UI_wpxs[3], 0, udg_UI_wpxs[1], 6, 0.00, -0.02)
            DzFrameSetPoint(udg_UI_wpxs[4], 6, udg_UI_wpxs[0], 6, 0.007, 0.01)
            DzFrameSetTexture(udg_UI_wpxs[1], (EXExecuteScript("(require'jass.slk').item[" .. I2S((LoadInteger(YDHT, ((GetHandleId((DzGetTriggerUIEventPlayer())))), (StringHash(("ms1" .. I2S(((DzGetTriggerUIEventFrame()))))))))) .. "].Art")), 0)
            DzFrameSetText(udg_UI_wpxs[2], ((EXExecuteScript("(require'jass.slk').item[" .. I2S((LoadInteger(YDHT, ((GetHandleId((DzGetTriggerUIEventPlayer())))), (StringHash(("ms1" .. I2S(((udg_JN_BUTTON[2]))))))))) .. "].Name")) .. YDWEGetPlayerColorString(Player(2), "[觉醒前世力量]")))
            if (((LoadBoolean(YDHT, ((GetHandleId((DzGetTriggerUIEventPlayer())))), (StringHash(("qs" .. I2S(((DzGetTriggerUIEventFrame())))))))) ~= true)) then
                SaveStr(YDLOC, 0x0105DBB4, 0x2D1FF186 + (1), YDWEGetPlayerColorString(Player(2), (EXExecuteScript("(require'jass.slk').item[" .. I2S((LoadInteger(YDHT, ((GetHandleId((DzGetTriggerUIEventPlayer())))), (StringHash(("ms1" .. I2S(((DzGetTriggerUIEventFrame()))))))))) .. "].Ubertip"))))
                SaveStr(YDLOC, 0x0105DBB4, 0x2D1FF186 + (3), YDWEGetPlayerColorString(Player(8), (EXExecuteScript("(require'jass.slk').item[" .. I2S((YDWES2Id(((EXExecuteScript("(require'jass.slk').item[" .. I2S((LoadInteger(YDHT, ((GetHandleId((DzGetTriggerUIEventPlayer())))), (StringHash(("ms1" .. I2S(((DzGetTriggerUIEventFrame()))))))))) .. "].cooldownID")))))) .. "].Ubertip"))))
            else
                SaveStr(YDLOC, 0x0105DBB4, 0x2D1FF186 + (1), YDWEGetPlayerColorString(Player(2), (EXExecuteScript("(require'jass.slk').item[" .. I2S((LoadInteger(YDHT, ((GetHandleId((DzGetTriggerUIEventPlayer())))), (StringHash(("ms1" .. I2S(((DzGetTriggerUIEventFrame()))))))))) .. "].Ubertip"))))
                SaveStr(YDLOC, 0x0105DBB4, 0x2D1FF186 + (3), YDWEGetPlayerColorString(Player(2), (EXExecuteScript("(require'jass.slk').item[" .. I2S((YDWES2Id(((EXExecuteScript("(require'jass.slk').item[" .. I2S((LoadInteger(YDHT, ((GetHandleId((DzGetTriggerUIEventPlayer())))), (StringHash(("ms1" .. I2S(((DzGetTriggerUIEventFrame()))))))))) .. "].cooldownID")))))) .. "].Ubertip"))))
            end
            if ((GetUnitAbilityLevelSwapped((0x4C30364C), udg_WJYX[GetConvertedPlayerId(DzGetTriggerUIEventPlayer())]) > 0)) then
                SaveStr(YDLOC, 0x0105DBB4, 0x2D1FF186 + (2), YDWEGetPlayerColorString(Player(2), ("|n|n无垠道境")))
            else
                SaveStr(YDLOC, 0x0105DBB4, 0x2D1FF186 + (2), YDWEGetPlayerColorString(Player(2), ("|n|n无垠道境")))
            end
            DzFrameSetText(udg_UI_wpxs[3], ((LoadStr(YDLOC, 0x0105DBB4, 0x2D1FF186 + (1))) .. (("|n|n" .. LoadStr(YDLOC, 0x0105DBB4, 0x2D1FF186 + (3)))) .. (LoadStr(YDLOC, 0x0105DBB4, 0x2D1FF186 + (2)))))
        else
        end
    else
    end
    if (((LoadUnitHandle(YDHT, ((GetHandleId((DzGetTriggerUIEventPlayer())))), (StringHash("04NPC")))) == LoadUnitHandle(YDHT, GetHandleId(DzGetTriggerUIEventPlayer()), 0xDD032F66))) then
        DzFrameShow(udg_UI_wpxs[0], true)
        DzFrameShow(udg_UI_wpxs[5], false)
        ydul_a = 0
        while true do
            if ydul_a > 5 then
                break
            end
            DzFrameClearAllPoints(udg_UI_wpxs[ydul_a])
            ydul_a = ydul_a + 1
        end
        DzFrameSetSize(udg_UI_wpxs[0], 0.25, 0.25)
        DzFrameSetSize(udg_UI_wpxs[2], 0.23, 0.02)
        DzFrameSetSize(udg_UI_wpxs[4], 0.23, 0.06)
        DzFrameSetSize(udg_UI_wpxs[3], 0.23, 0.20)
        DzFrameSetPoint(udg_UI_wpxs[0], 6, DzFrameGetTooltip(), 6, -0.01, -0.02)
        DzFrameSetPoint(udg_UI_wpxs[1], 0, udg_UI_wpxs[0], 0, 0.007, -0.02)
        DzFrameSetPoint(udg_UI_wpxs[2], 3, udg_UI_wpxs[1], 5, 0.007, 0.00)
        DzFrameSetPoint(udg_UI_wpxs[3], 0, udg_UI_wpxs[1], 6, 0.00, -0.02)
        DzFrameSetPoint(udg_UI_wpxs[4], 6, udg_UI_wpxs[0], 6, 0.007, 0.01)
        DzFrameSetTexture(udg_UI_wpxs[1], (EXExecuteScript("(require'jass.slk').item[" .. I2S((LoadInteger(YDHT, ((GetHandleId((DzGetTriggerUIEventPlayer())))), (((DzGetTriggerUIEventFrame())))))) .. "].Art")), 0)
        if ((S2I(EXExecuteScript("(require'jass.slk').item[" .. I2S((LoadInteger(YDHT, ((GetHandleId((DzGetTriggerUIEventPlayer())))), (((DzGetTriggerUIEventFrame())))))) .. "].level")) == 1)) then
            DzFrameSetText(udg_UI_wpxs[3], (((EXExecuteScript("(require'jass.slk').item[" .. I2S((LoadInteger(YDHT, ((GetHandleId((DzGetTriggerUIEventPlayer())))), (((DzGetTriggerUIEventFrame())))))) .. "].Ubertip"))) .. ("|n") .. (YDWEGetPlayerColorString(Player(2), (("鼠标右键连续购买10次") .. ("|n") .. (("当前解锁几率:" .. (R2SW(((0.20 + (LoadReal(YDHT, ((GetHandleId((DzGetTriggerUIEventPlayer())))), (((LoadInteger(YDHT, ((GetHandleId((DzGetTriggerUIEventPlayer())))), (((DzGetTriggerUIEventFrame())))))))))) * 100.00), 1, 0) .. "%"))))))))
        else
        end
        if ((S2I(EXExecuteScript("(require'jass.slk').item[" .. I2S((LoadInteger(YDHT, ((GetHandleId((DzGetTriggerUIEventPlayer())))), (((DzGetTriggerUIEventFrame())))))) .. "].level")) == 9)) then
            DzFrameSetText(udg_UI_wpxs[3], (((EXExecuteScript("(require'jass.slk').item[" .. I2S((LoadInteger(YDHT, ((GetHandleId((DzGetTriggerUIEventPlayer())))), (((DzGetTriggerUIEventFrame())))))) .. "].Ubertip"))) .. ("|n") .. (YDWEGetPlayerColorString(Player(2), ""))))
        else
        end
        if ((S2I(EXExecuteScript("(require'jass.slk').item[" .. I2S((LoadInteger(YDHT, ((GetHandleId((DzGetTriggerUIEventPlayer())))), (((DzGetTriggerUIEventFrame())))))) .. "].level")) == 10)) then
            DzFrameSetText(udg_UI_wpxs[3], (((EXExecuteScript("(require'jass.slk').item[" .. I2S((LoadInteger(YDHT, ((GetHandleId((DzGetTriggerUIEventPlayer())))), (((DzGetTriggerUIEventFrame())))))) .. "].Ubertip"))) .. ("|n") .. (YDWEGetPlayerColorString(Player(2), (("鼠标右键连续购买10次") .. ("|n") .. (("当前能力等级:" .. (I2S((LoadInteger(YDHT, ((GetHandleId((DzGetTriggerUIEventPlayer())))), (((LoadInteger(YDHT, ((GetHandleId((DzGetTriggerUIEventPlayer())))), (((DzGetTriggerUIEventFrame())))))))))) .. ""))))))))
        else
        end
        DzFrameSetText(udg_UI_wpxs[2], (("消耗杀敌数：") .. (I2S(S2I(EXExecuteScript("(require'jass.slk').item[" .. I2S((LoadInteger(YDHT, ((GetHandleId((DzGetTriggerUIEventPlayer())))), (((DzGetTriggerUIEventFrame())))))) .. "].prio")))) .. (YDWEGetPlayerColorString(Player(2), (("(拥有") .. (R2SW(LoadReal(YDHT, GetHandleId(DzGetTriggerUIEventPlayer()), 0x692728ED), 1, 0)) .. ("）"))))))
        DzSyncData("yxqd", ("sd" .. I2S(((DzGetTriggerUIEventFrame())))))
    else
    end
end

function Trig_ui_oldFunc026Func002Func001Func002FT()
    DzFrameShow(udg_UI_wpxs[0], false)
    DzSyncData("yxqd", ("sd3302"))
end

function Trig_ui_oldFunc026Func002Func002Conditions()
    local ydul_a = nil
    local ydl_triggerstep = nil
    local ydl_trigger = nil
    if ((HaveSavedInteger(YDHT, GetHandleId(DzGetTriggerKeyPlayer()), 0xFB7FB0D2) == true)) then
        if (((LoadUnitHandle(YDHT, ((GetHandleId((DzGetTriggerKeyPlayer())))), (StringHash("04NPC")))) == LoadUnitHandle(YDHT, GetHandleId(DzGetTriggerKeyPlayer()), 0xDD032F66))) then
            ydul_a = 1
            while true do
                if ydul_a > 10 then
                    break
                end
                ydl_trigger = gg_trg_SDDH______________001
                ydl_triggerstep = GetHandleId(ydl_trigger) * (LoadInteger(YDLOC, GetHandleId(ydl_trigger), 0xCFDE6C76) + 3)
                SavePlayerHandle(YDLOC, ydl_triggerstep, 0x48656946, DzGetTriggerKeyPlayer())
                SaveInteger(YDLOC, ydl_triggerstep, 0xB0497EE9, LoadInteger(YDHT, GetHandleId(DzGetTriggerKeyPlayer()), 0xFB7FB0D2))
                TriggerExecute(ydl_trigger)
                ydul_a = ydul_a + 1
            end
        else
        end
    else
    end
    ydl_trigger = nil
end

function Trig_ui_oldFunc027Func024FT()
    DzFrameShow(udg_UI_RWK[0], false)
    DzFrameShow(udg_UI_RWK[6], true)
end

function Trig_ui_oldFunc027Func025FT()
    DzFrameSetTexture(udg_UI_RWK[4], "war3mapImported\\fy-you2.tga", 0)
end

function Trig_ui_oldFunc027Func026FT()
    DzFrameSetTexture(udg_UI_RWK[4], "war3mapImported\\fy-you1.tga", 0)
end

function Trig_ui_oldFunc027Func035FT()
    DzFrameShow(udg_UI_RWK[0], true)
    DzFrameShow(udg_UI_RWK[5], true)
    DzFrameShow(udg_UI_RWK[6], false)
end

function Trig_ui_oldFunc027Func036FT()
    DzFrameSetTexture(udg_UI_RWK[6], "war3mapImported\\fy-you3.tga", 0)
end

function Trig_ui_oldFunc027Func037FT()
    DzFrameSetTexture(udg_UI_RWK[6], "war3mapImported\\fy-you0.tga", 0)
end

function Trig_ui_oldFunc028Func019Func018FT()
    local ydul_a = nil
    ydul_a = 2
    while true do
        if ydul_a > 12 then
            break
        end
        DzFrameShow(udg_UI_XSZD[ydul_a], false)
        ydul_a = ydul_a + 1
    end
    DzSyncData("yxqd", ("nd" .. I2S((LoadInteger(YDHT, ((DzGetTriggerUIEventFrame())), 0x6B954785) - 3))))
end

function Trig_ui_oldFunc028Func019Func019FT()
    DzFrameSetTexture(udg_UI_XSZD[LoadInteger(YDHT, ((DzGetTriggerUIEventFrame())), 0x6B954785)], "war3mapImported\\anniuG.tga", 0)
end

function Trig_ui_oldFunc028Func019Func020FT()
    DzFrameSetTexture(udg_UI_XSZD[LoadInteger(YDHT, ((DzGetTriggerUIEventFrame())), 0x6B954785)], "war3mapImported\\anniuH.tga", 0)
end

function Trig_ui_oldFunc028Func020Func004Func006Conditions()
    DialogDestroy(GetClickedDialogBJ())
    FlushChildHashtable(YDLOC, GetHandleId(GetTriggeringTrigger()))
    DestroyTrigger(GetTriggeringTrigger())
end

function Trig_ui_oldFunc028Func020Func004Func007A()
    DialogDisplay(GetEnumPlayer(), LoadDialogHandle(YDLOC, GetHandleId(GetExpiredTimer()), 0x18B9F5BC), true)
end

function Trig_ui_oldFunc028Func020T()
    local ydl_trigger = nil
    SaveInteger(YDLOC, GetHandleId(GetExpiredTimer()), 0x6C2DED4E, (LoadInteger(YDLOC, GetHandleId(GetExpiredTimer()), 0x6C2DED4E) - 1))
    if ((LoadInteger(YDHT, GetHandleId(Player(PLAYER_NEUTRAL_AGGRESSIVE)), 0xB43FB128) ~= 0)) then
        FlushChildHashtable(YDLOC, GetHandleId(GetExpiredTimer()))
        DestroyTimer(GetExpiredTimer())
        ydl_trigger = nil
        do
            return
        end
    else
    end
    if ((LoadInteger(YDLOC, GetHandleId(GetExpiredTimer()), 0x6C2DED4E) == 0)) then
        DzFrameShow(udg_UI_XSZD[0], false)
        SaveDialogHandle(YDLOC, GetHandleId(GetExpiredTimer()), 0x18B9F5BC, DialogCreate())
        DialogSetMessage(LoadDialogHandle(YDLOC, GetHandleId(GetExpiredTimer()), 0x18B9F5BC), "由于长时间没有选择游戏,请重新开始")
        DialogAddButtonWithHotkeyBJ(LoadDialogHandle(YDLOC, GetHandleId(GetExpiredTimer()), 0x18B9F5BC), "确定", 0)
        ydl_trigger = CreateTrigger()
        TriggerRegisterDialogEvent(ydl_trigger, LoadDialogHandle(YDLOC, GetHandleId(GetExpiredTimer()), 0x18B9F5BC))
        TriggerAddCondition(ydl_trigger, Condition(Trig_ui_oldFunc028Func020Func004Func006Conditions))
        ForForce(udg_ZXWJZ, Trig_ui_oldFunc028Func020Func004Func007A)
        FlushChildHashtable(YDLOC, GetHandleId(GetExpiredTimer()))
        DestroyTimer(GetExpiredTimer())
    else
        DzFrameSetText(udg_UI_XSZD[13], I2S(LoadInteger(YDLOC, GetHandleId(GetExpiredTimer()), 0x6C2DED4E)))
    end
    ydl_trigger = nil
end

function Trig_ui_oldFunc028Func021Func006Func005Func004FT()
    DzFrameSetSize(udg_UI_YX[1], 0.065, 0.03)
end

function Trig_ui_oldFunc028Func021Func006Func005Func005FT()
    DzFrameSetSize(udg_UI_YX[1], 0.06, 0.025)
    DzSyncData("yxqd", "qd")
end

function Trig_ui_oldFunc028Func021Func009Func003Func002Func005FT()
    DzFrameShow(udg_GAOLIANG_UI2, true)
    DzFrameSetPoint(udg_GAOLIANG_UI2, 4, DzGetTriggerUIEventFrame(), 4, 0, 0)
    DzSyncData("yxqd", ("qd" .. I2S(LoadInteger(YDHT, ((DzGetTriggerUIEventFrame())), 0x6B954785))))
    DzFrameShow(udg_UIFL_tEXTYX[1], true)
end

function Trig_ui_oldFunc031Func014Func002FT()
    local ydul_a = nil
    if ((UnitItemInSlot(LoadUnitHandle(YDHT, GetHandleId(DzGetTriggerUIEventPlayer()), 0xDD032F66), LoadInteger(YDHT, ((DzGetTriggerUIEventFrame())), 0x6B954785)) ~= nil)) then
        DzFrameShow(udg_UI_wpxs[0], true)
        ydul_a = 0
        while true do
            if ydul_a > 5 then
                break
            end
            DzFrameClearAllPoints(udg_UI_wpxs[ydul_a])
            ydul_a = ydul_a + 1
        end
        DzFrameSetSize(udg_UI_wpxs[0], 0.25, 0.25)
        DzFrameSetSize(udg_UI_wpxs[2], 0.20, 0.02)
        DzFrameSetSize(udg_UI_wpxs[4], 0.20, 0.03)
        DzFrameSetSize(udg_UI_wpxs[3], 0.15, 0.20)
        DzFrameSetPoint(udg_UI_wpxs[0], 6, DzFrameGetTooltip(), 6, -0.01, -0.02)
        DzFrameSetPoint(udg_UI_wpxs[1], 0, udg_UI_wpxs[0], 0, 0.007, -0.02)
        DzFrameSetPoint(udg_UI_wpxs[2], 3, udg_UI_wpxs[1], 5, 0.007, 0.00)
        DzFrameSetPoint(udg_UI_wpxs[3], 0, udg_UI_wpxs[1], 6, 0.00, -0.02)
        DzFrameSetPoint(udg_UI_wpxs[4], 0, udg_UI_wpxs[2], 6, 0.00, 0.00)
        DzFrameSetTexture(udg_UI_wpxs[1], (EXExecuteScript("(require'jass.slk').item[" .. I2S(GetItemTypeId(UnitItemInSlot(LoadUnitHandle(YDHT, GetHandleId(DzGetTriggerUIEventPlayer()), 0xDD032F66), LoadInteger(YDHT, ((DzGetTriggerUIEventFrame())), 0x6B954785)))) .. "].Art")), 0)
        DzFrameSetText(udg_UI_wpxs[3], (EXExecuteScript("(require'jass.slk').item[" .. I2S(GetItemTypeId(UnitItemInSlot(LoadUnitHandle(YDHT, GetHandleId(DzGetTriggerUIEventPlayer()), 0xDD032F66), LoadInteger(YDHT, ((DzGetTriggerUIEventFrame())), 0x6B954785)))) .. "].Ubertip")))
        DzFrameSetText(udg_UI_wpxs[2], (EXExecuteScript("(require'jass.slk').item[" .. I2S(GetItemTypeId(UnitItemInSlot(LoadUnitHandle(YDHT, GetHandleId(DzGetTriggerUIEventPlayer()), 0xDD032F66), LoadInteger(YDHT, ((DzGetTriggerUIEventFrame())), 0x6B954785)))) .. "].Name")))
    else
    end
end

function Trig_ui_oldFunc031Func014Func003FT()
    DzFrameShow(udg_UI_wpxs[0], false)
end

function Trig_ui_oldActions()
    local ydul_a = nil
    local ydl_trigger = nil
    local ydl_timer = nil
    local ydl_triggerstep = nil
    local ydl_localvar_step = LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xCFDE6C76)
    ydl_localvar_step = ydl_localvar_step + 3
    SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xCFDE6C76, ydl_localvar_step)
    SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xECE825E7, ydl_localvar_step)
    FogMaskEnable(false)
    FogEnableOff()
    DestroyTrigger(GetTriggeringTrigger())
    SelectUnitSingle(gg_unit_hrif_0015)
    ConditionalTriggerExecute(gg_trg_UI_button)
    RemoveUnit(gg_unit_hrif_0015)
    udg_UI_MB[0] = DzCreateFrameByTagName("BACKDROP", "name", DzGetGameUI(), "template", 0)
    DzFrameSetTexture(udg_UI_MB[0], "war3mapImported\\[ui]wuhun backdrop.tga", 0)
    DzFrameSetAbsolutePoint(udg_UI_MB[0], 3, 0.04, 0.33)
    DzFrameSetSize(udg_UI_MB[0], 0.33, 0.37)
    DzFrameShow(udg_UI_MB[0], false)
    ydul_a = 35
    while true do
        if ydul_a > 38 then
            break
        end
        udg_UI_MB[ydul_a] = DzCreateFrameByTagName("BACKDROP", "name", DzGetGameUI(), "template", 0)
        DzFrameSetTexture(udg_UI_MB[ydul_a], (("war3mapImported\\FFF (") .. (I2S((ydul_a - 34))) .. (").tga")), 0)
        DzFrameSetSize(udg_UI_MB[ydul_a], 0.03, 0.03)
        DzFrameShow(udg_UI_MB[ydul_a], true)
        ydul_a = ydul_a + 1
    end
    DzFrameSetPoint(udg_UI_MB[35], 0, DzFrameGetMinimap(), 2, 0.012, 0.005)
    DzFrameSetPoint(udg_UI_MB[36], 3, udg_UI_MB[35], 5, 0.01, 0.00)
    DzFrameSetPoint(udg_UI_MB[37], 1, udg_UI_MB[35], 7, 0.00, -0.005)
    DzFrameSetPoint(udg_UI_MB[38], 3, udg_UI_MB[37], 5, 0.01, 0.00)
    ydul_a = 62
    while true do
        if ydul_a > 65 then
            break
        end
        udg_UI_MB[ydul_a] = DzCreateFrameByTagName("BUTTON", "name", DzGetGameUI(), "template", 0)
        DzFrameSetSize(udg_UI_MB[ydul_a], 0.03, 0.03)
        DzFrameSetPoint(udg_UI_MB[ydul_a], 4, udg_UI_MB[(ydul_a - 27)], 4, 0.00, 0.00)
        SaveInteger(YDHT, ((udg_UI_MB[ydul_a])), 0x6B954785, (ydul_a - 61))
        if GetLocalPlayer() == GetLocalPlayer() then
            DzFrameSetScriptByCode(udg_UI_MB[ydul_a], 2, Trig_ui_oldFunc008Func006Func006Func005FT, false)
        end
        if GetLocalPlayer() == GetLocalPlayer() then
            DzFrameSetScriptByCode(udg_UI_MB[ydul_a], 1, Trig_ui_oldFunc008Func006Func006Func006FT, false)
        end
        if GetLocalPlayer() == GetLocalPlayer() then
            DzFrameSetScriptByCode(udg_UI_MB[ydul_a], 3, Trig_ui_oldFunc008Func006Func006Func007FT, false)
        end
        ydul_a = ydul_a + 1
    end
    udg_UI_MB[43] = DzCreateFrameByTagName("BACKDROP", "name", DzGetGameUI(), "template", 0)
    DzFrameSetTexture(udg_UI_MB[43], "war3mapImported\\ui_txkg.tga", 0)
    DzFrameSetAbsolutePoint(udg_UI_MB[43], 3, 0.14, 0.037)
    DzFrameSetSize(udg_UI_MB[43], 0.025, 0.02)
    udg_UI_MB[44] = DzCreateFrameByTagName("BACKDROP", "name", DzGetGameUI(), "template", 0)
    DzFrameSetTexture(udg_UI_MB[44], "war3mapImported\\zidongshifa2.tga", 0)
    DzFrameSetPoint(udg_UI_MB[44], 3, udg_UI_MB[43], 5, 0.00, 0.00)
    DzFrameSetSize(udg_UI_MB[44], 0.02, 0.02)
    udg_UI_MB[45] = DzCreateFrameByTagName("BUTTON", "name", udg_UI_MB[44], "template", 0)
    DzFrameSetPoint(udg_UI_MB[45], 4, udg_UI_MB[44], 4, 0.00, 0.00)
    DzFrameSetSize(udg_UI_MB[45], 0.025, 0.015)
    if GetLocalPlayer() == GetLocalPlayer() then
        DzFrameSetScriptByCode(udg_UI_MB[45], 1, Trig_ui_oldFunc008Func007Func012FT, false)
    end
    udg_UI_SFMB[0] = DzCreateFrameByTagName("BACKDROP", "name", DzGetGameUI(), "template", 0)
    DzFrameSetTexture(udg_UI_SFMB[0], "war3mapImported\\zidongshifa.tga", 0)
    DzFrameSetPoint(udg_UI_SFMB[0], 1, udg_UI_MB[43], 7, 0, 0.00)
    DzFrameSetSize(udg_UI_SFMB[0], 0.025, 0.015)
    udg_UI_SFMB[1] = DzCreateFrameByTagName("BACKDROP", "name", DzGetGameUI(), "template", 1)
    DzFrameSetSize(udg_UI_SFMB[1], 0.02, 0.02)
    DzFrameSetPoint(udg_UI_SFMB[1], 3, udg_UI_SFMB[0], 5, 0, 0)
    DzFrameSetTexture(udg_UI_SFMB[1], "war3mapImported\\zidongshifa1.tga", 0)
    udg_UI_SFMB[2] = DzCreateFrameByTagName("BUTTON", "name", udg_UI_SFMB[1], "template", 0)
    DzFrameSetSize(udg_UI_SFMB[2], 0.02, 0.02)
    DzFrameSetPoint(udg_UI_SFMB[2], 5, udg_UI_SFMB[1], 5, 0, 0)
    if GetLocalPlayer() == GetLocalPlayer() then
        DzFrameSetScriptByCode(udg_UI_SFMB[2], 1, Trig_ui_oldFunc008Func008Func012FT, false)
    end
    udg_UI_MB[1] = DzCreateFrameByTagName("TEXT", "name", udg_UI_MB[0], "template", 0)
    DzFrameSetText(udg_UI_MB[1], YDWEGetPlayerColorString(Player(9), "10%"))
    DzFrameSetPoint(udg_UI_MB[1], 0, udg_UI_MB[0], 0, 0.035, -0.062)
    DzFrameSetFont(udg_UI_MB[1], "war3mapImported\\text.ttf", 0.01, 0)
    DzFrameSetSize(udg_UI_MB[1], 0.08, 0.01)
    ydul_a = 2
    while true do
        if ydul_a > 16 then
            break
        end
        udg_UI_MB[ydul_a] = DzCreateFrameByTagName("TEXT", "name", udg_UI_MB[0], "template", 0)
        DzFrameSetText(udg_UI_MB[ydul_a], YDWEGetPlayerColorString(Player(9), "78%"))
        DzFrameSetPoint(udg_UI_MB[ydul_a], 0, udg_UI_MB[(ydul_a - 1)], 6, 0.00, -0.006)
        DzFrameSetFont(udg_UI_MB[ydul_a], "war3mapImported\\text.ttf", 0.01, 0)
        DzFrameSetSize(udg_UI_MB[ydul_a], 0.08, 0.01)
        ydul_a = ydul_a + 1
    end
    udg_UI_MB[19] = DzCreateFrameByTagName("TEXT", "name", udg_UI_MB[0], "template", 0)
    DzFrameSetText(udg_UI_MB[19], YDWEGetPlayerColorString(Player(9), "10%"))
    DzFrameSetPoint(udg_UI_MB[19], 3, udg_UI_MB[1], 5, 0.007, 0.00)
    DzFrameSetFont(udg_UI_MB[19], "war3mapImported\\text.ttf", 0.01, 0)
    DzFrameSetSize(udg_UI_MB[19], 0.08, 0.01)
    ydul_a = 20
    while true do
        if ydul_a > 34 then
            break
        end
        udg_UI_MB[ydul_a] = DzCreateFrameByTagName("TEXT", "name", udg_UI_MB[0], "template", 0)
        DzFrameSetPoint(udg_UI_MB[ydul_a], 3, udg_UI_MB[(ydul_a - 18)], 5, 0.007, 0.00)
        DzFrameSetFont(udg_UI_MB[ydul_a], "war3mapImported\\text.ttf", 0.01, 0)
        DzFrameSetSize(udg_UI_MB[ydul_a], 0.08, 0.01)
        ydul_a = ydul_a + 1
    end
    udg_UI_MB[46] = DzCreateFrameByTagName("TEXT", "name", udg_UI_MB[0], "template", 0)
    DzFrameSetText(udg_UI_MB[46], YDWEGetPlayerColorString(Player(9), "10%"))
    DzFrameSetPoint(udg_UI_MB[46], 3, udg_UI_MB[19], 5, 0.007, 0.00)
    DzFrameSetFont(udg_UI_MB[46], "war3mapImported\\text.ttf", 0.01, 0)
    DzFrameSetSize(udg_UI_MB[46], 0.08, 0.01)
    ydul_a = 47
    while true do
        if ydul_a > 61 then
            break
        end
        udg_UI_MB[ydul_a] = DzCreateFrameByTagName("TEXT", "name", udg_UI_MB[0], "template", 0)
        DzFrameSetPoint(udg_UI_MB[ydul_a], 3, udg_UI_MB[(ydul_a - 27)], 5, 0.007, 0.00)
        DzFrameSetFont(udg_UI_MB[ydul_a], "war3mapImported\\text.ttf", 0.01, 0)
        DzFrameSetSize(udg_UI_MB[ydul_a], 0.08, 0.01)
        ydul_a = ydul_a + 1
    end
    SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x1A032DE6, DzCreateFrameByTagName("TEXT", "name", DzGetGameUI(), "template", 0))
    DzFrameSetSize(LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x1A032DE6), 0.22, 0.03)
    DzFrameSetAbsolutePoint(LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x1A032DE6), 4, 0.42, 0.17)
    DzFrameSetFont(LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x1A032DE6), "war3mapImported\\text.ttf", 0.016, 0)
    DzFrameShow(LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x1A032DE6), false)
    SaveInteger(YDHT, GetHandleId(gg_unit_O001_0009), 0x1ADEDE7B, LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x1A032DE6))
    SaveInteger(YDHT, GetHandleId(Player(PLAYER_NEUTRAL_AGGRESSIVE)), 0xA9767D73, DzCreateFrameByTagName("BACKDROP", "name", DzGetGameUI(), "template", 0))
    DzFrameSetTexture(LoadInteger(YDHT, GetHandleId(Player(PLAYER_NEUTRAL_AGGRESSIVE)), 0xA9767D73), "war3mapImported\\ui_tst (2).tga", 0)
    DzFrameSetAbsolutePoint(LoadInteger(YDHT, GetHandleId(Player(PLAYER_NEUTRAL_AGGRESSIVE)), 0xA9767D73), 4, 0.40, 0.50)
    DzFrameSetSize(LoadInteger(YDHT, GetHandleId(Player(PLAYER_NEUTRAL_AGGRESSIVE)), 0xA9767D73), 0.09, 0.06)
    DzFrameShow(LoadInteger(YDHT, GetHandleId(Player(PLAYER_NEUTRAL_AGGRESSIVE)), 0xA9767D73), false)
    udg_UI_FL[0] = DzCreateFrameByTagName("BACKDROP", "name", DzGetGameUI(), "template", 0)
    DzFrameSetTexture(udg_UI_FL[0], "war3mapImported\\UI_FLLQ (112).tga", 0)
    DzFrameSetAbsolutePoint(udg_UI_FL[0], 4, 0.45, 0.36)
    DzFrameSetSize(udg_UI_FL[0], 0.41, 0.37)
    DzFrameShow(udg_UI_FL[0], false)
    SaveInteger(YDHT, 11, 0xABCB1BDB, 4)
    SaveInteger(YDHT, 4, 0xABCB1BDB, 2)
    SaveInteger(YDHT, 2, 0xABCB1BDB, 2)
    udg_UI_DX = DzCreateFrameByTagName("SPRITE", "name", DzGetGameUI(), "template", 0)
    DzFrameSetPoint(udg_UI_DX, 4, DzGetGameUI(), 4, 0, 0.10)
    DzFrameSetAnimate(udg_UI_DX, 0, true)
    DzFrameSetAnimateOffset(udg_UI_DX, 0.00)
    DzFrameSetSize(udg_UI_DX, 0.55, 0.45)
    DzFrameShow(udg_UI_DX, true)
    udg_UI_BOSSJG = DzCreateFrameByTagName("BACKDROP", "name", DzGetGameUI(), "template", 0)
    DzFrameSetTexture(udg_UI_BOSSJG, "war3mapImported\\boss-laixi.tga", 0)
    DzFrameSetAbsolutePoint(udg_UI_BOSSJG, 4, 0.38, 0.42)
    DzFrameSetSize(udg_UI_BOSSJG, 0.30, 0.20)
    DzFrameShow(udg_UI_BOSSJG, false)
    bj_forLoopAIndex = 0
    bj_forLoopAIndexEnd = 9
    while true do
        if bj_forLoopAIndex > bj_forLoopAIndexEnd then
            break
        end
        SaveStr(YDHT, StringHash(("Number")), StringHash((I2S(bj_forLoopAIndex))), ((("war3mapImported\\TP (" .. I2S((bj_forLoopAIndex + 1))) .. ").tga")))
        bj_forLoopAIndex = bj_forLoopAIndex + 1
    end
    udg_Frame_zdl[0] = DzCreateFrameByTagName("BACKDROP", "name", DzGetGameUI(), "template", 0)
    DzFrameSetPoint(udg_Frame_zdl[0], 0, DzGetGameUI(), 0, 0.05, -0.035)
    DzFrameSetTexture(udg_Frame_zdl[0], "war3mapImported\\ui_zhandouli.tga", 0)
    DzFrameSetSize(udg_Frame_zdl[0], 0.15, 0.04)
    DzFrameShow(udg_Frame_zdl[0], true)
    bj_forLoopAIndex = 1
    bj_forLoopAIndexEnd = 10
    while true do
        if bj_forLoopAIndex > bj_forLoopAIndexEnd then
            break
        end
        udg_Frame_zdl[bj_forLoopAIndex] = DzCreateFrameByTagName("BACKDROP", "name", udg_Frame_zdl[0], "template", bj_forLoopAIndex)
        DzFrameSetSize(udg_Frame_zdl[bj_forLoopAIndex], 0.025, 0.025)
        DzFrameSetPoint(udg_Frame_zdl[bj_forLoopAIndex], 3, udg_Frame_zdl[0], 4, ((-0.028) + (((((I2R(bj_forLoopAIndex)) - (1.00))) * (0.01)))), -0.005)
        DzFrameSetTexture(udg_Frame_zdl[bj_forLoopAIndex], "war3mapImported\\alpha.blp", 0)
        DzFrameShow(udg_Frame_zdl[bj_forLoopAIndex], false)
        bj_forLoopAIndex = bj_forLoopAIndex + 1
    end
    udg_Frame_zdl[11] = DzCreateFrameByTagName("BACKDROP", "name", udg_Frame_zdl[0], "template", bj_forLoopAIndex)
    DzFrameSetSize(udg_Frame_zdl[11], 0.13, 0.06)
    DzFrameSetPoint(udg_Frame_zdl[11], 4, DzGetGameUI(), 4, 0.00, 0.05)
    DzFrameSetTexture(udg_Frame_zdl[11], "war3mapImported\\ui_zlfz.tga", 0)
    DzFrameShow(udg_Frame_zdl[11], false)
    bj_forLoopAIndex = 12
    bj_forLoopAIndexEnd = 21
    while true do
        if bj_forLoopAIndex > bj_forLoopAIndexEnd then
            break
        end
        udg_Frame_zdl[bj_forLoopAIndex] = DzCreateFrameByTagName("BACKDROP", "name", udg_Frame_zdl[11], "template", bj_forLoopAIndex)
        DzFrameSetSize(udg_Frame_zdl[bj_forLoopAIndex], 0.025, 0.025)
        DzFrameSetPoint(udg_Frame_zdl[bj_forLoopAIndex], 7, udg_Frame_zdl[11], 7, ((-0.05) + (((((I2R((bj_forLoopAIndex - 11))) - (1.00))) * (0.01)))), 0.007)
        DzFrameSetTexture(udg_Frame_zdl[bj_forLoopAIndex], "war3mapImported\\alpha.blp", 0)
        DzFrameShow(udg_Frame_zdl[bj_forLoopAIndex], false)
        bj_forLoopAIndex = bj_forLoopAIndex + 1
    end
    SaveInteger(YDHT, GetHandleId(Player(PLAYER_NEUTRAL_AGGRESSIVE)), 0x1ECE59C8, DzCreateFrameByTagName("TEXT", "name", DzGetGameUI(), "template", 0))
    DzFrameSetSize(LoadInteger(YDHT, GetHandleId(Player(PLAYER_NEUTRAL_AGGRESSIVE)), 0x1ECE59C8), 0.11, 0.04)
    DzFrameSetPoint(LoadInteger(YDHT, GetHandleId(Player(PLAYER_NEUTRAL_AGGRESSIVE)), 0x1ECE59C8), 1, DzGetGameUI(), 1, 0.00, 0.005)
    DzFrameSetText(LoadInteger(YDHT, GetHandleId(Player(PLAYER_NEUTRAL_AGGRESSIVE)), 0x1ECE59C8), (("|cff000000轮回仙帝") .. ("|n") .. ("我若成魔 天下无佛|r")))
    DzFrameSetFont(LoadInteger(YDHT, GetHandleId(Player(PLAYER_NEUTRAL_AGGRESSIVE)), 0x1ECE59C8), "war3mapImported\\text.ttf", 0.013, 0)
    DzFrameSetTextAlignment(LoadInteger(YDHT, GetHandleId(Player(PLAYER_NEUTRAL_AGGRESSIVE)), 0x1ECE59C8), -10)
    DzFrameShow(LoadInteger(YDHT, GetHandleId(Player(PLAYER_NEUTRAL_AGGRESSIVE)), 0x1ECE59C8), true)
    SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xF6D214A2 + (0), DzCreateFrameByTagName("BACKDROP", "name", DzGetGameUI(), "template", 0))
    DzFrameSetTexture(LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xF6D214A2 + (0)), "[UI][BW]buchongwang.blp", 0)
    DzFrameSetAbsolutePoint(LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xF6D214A2 + (0)), 4, 0.30, 0.40)
    DzFrameSetSize(LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xF6D214A2 + (0)), 0.15, 0.19)
    DzFrameShow(LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xF6D214A2 + (0)), false)
    SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xF6D214A2 + (1), DzCreateFrameByTagName("SPRITE", "name", DzGetGameUI(), "template", 0))
    DzFrameSetModel(LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xF6D214A2 + (1)), "war3mapImported\\[ui][bw]xianshu.mdx", 0, 0)
    DzFrameSetPoint(LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xF6D214A2 + (1)), 4, LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xF6D214A2 + (0)), 4, -0.23, -0.365)
    DzFrameSetSize(LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xF6D214A2 + (1)), 0.001, 0.001)
    DzFrameSetAnimate(LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xF6D214A2 + (1)), 0, false)
    DzFrameSetAnimateOffset(LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xF6D214A2 + (1)), 1.20)
    DzFrameShow(LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xF6D214A2 + (1)), false)
    SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xF6D214A2 + (2), DzCreateFrameByTagName("BACKDROP", "name", DzGetGameUI(), "template", 0))
    DzFrameSetTexture(LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xF6D214A2 + (2)), "[UI][BW]buchongwang.blp", 0)
    DzFrameSetAbsolutePoint(LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xF6D214A2 + (2)), 4, 0.50, 0.40)
    DzFrameSetSize(LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xF6D214A2 + (2)), 0.15, 0.19)
    DzFrameShow(LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xF6D214A2 + (2)), false)
    SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xF6D214A2 + (3), DzCreateFrameByTagName("SPRITE", "name", DzGetGameUI(), "template", 0))
    DzFrameSetModel(LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xF6D214A2 + (3)), "war3mapImported\\[ui][bw]xianshu.mdx", 0, 0)
    DzFrameSetPoint(LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xF6D214A2 + (3)), 4, LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xF6D214A2 + (2)), 4, -0.23, -0.365)
    DzFrameSetSize(LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xF6D214A2 + (3)), 0.001, 0.001)
    DzFrameSetAnimate(LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xF6D214A2 + (3)), 0, false)
    DzFrameSetAnimateOffset(LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xF6D214A2 + (3)), 1.20)
    DzFrameShow(LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xF6D214A2 + (3)), false)
    ydul_a = 0
    while true do
        if ydul_a > 3 then
            break
        end
        udg_UI_xsxz[(ydul_a + 2)] = LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xF6D214A2 + (ydul_a))
        ydul_a = ydul_a + 1
    end
    ydul_a = 4
    while true do
        if ydul_a > 7 then
            break
        end
        SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xF6D214A2 + (ydul_a), DzCreateFrameByTagName("TEXT", "name", udg_UI_xsxz[2], "template", 0))
        DzFrameSetSize(LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xF6D214A2 + (ydul_a)), 0.10, 0.05)
        DzFrameSetTextAlignment(LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xF6D214A2 + (ydul_a)), -10)
        DzFrameSetFont(LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xF6D214A2 + (ydul_a)), "war3mapImported\\text.ttf", 0.01, 0)
        ydul_a = ydul_a + 1
    end
    DzFrameSetSize(LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xF6D214A2 + (6)), 0.07, 0.15)
    DzFrameSetSize(LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xF6D214A2 + (7)), 0.07, 0.15)
    DzFrameSetFont(LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xF6D214A2 + (6)), "war3mapImported\\text.ttf", 0.0085, 0)
    DzFrameSetFont(LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xF6D214A2 + (7)), "war3mapImported\\text.ttf", 0.0085, 0)
    DzFrameSetParent(LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xF6D214A2 + (5)), udg_UI_xsxz[4])
    DzFrameSetParent(LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xF6D214A2 + (7)), udg_UI_xsxz[4])
    ydul_a = 8
    while true do
        if ydul_a > 9 then
            break
        end
        SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xF6D214A2 + (ydul_a), DzCreateFrameByTagName("BACKDROP", "name", udg_UI_xsxz[2], "template", 0))
        DzFrameSetSize(LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xF6D214A2 + (ydul_a)), 0.03, 0.035)
        ydul_a = ydul_a + 1
    end
    DzFrameSetParent(LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xF6D214A2 + (9)), udg_UI_xsxz[4])
    ydul_a = 6
    while true do
        if ydul_a > 11 then
            break
        end
        udg_UI_xsxz[ydul_a] = LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xF6D214A2 + ((ydul_a - 2)))
        ydul_a = ydul_a + 1
    end
    DzFrameSetPoint(udg_UI_xsxz[6], 4, udg_UI_xsxz[2], 1, 0, -0.03)
    DzFrameSetPoint(udg_UI_xsxz[7], 4, udg_UI_xsxz[4], 1, 0, -0.03)
    DzFrameSetPoint(udg_UI_xsxz[8], 1, udg_UI_xsxz[6], 7, 0, 0.01)
    DzFrameSetPoint(udg_UI_xsxz[9], 1, udg_UI_xsxz[7], 7, 0, 0.01)
    DzFrameSetPoint(udg_UI_xsxz[10], 1, udg_UI_xsxz[6], 7, 0, 0.016)
    DzFrameSetPoint(udg_UI_xsxz[11], 1, udg_UI_xsxz[7], 7, 0, 0.016)
    udg_UI_xsxz[0] = DzCreateFrameByTagName("BUTTON", "name", udg_UI_xsxz[10], "template", 0)
    DzFrameSetAbsolutePoint(udg_UI_xsxz[0], 4, 0.30, 0.40)
    DzFrameSetSize(udg_UI_xsxz[0], 0.15, 0.19)
    udg_UI_xsxz[1] = DzCreateFrameByTagName("BUTTON", "name", udg_UI_xsxz[11], "template", 0)
    DzFrameSetAbsolutePoint(udg_UI_xsxz[1], 4, 0.50, 0.40)
    DzFrameSetSize(udg_UI_xsxz[1], 0.15, 0.19)
    ydul_a = 0
    while true do
        if ydul_a > 1 then
            break
        end
        SaveInteger(YDHT, ((udg_UI_xsxz[ydul_a])), 0x6B954785, ydul_a)
        if GetLocalPlayer() == GetLocalPlayer() then
            DzFrameSetScriptByCode(udg_UI_xsxz[ydul_a], 1, Trig_ui_oldFunc016Func001Func027Func007Func002FT, false)
        end
        if GetLocalPlayer() == GetLocalPlayer() then
            DzFrameSetScriptByCode(udg_UI_xsxz[ydul_a], 2, Trig_ui_oldFunc016Func001Func027Func007Func003FT, false)
        end
        if GetLocalPlayer() == GetLocalPlayer() then
            DzFrameSetScriptByCode(udg_UI_xsxz[ydul_a], 3, Trig_ui_oldFunc016Func001Func027Func007Func004FT, false)
        end
        ydul_a = ydul_a + 1
    end
    SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xF6D214A2 + (0), DzCreateFrameByTagName("BACKDROP", "name", DzGetGameUI(), "template", 0))
    DzFrameSetTexture(LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xF6D214A2 + (0)), "war3mapImported\\ui_wpk.tga", 0)
    DzFrameSetPoint(LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xF6D214A2 + (0)), 8, DzGetGameUI(), 8, -0.02, 0.13)
    DzFrameSetSize(LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xF6D214A2 + (0)), 0.18, 0.15)
    udg_UI_WXTB[0] = LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xF6D214A2 + (0))
    DzFrameShow(udg_UI_WXTB[0], false)
    SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xF6D214A2 + (12), DzCreateFrameByTagName("TEXT", "name", LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xF6D214A2 + (0)), "template", 0))
    DzFrameSetPoint(LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xF6D214A2 + (12)), 1, LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xF6D214A2 + (0)), 1, 0, -0.01)
    DzFrameSetSize(LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xF6D214A2 + (12)), 0.15, 0.02)
    DzFrameSetText(LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xF6D214A2 + (12)), "消耗五行符印激活怪物图鉴")
    DzFrameSetTextAlignment(LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xF6D214A2 + (12)), -10)
    DzFrameSetFont(LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xF6D214A2 + (12)), "war3mapImported\\text.ttf", 0.013, 0)
    ydul_a = 1
    while true do
        if ydul_a > 9 then
            break
        end
        SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xF6D214A2 + (ydul_a), DzCreateFrameByTagName("BACKDROP", "name", LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xF6D214A2 + (0)), "template", 0))
        DzFrameSetSize(LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xF6D214A2 + (ydul_a)), 0.03, 0.03)
        udg_UI_WXTB[(ydul_a + 9)] = LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xF6D214A2 + (ydul_a))
        udg_UI_WXTB[ydul_a] = DzCreateFrameByTagName("BUTTON", "name", LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xF6D214A2 + (ydul_a)), "template", 0)
        DzFrameSetPoint(udg_UI_WXTB[ydul_a], 4, LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xF6D214A2 + (ydul_a)), 4, 0.00, 0.00)
        DzFrameSetSize(udg_UI_WXTB[ydul_a], 0.03, 0.03)
        SaveInteger(YDHT, ((udg_UI_WXTB[ydul_a])), 0x6B954785, ydul_a)
        if GetLocalPlayer() == GetLocalPlayer() then
            DzFrameSetScriptByCode(udg_UI_WXTB[ydul_a], 1, Trig_ui_oldFunc017Func013Func004Func005FT, false)
        end
        if GetLocalPlayer() == GetLocalPlayer() then
            DzFrameSetScriptByCode(udg_UI_WXTB[ydul_a], 2, Trig_ui_oldFunc017Func013Func004Func006FT, false)
        end
        if GetLocalPlayer() == GetLocalPlayer() then
            DzFrameSetScriptByCode(udg_UI_WXTB[ydul_a], 3, Trig_ui_oldFunc017Func013Func004Func007FT, false)
        end
        ydul_a = ydul_a + 1
    end
    DzFrameSetPoint(LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xF6D214A2 + (1)), 0, LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xF6D214A2 + (0)), 0, 0.045, -0.03)
    ydul_a = 2
    while true do
        if ydul_a > 3 then
            break
        end
        DzFrameSetPoint(LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xF6D214A2 + (ydul_a)), 3, LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xF6D214A2 + ((ydul_a - 1))), 5, 0.002, 0)
        ydul_a = ydul_a + 1
    end
    DzFrameSetPoint(LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xF6D214A2 + (4)), 1, LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xF6D214A2 + (1)), 7, 0.00, -0.002)
    ydul_a = 5
    while true do
        if ydul_a > 6 then
            break
        end
        DzFrameSetPoint(LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xF6D214A2 + (ydul_a)), 3, LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xF6D214A2 + ((ydul_a - 1))), 5, 0.002, 0)
        ydul_a = ydul_a + 1
    end
    DzFrameSetPoint(LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xF6D214A2 + (7)), 1, LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xF6D214A2 + (4)), 7, 0.00, -0.002)
    ydul_a = 8
    while true do
        if ydul_a > 9 then
            break
        end
        DzFrameSetPoint(LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xF6D214A2 + (ydul_a)), 3, LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xF6D214A2 + ((ydul_a - 1))), 5, 0.002, 0)
        ydul_a = ydul_a + 1
    end
    SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xF6D214A2 + (10), DzCreateFrameByTagName("BACKDROP", "name", LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xF6D214A2 + (0)), "template", 0))
    DzFrameSetTexture(LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xF6D214A2 + (10)), "war3mapImported\\zuanshi.blp", 0)
    DzFrameSetPoint(LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xF6D214A2 + (10)), 8, LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xF6D214A2 + (0)), 8, -0.04, 0.005)
    DzFrameSetSize(LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xF6D214A2 + (10)), 0.02, 0.02)
    SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xF6D214A2 + (11), DzCreateFrameByTagName("TEXT", "name", LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xF6D214A2 + (0)), "template", 0))
    DzFrameSetPoint(LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xF6D214A2 + (11)), 3, LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xF6D214A2 + (10)), 5, 0.00, 0.00)
    DzFrameSetSize(LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xF6D214A2 + (11)), 0.15, 0.01)
    DzFrameSetText(LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xF6D214A2 + (11)), ("x " .. I2S(LoadInteger(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0xE257723F))))
    DzFrameSetTextAlignment(LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xF6D214A2 + (11)), 0)
    DzFrameSetFont(LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xF6D214A2 + (11)), "war3mapImported\\text.ttf", 0.01, 0)
    udg_UI_WXTB[19] = LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xF6D214A2 + (11))
    ydul_a = 1
    while true do
        if ydul_a > 9 then
            break
        end
        udg_UI_9GG[ydul_a] = DzCreateFrameByTagName("BACKDROP", "name", DzGetGameUI(), "template", 0)
        DzFrameSetSize(udg_UI_9GG[ydul_a], 0.01, 0.01)
        DzFrameSetTexture(udg_UI_9GG[ydul_a], "war3mapImported\\ui-dikuangti-1.tga", 0)
        DzFrameShow(udg_UI_9GG[ydul_a], false)
        ydul_a = ydul_a + 1
    end
    DzFrameSetPoint(udg_UI_9GG[1], 7, DzGetGameUI(), 7, 0.20, 0.101)
    DzFrameShow(udg_UI_9GG[1], true)
    ydul_a = 2
    while true do
        if ydul_a > 8 then
            break
        end
        DzFrameSetPoint(udg_UI_9GG[ydul_a], 1, udg_UI_9GG[(ydul_a - 1)], 7, 0.00, -0.0032)
        ydul_a = ydul_a + 1
    end
    ydul_a = 1
    while true do
        if ydul_a > 8 then
            break
        end
        udg_UI_9GG2[ydul_a] = DzCreateFrameByTagName("BUTTON", "name", udg_UI_9GG[ydul_a], "template", 0)
        DzFrameSetPoint(udg_UI_9GG2[ydul_a], 4, udg_UI_9GG[ydul_a], 4, 0, 0)
        DzFrameSetSize(udg_UI_9GG2[ydul_a], 0.02, 0.02)
        SaveInteger(YDHT, ((udg_UI_9GG2[ydul_a])), 0x6B954785, ydul_a)
        udg_UI_9GG3[ydul_a] = DzCreateFrameByTagName("BACKDROP", "name", udg_UI_9GG[ydul_a], "template", 0)
        DzFrameSetSize(udg_UI_9GG3[ydul_a], 0.01, 0.01)
        DzFrameSetTexture(udg_UI_9GG3[ydul_a], "war3mapImported\\[tb][jn]wupinsuo1.blp", 0)
        DzFrameSetPoint(udg_UI_9GG3[ydul_a], 4, udg_UI_9GG[ydul_a], 4, 0, 0)
        udg_UI_9GG[(ydul_a + 22)] = DzCreateFrameByTagName("TEXT", "name", udg_UI_9GG3[ydul_a], "template", 0)
        DzFrameSetSize(udg_UI_9GG[(ydul_a + 22)], 0.03, 0.01)
        DzFrameSetPoint(udg_UI_9GG[(ydul_a + 22)], 7, udg_UI_9GG3[ydul_a], 7, 0.01, -0.01)
        DzFrameSetFont(udg_UI_9GG[(ydul_a + 22)], "war3mapImported\\text.ttf", 0.007, 0)
        if GetLocalPlayer() == GetLocalPlayer() then
            DzFrameSetScriptByCode(udg_UI_9GG2[ydul_a], 2, Trig_ui_oldFunc018Func005Func001Func006FT, false)
        end
        if GetLocalPlayer() == GetLocalPlayer() then
            DzFrameSetScriptByCode(udg_UI_9GG2[ydul_a], 3, Trig_ui_oldFunc018Func005Func001Func007FT, false)
        end
        ydul_a = ydul_a + 1
    end
    ForForce(udg_ZXWJZ, Trig_ui_oldFunc018Func006A)
    udg_UI_HQTB[0] = DzCreateFrameByTagName("BACKDROP", "name", DzGetGameUI(), "template", 0)
    DzFrameSetTexture(udg_UI_HQTB[0], "war3mapImported\\hunqian (2).tga", 0)
    DzFrameSetPoint(udg_UI_HQTB[0], 6, DzGetGameUI(), 6, 0, 0.12)
    DzFrameSetSize(udg_UI_HQTB[0], 0.03, 0.02)
    DzFrameShow(udg_UI_HQTB[0], false)
    udg_UI_HQTB[1] = DzCreateFrameByTagName("BUTTON", "name", udg_UI_HQTB[0], "template", 0)
    DzFrameSetPoint(udg_UI_HQTB[1], 4, udg_UI_HQTB[0], 4, 0, 0)
    DzFrameSetSize(udg_UI_HQTB[1], 0.05, 0.03)
    if GetLocalPlayer() == GetLocalPlayer() then
        DzFrameSetScriptByCode(udg_UI_HQTB[1], 1, Trig_ui_oldFunc019Func009FT, false)
    end
    ydul_a = 2
    while true do
        if ydul_a > 21 then
            break
        end
        udg_UI_HQTB[ydul_a] = DzCreateFrameByTagName("BACKDROP", "name", DzGetGameUI(), "template", 0)
        DzFrameSetTexture(udg_UI_HQTB[ydul_a], "war3mapImported\\Alpha.blp", 0)
        if ((ydul_a > 8)) then
            DzFrameSetPoint(udg_UI_HQTB[ydul_a], 7, udg_UI_HQTB[(ydul_a - 7)], 1, 0.00, 0.002)
        else
            DzFrameSetPoint(udg_UI_HQTB[ydul_a], 3, udg_UI_HQTB[(ydul_a - 1)], 5, 0.002, 0.00)
        end
        DzFrameSetSize(udg_UI_HQTB[ydul_a], 0.025, 0.025)
        udg_UI_HQTB[(ydul_a + 20)] = DzCreateFrameByTagName("BUTTON", "name", udg_UI_HQTB[ydul_a], "template", 0)
        DzFrameSetPoint(udg_UI_HQTB[(ydul_a + 20)], 4, udg_UI_HQTB[(ydul_a - 0)], 4, 0, 0.00)
        DzFrameSetSize(udg_UI_HQTB[(ydul_a + 20)], 0.025, 0.025)
        SaveInteger(YDHT, ((udg_UI_HQTB[ydul_a])), 0x6B954785, (ydul_a - 1))
        SaveInteger(YDHT, ((udg_UI_HQTB[(ydul_a + 20)])), 0x6B954785, (ydul_a + 20))
        DzFrameShow(udg_UI_HQTB[ydul_a], false)
        SaveStr(YDLOC, 0x774BAD82, 0x329FF8E6, LoadStr(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x329FF8E6))
        SaveStr(YDLOC, 0x774BAD82, 0x9338B1BD, LoadStr(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x9338B1BD))
        SaveStr(YDLOC, 0x774BAD82, 0x50E50212, LoadStr(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x50E50212))
        SaveStr(YDLOC, 0x774BAD82, 0xD625A765, LoadStr(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xD625A765))
        if GetLocalPlayer() == GetLocalPlayer() then
            DzFrameSetScriptByCode(udg_UI_HQTB[(ydul_a + 20)], 2, Trig_ui_oldFunc019Func010Func011FT, false)
        end
        if GetLocalPlayer() == GetLocalPlayer() then
            DzFrameSetScriptByCode(udg_UI_HQTB[(ydul_a + 20)], 3, Trig_ui_oldFunc019Func010Func012FT, false)
        end
        if GetLocalPlayer() == GetLocalPlayer() then
            DzFrameSetScriptByCode(udg_UI_HQTB[(ydul_a + 20)], 1, Trig_ui_oldFunc019Func010Func013FT, false)
        end
        udg_UI_HQTB[(ydul_a + 40)] = DzCreateFrameByTagName("BACKDROP", "name", udg_UI_HQTB[(ydul_a + 20)], "template", 0)
        DzFrameSetTexture(udg_UI_HQTB[(ydul_a + 40)], "war3mapImported\\Alpha.blp", 0)
        DzFrameSetPoint(udg_UI_HQTB[(ydul_a + 40)], 7, udg_UI_HQTB[(ydul_a + 20)], 7, 0, 0.00)
        DzFrameSetSize(udg_UI_HQTB[(ydul_a + 40)], 0.018, 0.006)
        ydul_a = ydul_a + 1
    end
    SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xF6D214A2 + (0), DzCreateFrameByTagName("BACKDROP", "name", DzGetGameUI(), "template", 0))
    DzFrameSetAbsolutePoint(LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xF6D214A2 + (0)), 4, 0.23, 0.40)
    DzFrameSetSize(LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xF6D214A2 + (0)), 0.15, 0.19)
    SaveInteger(YDHT, GetHandleId(Player(PLAYER_NEUTRAL_AGGRESSIVE)), 0x5445ECAC, LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xF6D214A2 + (0)))
    SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xF6D214A2 + (1), DzCreateFrameByTagName("SPRITE", "name", DzGetGameUI(), "template", 0))
    DzFrameSetPoint(LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xF6D214A2 + (1)), 4, LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xF6D214A2 + (0)), 4, -0.23, -0.365)
    DzFrameSetSize(LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xF6D214A2 + (1)), 0.001, 0.001)
    SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xF6D214A2 + (2), DzCreateFrameByTagName("BACKDROP", "name", LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xF6D214A2 + (0)), "template", 0))
    DzFrameSetAbsolutePoint(LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xF6D214A2 + (2)), 4, 0.40, 0.40)
    DzFrameSetSize(LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xF6D214A2 + (2)), 0.15, 0.19)
    SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xF6D214A2 + (3), DzCreateFrameByTagName("SPRITE", "name", DzGetGameUI(), "template", 0))
    DzFrameSetPoint(LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xF6D214A2 + (3)), 4, LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xF6D214A2 + (2)), 4, -0.23, -0.365)
    DzFrameSetSize(LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xF6D214A2 + (3)), 0.001, 0.001)
    SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xF6D214A2 + (4), DzCreateFrameByTagName("BACKDROP", "name", LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xF6D214A2 + (0)), "template", 0))
    DzFrameSetAbsolutePoint(LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xF6D214A2 + (4)), 4, 0.57, 0.40)
    DzFrameSetSize(LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xF6D214A2 + (4)), 0.15, 0.19)
    SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xF6D214A2 + (5), DzCreateFrameByTagName("SPRITE", "name", DzGetGameUI(), "template", 0))
    DzFrameSetPoint(LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xF6D214A2 + (5)), 4, LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xF6D214A2 + (4)), 4, -0.23, -0.365)
    DzFrameSetSize(LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xF6D214A2 + (5)), 0.001, 0.001)
    ydul_a = 3
    while true do
        if ydul_a > 8 then
            break
        end
        udg_UI_3x1[ydul_a] = LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xF6D214A2 + ((ydul_a - 3)))
        DzFrameShow(udg_UI_3x1[ydul_a], false)
        ydul_a = ydul_a + 1
    end
    ydul_a = 6
    while true do
        if ydul_a > 11 then
            break
        end
        SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xF6D214A2 + (ydul_a), DzCreateFrameByTagName("TEXT", "name", udg_UI_3x1[3], "template", 0))
        DzFrameSetSize(LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xF6D214A2 + (ydul_a)), 0.09, 0.05)
        DzFrameSetTextAlignment(LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xF6D214A2 + (ydul_a)), -10)
        ydul_a = ydul_a + 1
    end
    DzFrameSetPoint(LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xF6D214A2 + (6)), 4, LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xF6D214A2 + (0)), 1, 0, -0.04)
    DzFrameSetPoint(LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xF6D214A2 + (7)), 4, LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xF6D214A2 + (2)), 1, 0, -0.04)
    DzFrameSetPoint(LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xF6D214A2 + (8)), 4, LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xF6D214A2 + (4)), 1, 0, -0.04)
    DzFrameSetPoint(LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xF6D214A2 + (9)), 1, LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xF6D214A2 + (6)), 7, 0, -0.04)
    DzFrameSetPoint(LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xF6D214A2 + (10)), 1, LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xF6D214A2 + (7)), 7, 0, -0.04)
    DzFrameSetPoint(LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xF6D214A2 + (11)), 1, LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xF6D214A2 + (8)), 7, 0, -0.04)
    ydul_a = 6
    while true do
        if ydul_a > 8 then
            break
        end
        DzFrameSetFont(LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xF6D214A2 + (ydul_a)), "war3mapImported\\text.ttf", 0.012, 0)
        ydul_a = ydul_a + 1
    end
    ydul_a = 9
    while true do
        if ydul_a > 11 then
            break
        end
        DzFrameSetFont(LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xF6D214A2 + (ydul_a)), "war3mapImported\\text.ttf", 0.009, 0)
        ydul_a = ydul_a + 1
    end
    ydul_a = 12
    while true do
        if ydul_a > 14 then
            break
        end
        SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xF6D214A2 + (ydul_a), DzCreateFrameByTagName("BACKDROP", "name", LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xF6D214A2 + (11)), "template", 0))
        DzFrameSetSize(LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xF6D214A2 + (ydul_a)), 0.03, 0.035)
        ydul_a = ydul_a + 1
    end
    DzFrameSetPoint(LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xF6D214A2 + (12)), 1, LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xF6D214A2 + (6)), 7, 0, 0.01)
    DzFrameSetPoint(LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xF6D214A2 + (13)), 1, LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xF6D214A2 + (7)), 7, 0, 0.01)
    DzFrameSetPoint(LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xF6D214A2 + (14)), 1, LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xF6D214A2 + (8)), 7, 0, 0.01)
    ydul_a = 9
    while true do
        if ydul_a > 17 then
            break
        end
        udg_UI_3x1[ydul_a] = LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xF6D214A2 + ((ydul_a - 3)))
        ydul_a = ydul_a + 1
    end
    udg_ui_3x1_Highlight = DzCreateFrameByTagName("SPRITE", "name", DzGetGameUI(), "template", 0)
    DzFrameSetSize(udg_ui_3x1_Highlight, 0.15, 0.19)
    DzFrameSetAbsolutePoint(udg_ui_3x1_Highlight, 4, 0.23, 0.40)
    DzFrameSetModel(udg_ui_3x1_Highlight, "UI_CS (26).mdx", 0, 0)
    DzFrameShow(udg_ui_3x1_Highlight, false)
    udg_UI_3x1[0] = DzCreateFrameByTagName("BUTTON", "name", LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xF6D214A2 + (14)), "template", 0)
    DzFrameSetAbsolutePoint(udg_UI_3x1[0], 4, 0.23, 0.40)
    DzFrameSetSize(udg_UI_3x1[0], 0.15, 0.19)
    udg_UI_3x1[1] = DzCreateFrameByTagName("BUTTON", "name", LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xF6D214A2 + (14)), "template", 0)
    DzFrameSetAbsolutePoint(udg_UI_3x1[1], 4, 0.40, 0.40)
    DzFrameSetSize(udg_UI_3x1[1], 0.15, 0.19)
    udg_UI_3x1[2] = DzCreateFrameByTagName("BUTTON", "name", LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xF6D214A2 + (14)), "template", 0)
    DzFrameSetAbsolutePoint(udg_UI_3x1[2], 4, 0.57, 0.40)
    DzFrameSetSize(udg_UI_3x1[2], 0.15, 0.19)
    ydul_a = 0
    while true do
        if ydul_a > 2 then
            break
        end
        SaveInteger(YDHT, ((udg_UI_3x1[ydul_a])), 0x6B954785, ydul_a)
        if GetLocalPlayer() == GetLocalPlayer() then
            DzFrameSetScriptByCode(udg_UI_3x1[ydul_a], 1, Trig_ui_oldFunc020Func022Func015Func002FT, false)
        end
        if GetLocalPlayer() == GetLocalPlayer() then
            DzFrameSetScriptByCode(udg_UI_3x1[ydul_a], 2, Trig_ui_oldFunc020Func022Func015Func003FT, false)
        end
        if GetLocalPlayer() == GetLocalPlayer() then
            DzFrameSetScriptByCode(udg_UI_3x1[ydul_a], 3, Trig_ui_oldFunc020Func022Func015Func004FT, false)
        end
        DzFrameShow(udg_UI_3x1[ydul_a], false)
        ydul_a = ydul_a + 1
    end
    udg_ui_BYDJ[0] = DzCreateFrameByTagName("BACKDROP", "name", DzGetGameUI(), "template", 0)
    DzFrameSetPoint(udg_ui_BYDJ[0], 3, udg_Frame_zdl[0], 5, 0.01, 0.00)
    DzFrameSetTexture(udg_ui_BYDJ[0], "war3mapImported\\jingshi (1).tga", 0)
    DzFrameSetSize(udg_ui_BYDJ[0], 0.03, 0.03)
    DzFrameShow(udg_ui_BYDJ[0], false)
    udg_ui_BYDJ[1] = DzCreateFrameByTagName("BACKDROP", "name", udg_ui_BYDJ[0], "template", 0)
    DzFrameSetPoint(udg_ui_BYDJ[1], 8, udg_ui_BYDJ[0], 8, 0.00, -0.003)
    DzFrameSetTexture(udg_ui_BYDJ[1], "war3mapImported\\story.tga", 0)
    DzFrameSetSize(udg_ui_BYDJ[1], 0.03, 0.01)
    udg_ui_BYDJ[2] = DzCreateFrameByTagName("TEXT", "name", udg_ui_BYDJ[0], "template", 0)
    DzFrameSetPoint(udg_ui_BYDJ[2], 8, udg_ui_BYDJ[1], 8, 0.00, 0.00)
    DzFrameSetSize(udg_ui_BYDJ[2], 0.04, 0.04)
    DzFrameSetTextAlignment(udg_ui_BYDJ[2], 100)
    DzFrameSetFont(udg_ui_BYDJ[2], "war3mapImported\\text.ttf", 0.008, 0)
    DzFrameSetText(udg_ui_BYDJ[2], "0")
    udg_ui_BYDJ[3] = DzCreateFrameByTagName("SPRITE", "name", udg_ui_BYDJ[0], "template", 0)
    DzFrameSetPoint(udg_ui_BYDJ[3], 4, udg_ui_BYDJ[0], 4, 0.00, 0.00)
    DzFrameSetSize(udg_ui_BYDJ[3], 0.03, 0.03)
    DzFrameSetModel(udg_ui_BYDJ[3], "war3mapImported\\ui_blingbling.mdx", 0, 0)
    DzFrameShow(udg_ui_BYDJ[3], false)
    SaveStr(YDLOC, 0xD6FB7C74, 0x2D1FF186, LoadStr(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2D1FF186))
    if GetLocalPlayer() == GetLocalPlayer() then
        DzFrameSetScriptByCode(udg_ui_BYDJ[2], 2, Trig_ui_oldFunc021Func021FT, false)
    end
    if GetLocalPlayer() == GetLocalPlayer() then
        DzFrameSetScriptByCode(udg_ui_BYDJ[2], 3, Trig_ui_oldFunc021Func022FT, false)
    end
    if GetLocalPlayer() == GetLocalPlayer() then
        DzFrameSetScriptByCode(udg_ui_BYDJ[2], 1, Trig_ui_oldFunc021Func023FT, false)
    end
    SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xF6D214A2 + (0), DzCreateFrameByTagName("BACKDROP", "name", DzGetGameUI(), "template", 0))
    DzFrameSetTexture(LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xF6D214A2 + (0)), "war3mapImported\\anniuH.tga", 0)
    DzFrameSetAbsolutePoint(LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xF6D214A2 + (0)), 4, 0.72, 0.14)
    DzFrameSetSize(LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xF6D214A2 + (0)), 0.10, 0.04)
    DzFrameShow(LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xF6D214A2 + (0)), false)
    SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xF6D214A2 + (1), DzCreateFrameByTagName("TEXT", "name", LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xF6D214A2 + (0)), "template", 0))
    DzFrameSetPoint(LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xF6D214A2 + (1)), 4, LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xF6D214A2 + (0)), 4, 0, 0)
    DzFrameSetSize(LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xF6D214A2 + (1)), 0.10, 0.04)
    DzFrameSetTextAlignment(LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xF6D214A2 + (1)), -10)
    DzFrameSetFont(LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xF6D214A2 + (1)), "war3mapImported\\text.ttf", 0.015, 0)
    ydul_a = 4
    while true do
        if ydul_a > 7 then
            break
        end
        udg_ui_BYDJ[ydul_a] = DzCreateFrameByTagName("BACKDROP", "name", LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xF6D214A2 + (0)), "template", 0)
        DzFrameSetPoint(udg_ui_BYDJ[ydul_a], 8, udg_JN_BUTTON[(ydul_a + 1)], 8, 0.00, 0.00)
        DzFrameSetTexture(udg_ui_BYDJ[ydul_a], "war3mapImported\\story.tga", 0)
        DzFrameSetSize(udg_ui_BYDJ[ydul_a], 0.03, 0.01)
        udg_ui_BYDJ[(ydul_a + 4)] = DzCreateFrameByTagName("TEXT", "name", udg_ui_BYDJ[ydul_a], "template", 0)
        DzFrameSetPoint(udg_ui_BYDJ[(ydul_a + 4)], 8, udg_ui_BYDJ[ydul_a], 8, 0.00, 0.00)
        DzFrameSetSize(udg_ui_BYDJ[(ydul_a + 4)], 0.04, 0.04)
        DzFrameSetTextAlignment(udg_ui_BYDJ[(ydul_a + 4)], 100)
        DzFrameSetFont(udg_ui_BYDJ[(ydul_a + 4)], "war3mapImported\\text.ttf", 0.008, 0)
        DzFrameSetText(udg_ui_BYDJ[(ydul_a + 4)], "Lv0")
        ydul_a = ydul_a + 1
    end
    SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x757437F8, DzCreateFrameByTagName("SPRITE", "name", LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xF6D214A2 + (0)), "template", 0))
    DzFrameSetSize(LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x757437F8), 0.001, 0.001)
    DzFrameSetModel(LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x757437F8), "war3mapImported\\ui_blingbling3.mdx", 0, 0)
    DzFrameSetPoint(LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x757437F8), 4, DzFrameGetCommandBarButton(2, 0), 6, 0.002, 0.002)
    ForForce(udg_ZXWJZ, Trig_ui_oldFunc021Func024Func013A)
    ydul_a = 1
    while true do
        if ydul_a > 4 then
            break
        end
        udg_UI_shuaxin[ydul_a] = DzCreateFrameByTagName("BACKDROP", "name", DzGetGameUI(), "template", 0)
        DzFrameSetSize(udg_UI_shuaxin[ydul_a], 0.033, 0.033)
        DzFrameShow(udg_UI_shuaxin[ydul_a], true)
        DzFrameSetPoint(udg_UI_shuaxin[ydul_a], 4, udg_JN_BUTTON[ydul_a], 4, 0.00, 0.00)
        DzFrameSetTexture(udg_UI_shuaxin[ydul_a], "war3mapImported\\Alpha.blp", 0)
        udg_UI_shuaxin[(ydul_a + 4)] = DzCreateFrameByTagName("SPRITE", "name", udg_UI_shuaxin[ydul_a], "template", 0)
        DzFrameSetSize(udg_UI_shuaxin[(ydul_a + 4)], 0.033, 0.033)
        DzFrameSetPoint(udg_UI_shuaxin[(ydul_a + 4)], 6, udg_JN_BUTTON[ydul_a], 4, 0.00, 0.00)
        DzFrameShow(udg_UI_shuaxin[(ydul_a + 4)], true)
        udg_UI_shuaxin[(ydul_a + 8)] = DzCreateFrameByTagName("BUTTON", "name", udg_UI_shuaxin[ydul_a], "template", 0)
        DzFrameSetSize(udg_UI_shuaxin[(ydul_a + 8)], 0.033, 0.033)
        DzFrameSetPoint(udg_UI_shuaxin[(ydul_a + 8)], 4, udg_JN_BUTTON[ydul_a], 4, 0.00, 0.00)
        udg_UI_shuaxin[(ydul_a + 12)] = DzCreateFrameByTagName("SPRITE", "name", udg_UI_shuaxin[(ydul_a + 8)], "template", 0)
        DzFrameSetSize(udg_UI_shuaxin[(ydul_a + 12)], 0.033, 0.033)
        DzFrameSetPoint(udg_UI_shuaxin[(ydul_a + 12)], 7, udg_JN_BUTTON[ydul_a], 1, -0.003, -0.004)
        ydul_a = ydul_a + 1
    end
    ydul_a = 1
    while true do
        if ydul_a > 4 then
            break
        end
        udg_ui_zcyp[ydul_a] = DzCreateFrameByTagName("BACKDROP", "name", DzGetGameUI(), "template", 0)
        DzFrameSetSize(udg_ui_zcyp[ydul_a], 0.035, 0.035)
        DzFrameShow(udg_ui_zcyp[ydul_a], true)
        DzFrameSetTexture(udg_ui_zcyp[ydul_a], (("war3mapImported\\ui_zuoce (") .. (I2S(ydul_a)) .. (").tga")), 0)
        ydul_a = ydul_a + 1
    end
    DzFrameSetPoint(udg_ui_zcyp[1], 1, DzFrameGetHeroBarButton(0), 7, 0.002, -0.02)
    ydul_a = 2
    while true do
        if ydul_a > 4 then
            break
        end
        DzFrameSetPoint(udg_ui_zcyp[ydul_a], 1, udg_ui_zcyp[(ydul_a - 1)], 7, 0.00, -0.02)
        ydul_a = ydul_a + 1
    end
    ydul_a = 5
    while true do
        if ydul_a > 8 then
            break
        end
        udg_ui_zcyp[ydul_a] = DzCreateFrameByTagName("GLUETEXTBUTTON", "name", udg_ui_zcyp[(ydul_a - 4)], "template", 0)
        DzFrameSetSize(udg_ui_zcyp[ydul_a], 0.03, 0.03)
        DzFrameSetPoint(udg_ui_zcyp[ydul_a], 4, udg_ui_zcyp[(ydul_a - 4)], 4, 0, 0)
        SaveInteger(YDHT, ((GetHandleId((Player(PLAYER_NEUTRAL_AGGRESSIVE))))), (((udg_ui_zcyp[ydul_a]))), ((ydul_a - 4)))
        if GetLocalPlayer() == GetLocalPlayer() then
            DzFrameSetScriptByCode(udg_ui_zcyp[ydul_a], 1, Trig_ui_oldFunc022Func004Func001Func001Func005FT, false)
        end
        if GetLocalPlayer() == GetLocalPlayer() then
            DzFrameSetScriptByCode(udg_ui_zcyp[ydul_a], 2, Trig_ui_oldFunc022Func004Func001Func001Func006FT, false)
        end
        if GetLocalPlayer() == GetLocalPlayer() then
            DzFrameSetScriptByCode(udg_ui_zcyp[ydul_a], 3, Trig_ui_oldFunc022Func004Func001Func001Func007FT, false)
        end
        ydul_a = ydul_a + 1
    end
    udg_ui_tszb[0] = DzCreateFrameByTagName("BACKDROP", "name", DzGetGameUI(), "template", 0)
    DzFrameSetSize(udg_ui_tszb[0], 0.35, 0.28)
    DzFrameShow(udg_ui_tszb[0], false)
    DzFrameSetTexture(udg_ui_tszb[0], "war3mapImported\\[ui][ts].tga", 0)
    DzFrameSetPoint(udg_ui_tszb[0], 4, DzGetGameUI(), 4, -0.15, 0.07)
    ydul_a = 1
    while true do
        if ydul_a > 12 then
            break
        end
        udg_ui_tszb[ydul_a] = DzCreateFrameByTagName("BACKDROP", "name", udg_ui_tszb[0], "template", 0)
        DzFrameSetSize(udg_ui_tszb[ydul_a], 0.03, 0.03)
        DzFrameSetTexture(udg_ui_tszb[ydul_a], "war3mapImported\\[ui][ts1].tga", 0)
        udg_ui_tszb[(ydul_a + 12)] = DzCreateFrameByTagName("GLUETEXTBUTTON", "name", udg_ui_tszb[(ydul_a + 0)], "template", 0)
        DzFrameSetSize(udg_ui_tszb[(ydul_a + 12)], 0.03, 0.03)
        SaveInteger(YDHT, ((GetHandleId((Player(PLAYER_NEUTRAL_AGGRESSIVE))))), (((udg_ui_tszb[(ydul_a + 12)]))), (ydul_a))
        if GetLocalPlayer() == GetLocalPlayer() then
            DzFrameSetScriptByCode(udg_ui_tszb[(ydul_a + 12)], 2, Trig_ui_oldFunc023Func002Func001Func001Func007FT, false)
        end
        if GetLocalPlayer() == GetLocalPlayer() then
            DzFrameSetScriptByCode(udg_ui_tszb[(ydul_a + 12)], 3, Trig_ui_oldFunc023Func002Func001Func001Func008FT, false)
        end
        ydul_a = ydul_a + 1
    end
    DzFrameSetPoint(udg_ui_tszb[1], 0, udg_ui_tszb[0], 0, 0.11, -0.055)
    DzFrameSetPoint(udg_ui_tszb[2], 3, udg_ui_tszb[1], 5, 0.015, 0.00)
    DzFrameSetPoint(udg_ui_tszb[3], 3, udg_ui_tszb[2], 5, 0.015, 0.00)
    DzFrameSetPoint(udg_ui_tszb[4], 3, udg_ui_tszb[3], 5, 0.015, 0.00)
    DzFrameSetTexture(udg_ui_tszb[4], "war3mapImported\\[ui][ts3].tga", 0)
    DzFrameSetPoint(udg_ui_tszb[5], 1, udg_ui_tszb[1], 7, 0.00, -0.01)
    DzFrameSetPoint(udg_ui_tszb[6], 3, udg_ui_tszb[5], 5, 0.015, 0.00)
    DzFrameSetPoint(udg_ui_tszb[7], 3, udg_ui_tszb[6], 5, 0.015, 0.00)
    DzFrameSetTexture(udg_ui_tszb[7], "war3mapImported\\[ui][ts3].tga", 0)
    DzFrameSetPoint(udg_ui_tszb[8], 1, udg_ui_tszb[5], 7, 0.00, -0.01)
    DzFrameSetPoint(udg_ui_tszb[9], 3, udg_ui_tszb[8], 5, 0.015, 0.00)
    DzFrameSetTexture(udg_ui_tszb[9], "war3mapImported\\[ui][ts3].tga", 0)
    DzFrameSetPoint(udg_ui_tszb[10], 1, udg_ui_tszb[8], 7, 0.00, -0.01)
    DzFrameSetPoint(udg_ui_tszb[11], 3, udg_ui_tszb[10], 5, 0.015, 0.00)
    DzFrameSetTexture(udg_ui_tszb[11], "war3mapImported\\[ui][ts3].tga", 0)
    DzFrameSetPoint(udg_ui_tszb[12], 1, udg_ui_tszb[10], 7, 0.00, -0.01)
    ydul_a = 1
    while true do
        if ydul_a > 12 then
            break
        end
        DzFrameSetPoint(udg_ui_tszb[(ydul_a + 12)], 4, udg_ui_tszb[ydul_a], 4, 0, 0)
        ydul_a = ydul_a + 1
    end
    ForForce(udg_ZXWJZ, Trig_ui_oldFunc023Func002Func008A)
    udg_ui_xs_py[1] = udg_Frame_zdl[0]
    udg_ui_xs_py[2] = udg_ui_tszb[0]
    udg_ui_xs_py[3] = udg_UI_FL[0]
    udg_UI_XL[0] = DzCreateFrameByTagName("BACKDROP", "name", DzGetGameUI(), "template", 0)
    DzFrameSetSize(udg_UI_XL[0], 0.075, 0.015)
    DzFrameSetTexture(udg_UI_XL[0], "war3mapImported\\xuetiaoDD.blp", 0)
    DzFrameSetAbsolutePoint(udg_UI_XL[0], 4, 0.255, 0.0222)
    udg_UI_XL[1] = DzCreateFrameByTagName("TEXT", "name", udg_UI_XL[0], "template", 1)
    DzFrameSetSize(udg_UI_XL[1], 0.09, 0.03)
    DzFrameSetFont(udg_UI_XL[1], "war3mapImported\\text.ttf", 0.012, 0)
    DzFrameSetTextAlignment(udg_UI_XL[1], -10)
    DzFrameSetPoint(udg_UI_XL[1], 4, udg_UI_XL[0], 4, 0.00, 0.00)
    ydul_a = 0
    while true do
        if ydul_a > 3 then
            break
        end
        SaveInteger(YDHT, ((udg_JN_BUTTON[(9 + ydul_a)])), 0x6B954785, (ydul_a + 1))
        SaveInteger(YDHT, ((udg_JN_BUTTON[(1 + ydul_a)])), 0x6B954785, (ydul_a + 1))
        SaveInteger(YDHT, ((udg_JN_BUTTON[(5 + ydul_a)])), 0x6B954785, (ydul_a + 5))
        ydul_a = ydul_a + 1
    end
    ydul_a = 1
    while true do
        if ydul_a > 12 then
            break
        end
        SaveBoolean(YDLOC, 0x0105DBB4, 0xD9BF4A6A, LoadBoolean(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xD9BF4A6A))
        SaveInteger(YDLOC, 0x0105DBB4, 0x960ABFE3, LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x960ABFE3))
        SaveStr(YDLOC, 0x0105DBB4, 0x50E50212, LoadStr(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x50E50212))
        SaveStr(YDLOC, 0x0105DBB4, 0xD625A765, LoadStr(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xD625A765))
        SaveStr(YDLOC, 0x0105DBB4, 0x2D1FF186, LoadStr(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2D1FF186))
        if GetLocalPlayer() == GetLocalPlayer() then
            DzFrameSetScriptByCode(udg_JN_BUTTON[ydul_a], 2, Trig_ui_oldFunc026Func002Func001Func001FT, false)
        end
        if GetLocalPlayer() == GetLocalPlayer() then
            DzFrameSetScriptByCode(udg_JN_BUTTON[ydul_a], 3, Trig_ui_oldFunc026Func002Func001Func002FT, false)
        end
        ydul_a = ydul_a + 1
    end
    ydl_trigger = CreateTrigger()
    DzTriggerRegisterMouseEventTrg(ydl_trigger, 1, 2)
    TriggerAddCondition(ydl_trigger, Condition(Trig_ui_oldFunc026Func002Func002Conditions))
    udg_UI_RWK[0] = DzCreateFrameByTagName("BACKDROP", "name", DzGetGameUI(), "template", 0)
    DzFrameSetTexture(udg_UI_RWK[0], "war3mapImported\\ui_sldy.tga", 0)
    DzFrameSetAbsolutePoint(udg_UI_RWK[0], 4, 0.40, 0.16)
    DzFrameSetSize(udg_UI_RWK[0], 0.45, 0.08)
    DzFrameShow(udg_UI_RWK[0], false)
    udg_UI_RWK[2] = DzCreateFrameByTagName("TEXT", "name", udg_UI_RWK[0], "template", 0)
    DzFrameSetPoint(udg_UI_RWK[2], 4, udg_UI_RWK[0], 4, 0.02, -0.03)
    DzFrameSetSize(udg_UI_RWK[2], 0.18, 0.12)
    DzFrameSetText(udg_UI_RWK[2], (("|cff00ffff") .. ("助手：最近喝水一股海鲜味,肯定是池塘里的螃蟹太多了,是时候净化一下水质了。") .. ("|r")))
    DzFrameSetFont(udg_UI_RWK[2], "war3mapImported\\text.ttf", 0.013, 0)
    udg_UI_RWK[3] = DzCreateFrameByTagName("TEXT", "name", udg_UI_RWK[0], "template", 0)
    DzFrameSetPoint(udg_UI_RWK[3], 2, udg_UI_RWK[0], 2, -0.05, -0.01)
    DzFrameSetSize(udg_UI_RWK[3], 0.08, 0.06)
    DzFrameSetText(udg_UI_RWK[3], (("|cff00ff00任务目标：(") .. ((("1") .. ("/") .. ("10"))) .. ("）|r")))
    DzFrameSetFont(udg_UI_RWK[3], "war3mapImported\\text.ttf", 0.008, 0)
    DzFrameSetTextAlignment(udg_UI_RWK[3], -10)
    udg_UI_RWK[4] = DzCreateFrameByTagName("BACKDROP", "name", udg_UI_RWK[0], "template", 0)
    DzFrameSetTexture(udg_UI_RWK[4], "war3mapImported\\fy-you1.tga", 0)
    DzFrameSetPoint(udg_UI_RWK[4], 7, udg_UI_RWK[0], 7, 0.08, 0.002)
    DzFrameSetSize(udg_UI_RWK[4], 0.02, 0.02)
    udg_UI_RWK[5] = DzCreateFrameByTagName("BUTTON", "name", udg_UI_RWK[4], "template", 0)
    DzFrameSetPoint(udg_UI_RWK[5], 4, udg_UI_RWK[4], 4, 0.00, 0.00)
    DzFrameSetSize(udg_UI_RWK[5], 0.02, 0.02)
    if GetLocalPlayer() == GetLocalPlayer() then
        DzFrameSetScriptByCode(udg_UI_RWK[5], 1, Trig_ui_oldFunc027Func024FT, false)
    end
    if GetLocalPlayer() == GetLocalPlayer() then
        DzFrameSetScriptByCode(udg_UI_RWK[5], 2, Trig_ui_oldFunc027Func025FT, false)
    end
    if GetLocalPlayer() == GetLocalPlayer() then
        DzFrameSetScriptByCode(udg_UI_RWK[5], 3, Trig_ui_oldFunc027Func026FT, false)
    end
    udg_UI_RWK[6] = DzCreateFrameByTagName("BACKDROP", "name", DzGetGameUI(), "template", 0)
    DzFrameSetTexture(udg_UI_RWK[6], "war3mapImported\\fy-you0.tga", 0)
    DzFrameSetPoint(udg_UI_RWK[6], 2, udg_UI_RWK[0], 8, -0.13, 0.00)
    DzFrameSetSize(udg_UI_RWK[6], 0.03, 0.016)
    DzFrameShow(udg_UI_RWK[6], false)
    udg_UI_RWK[7] = DzCreateFrameByTagName("BUTTON", "name", udg_UI_RWK[6], "template", 0)
    DzFrameSetPoint(udg_UI_RWK[7], 4, udg_UI_RWK[6], 4, 0.00, 0.00)
    DzFrameSetSize(udg_UI_RWK[7], 0.03, 0.02)
    if GetLocalPlayer() == GetLocalPlayer() then
        DzFrameSetScriptByCode(udg_UI_RWK[7], 1, Trig_ui_oldFunc027Func035FT, false)
    end
    if GetLocalPlayer() == GetLocalPlayer() then
        DzFrameSetScriptByCode(udg_UI_RWK[7], 2, Trig_ui_oldFunc027Func036FT, false)
    end
    if GetLocalPlayer() == GetLocalPlayer() then
        DzFrameSetScriptByCode(udg_UI_RWK[7], 3, Trig_ui_oldFunc027Func037FT, false)
    end
    ydul_a = 1
    while true do
        if ydul_a > 4 then
            break
        end
        if ((GetPlayerController(ConvertedPlayer(ydul_a)) == MAP_CONTROL_USER) and (GetPlayerSlotState(ConvertedPlayer(ydul_a)) == PLAYER_SLOT_STATE_PLAYING)) then
            SavePlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946, ConvertedPlayer(ydul_a))
            DoNothing()
            if true then
                break
            end
        else
        end
        ydul_a = ydul_a + 1
    end
    udg_UI_XSZD[0] = DzCreateFrameByTagName("BACKDROP", "name", DzGetGameUI(), "template", 0)
    DzFrameSetSize(udg_UI_XSZD[0], 0.80, 0.40)
    DzFrameSetAbsolutePoint(udg_UI_XSZD[0], 7, 0.40, 0.35)
    DzFrameSetTexture(udg_UI_XSZD[0], "war3mapImported\\UI_heisedi.tga", 0)
    DzFrameShow(udg_UI_XSZD[0], true)
    udg_UI_XSZD[1] = DzCreateFrameByTagName("BACKDROP", "name", udg_UI_XSZD[0], "template", 0)
    DzFrameSetSize(udg_UI_XSZD[1], 0.80, 0.40)
    DzFrameSetAbsolutePoint(udg_UI_XSZD[1], 1, 0.40, 0.35)
    DzFrameSetTexture(udg_UI_XSZD[1], "war3mapImported\\UI_heisedi.tga", 0)
    udg_UI_XSZD[2] = DzCreateFrameByTagName("BACKDROP", "name", udg_UI_XSZD[0], "template", 0)
    DzFrameSetSize(udg_UI_XSZD[2], 0.08, 0.03)
    DzFrameSetPoint(udg_UI_XSZD[2], 4, udg_UI_XSZD[0], 4, 0, 0)
    DzFrameSetTexture(udg_UI_XSZD[2], "war3mapImported\\anniuH.tga", 0)
    udg_UI_XSZD[3] = DzCreateFrameByTagName("TEXT", "name", udg_UI_XSZD[0], "template", 0)
    DzFrameSetSize(udg_UI_XSZD[3], 0.08, 0.03)
    DzFrameSetPoint(udg_UI_XSZD[3], 4, udg_UI_XSZD[2], 4, 0, 0)
    DzFrameSetTextAlignment(udg_UI_XSZD[3], -10)
    DzFrameSetText(udg_UI_XSZD[3], "|cff000000请选择难度|r")
    DzFrameSetFont(udg_UI_XSZD[3], "war3mapImported\\text.ttf", 0.017, 0)
    udg_UI_XSZD[13] = DzCreateFrameByTagName("TEXT", "name", udg_UI_XSZD[0], "template", 0)
    DzFrameSetSize(udg_UI_XSZD[13], 0.08, 0.03)
    DzFrameSetPoint(udg_UI_XSZD[13], 3, udg_UI_XSZD[3], 5, 0.10, 0)
    DzFrameSetTextAlignment(udg_UI_XSZD[13], -10)
    DzFrameSetText(udg_UI_XSZD[13], "30")
    DzFrameSetFont(udg_UI_XSZD[13], "war3mapImported\\text.ttf", 0.02, 0)
    ydul_a = 4
    while true do
        if ydul_a > 12 then
            break
        end
        udg_UI_XSZD[ydul_a] = DzCreateFrameByTagName("BACKDROP", "name", udg_UI_XSZD[0], "template", 0)
        DzFrameSetSize(udg_UI_XSZD[ydul_a], 0.05, 0.024)
        DzFrameSetPoint(udg_UI_XSZD[ydul_a], 1, udg_UI_XSZD[(ydul_a - 1)], 7, 0, -0.015)
        DzFrameSetTexture(udg_UI_XSZD[ydul_a], "war3mapImported\\anniuH.tga", 0)
        SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB2E909B5 + (ydul_a), DzCreateFrameByTagName("TEXT", "name", udg_UI_XSZD[ydul_a], "template", 0))
        DzFrameSetSize(LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB2E909B5 + (ydul_a)), 0.08, 0.03)
        DzFrameSetPoint(LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB2E909B5 + (ydul_a)), 4, udg_UI_XSZD[ydul_a], 4, 0, 0)
        DzFrameSetTextAlignment(LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB2E909B5 + (ydul_a)), -10)
        DzFrameSetText(LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB2E909B5 + (ydul_a)), ("|cff000000难度" .. (I2S((ydul_a - 3)) .. "|r")))
        DzFrameSetFont(LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB2E909B5 + (ydul_a)), "war3mapImported\\text.ttf", 0.01, 0)
        SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xEB1F3A7C + (ydul_a), DzCreateFrameByTagName("BUTTON", "name", udg_UI_XSZD[ydul_a], "template", 0))
        DzFrameSetSize(LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xEB1F3A7C + (ydul_a)), 0.05, 0.024)
        DzFrameSetPoint(LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xEB1F3A7C + (ydul_a)), 4, udg_UI_XSZD[ydul_a], 4, 0, 0)
        SaveInteger(YDHT, ((LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xEB1F3A7C + (ydul_a)))), 0x6B954785, ydul_a)
        SaveInteger(YDHT, StringHash(("清除hb")), StringHash((I2S((ydul_a - 3)))), (((LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xEB1F3A7C + (ydul_a))))))
        DzFrameShow(udg_UI_XSZD[ydul_a], false)
        if ((LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946) == GetLocalPlayer())) then
            DzFrameShow(udg_UI_XSZD[ydul_a], true)
        else
        end
        if GetLocalPlayer() == GetLocalPlayer() then
            DzFrameSetScriptByCode(LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xEB1F3A7C + (ydul_a)), 1, Trig_ui_oldFunc028Func019Func018FT, false)
        end
        if GetLocalPlayer() == GetLocalPlayer() then
            DzFrameSetScriptByCode(LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xEB1F3A7C + (ydul_a)), 2, Trig_ui_oldFunc028Func019Func019FT, false)
        end
        if GetLocalPlayer() == GetLocalPlayer() then
            DzFrameSetScriptByCode(LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xEB1F3A7C + (ydul_a)), 3, Trig_ui_oldFunc028Func019Func020FT, false)
        end
        ydul_a = ydul_a + 1
    end
    ydl_timer = CreateTimer()
    SaveInteger(YDLOC, GetHandleId(ydl_timer), 0x6C2DED4E, 30)
    SaveDialogHandle(YDLOC, GetHandleId(ydl_timer), 0x18B9F5BC, LoadDialogHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x18B9F5BC))
    TimerStart(ydl_timer, 1.00, true, Trig_ui_oldFunc028Func020T)
    udg_UI_YX[0] = DzCreateFrameByTagName("BACKDROP", "cfcj", DzGetGameUI(), "template", 1)
    DzFrameSetTexture(udg_UI_YX[0], "war3mapImported\\yxxz-mb.tga", 0)
    DzFrameSetAbsolutePoint(udg_UI_YX[0], 4, 0.40, 0.35)
    DzFrameSetSize(udg_UI_YX[0], 0.47, 0.33)
    DzFrameShow(udg_UI_YX[0], false)
    udg_UI_YX[1] = DzCreateFrameByTagName("BACKDROP", "name", udg_UI_YX[0], "template", 0)
    DzFrameSetTexture(udg_UI_YX[1], "war3mapImported\\buitton-yxlx1.tga", 0)
    DzFrameSetPoint(udg_UI_YX[1], 8, udg_UI_YX[0], 8, -0.065, 0.01)
    DzFrameSetSize(udg_UI_YX[1], 0.065, 0.03)
    udg_UIYXanniu[1] = DzCreateFrameByTagName("BUTTON", "name", udg_UI_YX[0], "template", 0)
    DzFrameSetPoint(udg_UIYXanniu[1], 4, udg_UI_YX[1], 4, 0, 0)
    DzFrameSetSize(udg_UIYXanniu[1], 0.065, 0.03)
    if GetLocalPlayer() == GetLocalPlayer() then
        DzFrameSetScriptByCode(udg_UIYXanniu[1], 4, Trig_ui_oldFunc028Func021Func006Func005Func004FT, false)
    end
    if GetLocalPlayer() == GetLocalPlayer() then
        DzFrameSetScriptByCode(udg_UIYXanniu[1], 1, Trig_ui_oldFunc028Func021Func006Func005Func005FT, false)
    end
    udg_UIFL_tEXTYX[1] = DzCreateFrameByTagName("BACKDROP", "name", udg_UI_YX[0], "template", 0)
    DzFrameSetPoint(udg_UIFL_tEXTYX[1], 0, udg_UI_YX[0], 0, 0.30, -0.035)
    DzFrameSetTexture(udg_UIFL_tEXTYX[1], "war3mapImported\\UI_WPK.tga", 0)
    DzFrameSetSize(udg_UIFL_tEXTYX[1], 0.028, 0.033)
    DzFrameShow(udg_UIFL_tEXTYX[1], true)
    udg_UIFL_tEXTYX[0] = DzCreateFrameByTagName("TEXT", "name", udg_UIFL_tEXTYX[1], "template", 0)
    DzFrameSetText(udg_UIFL_tEXTYX[0], YDWEGetPlayerColorString(Player(2), "英雄选择"))
    DzFrameSetPoint(udg_UIFL_tEXTYX[0], 0, udg_UIFL_tEXTYX[1], 2, 0.003, 0.00)
    DzFrameSetFont(udg_UIFL_tEXTYX[0], "war3mapImported\\text.ttf", 0.01, 0)
    DzFrameSetSize(udg_UIFL_tEXTYX[0], 0.12, 0.01)
    udg_UIFL_tEXTYX[2] = DzCreateFrameByTagName("TEXT", "name", udg_UIFL_tEXTYX[1], "template", 0)
    DzFrameSetText(udg_UIFL_tEXTYX[2], YDWEGetPlayerColorString(Player(2), "擅长武器：键盘"))
    DzFrameSetPoint(udg_UIFL_tEXTYX[2], 0, udg_UIFL_tEXTYX[0], 6, 0.003, -0.01)
    DzFrameSetFont(udg_UIFL_tEXTYX[2], "war3mapImported\\text.ttf", 0.01, 0)
    DzFrameSetSize(udg_UIFL_tEXTYX[2], 0.12, 0.01)
    udg_UIFL_tEXTYX[3] = DzCreateFrameByTagName("TEXT", "name", udg_UIFL_tEXTYX[1], "template", 0)
    DzFrameSetText(udg_UIFL_tEXTYX[3], YDWEGetPlayerColorString(Player(11), "|cff00ffff====选择一位已激活的英雄带你闯荡修仙世界=====|r|cffffff00|n你可能会死在这里|n但是你别无选择|r"))
    DzFrameSetPoint(udg_UIFL_tEXTYX[3], 0, udg_UIFL_tEXTYX[1], 6, 0, -0.025)
    DzFrameSetFont(udg_UIFL_tEXTYX[3], "war3mapImported\\text.ttf", 0.012, 0)
    DzFrameSetSize(udg_UIFL_tEXTYX[3], 0.12, 0.20)
    ydul_a = 15
    while true do
        if ydul_a > 20 then
            break
        end
        udg_UI_YX[ydul_a] = DzCreateFrameByTagName("BACKDROP", "name", udg_UI_YX[0], "template", 0)
        DzFrameSetSize(udg_UI_YX[ydul_a], 0.028, 0.028)
        ydul_a = ydul_a + 1
    end
    DzFrameSetPoint(udg_UI_YX[15], 0, udg_UI_YX[0], 0, 0.023, -0.05)
    ydul_a = 16
    while true do
        if ydul_a > 20 then
            break
        end
        DzFrameSetPoint(udg_UI_YX[ydul_a], 3, udg_UI_YX[(ydul_a - 1)], 5, 0.013, 0.00)
        ydul_a = ydul_a + 1
    end
    ydul_a = 15
    while true do
        if ydul_a > 20 then
            break
        end
        DzFrameSetTexture(udg_UI_YX[ydul_a], "war3mapImported\\Alpha.blp", 0)
        udg_UIYXanniu[ydul_a] = DzCreateFrameByTagName("BUTTON", "name", udg_UI_YX[ydul_a], "template", 0)
        DzFrameSetPoint(udg_UIYXanniu[ydul_a], 4, udg_UI_YX[ydul_a], 4, 0, 0)
        DzFrameSetSize(udg_UIYXanniu[ydul_a], 0.028, 0.028)
        SaveInteger(YDHT, ((udg_UIYXanniu[ydul_a])), 0x6B954785, ydul_a)
        if GetLocalPlayer() == GetLocalPlayer() then
            DzFrameSetScriptByCode(udg_UIYXanniu[ydul_a], 1, Trig_ui_oldFunc028Func021Func009Func003Func002Func005FT, false)
        end
        ydul_a = ydul_a + 1
    end
    udg_UI = DzCreateFrameByTagName("TEXT", "name", DzGetGameUI(), "template", 0)
    DzFrameSetFont(udg_UI, "war3mapImported\\text.ttf", 0.02, 0)
    ydl_trigger = gg_trg_UI_TEXT_002
    ydl_triggerstep = GetHandleId(ydl_trigger) * (LoadInteger(YDLOC, GetHandleId(ydl_trigger), 0xCFDE6C76) + 3)
    udg_UIzx[0] = "我本仙帝,因触犯天条 被玉帝带着众神将我逼下诛仙台|n堕入轮回|n这一次我要夺回我失去的一切|n|n 请等待主机选择难度……|n仙君……快醒醒……"
    SaveReal(YDLOC, ydl_triggerstep, 0x0050BBB8, 0.03)
    DzFrameSetAbsolutePoint(udg_UI, 0, 0.15, 0.45)
    DzFrameSetSize(udg_UI, 0.14, 0.40)
    DzFrameSetParent(udg_UI, udg_UI_XSZD[0])
    DzFrameShow(udg_UI, true)
    TriggerExecute(ydl_trigger)
    ydul_a = 1
    while true do
        if ydul_a > 5 then
            break
        end
        SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x8B80C06B + (ydul_a), DzCreateFrameByTagName("SPRITE", "name", DzGetGameUI(), "template", 0))
        DzFrameSetSize(LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x8B80C06B + (ydul_a)), 0.03, 0.03)
        DzFrameShow(LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x8B80C06B + (ydul_a)), false)
        ydul_a = ydul_a + 1
    end
    DzFrameSetModel(LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x8B80C06B + (1)), "war3mapImported\\ui_buttone.mdx", 0, 0)
    DzFrameSetModel(LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x8B80C06B + (2)), "war3mapImported\\ui_blingbling3.mdx", 0, 0)
    DzFrameSetModel(LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x8B80C06B + (3)), "war3mapImported\\ui_blingbling.mdx", 0, 0)
    DzFrameSetModel(LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x8B80C06B + (4)), "ui_blingbling2.mdx", 0, 0)
    udg_Highlight = LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x8B80C06B + (1))
    udg_GAOLIANG_UI = LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x8B80C06B + (2))
    udg_GAOLIANG_UI2 = LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x8B80C06B + (3))
    udg_GAOLIANG_UI3[0] = LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x8B80C06B + (4))
    udg_GAOLIANG_UI3[1] = LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x8B80C06B + (5))
    udg_UI_wpxs[0] = DzCreateFrameByTagName("BACKDROP", "name", DzGetGameUI(), "template", 0)
    DzFrameSetTexture(udg_UI_wpxs[0], "war3mapImported\\UI_WPK.tga", 0)
    udg_UI_wpxs[1] = DzCreateFrameByTagName("BACKDROP", "name", udg_UI_wpxs[0], "template", 0)
    DzFrameSetTexture(udg_UI_wpxs[1], "war3mapImported\\UI_WPK.tga", 0)
    DzFrameSetSize(udg_UI_wpxs[1], 0.03, 0.03)
    udg_UI_wpxs[2] = DzCreateFrameByTagName("TEXT", "name", udg_UI_wpxs[0], "template", 0)
    DzFrameSetFont(udg_UI_wpxs[2], "war3mapImported\\text.ttf", 0.013, 0)
    udg_UI_wpxs[3] = DzCreateFrameByTagName("TEXT", "name", udg_UI_wpxs[0], "template", 0)
    DzFrameSetFont(udg_UI_wpxs[3], "war3mapImported\\text.ttf", 0.0105, 0)
    udg_UI_wpxs[4] = DzCreateFrameByTagName("TEXT", "name", udg_UI_wpxs[0], "template", 0)
    DzFrameSetFont(udg_UI_wpxs[4], "war3mapImported\\text.ttf", 0.01, 0)
    udg_UI_wpxs[5] = DzCreateFrameByTagName("TEXT", "name", udg_UI_wpxs[0], "template", 0)
    DzFrameSetFont(udg_UI_wpxs[5], "war3mapImported\\text.ttf", 0.01, 0)
    ydul_a = 0
    while true do
        if ydul_a > 5 then
            break
        end
        SaveInteger(YDHT, ((DzFrameGetItemBarButton(ydul_a))), 0x6B954785, ydul_a)
        if GetLocalPlayer() == GetLocalPlayer() then
            DzFrameSetScriptByCode(DzFrameGetItemBarButton(ydul_a), 2, Trig_ui_oldFunc031Func014Func002FT, false)
        end
        if GetLocalPlayer() == GetLocalPlayer() then
            DzFrameSetScriptByCode(DzFrameGetItemBarButton(ydul_a), 3, Trig_ui_oldFunc031Func014Func003FT, false)
        end
        ydul_a = ydul_a + 1
    end
    FlushChildHashtable(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step)
    ydl_trigger = nil
    ydl_timer = nil
end

function InitTrig_ui_old()
    gg_trg_ui_old = CreateTrigger()
    TriggerRegisterTimerEventSingle(gg_trg_ui_old, 0.00)
    TriggerAddAction(gg_trg_ui_old, Trig_ui_oldActions)
end

function Trig_UI_buttonActions()
    udg_JN_BUTTON[1] = DzFrameGetCommandBarButton(0, 0)
    udg_JN_BUTTON[2] = DzFrameGetCommandBarButton(0, 1)
    udg_JN_BUTTON[3] = DzFrameGetCommandBarButton(0, 2)
    udg_JN_BUTTON[4] = DzFrameGetCommandBarButton(0, 3)
    udg_JN_BUTTON[5] = DzFrameGetCommandBarButton(1, 0)
    udg_JN_BUTTON[6] = DzFrameGetCommandBarButton(1, 1)
    udg_JN_BUTTON[7] = DzFrameGetCommandBarButton(1, 2)
    udg_JN_BUTTON[8] = DzFrameGetCommandBarButton(1, 3)
    udg_JN_BUTTON[9] = DzFrameGetCommandBarButton(2, 0)
    udg_JN_BUTTON[10] = DzFrameGetCommandBarButton(2, 1)
    udg_JN_BUTTON[11] = DzFrameGetCommandBarButton(2, 2)
    udg_JN_BUTTON[12] = DzFrameGetCommandBarButton(2, 3)
    bj_forLoopAIndex = 1
    bj_forLoopAIndexEnd = 12
    while true do
        if bj_forLoopAIndex > bj_forLoopAIndexEnd then
            break
        end
        DzFrameClearAllPoints(udg_JN_BUTTON[bj_forLoopAIndex])
        bj_forLoopAIndex = bj_forLoopAIndex + 1
    end
    DzFrameSetPoint(DzFrameGetCommandBarButton(0, 3), 8, DzGetGameUI(), 5, -0.012, -0.218)
    DzFrameSetPoint(DzFrameGetCommandBarButton(0, 2), 5, DzFrameGetCommandBarButton(0, 3), 3, -0.002, 0)
    DzFrameSetPoint(DzFrameGetCommandBarButton(0, 1), 5, DzFrameGetCommandBarButton(0, 2), 3, -0.003, 0)
    DzFrameSetPoint(DzFrameGetCommandBarButton(0, 0), 5, DzFrameGetCommandBarButton(0, 1), 3, -0.003, 0)
    DzFrameSetPoint(DzFrameGetCommandBarButton(1, 3), 1, DzFrameGetCommandBarButton(0, 3), 7, 0, -0.0035)
    DzFrameSetPoint(DzFrameGetCommandBarButton(1, 2), 5, DzFrameGetCommandBarButton(1, 3), 3, -0.002, 0)
    DzFrameSetPoint(DzFrameGetCommandBarButton(1, 1), 5, DzFrameGetCommandBarButton(1, 2), 3, -0.003, 0)
    DzFrameSetPoint(DzFrameGetCommandBarButton(1, 0), 5, DzFrameGetCommandBarButton(1, 1), 3, -0.003, 0)
    DzFrameSetPoint(DzFrameGetCommandBarButton(2, 3), 1, DzFrameGetCommandBarButton(1, 3), 7, 0, -0.0035)
    DzFrameSetPoint(DzFrameGetCommandBarButton(2, 2), 5, DzFrameGetCommandBarButton(2, 3), 3, -0.002, 0)
    DzFrameSetPoint(DzFrameGetCommandBarButton(2, 1), 5, DzFrameGetCommandBarButton(2, 2), 3, -0.003, 0)
    DzFrameSetPoint(DzFrameGetCommandBarButton(2, 0), 5, DzFrameGetCommandBarButton(2, 1), 3, -0.003, 0)
    DzFrameSetSize(DzFrameGetCommandBarButton(0, 3), 0.035, 0.035)
    DzFrameSetSize(DzFrameGetCommandBarButton(0, 2), 0.035, 0.035)
    DzFrameSetSize(DzFrameGetCommandBarButton(0, 1), 0.035, 0.035)
    DzFrameSetSize(DzFrameGetCommandBarButton(0, 0), 0.035, 0.035)
    DzFrameSetSize(DzFrameGetCommandBarButton(1, 3), 0.035, 0.035)
    DzFrameSetSize(DzFrameGetCommandBarButton(1, 2), 0.035, 0.035)
    DzFrameSetSize(DzFrameGetCommandBarButton(1, 1), 0.035, 0.035)
    DzFrameSetSize(DzFrameGetCommandBarButton(1, 0), 0.035, 0.035)
    DzFrameSetSize(DzFrameGetCommandBarButton(2, 3), 0.035, 0.035)
    DzFrameSetSize(DzFrameGetCommandBarButton(2, 2), 0.035, 0.035)
    DzFrameSetSize(DzFrameGetCommandBarButton(2, 1), 0.035, 0.035)
    DzFrameSetSize(DzFrameGetCommandBarButton(2, 0), 0.035, 0.035)
    DestroyTrigger(GetTriggeringTrigger())
end

function InitTrig_UI_button()
    gg_trg_UI_button = CreateTrigger()
    TriggerAddAction(gg_trg_UI_button, Trig_UI_buttonActions)
end

function Trig_UI_TBSJFunc016Func001Func002Func014Conditions()
    local ydl_group = nil
    local ydl_unit = nil
    SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0x6C2DED4E, (LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0x6C2DED4E) - 1))
    DisplayTimedTextToPlayer(ConvertedPlayer(LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0x6F96F2D2)), 0, 0, 5.00, ("[系统]：" .. YDWEGetPlayerColorString(Player(2), ("雷劫即将到来：" .. I2S(LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0x6C2DED4E))))))
    if ((LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0x6C2DED4E) == 0)) then
        ydl_group = CreateGroup()
        GroupEnumUnitsInRange(ydl_group, udg_LGFZB_x[LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0x6F96F2D2)], udg_LGFZB_y[LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0x6F96F2D2)], 1000.00, nil)
        while true do
            ydl_unit = FirstOfGroup(ydl_group)
            if ydl_unit == nil then
                break
            end
            GroupRemoveUnit(ydl_group, ydl_unit)
            if ((ydl_unit == udg_WJYX[LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0x6F96F2D2)])) then
                UnitDamageTargetBJ(gg_unit_Hamg_0014, ydl_unit, LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()), 0x6DD3A3AB), ATTACK_TYPE_NORMAL, DAMAGE_TYPE_NORMAL)
                if ((IsUnitAliveBJ(ydl_unit) == true)) then
                    DestroyEffect(AddSpecialEffectTarget("E\\[e] (14).mdl", ydl_unit, "origin"))
                    YDWETimerDestroyEffect(0.50, AddSpecialEffectTarget("G\\[g] (25).mdl", udg_WJYX[LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0x6F96F2D2)], "chest"))
                    AddPlayerTechResearched(ConvertedPlayer(LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0x6F96F2D2)), 0x52303030, 1)
                    SaveInteger(YDHT, GetHandleId(ConvertedPlayer(LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0x6F96F2D2))), 0x861E1815, (LoadInteger(YDHT, GetHandleId(ConvertedPlayer(LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0x6F96F2D2))), 0x861E1815) + 1))
                    DisplayTimedTextToPlayer(ConvertedPlayer(LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0x6F96F2D2)), 0, 0, 5.00, ("[系统]：" .. YDWEGetPlayerColorString(Player(2), "渡劫成功。")))
                    SuspendHeroXPBJ(true, udg_WJYX[LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0x6F96F2D2)])
                    ShowUnit((LoadUnitHandle(YDHT, ((GetHandleId((ConvertedPlayer(LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0x6F96F2D2)))))), (StringHash("09NPC")))), true)
                    YDWETimerDestroyEffect(0.50, AddSpecialEffectTarget("G\\[g] (11).mdl", (LoadUnitHandle(YDHT, ((GetHandleId((ConvertedPlayer(LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0x6F96F2D2)))))), (StringHash("09NPC")))), "chest"))
                    if ((ConvertedPlayer(LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0x6F96F2D2)) == GetLocalPlayer())) then
                        DzFrameSetAnimateOffset(udg_ui_sjtz[2], 0.00)
                        DzFrameSetTexture(udg_ui_sjtz[4], "war3mapImported\\Alpha.blp", 0)
                        DzFrameShow(udg_ui_sjtz[7], false)
                    else
                    end
                    SelectUnitForPlayerSingle((LoadUnitHandle(YDHT, ((GetHandleId((ConvertedPlayer(LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0x6F96F2D2)))))), (StringHash("09NPC")))), LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()), 0x48656946))
                    SaveLocationHandle(YDLOC, GetHandleId(GetTriggeringTrigger()), 0x9CD60476, GetUnitLoc((LoadUnitHandle(YDHT, ((GetHandleId((ConvertedPlayer(LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0x6F96F2D2)))))), (StringHash("09NPC"))))))
                    PanCameraToTimedLocForPlayer(ConvertedPlayer(LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0x6F96F2D2)), LoadLocationHandle(YDLOC, GetHandleId(GetTriggeringTrigger()), 0x9CD60476), 1.00)
                    RemoveLocation(LoadLocationHandle(YDLOC, GetHandleId(GetTriggeringTrigger()), 0x9CD60476))
                else
                    DisplayTimedTextToPlayer(ConvertedPlayer(LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0x6F96F2D2)), 0, 0, 5.00, ("[系统]：" .. YDWEGetPlayerColorString(Player(2), "很遗憾,你没能扛住本次雷劫,请再次努力吧。")))
                end
            else
            end
        end
        DestroyGroup(ydl_group)
        RemoveSavedBoolean(YDHT, GetHandleId(ConvertedPlayer(LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0x6F96F2D2))), 0x2DE8DAB2)
        FlushChildHashtable(YDLOC, GetHandleId(GetTriggeringTrigger()))
        DestroyTrigger(GetTriggeringTrigger())
    else
    end
    ydl_group = nil
    ydl_unit = nil
end

function Trig_UI_TBSJFunc017Func001Func009Func008Func005Func002A()
    local ydul_a = nil
    udg_YXC[GetConvertedPlayerId(GetEnumPlayer())] = CreateUnitPool()
    bj_forLoopBIndex = 1
    bj_forLoopBIndexEnd = 21
    while true do
        if bj_forLoopBIndex > bj_forLoopBIndexEnd then
            break
        end
        UnitPoolAddUnitType(udg_YXC[GetConvertedPlayerId(GetEnumPlayer())], udg_YXXZ[bj_forLoopBIndex], S2R(EXExecuteScript("(require'jass.slk').unit[" .. I2S(udg_YXXZ[bj_forLoopBIndex]) .. "].regenMana")))
        bj_forLoopBIndex = bj_forLoopBIndex + 1
    end
    ydul_a = 15
    while true do
        if ydul_a > 19 then
            break
        end
        SaveUnitHandle(YDLOC, GetHandleId(GetTriggeringTrigger()), 0x96DC5279, PlaceRandomUnit(udg_YXC[GetConvertedPlayerId(GetEnumPlayer())], Player(PLAYER_NEUTRAL_AGGRESSIVE), 0, 0, 0))
        UnitPoolRemoveUnitType(udg_YXC[GetConvertedPlayerId(GetEnumPlayer())], GetUnitTypeId(LoadUnitHandle(YDLOC, GetHandleId(GetTriggeringTrigger()), 0x96DC5279)))
        SaveInteger(YDHT, ((GetHandleId((GetEnumPlayer())))), (((udg_UI_YX[ydul_a]))), (GetUnitTypeId(LoadUnitHandle(YDLOC, GetHandleId(GetTriggeringTrigger()), 0x96DC5279))))
        if ((GetEnumPlayer() == GetLocalPlayer())) then
            DzFrameSetTexture(udg_UI_YX[ydul_a], (EXExecuteScript("(require'jass.slk').unit[" .. I2S(GetUnitTypeId(LoadUnitHandle(YDLOC, GetHandleId(GetTriggeringTrigger()), 0x96DC5279))) .. "].Art")), 0)
        else
        end
        RemoveUnit(LoadUnitHandle(YDLOC, GetHandleId(GetTriggeringTrigger()), 0x96DC5279))
        SaveUnitHandle(YDLOC, GetHandleId(GetTriggeringTrigger()), 0x96DC5279, nil)
        ydul_a = ydul_a + 1
    end
    DestroyUnitPool(udg_YXC[GetConvertedPlayerId(GetEnumPlayer())])
end

function Trig_UI_TBSJFunc017Func001Func009Func008Func006Func023Func005Func009FT()
    if ((IsSuspendedXP(udg_WJYX[GetConvertedPlayerId(DzGetTriggerUIEventPlayer())]) == true)) then
        DzFrameSetTexture(udg_ui_sjtz[4], "war3mapImported\\ui_tp (2).tga", 0)
    else
    end
end

function Trig_UI_TBSJFunc017Func001Func009Func008Func006Func023Func005Func010FT()
    if ((IsSuspendedXP(udg_WJYX[GetConvertedPlayerId(DzGetTriggerUIEventPlayer())]) == true)) then
        DzFrameSetTexture(udg_ui_sjtz[4], "war3mapImported\\ui_tp (1).tga", 0)
    else
    end
end

function Trig_UI_TBSJFunc017Func001Func009Func008Func006Func023Func005Func011FT()
    if ((IsSuspendedXP(udg_WJYX[GetConvertedPlayerId(DzGetTriggerUIEventPlayer())]) == true)) then
        DzSyncData("yxqd", "tp")
    else
    end
end

function Trig_UI_TBSJFunc017Func001Func009Conditions()
    local ydul_a = nil
    SaveReal(YDLOC, GetHandleId(GetTriggeringTrigger()), 0x9DF9DFA7, (LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()), 0x9DF9DFA7) + 0.01))
    SaveReal(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xBF5A8F68, (LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xBF5A8F68) - 0.01))
    DzFrameSetAbsolutePoint(udg_UI_XSZD[0], 7, 0.40, LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()), 0x9DF9DFA7))
    DzFrameSetAbsolutePoint(udg_UI_XSZD[1], 1, 0.40, LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xBF5A8F68))
    if ((LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()), 0x9DF9DFA7) >= 0.60)) then
        DzFrameShow(udg_UI_XSZD[1], false)
        DzFrameShow(udg_UI_XSZD[0], false)
        ydul_a = 2
        while true do
            if ydul_a > 12 then
                break
            end
            RemoveSavedInteger(YDHT, (LoadInteger(YDHT, StringHash(("清除hb")), StringHash((I2S((ydul_a - 1)))))), 0x6B954785)
            ydul_a = ydul_a + 1
        end
        DzFrameShow(udg_UI_YX[0], true)
        ForForce(udg_ZXWJZ, Trig_UI_TBSJFunc017Func001Func009Func008Func005Func002A)
        udg_ui_sjtz[0] = DzCreateFrameByTagName("BACKDROP", "name", DzGetGameUI(), "template", 0)
        DzFrameSetTexture(udg_ui_sjtz[0], "war3mapImported\\ui_xiton.tga", 0)
        DzFrameSetPoint(udg_ui_sjtz[0], 7, DzGetGameUI(), 7, 0.00, 0.083)
        DzFrameSetSize(udg_ui_sjtz[0], 0.2, 0.019)
        DzFrameShow(udg_ui_sjtz[0], true)
        udg_ui_sjtz[1] = DzCreateFrameByTagName("SPRITE", "name", udg_ui_sjtz[0], "template", 0)
        DzFrameSetModel(udg_ui_sjtz[1], "UI_CS (23).mdx", 0, 0)
        DzFrameSetSize(udg_ui_sjtz[1], 0.1, 0.005)
        DzFrameSetPoint(udg_ui_sjtz[1], 7, DzGetGameUI(), 7, -0.05, 0.085)
        DzFrameSetModel(udg_ui_sjtz[1], "UI_CS (23).mdx", 0, 0)
        DzFrameSetAnimate(udg_ui_sjtz[1], 1, true)
        DzFrameSetAnimateOffset(udg_ui_sjtz[1], 1.00)
        DzFrameShow(udg_ui_sjtz[1], false)
        udg_ui_sjtz[2] = DzCreateFrameByTagName("SPRITE", "name", udg_ui_sjtz[1], "template", 0)
        DzFrameSetModel(udg_ui_sjtz[2], "UI_CS (24).mdx", 0, 0)
        DzFrameSetSize(udg_ui_sjtz[2], 0.1, 0.005)
        DzFrameSetPoint(udg_ui_sjtz[2], 5, udg_ui_sjtz[1], 5, 0.00, 0.00)
        DzFrameSetAnimate(udg_ui_sjtz[2], 0, false)
        DzFrameSetAnimateOffset(udg_ui_sjtz[2], 0.00)
        udg_ui_sjtz[5] = DzCreateFrameByTagName("TEXT", "name", udg_ui_sjtz[1], "template", 0)
        DzFrameSetSize(udg_ui_sjtz[5], 0.10, 0.01)
        DzFrameSetPoint(udg_ui_sjtz[5], 4, udg_ui_sjtz[0], 4, 0.00, 0.005)
        DzFrameSetText(udg_ui_sjtz[5], (((YDWEGetPlayerColorString(Player(4), "等级：") .. "1")) .. ("") .. ("")))
        DzFrameSetFont(udg_ui_sjtz[5], "war3mapImported\\text.ttf", 0.008, 0)
        DzFrameSetTextAlignment(udg_ui_sjtz[5], -10)
        udg_ui_sjtz[4] = DzCreateFrameByTagName("BACKDROP", "name", udg_ui_sjtz[5], "template", 0)
        DzFrameSetSize(udg_ui_sjtz[4], 0.08, 0.03)
        DzFrameSetPoint(udg_ui_sjtz[4], 7, udg_ui_sjtz[5], 7, 0.00, 0.00)
        DzFrameSetTexture(udg_ui_sjtz[4], "war3mapImported\\Alpha.blp", 0)
        udg_ui_sjtz[6] = DzCreateFrameByTagName("GLUETEXTBUTTON", "name", udg_ui_sjtz[2], "template", 0)
        DzFrameSetPoint(udg_ui_sjtz[6], 4, udg_ui_sjtz[4], 4, 0.00, 0.00)
        DzFrameSetSize(udg_ui_sjtz[6], 0.08, 0.03)
        udg_ui_sjtz[7] = DzCreateFrameByTagName("SPRITE", "name", udg_ui_sjtz[6], "template", 0)
        DzFrameSetSize(udg_ui_sjtz[7], 0.08, 0.03)
        DzFrameSetPoint(udg_ui_sjtz[7], 4, udg_ui_sjtz[4], 4, 0.00, 0.00)
        DzFrameSetModel(udg_ui_sjtz[7], "war3mapImported\\ui_blingbling4.mdx", 0, 0)
        DzFrameShow(udg_ui_sjtz[7], false)
        if GetLocalPlayer() == GetLocalPlayer() then
            DzFrameSetScriptByCode(udg_ui_sjtz[6], 2, Trig_UI_TBSJFunc017Func001Func009Func008Func006Func023Func005Func009FT, false)
        end
        if GetLocalPlayer() == GetLocalPlayer() then
            DzFrameSetScriptByCode(udg_ui_sjtz[6], 3, Trig_UI_TBSJFunc017Func001Func009Func008Func006Func023Func005Func010FT, false)
        end
        if GetLocalPlayer() == GetLocalPlayer() then
            DzFrameSetScriptByCode(udg_ui_sjtz[6], 1, Trig_UI_TBSJFunc017Func001Func009Func008Func006Func023Func005Func011FT, false)
        end
        DzFrameShow(udg_UI_HQTB[0], true)
        ydul_a = 1
        while true do
            if ydul_a > 9 then
                break
            end
            DzFrameShow(udg_UI_9GG[ydul_a], true)
            ydul_a = ydul_a + 1
        end
        FlushChildHashtable(YDLOC, GetHandleId(GetTriggeringTrigger()))
        DestroyTrigger(GetTriggeringTrigger())
    else
    end
end

function Trig_UI_TBSJFunc017Func001Func012Func001Func005A()
    local ydl_triggerstep = nil
    local ydl_trigger = nil
    SaveInteger(YDHT, GetHandleId(GetEnumPlayer()), 0x9D65F313, (0x59583031))
    if ((udg_WJYX[GetConvertedPlayerId(GetEnumPlayer())] == nil)) then
        ydl_trigger = gg_trg_wendaxuanren6
        ydl_triggerstep = GetHandleId(ydl_trigger) * (LoadInteger(YDLOC, GetHandleId(ydl_trigger), 0xCFDE6C76) + 3)
        SavePlayerHandle(YDLOC, ydl_triggerstep, 0x48656946, GetEnumPlayer())
        TriggerExecute(ydl_trigger)
    else
    end
    ydl_trigger = nil
end

function Trig_UI_TBSJFunc017Func001Func012Func001Conditions()
    local ydul_a = nil
    RemoveSavedInteger(YDHT, ((udg_UI_YX[0])), 0x55D59A4B)
    ydul_a = 15
    while true do
        if ydul_a > 44 then
            break
        end
        RemoveSavedInteger(YDHT, ((udg_UIYXanniu[ydul_a])), 0x6B954785)
        ydul_a = ydul_a + 1
    end
    DisplayTextToPlayer(GetLocalPlayer(), 0, 0, (YDWEGetPlayerColorString(Player(2), "[系统]：") .. YDWEGetPlayerColorString(Player(0), "：游戏时间超过60秒,关闭选人界面。")))
    ForForce(udg_ZXWJZ, Trig_UI_TBSJFunc017Func001Func012Func001Func005A)
    DzFrameShow(udg_UI_YX[0], false)
    FlushChildHashtable(YDLOC, GetHandleId(GetTriggeringTrigger()))
    DestroyTrigger(GetTriggeringTrigger())
end

function Trig_UI_TBSJActions()
    local ydl_triggerstep = nil
    local ydl_trigger = nil
    local ydul_a = nil
    local ydul_b = nil
    local ydl_localvar_step = LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xCFDE6C76)
    ydl_localvar_step = ydl_localvar_step + 3
    SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xCFDE6C76, ydl_localvar_step)
    SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xECE825E7, ydl_localvar_step)
    DisableTrigger(GetTriggeringTrigger())
    SavePlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946, DzGetTriggerSyncPlayer())
    SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x6F96F2D2, GetConvertedPlayerId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)))
    if ((SubStringBJ(DzGetTriggerSyncData(), 1, 2) == "sf")) then
        if ((DzGetTriggerSyncData() == "1")) then
            SaveBoolean(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0xF5D496B8, true)
        else
        end
        if ((DzGetTriggerSyncData() == "2")) then
            SaveBoolean(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0xF5D496B8, false)
        else
        end
        if ((DzGetTriggerSyncData() == "3")) then
            SaveBoolean(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x75A6BFC4, false)
        else
        end
        if ((DzGetTriggerSyncData() == "4")) then
            SaveBoolean(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x75A6BFC4, true)
        else
        end
    else
    end
    if ((SubStringBJ(DzGetTriggerSyncData(), 1, 2) == "zc")) then
        if (((LoadBoolean(YDHT, ((GetHandleId((LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))))), (StringHash(DzGetTriggerSyncData())))) ~= true)) then
            SaveBoolean(YDHT, ((GetHandleId((LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))))), (StringHash(DzGetTriggerSyncData())), (true))
            if ((DzGetTriggerSyncPlayer() == GetLocalPlayer())) then
                DzFrameShow(udg_ui_xs_py[S2I(SubStringBJ(DzGetTriggerSyncData(), 3, 3))], true)
            else
            end
        else
            SaveBoolean(YDHT, ((GetHandleId((LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))))), (StringHash(DzGetTriggerSyncData())), (false))
            if ((DzGetTriggerSyncPlayer() == GetLocalPlayer())) then
                DzFrameShow(udg_ui_xs_py[S2I(SubStringBJ(DzGetTriggerSyncData(), 3, 3))], false)
            else
            end
        end
    else
    end
    if ((SubStringBJ(DzGetTriggerSyncData(), 1, 3) == "TAB")) then
        SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x8E38B1F6, S2I(SubStringBJ(DzGetTriggerSyncData(), 4, 4)))
        if ((LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x8E38B1F6) == 1)) then
            ydl_trigger = gg_trg_YJ_QJ
            ydl_triggerstep = GetHandleId(ydl_trigger) * (LoadInteger(YDLOC, GetHandleId(ydl_trigger), 0xCFDE6C76) + 3)
            SaveBoolean(YDLOC, ydl_triggerstep, 0x0F91E21F, true)
            SaveInteger(YDLOC, ydl_triggerstep, 0xE1F12512, 113)
            SavePlayerHandle(YDLOC, ydl_triggerstep, 0x48656946, LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))
            TriggerExecute(ydl_trigger)
        else
            if ((LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x8E38B1F6) == 2)) then
                ydl_trigger = gg_trg_YJ_QJ
                ydl_triggerstep = GetHandleId(ydl_trigger) * (LoadInteger(YDLOC, GetHandleId(ydl_trigger), 0xCFDE6C76) + 3)
                SaveBoolean(YDLOC, ydl_triggerstep, 0x0F91E21F, true)
                SaveInteger(YDLOC, ydl_triggerstep, 0xE1F12512, 114)
                SavePlayerHandle(YDLOC, ydl_triggerstep, 0x48656946, LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))
                TriggerExecute(ydl_trigger)
            else
                if ((LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x8E38B1F6) == 3)) then
                    ydl_trigger = gg_trg_YJ_QJ
                    ydl_triggerstep = GetHandleId(ydl_trigger) * (LoadInteger(YDLOC, GetHandleId(ydl_trigger), 0xCFDE6C76) + 3)
                    SaveBoolean(YDLOC, ydl_triggerstep, 0x0F91E21F, true)
                    SaveInteger(YDLOC, ydl_triggerstep, 0xE1F12512, 9)
                    SavePlayerHandle(YDLOC, ydl_triggerstep, 0x48656946, LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))
                    TriggerExecute(ydl_trigger)
                else
                    if ((LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x8E38B1F6) == 5)) then
                        ydl_trigger = gg_trg_YJ_QJ
                        ydl_triggerstep = GetHandleId(ydl_trigger) * (LoadInteger(YDLOC, GetHandleId(ydl_trigger), 0xCFDE6C76) + 3)
                        SaveBoolean(YDLOC, ydl_triggerstep, 0x0F91E21F, true)
                        SaveInteger(YDLOC, ydl_triggerstep, 0xE1F12512, 115)
                        SavePlayerHandle(YDLOC, ydl_triggerstep, 0x48656946, LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))
                        TriggerExecute(ydl_trigger)
                    else
                    end
                end
            end
        end
    else
    end
    if ((SubStringBJ(DzGetTriggerSyncData(), 1, 2) == "mk")) then
        SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x8E38B1F6, S2I(SubStringBJ(DzGetTriggerSyncData(), 3, 5)))
        SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xA1CFBB06, (LoadInteger(YDHT, ((GetHandleId((LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))))), (((udg_UI_HQTB[LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x8E38B1F6)]))))))
        SaveInteger(YDHT, ((GetHandleId((LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))))), (StringHash((((EXExecuteScript("(require'jass.slk').unit[" .. I2S(LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xA1CFBB06)) .. "].Name"))) .. ("PY") .. ("")))), (0))
        SaveBoolean(YDHT, StringHash((GetPlayerName(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)))), StringHash(((EXExecuteScript("(require'jass.slk').unit[" .. I2S(LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xA1CFBB06)) .. "].Name")))), (false))
        SaveInteger(YDHT, ((GetHandleId((LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))))), (StringHash((((EXExecuteScript("(require'jass.slk').unit[" .. I2S(LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xA1CFBB06)) .. "].Name"))) .. ("JY") .. ("")))), (0))
        SaveInteger(YDHT, ((GetHandleId((LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))))), (((udg_UI_HQTB[LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x8E38B1F6)]))), (0))
        DisplayTextToPlayer(DzGetTriggerSyncPlayer(), 0, 0, (YDWEGetPlayerColorString(Player(0), "[系统]：") .. ((EXExecuteScript("(require'jass.slk').unit[" .. I2S(LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xA1CFBB06)) .. "].Name")) .. "已被你流放,网络无情人有情,祝他越来越好吧~")))
        SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xAFB37675, S2I(EXExecuteScript("(require'jass.slk').unit[" .. I2S(LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xA1CFBB06)) .. "].fmade")))
        SaveInteger(YDHT, ((GetHandleId((LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))))), (StringHash(("rsmPD" .. I2S(LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xAFB37675))))), (((LoadInteger(YDHT, ((GetHandleId((LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))))), (StringHash(("rsmPD" .. I2S(LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xAFB37675))))))) - 1)))
        if ((5 > (LoadInteger(YDHT, ((GetHandleId((LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))))), (StringHash(("rsmPD" .. I2S(LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xAFB37675))))))))) then
            RemoveUnit((LoadUnitHandle(YDHT, ((GetHandleId((LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))))), (StringHash("rsmdw")))))
        else
        end
        SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x8E352A38, (YDWES2Id(((EXExecuteScript("(require'jass.slk').unit[" .. I2S(LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xA1CFBB06)) .. "].Tip"))))))
        if (((LoadBoolean(YDHT, ((GetHandleId((LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))))), ((LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x8E352A38))))) == true)) then
            SaveBoolean(YDHT, ((GetHandleId((LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))))), ((LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x8E352A38))), (false))
            ydl_trigger = gg_trg_qjyd
            ydl_triggerstep = GetHandleId(ydl_trigger) * (LoadInteger(YDLOC, GetHandleId(ydl_trigger), 0xCFDE6C76) + 3)
            SavePlayerHandle(YDLOC, ydl_triggerstep, 0x48656946, LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))
            SaveInteger(YDLOC, ydl_triggerstep, 0xBCFAAC25, (LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x8E352A38)))
            SaveReal(YDHT, GetHandleId(Player(PLAYER_NEUTRAL_AGGRESSIVE)), 0xE8319FBA, -1.00)
            SaveBoolean(YDLOC, ydl_triggerstep, 0xAC98E756, true)
            TriggerExecute(ydl_trigger)
        else
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
                SaveStr(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x12BBBFB9 + (ydul_a), YDWEGetPlayerColorString(Player(10), (EXExecuteScript("(require'jass.slk').unit[" .. I2S(LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xCB30278B + (ydul_a))) .. "].Name"))))
            end
            SaveStr(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xA9433B13, ((LoadStr(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xA9433B13)) .. (LoadStr(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x12BBBFB9 + (ydul_a))) .. ("|n")))
            ydul_a = ydul_a + 1
        end
        SaveStr(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xA9433B13, ((LoadStr(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xA9433B13)) .. (YDWEGetPlayerColorString(Player(10), (EXExecuteScript("(require'jass.slk').item[" .. I2S(LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x8E352A38)) .. "].Ubertip")))) .. ("|n")))
        ydul_a = 0
        while true do
            if ydul_a > (LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x8186EBB8) - 1) then
                break
            end
            SaveStr((jn), (LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xCB30278B + (ydul_a))), 6, (("") .. (LoadStr(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xA9433B13)) .. ("")))
            ydul_a = ydul_a + 1
        end
        SaveInteger(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x2D686226, (LoadInteger(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x2D686226) - 1))
    else
    end
    if ((SubStringBJ(DzGetTriggerSyncData(), 1, 2) == "dy")) then
        if ((LoadInteger(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x9B72688C) == 5)) then
            SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xF374F3BD, 0x73303063)
        else
            if ((LoadInteger(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x9B72688C) == 10)) then
                SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xF374F3BD, 0x73303163)
            else
                if ((LoadInteger(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x9B72688C) == 15)) then
                    SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xF374F3BD, 0x73303263)
                else
                    if ((LoadInteger(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x9B72688C) == 20)) then
                        SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xF374F3BD, 0x73303363)
                    else
                    end
                end
            end
        end
        ydl_trigger = gg_trg_DYCF_005________________u
        ydl_triggerstep = GetHandleId(ydl_trigger) * (LoadInteger(YDLOC, GetHandleId(ydl_trigger), 0xCFDE6C76) + 3)
        SavePlayerHandle(YDLOC, ydl_triggerstep, 0x48656946, LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))
        SaveInteger(YDLOC, ydl_triggerstep, 0xF374F3BD, LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xF374F3BD))
        TriggerExecute(ydl_trigger)
    else
    end
    if ((SubStringBJ(DzGetTriggerSyncData(), 1, 2) == "sd")) then
        SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x49550FBE, S2I(SubStringBJ(DzGetTriggerSyncData(), 3, 15)))
        if ((LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x49550FBE) == 3302)) then
            RemoveSavedInteger(YDHT, GetHandleId(DzGetTriggerSyncPlayer()), 0xFB7FB0D2)
        else
            SaveInteger(YDHT, GetHandleId(DzGetTriggerSyncPlayer()), 0xFB7FB0D2, (LoadInteger(YDHT, ((GetHandleId((DzGetTriggerSyncPlayer())))), (LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x49550FBE)))))
        end
    else
    end
    if ((SubStringBJ(DzGetTriggerSyncData(), 1, 2) == "wx")) then
        SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x49550FBE, S2I(SubStringBJ(DzGetTriggerSyncData(), 3, 15)))
        ydul_a = 1
        while true do
            if ydul_a > 9 then
                break
            end
            if ((LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x49550FBE) == ((udg_UI_WXTB[ydul_a])))) then
                SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x0FB18964, ydul_a)
                DoNothing()
                if true then
                    break
                end
            else
            end
            ydul_a = ydul_a + 1
        end
        SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x6C2DED4E, LoadInteger(YDHT, GetHandleId(DzGetTriggerSyncPlayer()), 0x93DEBCFA))
        SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB0497EE9, (LoadInteger(YDHT, StringHash(("wuxing")), StringHash((((I2S(LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x6C2DED4E))) .. ("y") .. (I2S(LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x0FB18964)))))))))
        SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x137D71BA, S2I(EXExecuteScript("(require'jass.slk').item[" .. I2S(LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB0497EE9)) .. "].oldLevel")))
        if (((LoadBoolean(YDHT, ((GetHandleId((LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))))), ((LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB0497EE9))))) ~= true)) then
            if ((LoadInteger(YDHT, GetHandleId(DzGetTriggerSyncPlayer()), 0xE257723F) >= LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x137D71BA))) then
                SaveInteger(YDHT, GetHandleId(DzGetTriggerSyncPlayer()), 0xE257723F, (LoadInteger(YDHT, GetHandleId(DzGetTriggerSyncPlayer()), 0xE257723F) - LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x137D71BA)))
                SaveBoolean(YDHT, ((GetHandleId((DzGetTriggerSyncPlayer())))), ((LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB0497EE9))), (true))
                SavePlayerHandle(YDHT, GetHandleId(Player(PLAYER_NEUTRAL_AGGRESSIVE)), 0x119572DE, DzGetTriggerSyncPlayer())
                SaveInteger(YDHT, GetHandleId(Player(PLAYER_NEUTRAL_AGGRESSIVE)), 0x171487D7, LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB0497EE9))
                ConditionalTriggerExecute(gg_trg_qjyd)
                DisplayTextToPlayer(DzGetTriggerSyncPlayer(), 0, 0, (YDWEGetPlayerColorString(Player(0), "[系统]：") .. ((EXExecuteScript("(require'jass.slk').item[" .. I2S(LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB0497EE9)) .. "].Name")) .. "已激活。")))
                if ((LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946) == GetLocalPlayer())) then
                    DzFrameSetText(udg_UI_WXTB[19], ("x " .. I2S(LoadInteger(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0xE257723F))))
                    if (((LoadBoolean(YDHT, ((GetHandleId((LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))))), ((LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB0497EE9))))) == true)) then
                        DzFrameSetTexture(udg_UI_WXTB[(LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x0FB18964) + 9)], (EXExecuteScript("(require'jass.slk').item[" .. I2S(LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB0497EE9)) .. "].Art")), 0)
                    else
                        DzFrameSetTexture(udg_UI_WXTB[(LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x0FB18964) + 9)], SubStringBJ((EXExecuteScript("(require'jass.slk').item[" .. I2S(LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB0497EE9)) .. "].Art")), 2, 15), 0)
                    end
                else
                end
                ydl_trigger = gg_trg_wuxingchufa_paichu
                ydl_triggerstep = GetHandleId(ydl_trigger) * (LoadInteger(YDLOC, GetHandleId(ydl_trigger), 0xCFDE6C76) + 3)
                SavePlayerHandle(YDLOC, ydl_triggerstep, 0x48656946, DzGetTriggerSyncPlayer())
                TriggerExecute(ydl_trigger)
            else
                DisplayTextToPlayer(DzGetTriggerSyncPlayer(), 0, 0, (YDWEGetPlayerColorString(Player(0), "[系统]：") .. "符印数量不足，无法激活。"))
            end
        else
            DisplayTextToPlayer(DzGetTriggerSyncPlayer(), 0, 0, (YDWEGetPlayerColorString(Player(0), "[系统]：") .. "已激活，无需重复激活。"))
        end
    else
    end
    if ((DzGetTriggerSyncData() == "hq")) then
        if ((LoadBoolean(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0xADAAF124) ~= true)) then
            SaveBoolean(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0xADAAF124, true)
            if ((DzGetTriggerSyncPlayer() == GetLocalPlayer())) then
                DzFrameSetTexture(udg_UI_HQTB[0], "war3mapImported\\hunqian (1).tga", 0)
                ydul_a = 2
                while true do
                    if ydul_a > 11 then
                        break
                    end
                    DzFrameShow(udg_UI_HQTB[ydul_a], false)
                    ydul_a = ydul_a + 1
                end
            else
            end
        else
            SaveBoolean(YDHT, GetHandleId(DzGetTriggerSyncPlayer()), 0xADAAF124, false)
            if ((DzGetTriggerSyncPlayer() == GetLocalPlayer())) then
                DzFrameSetTexture(udg_UI_HQTB[0], "war3mapImported\\hunqian (2).tga", 0)
                ydul_a = 2
                while true do
                    if ydul_a > 11 then
                        break
                    end
                    if (((LoadInteger(YDHT, ((GetHandleId((LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))))), (((udg_UI_HQTB[(ydul_a + 10)]))))) ~= GetItemTypeId(nil))) then
                        DzFrameShow(udg_UI_HQTB[ydul_a], true)
                    else
                    end
                    ydul_a = ydul_a + 1
                end
            else
            end
        end
    else
    end
    if ((DzGetTriggerSyncData() == "RW")) then
        if ((LoadBoolean(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x7FF3E79D) ~= true)) then
            SaveBoolean(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x7FF3E79D, true)
            if ((DzGetTriggerSyncPlayer() == GetLocalPlayer())) then
                DzFrameShow(udg_UI_RWK[0], false)
            else
            end
        else
            SaveBoolean(YDHT, GetHandleId(DzGetTriggerSyncPlayer()), 0xE46BF65A, false)
            if ((DzGetTriggerSyncPlayer() == GetLocalPlayer())) then
                DzFrameShow(udg_UI_RWK[0], true)
            else
            end
        end
    else
    end
    if ((SubStringBJ(DzGetTriggerSyncData(), 1, 2) == "xd")) then
        SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x49550FBE, S2I(SubStringBJ(DzGetTriggerSyncData(), 3, 15)))
        SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB0497EE9, (LoadInteger(YDHT, ((GetHandleId((LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))))), (LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x49550FBE)))))
        SavePlayerHandle(YDHT, GetHandleId(Player(PLAYER_NEUTRAL_AGGRESSIVE)), 0x119572DE, LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))
        SaveBoolean(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x8A0F9432, true)
        SaveInteger(YDHT, GetHandleId(Player(PLAYER_NEUTRAL_AGGRESSIVE)), 0x171487D7, LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB0497EE9))
        TriggerExecute(gg_trg_qjyd)
        if ((S2R(EXExecuteScript("(require'jass.slk').item[" .. I2S(LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB0497EE9)) .. "].HP")) ~= 3322.00)) then
            SaveInteger(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x2D686226, (LoadInteger(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x2D686226) + 1))
            SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xC30BA26B, LoadInteger(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x2D686226))
            SaveInteger(YDHT, ((GetHandleId((LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))))), (((udg_UI_HQTB[(LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xC30BA26B) + 11)]))), (LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB0497EE9)))
            DisplayTextToPlayer(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946), 0, 0, "魂器锻造成功！")
            SaveBoolean(YDHT, StringHash((GetPlayerName(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)))), StringHash(((EXExecuteScript("(require'jass.slk').item[" .. I2S(LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB0497EE9)) .. "].Name")))), (true))
            if ((LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946) == GetLocalPlayer())) then
                DzFrameShow(udg_UI_HQTB[(LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xC30BA26B) + 1)], true)
                DzFrameSetTexture(udg_UI_HQTB[(LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xC30BA26B) + 1)], (EXExecuteScript("(require'jass.slk').item[" .. I2S(LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB0497EE9)) .. "].Art")), 0)
            else
            end
            ydl_trigger = gg_trg_UI_tips
            ydl_triggerstep = GetHandleId(ydl_trigger) * (LoadInteger(YDLOC, GetHandleId(ydl_trigger), 0xCFDE6C76) + 3)
            SavePlayerHandle(YDLOC, ydl_triggerstep, 0x48656946, DzGetTriggerSyncPlayer())
            SaveInteger(YDLOC, ydl_triggerstep, 0x9CD60476, udg_UI_HQTB[(LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xC30BA26B) + 1)])
            TriggerExecute(ydl_trigger)
        else
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
            ydl_trigger = gg_trg_UI_tips
            ydl_triggerstep = GetHandleId(ydl_trigger) * (LoadInteger(YDLOC, GetHandleId(ydl_trigger), 0xCFDE6C76) + 3)
            SavePlayerHandle(YDLOC, ydl_triggerstep, 0x48656946, DzGetTriggerSyncPlayer())
            SaveInteger(YDLOC, ydl_triggerstep, 0x9CD60476, udg_UI_9GG3[LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xC30BA26B)])
            TriggerExecute(ydl_trigger)
            DisplayTextToPlayer(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946), 0, 0, (EXExecuteScript("(require'jass.slk').item[" .. I2S(LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB0497EE9)) .. "].Name")))
        end
    else
    end
    if ((SubStringBJ(DzGetTriggerSyncData(), 1, 2) == "3x")) then
        SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x49550FBE, S2I(SubStringBJ(DzGetTriggerSyncData(), 3, 15)))
        SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB0497EE9, (LoadInteger(YDHT, ((GetHandleId((LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))))), (LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x49550FBE)))))
        if ((LoadBoolean(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0xA96FD71C) == true)) then
            SaveBoolean(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0xA96FD71C, false)
            SavePlayerHandle(YDHT, GetHandleId(Player(PLAYER_NEUTRAL_AGGRESSIVE)), 0x119572DE, LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))
            SaveBoolean(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x8A0F9432, true)
            SaveInteger(YDHT, GetHandleId(Player(PLAYER_NEUTRAL_AGGRESSIVE)), 0x171487D7, LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB0497EE9))
            TriggerExecute(gg_trg_qjyd)
            SaveInteger(YDHT, ((GetHandleId((LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))))), (StringHash(("ms1" .. I2S(((udg_JN_BUTTON[2])))))), (LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB0497EE9)))
            YDWESetUnitAbilityDataString(udg_WJYX[GetConvertedPlayerId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))], udg_jux[GetConvertedPlayerId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))], 1, 204, (EXExecuteScript("(require'jass.slk').item[" .. I2S(LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB0497EE9)) .. "].Art")))
            UnitRemoveAbilityBJ(udg_jux[GetConvertedPlayerId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))], udg_WJYX[GetConvertedPlayerId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))])
            UnitAddAbilityBJ(udg_jux[GetConvertedPlayerId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))], udg_WJYX[GetConvertedPlayerId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))])
            YDWESetUnitAbilityDataString(udg_WJYX[GetConvertedPlayerId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))], udg_YXJN[GetConvertedPlayerId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))], 1, 204, (EXExecuteScript("(require'jass.slk').unit[" .. I2S(GetUnitTypeId(udg_WJYX[GetConvertedPlayerId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))])) .. "].Art")))
            UnitRemoveAbilityBJ(udg_YXJN[GetConvertedPlayerId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))], udg_WJYX[GetConvertedPlayerId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))])
            UnitAddAbilityBJ(udg_YXJN[GetConvertedPlayerId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))], udg_WJYX[GetConvertedPlayerId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))])
        else
            if ((LoadBoolean(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0xB990C14A) == true)) then
                SaveBoolean(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0xB990C14A, false)
                UnitAddAbilityBJ((LoadInteger(YDHT, ((GetHandleId((LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))))), (LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x49550FBE)))), udg_WJYX[GetConvertedPlayerId(DzGetTriggerSyncPlayer())])
                udg_yx_tf_jn[GetConvertedPlayerId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))] = (LoadInteger(YDHT, ((GetHandleId((LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))))), (LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x49550FBE))))
                SaveLocationHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x9CD60476, Location(0, 0))
                if ((udg_yx_tf_jn[GetConvertedPlayerId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))] == (0x53483138))) then
                    ydul_a = 1
                    while true do
                        if ydul_a > 3 then
                            break
                        end
                        CreateNUnitsAtLocFacingLocBJ(1, (0x6A736A73), LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946), LoadLocationHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x9CD60476), LoadLocationHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x9CD60476))
                        GroupAddUnitSimple(bj_lastCreatedUnit, udg_js_dwz[GetConvertedPlayerId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))])
                        SetUnitUserData(bj_lastCreatedUnit, 456)
                        ydul_a = ydul_a + 1
                    end
                else
                end
                if ((udg_yx_tf_jn[GetConvertedPlayerId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))] == (0x53483139))) then
                    CreateNUnitsAtLocFacingLocBJ(1, (0x74667962), LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946), LoadLocationHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x9CD60476), LoadLocationHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x9CD60476))
                    SaveUnitHandle(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x5A8056B2, bj_lastCreatedUnit)
                    SetUnitUserData(bj_lastCreatedUnit, 456)
                else
                end
                DisplayTextToPlayer(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946), 0, 0, "能力已获取！")
                RemoveLocation(LoadLocationHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x9CD60476))
            else
                if ((LoadBoolean(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x6D32013B) == true)) then
                    SaveBoolean(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x6D32013B, false)
                    ydl_trigger = gg_trg_jn_load
                    ydl_triggerstep = GetHandleId(ydl_trigger) * (LoadInteger(YDLOC, GetHandleId(ydl_trigger), 0xCFDE6C76) + 3)
                    SavePlayerHandle(YDLOC, ydl_triggerstep, 0x48656946, LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))
                    SaveInteger(YDLOC, ydl_triggerstep, 0xF374F3BD, (LoadInteger(YDHT, ((GetHandleId((LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))))), (LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x49550FBE)))))
                    SaveInteger(YDLOC, ydl_triggerstep, 0x6F96F2D2, LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x6F96F2D2))
                    SaveInteger(YDLOC, ydl_triggerstep, 0x6D77F75F, 1)
                    TriggerExecute(ydl_trigger)
                    ydl_trigger = gg_trg_UI_tips
                    ydl_triggerstep = GetHandleId(ydl_trigger) * (LoadInteger(YDLOC, GetHandleId(ydl_trigger), 0xCFDE6C76) + 3)
                    SavePlayerHandle(YDLOC, ydl_triggerstep, 0x48656946, DzGetTriggerSyncPlayer())
                    SaveInteger(YDLOC, ydl_triggerstep, 0x9CD60476, udg_JN_BUTTON[9])
                    TriggerExecute(ydl_trigger)
                else
                    SavePlayerHandle(YDHT, GetHandleId(Player(PLAYER_NEUTRAL_AGGRESSIVE)), 0x119572DE, LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))
                    SaveBoolean(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x8A0F9432, true)
                    SaveInteger(YDHT, GetHandleId(Player(PLAYER_NEUTRAL_AGGRESSIVE)), 0x171487D7, LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB0497EE9))
                    TriggerExecute(gg_trg_qjyd)
                    ItemPoolRemoveItemType(udg_diyu_wpc[GetConvertedPlayerId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))], LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB0497EE9))
                    if ((S2R(EXExecuteScript("(require'jass.slk').item[" .. I2S(LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB0497EE9)) .. "].HP")) == 4399.00)) then
                        UnitAddAbilityBJ((LoadInteger(YDHT, ((GetHandleId((Player(PLAYER_NEUTRAL_AGGRESSIVE))))), ((LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB0497EE9))))), udg_WJYX[GetConvertedPlayerId(DzGetTriggerSyncPlayer())])
                        udg_DYTF_JN[GetConvertedPlayerId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))] = (LoadInteger(YDHT, ((GetHandleId((Player(PLAYER_NEUTRAL_AGGRESSIVE))))), ((LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB0497EE9)))))
                    else
                    end
                end
            end
        end
        DisplayTextToPlayer(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946), 0, 0, "能力已获取！")
        SaveBoolean(YDHT, ((GetHandleId((LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))))), ((GetHandleId((gg_trg_ui_3x1)))), (false))
    else
    end
    if ((SubStringBJ(DzGetTriggerSyncData(), 1, 2) == "tp")) then
        if ((LoadBoolean(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x2DE8DAB2) ~= true)) then
            SaveBoolean(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x2DE8DAB2, true)
            RemoveUnit(LoadUnitHandle(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x9D4D1A01))
            SaveUnitHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x384C9D86, CreateUnit(Player(5), (0x746A6A79), udg_LGFZB_x[GetConvertedPlayerId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))], (udg_LGFZB_y[GetConvertedPlayerId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))] + 0.00), 0.00))
            SetUnitAnimation(LoadUnitHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x384C9D86), "stand")
            SetUnitLifePercentBJ(LoadUnitHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x384C9D86), 100)
            UnitApplyTimedLifeBJ(6.00, 0x42487765, LoadUnitHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x384C9D86))
            SaveUnitHandle(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x9D4D1A01, LoadUnitHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x384C9D86))
            SaveUnitHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xEA181502, CreateUnit(Player(PLAYER_NEUTRAL_AGGRESSIVE), (0x6530304B), udg_LGFZB_x[LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x6F96F2D2)], udg_LGFZB_y[LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x6F96F2D2)], 0.00))
            SetUnitScale(LoadUnitHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xEA181502), 7.00, 7.00, 7.00)
            SaveStr(YDHT, GetHandleId(LoadUnitHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xEA181502)), 0xFE88D7FF, "E\\[E] (35).mdl")
            SaveReal(YDHT, GetHandleId(LoadUnitHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xEA181502)), 0xD92E3573, 2.00)
            UnitApplyTimedLifeBJ(6.00, 0x42487765, LoadUnitHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xEA181502))
            ydl_trigger = CreateTrigger()
            SaveInteger(YDLOC, GetHandleId(ydl_trigger), 0x6C2DED4E, 6)
            SaveInteger(YDLOC, GetHandleId(ydl_trigger), 0x6F96F2D2, LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x6F96F2D2))
            SaveReal(YDLOC, GetHandleId(ydl_trigger), 0x6DD3A3AB, (I2R((GetPlayerTechCountSimple(0x52303030, LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)) * GetPlayerTechCountSimple(0x52303030, LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)))) * 12500.00))
            SaveLocationHandle(YDLOC, GetHandleId(ydl_trigger), 0x9CD60476, LoadLocationHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x9CD60476))
            SavePlayerHandle(YDLOC, GetHandleId(ydl_trigger), 0x48656946, LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))
            TriggerRegisterTimerEventPeriodic(ydl_trigger, 1.00)
            TriggerAddCondition(ydl_trigger, Condition(Trig_UI_TBSJFunc016Func001Func002Func014Conditions))
            ydl_trigger = gg_trg_ZHENDONG
            ydl_triggerstep = GetHandleId(ydl_trigger) * (LoadInteger(YDLOC, GetHandleId(ydl_trigger), 0xCFDE6C76) + 3)
            SaveReal(YDLOC, ydl_triggerstep, 0x0050BBB8, 6.00)
            SavePlayerHandle(YDLOC, ydl_triggerstep, 0x48656946, LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))
            TriggerExecute(ydl_trigger)
            SaveUnitHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x384C9D86, nil)
            SaveUnitHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xEA181502, nil)
        else
            DisplayTimedTextToPlayer(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946), 0, 0, 5.00, ("[系统]：" .. YDWEGetPlayerColorString(Player(2), "雷云正在聚集……")))
        end
    else
    end
    if ((SubStringBJ(DzGetTriggerSyncData(), 1, 2) == "nd")) then
        SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x6C2DED4E, S2I(SubStringBJ(DzGetTriggerSyncData(), 3, 5)))
        DisplayTextToPlayer(GetLocalPlayer(), 0, 0, (GetPlayerName(DzGetTriggerSyncPlayer()) .. ("选择了难度" .. I2S(LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x6C2DED4E)))))
        DzFrameSetParent(udg_UI, udg_UI_RWK[0])
        DzFrameShow(udg_UI, false)
        DzFrameShow(udg_UI_XSZD[13], false)
        SaveInteger(YDHT, GetHandleId(Player(PLAYER_NEUTRAL_AGGRESSIVE)), 0xB43FB128, LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x6C2DED4E))
        FlushChildHashtable(YDHT, StringHash(("清除hb")))
        ydl_trigger = CreateTrigger()
        SaveReal(YDLOC, GetHandleId(ydl_trigger), 0x9DF9DFA7, 0.35)
        SaveReal(YDLOC, GetHandleId(ydl_trigger), 0xBF5A8F68, 0.35)
        SaveUnitHandle(YDLOC, GetHandleId(ydl_trigger), 0x96DC5279, LoadUnitHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x96DC5279))
        TriggerRegisterTimerEventPeriodic(ydl_trigger, 0.06)
        TriggerAddCondition(ydl_trigger, Condition(Trig_UI_TBSJFunc017Func001Func009Conditions))
        YDWETimerRunTrigger(0.00, gg_trg_jn________07)
        YDWETimerRunTrigger(1.00, gg_trg_ss________01)
        YDWETimerRunTrigger(1.25, gg_trg______________wp)
        YDWETimerRunTrigger(2.00, gg_trg_dw________02)
        YDWETimerRunTrigger(2.10, gg_trg_zs________03)
        YDWETimerRunTrigger(2.30, gg_trg_dwsq______________04)
        YDWETimerRunTrigger(2.30, gg_trg_cfq___________05)
        YDWETimerRunTrigger(2.30, gg_trg_zfc___________06)
        YDWETimerRunTrigger(3.00, gg_trg_jgc01)
        udg_jnorwp[2] = (wp)
        CreateMultiboardBJ(5, 5, ("难度：" .. (("[") .. (udg_ND) .. ("]"))))
        ydul_a = 1
        while true do
            if ydul_a > 5 then
                break
            end
            ydul_b = 1
            while true do
                if ydul_b > 5 then
                    break
                end
                YDWEMultiboardSetItemStyleBJNull(GetLastCreatedMultiboard(), ydul_a, ydul_b, true, false)
                YDWEMultiboardSetItemWidthBJNull(GetLastCreatedMultiboard(), ydul_a, ydul_b, 3.50)
                YDWEMultiboardSetItemValueBJNull(GetLastCreatedMultiboard(), 1, 1, "|cff00ff00玩家|r")
                YDWEMultiboardSetItemValueBJNull(GetLastCreatedMultiboard(), 2, 1, "|cff00ff00地图等级|r")
                YDWEMultiboardSetItemValueBJNull(GetLastCreatedMultiboard(), 2, (ydul_b + 1), I2S(DzAPI_Map_GetMapLevel(ConvertedPlayer(ydul_b))))
                YDWEMultiboardSetItemValueBJNull(GetLastCreatedMultiboard(), 3, 1, "|cff00ff00守家积分|r")
                YDWEMultiboardSetItemValueBJNull(GetLastCreatedMultiboard(), 4, 1, "|cff00ff00战力指数|r")
                YDWEMultiboardSetItemValueBJNull(GetLastCreatedMultiboard(), 5, 1, "|cff00ff00门派职位|r")
                YDWEMultiboardSetItemValueBJNull(GetLastCreatedMultiboard(), 1, (ydul_b + 1), GetPlayerName(ConvertedPlayer(ydul_b)))
                ydul_b = ydul_b + 1
            end
            ydul_a = ydul_a + 1
        end
        MultiboardDisplay(bj_lastCreatedMultiboard, true)
        udg_duomianban = bj_lastCreatedMultiboard
        DisplayTimedTextToPlayer(GetLocalPlayer(), 0, 0, 10.00, (YDWEGetPlayerColorString(Player(0), "【系统】：") .. YDWEGetPlayerColorString(Player(5), (LoadStr(YDHT, StringHash(("小tip")), StringHash((("小tip0"))))))))
        SaveInteger(YDHT, 1, 0xF095A1F4, 25)
        SaveInteger(YDHT, 2, 0xF095A1F4, 28)
        SaveInteger(YDHT, 3, 0xF095A1F4, 31)
        SaveInteger(YDHT, 4, 0xF095A1F4, 34)
        SaveInteger(YDHT, 1, 0x97A871CF, 5)
        SaveInteger(YDHT, 2, 0x97A871CF, 6)
        SaveInteger(YDHT, 3, 0x97A871CF, 7)
        SaveInteger(YDHT, 4, 0x97A871CF, 8)
        SaveInteger(YDHT, GetHandleId(Player(0)), 0x1295852E, 5)
        SaveInteger(YDHT, GetHandleId(Player(1)), 0x1295852E, 10)
        SaveInteger(YDHT, GetHandleId(Player(2)), 0x1295852E, 15)
        SaveInteger(YDHT, GetHandleId(Player(3)), 0x1295852E, 20)
        SaveInteger(YDHT, GetHandleId(Player(4)), 0x1295852E, 25)
        SaveInteger(YDHT, GetHandleId(Player(5)), 0x1295852E, 28)
        SaveInteger(YDHT, GetHandleId(Player(6)), 0x1295852E, 31)
        SaveInteger(YDHT, GetHandleId(Player(7)), 0x1295852E, 34)
        ydul_a = 5
        while true do
            if ydul_a > 15 then
                break
            end
            SaveInteger(YDHT, ydul_a, 0x97A871CF, 8)
            SaveInteger(YDHT, ydul_a, 0xF095A1F4, 34)
            ydul_a = ydul_a + 1
        end
        ydl_trigger = CreateTrigger()
        TriggerRegisterTimerEventSingle(ydl_trigger, 60.00)
        TriggerAddCondition(ydl_trigger, Condition(Trig_UI_TBSJFunc017Func001Func012Func001Conditions))
    else
    end
    if ((SubStringBJ(DzGetTriggerSyncData(), 1, 2) == "qd")) then
        SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x5CE98074, S2I(SubStringBJ(DzGetTriggerSyncData(), 3, 4)))
        SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xA1CFBB06, (LoadInteger(YDHT, ((GetHandleId((DzGetTriggerSyncPlayer())))), (((udg_UI_YX[LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x5CE98074)]))))))
        if ((DzGetTriggerSyncData() == "qd")) then
            if ((((LoadBoolean(YDHT, ((GetHandleId((LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))))), ((LoadInteger(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x9D65F313))))) == true) or ((LoadInteger(YDHT, StringHash((GetPlayerName(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)))), StringHash(("2")))) == 1))) then
                if ((HaveSavedInteger(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x9D65F313) == true)) then
                    ydl_trigger = gg_trg_wendaxuanren6
                    ydl_triggerstep = GetHandleId(ydl_trigger) * (LoadInteger(YDLOC, GetHandleId(ydl_trigger), 0xCFDE6C76) + 3)
                    SavePlayerHandle(YDLOC, ydl_triggerstep, 0x48656946, DzGetTriggerSyncPlayer())
                    TriggerExecute(ydl_trigger)
                    if ((DzGetTriggerSyncPlayer() == GetLocalPlayer())) then
                        DzFrameShow(udg_UI_YX[0], false)
                        DzFrameShow(udg_GAOLIANG_UI2, false)
                    else
                    end
                else
                    DisplayTextToPlayer(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946), 0, 0, ("[系统]：" .. YDWEGetPlayerColorString(Player(2), "先选择一位英雄")))
                end
            else
                DisplayTextToPlayer(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946), 0, 0, ("[系统]：" .. YDWEGetPlayerColorString(Player(2), "你没有选择该英雄的权限。")))
            end
        else
            SaveInteger(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x9D65F313, LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xA1CFBB06))
        end
        if ((LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946) == GetLocalPlayer())) then
            DzFrameSetTexture(udg_UIFL_tEXTYX[1], (EXExecuteScript("(require'jass.slk').unit[" .. I2S(LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xA1CFBB06)) .. "].Art")), 0)
            DzFrameSetText(udg_UIFL_tEXTYX[0], (EXExecuteScript("(require'jass.slk').unit[" .. I2S(LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xA1CFBB06)) .. "].Name")))
            DzFrameSetText(udg_UIFL_tEXTYX[3], (EXExecuteScript("(require'jass.slk').unit[" .. I2S(LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xA1CFBB06)) .. "].Ubertip")))
            DzFrameSetText(udg_UIFL_tEXTYX[2], (EXExecuteScript("(require'jass.slk').unit[" .. I2S(LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xA1CFBB06)) .. "].tip")))
        else
        end
    else
    end
    EnableTrigger(GetTriggeringTrigger())
    FlushChildHashtable(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step)
    ydl_trigger = nil
end

function InitTrig_UI_TBSJ()
    gg_trg_UI_TBSJ = CreateTrigger()
    DzTriggerRegisterSyncData(gg_trg_UI_TBSJ, "yxqd", false)
    TriggerAddAction(gg_trg_UI_TBSJ, Trig_UI_TBSJActions)
end

function Trig_UI_TEXT_002Func005T()
    local ydul_a = nil
    SaveInteger(YDLOC, GetHandleId(GetExpiredTimer()), 0x6C2DED4E, (LoadInteger(YDLOC, GetHandleId(GetExpiredTimer()), 0x6C2DED4E) + 1))
    if ((LoadInteger(YDLOC, GetHandleId(GetExpiredTimer()), 0x6F96F2D2) ~= 0)) then
        if ((ConvertedPlayer(LoadInteger(YDLOC, GetHandleId(GetExpiredTimer()), 0x6F96F2D2)) == GetLocalPlayer())) then
            DzFrameSetText(udg_UI, (DzFrameGetText(udg_UI) .. LoadStr(YDLOC, GetHandleId(GetExpiredTimer()), 0x2D1FF186 + (LoadInteger(YDLOC, GetHandleId(GetExpiredTimer()), 0x6C2DED4E)))))
        else
        end
    else
    end
    if ((LoadInteger(YDLOC, GetHandleId(GetExpiredTimer()), 0x6C2DED4E) == LoadInteger(YDLOC, GetHandleId(GetExpiredTimer()), 0x3B60835B))) then
        DestroyTimer(LoadTimerHandle(YDHT, GetHandleId(ConvertedPlayer(LoadInteger(YDLOC, GetHandleId(GetExpiredTimer()), 0x6F96F2D2))), 0x4FEA2CE6))
        FlushChildHashtable(YDLOC, GetHandleId(GetExpiredTimer()))
        DestroyTimer(GetExpiredTimer())
    else
    end
end

function Trig_UI_TEXT_002Actions()
    local ydl_timer = nil
    local ydul_a = nil
    local ydl_localvar_step = LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xCFDE6C76)
    ydl_localvar_step = ydl_localvar_step + 3
    SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xCFDE6C76, ydl_localvar_step)
    SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xECE825E7, ydl_localvar_step)
    SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x6F96F2D2, GetConvertedPlayerId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)))
    SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x3B60835B, StringLength(udg_UIzx[0]))
    DestroyTimer(LoadTimerHandle(YDHT, GetHandleId(ConvertedPlayer(LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x6F96F2D2))), 0x4FEA2CE6))
    if ((LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x6F96F2D2) > 0)) then
        SaveTimerHandle(YDHT, GetHandleId(ConvertedPlayer(LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x6F96F2D2))), 0x4FEA2CE6, CreateTimer())
        if ((ConvertedPlayer(LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x6F96F2D2)) == GetLocalPlayer())) then
            DzFrameSetText(udg_UI, "")
        else
        end
    else
    end
    ydl_timer = LoadTimerHandle(YDHT, GetHandleId(ConvertedPlayer(LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x6F96F2D2))), 0x4FEA2CE6)
    SaveInteger(YDLOC, GetHandleId(ydl_timer), 0x6F96F2D2, LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x6F96F2D2))
    SaveInteger(YDLOC, GetHandleId(ydl_timer), 0x3B60835B, LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x3B60835B))
    SaveInteger(YDLOC, GetHandleId(ydl_timer), 0x6C2DED4E, 0)
    ydul_a = 1
    while true do
        if ydul_a > LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x3B60835B) then
            break
        end
        SaveStr(YDLOC, GetHandleId(ydl_timer), 0x2D1FF186 + (ydul_a), SubStringBJ(udg_UIzx[0], ydul_a, ydul_a))
        ydul_a = ydul_a + 1
    end
    SaveStr(YDLOC, GetHandleId(ydl_timer), 0x2D1FF186, LoadStr(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2D1FF186))
    TimerStart(ydl_timer, LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x0050BBB8), true, Trig_UI_TEXT_002Func005T)
    FlushChildHashtable(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step)
    ydl_timer = nil
end

function InitTrig_UI_TEXT_002()
    gg_trg_UI_TEXT_002 = CreateTrigger()
    TriggerAddAction(gg_trg_UI_TEXT_002, Trig_UI_TEXT_002Actions)
end

function Trig_chufaqi_shuxingmianbanActions()
    local ydl_localvar_step = LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xCFDE6C76)
    ydl_localvar_step = ydl_localvar_step + 3
    SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xCFDE6C76, ydl_localvar_step)
    SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xECE825E7, ydl_localvar_step)
    SavePlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946, LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))
    if ((LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946) == GetLocalPlayer())) then
        DzFrameSetText(udg_UI_MB[1], YDWEGetPlayerColorString(Player(2), ("伤害加成：" .. (R2SW((LoadReal(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0xB00B5016) * 100.00), 1, 1) .. "%"))))
        DzFrameSetText(udg_UI_MB[2], YDWEGetPlayerColorString(Player(2), ("物理暴击：" .. (R2SW((LoadReal(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x25495654) * 100.00), 1, 1) .. "%"))))
        DzFrameSetText(udg_UI_MB[3], YDWEGetPlayerColorString(Player(2), ("魔法暴击：" .. (R2SW((LoadReal(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x340B6D5D) * 100.00), 1, 1) .. "%"))))
        DzFrameSetText(udg_UI_MB[4], YDWEGetPlayerColorString(Player(2), ("物暴加成：" .. (R2SW((LoadReal(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x09DB3E68) * 100.00), 1, 1) .. "%"))))
        DzFrameSetText(udg_UI_MB[5], YDWEGetPlayerColorString(Player(2), ("魔爆加成：" .. (R2SW((LoadReal(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x1514A9DB) * 100.00), 1, 1) .. "%"))))
        DzFrameSetText(udg_UI_MB[6], YDWEGetPlayerColorString(Player(2), ("伤害减免：" .. (R2SW((LoadReal(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x11767CA1) * 100.00), 1, 1) .. "%"))))
        DzFrameSetText(udg_UI_MB[7], YDWEGetPlayerColorString(Player(2), ("闪避几率：" .. (R2SW((LoadReal(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0xFB8FACBD) * 100.00), 1, 1) .. "%"))))
        DzFrameSetText(udg_UI_MB[8], YDWEGetPlayerColorString(Player(2), ("物理吸血：" .. (R2SW((LoadReal(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x8B1CE21E) * 100.00), 1, 1) .. "%"))))
        DzFrameSetText(udg_UI_MB[9], YDWEGetPlayerColorString(Player(2), ("法术吸血：" .. (R2SW((LoadReal(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x49E8B4D6) * 100.00), 1, 1) .. "%"))))
        DzFrameSetText(udg_UI_MB[10], YDWEGetPlayerColorString(Player(2), ("物理增伤：" .. (R2SW((LoadReal(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0xEEEA13B0) * 100.00), 1, 1) .. "%"))))
        DzFrameSetText(udg_UI_MB[11], YDWEGetPlayerColorString(Player(2), ("法术增伤：" .. (R2SW((LoadReal(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x9691B869) * 100.00), 1, 1) .. "%"))))
        DzFrameSetText(udg_UI_MB[12], YDWEGetPlayerColorString(Player(2), ("生命加成：" .. (R2SW((LoadReal(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x16C5C392) * 100.00), 1, 1) .. "%"))))
        DzFrameSetText(udg_UI_MB[13], YDWEGetPlayerColorString(Player(2), ("力量加成：" .. (R2SW((LoadReal(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x08BAB87E) * 100.00), 1, 1) .. "%"))))
        DzFrameSetText(udg_UI_MB[14], YDWEGetPlayerColorString(Player(2), ("敏捷加成：" .. (R2SW((LoadReal(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x0098CEEB) * 100.00), 1, 1) .. "%"))))
        DzFrameSetText(udg_UI_MB[15], YDWEGetPlayerColorString(Player(2), ("智力加成：" .. (R2SW((LoadReal(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0xC08430F1) * 100.00), 1, 1) .. "%"))))
        DzFrameSetText(udg_UI_MB[16], YDWEGetPlayerColorString(Player(2), ("护甲加成：" .. (R2SW((LoadReal(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x7BD21826) * 100.00), 1, 1) .. "%"))))
        DzFrameSetText(udg_UI_MB[19], YDWEGetPlayerColorString(Player(2), ("剑系精通：" .. R2SW((LoadReal(YDHT, StringHash((GetPlayerName(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)))), StringHash(("元素1")))), 1, 1))))
        DzFrameSetText(udg_UI_MB[20], YDWEGetPlayerColorString(Player(2), ("拳系精通：" .. R2SW((LoadReal(YDHT, StringHash((GetPlayerName(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)))), StringHash(("元素2")))), 1, 1))))
        DzFrameSetText(udg_UI_MB[21], YDWEGetPlayerColorString(Player(2), ("枪系精通：" .. R2SW((LoadReal(YDHT, StringHash((GetPlayerName(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)))), StringHash(("元素3")))), 1, 1))))
        DzFrameSetText(udg_UI_MB[22], YDWEGetPlayerColorString(Player(2), ("杖系精通：" .. R2SW((LoadReal(YDHT, StringHash((GetPlayerName(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)))), StringHash(("元素4")))), 1, 1))))
        DzFrameSetText(udg_UI_MB[23], YDWEGetPlayerColorString(Player(2), ("弓系精通：" .. R2SW((LoadReal(YDHT, StringHash((GetPlayerName(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)))), StringHash(("元素5")))), 1, 1))))
        DzFrameSetText(udg_UI_MB[24], YDWEGetPlayerColorString(Player(2), (("强化石：") .. (I2S(LoadInteger(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0xBE12F4A0))) .. (""))))
        DzFrameSetText(udg_UI_MB[25], YDWEGetPlayerColorString(Player(2), (("竞猜积分：") .. (I2S(LoadInteger(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x2B99E5BA))) .. (""))))
        DzFrameSetText(udg_UI_MB[26], YDWEGetPlayerColorString(Player(2), ("护甲穿透：" .. (R2SW((LoadReal(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x8B470E4E) * 100.00), 1, 1) .. "%"))))
        DzFrameSetText(udg_UI_MB[27], YDWEGetPlayerColorString(Player(2), (("每秒恢复：") .. (R2SW((udg_BSBHF[GetConvertedPlayerId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))] * 1.00), 1, 1)) .. ("%"))))
        DzFrameSetText(udg_UI_MB[28], YDWEGetPlayerColorString(Player(2), (("杀敌金币：") .. (R2SW((udg_SDJQ[GetConvertedPlayerId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))] * 1.00), 1, 1)) .. (""))))
        DzFrameSetText(udg_UI_MB[29], ((YDWEGetPlayerColorString(Player(2), "真实伤害：")) .. (R2SW((LoadReal(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0xC8638155) * 1), 1, 1)) .. ("")))
        DzFrameSetText(udg_UI_MB[30], YDWEGetPlayerColorString(Player(2), (("守家积分：") .. (I2S(LoadInteger(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x58FD9FA3))) .. (""))))
        DzFrameSetText(udg_UI_MB[31], YDWEGetPlayerColorString(Player(2), (("冷却缩减：") .. (I2S(R2I(((LoadReal(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x858DB907) + 0) * 100.00)))) .. ("%"))))
        DzFrameSetText(udg_UI_MB[32], YDWEGetPlayerColorString(Player(2), (("格挡几率：") .. (I2S(R2I(((LoadReal(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0xF11499E9) + 0) * 100.00)))) .. ("%"))))
        DzFrameSetText(udg_UI_MB[33], YDWEGetPlayerColorString(Player(2), (("额外杀敌数：") .. (I2S(LoadInteger(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x76F02950))) .. (""))))
        DzFrameSetText(udg_UI_MB[34], YDWEGetPlayerColorString(Player(2), (("法伤加成：") .. (I2S(R2I(((LoadReal(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x508FB3EA) + 0) * 100.00)))) .. ("%"))))
        DzFrameSetText(udg_UI_MB[46], YDWEGetPlayerColorString(Player(0), (("杀敌属性：") .. (I2S(LoadInteger(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x0CC2B67B))) .. (""))))
        DzFrameSetText(udg_UI_MB[47], YDWEGetPlayerColorString(Player(0), (("杀敌加攻：") .. (I2S(R2I(LoadReal(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0xE574B4E8)))) .. (""))))
        DzFrameSetText(udg_UI_MB[48], YDWEGetPlayerColorString(Player(0), (("杀敌生命：") .. (I2S(R2I(LoadReal(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x72AFA36E)))) .. (""))))
        DzFrameSetText(udg_UI_MB[49], YDWEGetPlayerColorString(Player(0), (("杀敌护甲：") .. (I2S(R2I(LoadReal(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x31EAADD3)))) .. (""))))
        DzFrameSetText(udg_UI_MB[51], YDWEGetPlayerColorString(Player(0), (("每秒属性：") .. (I2S(LoadInteger(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x28ECE0C5))) .. (""))))
        DzFrameSetText(udg_UI_MB[52], YDWEGetPlayerColorString(Player(0), (("每秒攻击：") .. (I2S(R2I(LoadReal(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x6FEEDF3C)))) .. (""))))
        DzFrameSetText(udg_UI_MB[53], YDWEGetPlayerColorString(Player(0), (("每秒生命：") .. (I2S(R2I(LoadReal(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0xCF107893)))) .. (""))))
        DzFrameSetText(udg_UI_MB[55], YDWEGetPlayerColorString(Player(0), (("攻击属性：") .. (I2S(LoadInteger(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x7DE8906F))) .. (""))))
        DzFrameSetText(udg_UI_MB[56], YDWEGetPlayerColorString(Player(0), (("攻击加攻：") .. (I2S(R2I(LoadReal(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0xB168A63C)))) .. (""))))
        DzFrameSetText(udg_UI_MB[57], YDWEGetPlayerColorString(Player(0), (("攻击生命：") .. (I2S(R2I(LoadReal(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x5700935B)))) .. (""))))
        DzFrameSetText(udg_UI_MB[59], YDWEGetPlayerColorString(Player(0), (("每秒力量：") .. (I2S(LoadInteger(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0xF7A2AE48))) .. (""))))
        DzFrameSetText(udg_UI_MB[60], YDWEGetPlayerColorString(Player(0), (("每秒敏捷：") .. (I2S(LoadInteger(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x1290B274))) .. (""))))
        DzFrameSetText(udg_UI_MB[61], YDWEGetPlayerColorString(Player(0), (("每秒智力：") .. (I2S(LoadInteger(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0xDBA17425))) .. (""))))
    else
    end
    FlushChildHashtable(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step)
end

function InitTrig_chufaqi_shuxingmianban()
    gg_trg_chufaqi_shuxingmianban = CreateTrigger()
    TriggerAddAction(gg_trg_chufaqi_shuxingmianban, Trig_chufaqi_shuxingmianbanActions)
end

function Trig_SHUBIAOGUNLUNFunc005T()
    SetCameraField(CAMERA_FIELD_ANGLE_OF_ATTACK, bj_CAMERA_DEFAULT_AOA, 0)
    FlushChildHashtable(YDLOC, GetHandleId(GetExpiredTimer()))
    DestroyTimer(GetExpiredTimer())
end

function Trig_SHUBIAOGUNLUNActions()
    local ydl_timer = nil
    if (((DzGetWheelDelta() > 0) and (GetCameraField(CAMERA_FIELD_TARGET_DISTANCE) > 1500.00))) then
        SetCameraFieldForPlayer(DzGetTriggerKeyPlayer(), CAMERA_FIELD_TARGET_DISTANCE, (GetCameraField(CAMERA_FIELD_TARGET_DISTANCE) - 250.00), 0.25)
    else
    end
    if (((DzGetWheelDelta() < 0) and (GetCameraField(CAMERA_FIELD_TARGET_DISTANCE) < 2500.00))) then
        SetCameraFieldForPlayer(DzGetTriggerKeyPlayer(), CAMERA_FIELD_TARGET_DISTANCE, (GetCameraField(CAMERA_FIELD_TARGET_DISTANCE) + 250.00), 0.25)
    else
    end
    ydl_timer = CreateTimer()
    TimerStart(ydl_timer, 0.03, false, Trig_SHUBIAOGUNLUNFunc005T)
    ydl_timer = nil
end

function InitTrig_SHUBIAOGUNLUN()
    gg_trg_SHUBIAOGUNLUN = CreateTrigger()
    DzTriggerRegisterMouseWheelEventTrg(gg_trg_SHUBIAOGUNLUN)
    TriggerAddAction(gg_trg_SHUBIAOGUNLUN, Trig_SHUBIAOGUNLUNActions)
end

function Trig_shuruxinxiFunc004Func002A()
    if ((GetItemLifeBJ(GetEnumItem()) > 0.00) and (GetItemLevel(GetEnumItem()) >= 119) and (GetItemLevel(GetEnumItem()) <= 120)) then
        RemoveItem(GetEnumItem())
        SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0xFFCC81C4, GetRandomInt(1, 5))
        SaveInteger(YDHT, GetHandleId(GetTriggerPlayer()), 0x17BCF31F, (LoadInteger(YDHT, GetHandleId(GetTriggerPlayer()), 0x17BCF31F) + LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0xFFCC81C4)))
    else
    end
end

function Trig_shuruxinxiActions()
    local ydl_localvar_step = LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xCFDE6C76)
    ydl_localvar_step = ydl_localvar_step + 3
    SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xCFDE6C76, ydl_localvar_step)
    SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xECE825E7, ydl_localvar_step)
    if ((GetEventPlayerChatString() == "停止钓鱼")) then
        SaveInteger(YDHT, GetHandleId(GetTriggerPlayer()), 0xDFBE1DC7, 0)
    else
    end
    if ((SubStringBJ(GetEventPlayerChatString(), 1, 11) == "greedisgood")) then
        Cheat("greedisgood 0")
    else
    end
    if ((GetEventPlayerChatString() == "whosyourdaddy")) then
        Cheat("whosyourdaddy")
    else
    end
    if ((GetEventPlayerChatString() == "cs")) then
        EnumItemsInRectBJ(LoadRectHandle(YDHT, GetHandleId(GetTriggerPlayer()), 0x4D25E2F4), Trig_shuruxinxiFunc004Func002A)
    else
    end
    if ((GetEventPlayerChatString() == "+")) then
        udg_JT[GetConvertedPlayerId(GetTriggerPlayer())] = (udg_JT[GetConvertedPlayerId(GetTriggerPlayer())] + 100.00)
        SetCameraFieldForPlayer(GetTriggerPlayer(), CAMERA_FIELD_TARGET_DISTANCE, (2100.00 + udg_JT[GetConvertedPlayerId(GetTriggerPlayer())]), 0)
    else
    end
    if ((GetEventPlayerChatString() == "-")) then
        udg_JT[GetConvertedPlayerId(GetTriggerPlayer())] = (udg_JT[GetConvertedPlayerId(GetTriggerPlayer())] - 100.00)
        SetCameraFieldForPlayer(GetTriggerPlayer(), CAMERA_FIELD_TARGET_DISTANCE, (2100.00 + udg_JT[GetConvertedPlayerId(GetTriggerPlayer())]), 0)
    else
    end
    if ((GetEventPlayerChatString() == "txzj")) then
        if ((LoadInteger(YDHT, GetHandleId(GetTriggerPlayer()), 0x368F1E81) == 0)) then
            SaveInteger(YDHT, GetHandleId(GetTriggerPlayer()), 0x368F1E81, 1)
            DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "礼包激活成功！！")
            DzAPI_Map_StoreInteger(GetTriggerPlayer(), "LB1", 1)
            SavePlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946, GetTriggerPlayer())
            SavePlayerHandle(YDHT, GetHandleId(Player(PLAYER_NEUTRAL_AGGRESSIVE)), 0x119572DE, LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))
            SaveInteger(YDHT, GetHandleId(Player(PLAYER_NEUTRAL_AGGRESSIVE)), 0x171487D7, (LoadInteger(YDHT, StringHash(((("7y") .. ("1") .. ("1")))), StringHash((I2S(((udg_UI_FL[(14 + 1)]))))))))
            TriggerExecute(gg_trg_qjyd)
            SaveBoolean(YDHT, StringHash((GetPlayerName(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)))), StringHash(((("7y") .. ("1") .. ("1")))), (true))
        else
            DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "你已经激活该礼包，无需再次输入！")
        end
    else
    end
    if ((GetEventPlayerChatString() == "hrtd")) then
        if ((LoadInteger(YDHT, GetHandleId(GetTriggerPlayer()), 0x18939817) == 0)) then
            SaveInteger(YDHT, GetHandleId(GetTriggerPlayer()), 0x18939817, 1)
            DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "礼包激活成功！！")
            DzAPI_Map_StoreInteger(GetTriggerPlayer(), "LB3", 1)
            SavePlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946, GetTriggerPlayer())
            SavePlayerHandle(YDHT, GetHandleId(Player(PLAYER_NEUTRAL_AGGRESSIVE)), 0x119572DE, LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))
            SaveInteger(YDHT, GetHandleId(Player(PLAYER_NEUTRAL_AGGRESSIVE)), 0x171487D7, (LoadInteger(YDHT, StringHash(((("7y") .. ("1") .. ("3")))), StringHash((I2S(((udg_UI_FL[(14 + 3)]))))))))
            TriggerExecute(gg_trg_qjyd)
            SaveBoolean(YDHT, StringHash((GetPlayerName(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)))), StringHash(((("7y") .. ("1") .. ("3")))), (true))
        else
            DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "你已经激活该礼包，无需再次输入！")
        end
    else
    end
    if ((GetEventPlayerChatString() == "mzrpg")) then
        if ((LoadInteger(YDHT, GetHandleId(GetTriggerPlayer()), 0x639CFAEE) == 0)) then
            SaveInteger(YDHT, GetHandleId(GetTriggerPlayer()), 0x639CFAEE, 1)
            DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "礼包激活成功！！")
            DzAPI_Map_StoreInteger(GetTriggerPlayer(), "LB2", 1)
            SavePlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946, GetTriggerPlayer())
            SavePlayerHandle(YDHT, GetHandleId(Player(PLAYER_NEUTRAL_AGGRESSIVE)), 0x119572DE, LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))
            SaveInteger(YDHT, GetHandleId(Player(PLAYER_NEUTRAL_AGGRESSIVE)), 0x171487D7, (LoadInteger(YDHT, StringHash(((("7y") .. ("1") .. ("2")))), StringHash((I2S(((udg_UI_FL[(14 + 2)]))))))))
            TriggerExecute(gg_trg_qjyd)
            SaveBoolean(YDHT, StringHash((GetPlayerName(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)))), StringHash(((("7y") .. ("1") .. ("2")))), (true))
        else
            DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "你已经激活该礼包，无需再次输入！")
        end
    else
    end
    if ((GetEventPlayerChatString() == "TX")) then
        if ((LoadBoolean(YDHT, GetHandleId(GetTriggerPlayer()), 0xF5D496B8) == false)) then
            SaveBoolean(YDHT, GetHandleId(GetTriggerPlayer()), 0xF5D496B8, true)
            DisplayTextToPlayer(GetTriggerPlayer(), 0.30, 0, "关闭技能特效")
        else
            SaveBoolean(YDHT, GetHandleId(GetTriggerPlayer()), 0xF5D496B8, false)
            DisplayTextToPlayer(GetTriggerPlayer(), 0.30, 0, "打开技能特效")
        end
    else
    end
    if ((GetEventPlayerChatString() == "GG")) then
        SaveBoolean(YDHT, GetHandleId(Player(PLAYER_NEUTRAL_AGGRESSIVE)), 0xF0DEF83E, true)
    else
    end
    FlushChildHashtable(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step)
end

function InitTrig_shuruxinxi()
    gg_trg_shuruxinxi = CreateTrigger()
    TriggerRegisterPlayerChatEvent(gg_trg_shuruxinxi, Player(0), "", false)
    TriggerRegisterPlayerChatEvent(gg_trg_shuruxinxi, Player(1), "", false)
    TriggerRegisterPlayerChatEvent(gg_trg_shuruxinxi, Player(2), "", false)
    TriggerRegisterPlayerChatEvent(gg_trg_shuruxinxi, Player(3), "", false)
    TriggerRegisterPlayerChatEvent(gg_trg_shuruxinxi, Player(4), "", false)
    TriggerRegisterPlayerChatEvent(gg_trg_shuruxinxi, Player(5), "", false)
    TriggerRegisterPlayerChatEvent(gg_trg_shuruxinxi, Player(6), "", false)
    TriggerRegisterPlayerChatEvent(gg_trg_shuruxinxi, Player(7), "", false)
    TriggerRegisterPlayerChatEvent(gg_trg_shuruxinxi, Player(8), "", false)
    TriggerRegisterPlayerChatEvent(gg_trg_shuruxinxi, Player(9), "", false)
    TriggerRegisterPlayerChatEvent(gg_trg_shuruxinxi, Player(10), "", false)
    TriggerRegisterPlayerChatEvent(gg_trg_shuruxinxi, Player(11), "", false)
    TriggerRegisterPlayerChatEvent(gg_trg_shuruxinxi, Player(12), "", false)
    TriggerRegisterPlayerChatEvent(gg_trg_shuruxinxi, Player(13), "", false)
    TriggerRegisterPlayerChatEvent(gg_trg_shuruxinxi, Player(14), "", false)
    TriggerRegisterPlayerChatEvent(gg_trg_shuruxinxi, Player(15), "", false)
    TriggerAddAction(gg_trg_shuruxinxi, Trig_shuruxinxiActions)
end

function Trig_jinshouzhiConditions()
    do
        return ((((LoadInteger(YDHT, StringHash((GetPlayerName(GetTriggerPlayer()))), StringHash(("1")))) == 1) or ((LoadInteger(YDHT, StringHash((GetPlayerName(GetTriggerPlayer()))), StringHash(("2")))) == 1)))
    end
end

function Trig_jinshouzhiActions()
    local ydl_localvar_step = LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xCFDE6C76)
    ydl_localvar_step = ydl_localvar_step + 3
    SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xCFDE6C76, ydl_localvar_step)
    SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xECE825E7, ydl_localvar_step)
    SaveReal(YDHT, GetHandleId(GetTriggerPlayer()), 0x692728ED, 999999.00)
    SaveInteger(YDHT, GetHandleId(GetTriggerPlayer()), 0xF5B58222, 999999)
    ShowUnit((LoadUnitHandle(YDHT, ((GetHandleId((Player(0))))), (StringHash("05NPC")))), true)
    SetUnitState(udg_WJYX[1], UNIT_STATE_LIFE, 1000000000.00)
    SaveEffectHandle(YDHT, GetHandleId(GetTriggerPlayer()), 0xC43A1D5D, AddSpecialEffect("ui (4).mdl", GetUnitX(LoadUnitHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xD2A88040)), GetUnitY(LoadUnitHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xD2A88040))))
    SetUnitState(udg_WJYX[1], ConvertUnitState(0x51), 123.00)
    ShowUnitShow((LoadUnitHandle(YDHT, ((GetHandleId((Player(0))))), (StringHash("08NPC")))))
    SetHeroLevel(udg_WJYX[1], 50, false)
    FlushChildHashtable(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step)
end

function InitTrig_jinshouzhi()
    gg_trg_jinshouzhi = CreateTrigger()
    TriggerRegisterPlayerChatEvent(gg_trg_jinshouzhi, Player(0), "z", true)
    TriggerAddCondition(gg_trg_jinshouzhi, Condition(Trig_jinshouzhiConditions))
    TriggerAddAction(gg_trg_jinshouzhi, Trig_jinshouzhiActions)
end
end
