-- Converted from 342.w3x map/map/war3map.j.
-- Trigger functions grouped by feature.
-- InitTrig_zfc___________06
-- InitTrig_zs________03
-- InitTrig_ss________01
-- InitTrig______________wp
-- InitTrig_D
return function(_ENV)
function Trig_zfc___________06Actions()
    udg_pf_string[0] = "dawn_0.mdx"
    udg_pf_string[1] = "dawn_1.mdx"
    udg_pf_string[2] = "dawn_2.mdx"
    udg_pf_string[3] = "dawn_3.mdx"
    udg_pf_string[4] = "dawn_4.mdx"
    udg_pf_string[5] = "dawn_5.mdx"
    udg_pf_string[6] = "dawn_6.mdx"
    udg_pf_string[7] = "dawn_7.mdx"
    udg_pf_string[8] = "dawn_8.mdx"
    udg_pf_string[9] = "dawn_9.mdx"
    udg_pf_string[10] = "Mawn_W.mdx"
    udg_pf_string[11] = "Mawn_y.mdx"
    udg_pf_string1[0] = "Mawn_0.mdx"
    udg_pf_string1[1] = "Mawn_1.mdx"
    udg_pf_string1[2] = "Mawn_2.mdx"
    udg_pf_string1[3] = "Mawn_3.mdx"
    udg_pf_string1[4] = "Mawn_4.mdx"
    udg_pf_string1[5] = "Mawn_5.mdx"
    udg_pf_string1[6] = "Mawn_6.mdx"
    udg_pf_string1[7] = "Mawn_7.mdx"
    udg_pf_string1[8] = "Mawn_8.mdx"
    udg_pf_string1[9] = "Mawn_9.mdx"
    udg_pf_string1[10] = "Dawn_W.mdx"
    udg_pf_string1[11] = "Dawn_y.mdx"
    udg_pf_string2[0] = "jinbi (0).mdx"
    udg_pf_string2[1] = "jinbi (1).mdx"
    udg_pf_string2[2] = "jinbi (2).mdx"
    udg_pf_string2[3] = "jinbi (3).mdx"
    udg_pf_string2[4] = "jinbi (4).mdx"
    udg_pf_string2[5] = "jinbi (5).mdx"
    udg_pf_string2[6] = "jinbi (6).mdx"
    udg_pf_string2[7] = "jinbi (7).mdx"
    udg_pf_string2[8] = "jinbi (8).mdx"
    udg_pf_string2[9] = "jinbi (9).mdx"
    udg_pf_string2[10] = "jinbi.mdx"
end

function InitTrig_zfc___________06()
    gg_trg_zfc___________06 = CreateTrigger()
    TriggerAddAction(gg_trg_zfc___________06, Trig_zfc___________06Actions)
end

function Trig_zs________03Actions()
    SaveInteger(YDHT, StringHash(("The泡泡")), StringHash(("1")), (1))
    SaveInteger(YDHT, StringHash(("The泡泡")), StringHash(("2")), (1))
    SaveInteger(YDHT, StringHash(("大世界点卡拉")), StringHash(("1")), (1))
    SaveInteger(YDHT, StringHash(("大世界点卡拉斯基")), StringHash(("1")), (1))
    SaveInteger(YDHT, StringHash(("她的苏菲掉了")), StringHash(("1")), (1))
    SaveInteger(YDHT, StringHash(("她的苏菲掉了")), StringHash(("2")), (1))
    SaveInteger(YDHT, StringHash(("魔芝科技")), StringHash(("2")), (1))
    SaveInteger(YDHT, StringHash(("魔芝工坊")), StringHash(("2")), (1))
    SaveInteger(YDHT, StringHash(("魔兽情怀玩家")), StringHash(("2")), (1))
    SaveInteger(YDHT, StringHash(("55443322")), StringHash(("2")), (1))
    SaveInteger(YDHT, StringHash(("55443322")), StringHash(("1")), (1))
end

function InitTrig_zs________03()
    gg_trg_zs________03 = CreateTrigger()
    TriggerAddAction(gg_trg_zs________03, Trig_zs________03Actions)
end

function Trig_ss________01Actions()
    udg_LGFZB_x[1] = -1047.00
    udg_LGFZB_y[1] = -6017.00
    udg_LGFZB_x[2] = 2071.00
    udg_LGFZB_y[2] = -5938.00
    udg_LGFZB_x[3] = 5196.00
    udg_LGFZB_y[3] = -5952.00
    udg_LGFZB_x[4] = 8237.00
    udg_LGFZB_y[4] = -6000.00
    SaveReal(YDHT, GetHandleId(Player(0)), 0x6006FF54, 11600.00)
    SaveReal(YDHT, GetHandleId(Player(0)), 0xBEEC641E, -6100.00)
    SaveReal(YDHT, GetHandleId(Player(1)), 0x6006FF54, 13500.00)
    SaveReal(YDHT, GetHandleId(Player(1)), 0xBEEC641E, -6100.00)
    SaveReal(YDHT, GetHandleId(Player(2)), 0x6006FF54, 11600.00)
    SaveReal(YDHT, GetHandleId(Player(2)), 0xBEEC641E, -8400.00)
    SaveReal(YDHT, GetHandleId(Player(3)), 0x6006FF54, 13500.00)
    SaveReal(YDHT, GetHandleId(Player(3)), 0xBEEC641E, -8400.00)
    SaveReal(YDHT, 0x424D3039, 0xA99320FA, -10200.00)
    SaveReal(YDHT, 0x424D3039, 0xFDF65382, -4440.00)
    SaveReal(YDHT, 0x424D3130, 0xA99320FA, 18950.00)
    SaveReal(YDHT, 0x424D3130, 0xFDF65382, -7798.00)
end

function InitTrig_ss________01()
    gg_trg_ss________01 = CreateTrigger()
    TriggerAddAction(gg_trg_ss________01, Trig_ss________01Actions)
end

function Trig______________wpActions()
    DestroyTrigger(GetTriggeringTrigger())
    SaveInteger(YDHT, 0x4A303144, 0x800C68E2, 0x30314A44)
    SaveInteger(YDHT, 0x4A303244, 0x800C68E2, 0x30324A44)
    SaveInteger(YDHT, 0x4A303344, 0x800C68E2, 0x30334A44)
    SaveInteger(YDHT, 0x4A303444, 0x800C68E2, 0x30344A44)
    SaveStr(YDHT, StringHash(("武魂物品")), StringHash(("1")), ((EXExecuteScript("(require'jass.slk').item[" .. I2S((0x57483031)) .. "].Name"))))
    SaveStr(YDHT, StringHash(("武魂物品")), StringHash(("2")), ((EXExecuteScript("(require'jass.slk').item[" .. I2S((0x57483032)) .. "].Name"))))
    SaveStr(YDHT, StringHash(("武魂物品")), StringHash(("3")), ((EXExecuteScript("(require'jass.slk').item[" .. I2S((0x57483033)) .. "].Name"))))
    SaveStr(YDHT, StringHash(("武魂物品")), StringHash(("4")), ((EXExecuteScript("(require'jass.slk').item[" .. I2S((0x57483034)) .. "].Name"))))
    SaveStr(YDHT, StringHash(("武魂物品")), StringHash(("5")), ((EXExecuteScript("(require'jass.slk').item[" .. I2S((0x57483035)) .. "].Name"))))
    SaveStr(YDHT, StringHash(("武魂物品")), StringHash(("6")), ((EXExecuteScript("(require'jass.slk').item[" .. I2S((0x57483036)) .. "].Name"))))
    SaveStr(YDHT, StringHash(("武魂物品")), StringHash(("7")), ((EXExecuteScript("(require'jass.slk').item[" .. I2S((0x57483037)) .. "].Name"))))
    SaveStr(YDHT, StringHash(("武魂物品")), StringHash(("8")), ((EXExecuteScript("(require'jass.slk').item[" .. I2S((0x57483038)) .. "].Name"))))
    SaveStr(YDHT, StringHash(("武魂物品")), StringHash(("9")), ((EXExecuteScript("(require'jass.slk').item[" .. I2S((0x57483039)) .. "].Name"))))
    SaveStr(YDHT, StringHash(("武魂物品")), StringHash(("10")), ((EXExecuteScript("(require'jass.slk').item[" .. I2S((0x57483130)) .. "].Name"))))
    SaveStr(YDHT, StringHash(("武魂物品")), StringHash(("11")), ((EXExecuteScript("(require'jass.slk').item[" .. I2S((0x57483131)) .. "].Name"))))
    SaveStr(YDHT, StringHash(("武魂物品")), StringHash(("12")), ((EXExecuteScript("(require'jass.slk').item[" .. I2S((0x57483132)) .. "].Name"))))
    SaveStr(YDHT, StringHash(("武魂物品")), StringHash(("13")), ((EXExecuteScript("(require'jass.slk').item[" .. I2S((0x57483133)) .. "].Name"))))
    SaveStr(YDHT, StringHash(("武魂物品")), StringHash(("14")), ((EXExecuteScript("(require'jass.slk').item[" .. I2S((0x57483134)) .. "].Name"))))
    SaveStr(YDHT, StringHash(("武魂物品")), StringHash(("15")), ((EXExecuteScript("(require'jass.slk').item[" .. I2S((0x57483135)) .. "].Name"))))
    SaveStr(YDHT, StringHash(("武魂物品")), StringHash(("16")), ((EXExecuteScript("(require'jass.slk').item[" .. I2S((0x57483136)) .. "].Name"))))
    SaveStr(YDHT, StringHash(("武魂物品")), StringHash(("17")), ((EXExecuteScript("(require'jass.slk').item[" .. I2S((0x57483137)) .. "].Name"))))
    SaveStr(YDHT, StringHash(("武魂物品")), StringHash(("18")), ((EXExecuteScript("(require'jass.slk').item[" .. I2S((0x57483138)) .. "].Name"))))
    SaveInteger(YDHT, StringHash(("wuxing")), StringHash(("1y1")), ((0x77303178)))
    SaveInteger(YDHT, StringHash(("wuxing")), StringHash(("1y2")), ((0x77303278)))
    SaveInteger(YDHT, StringHash(("wuxing")), StringHash(("1y3")), ((0x77303378)))
    SaveInteger(YDHT, StringHash(("wuxing")), StringHash(("1y4")), ((0x77303478)))
    SaveInteger(YDHT, StringHash(("wuxing")), StringHash(("1y5")), ((0x77303578)))
    SaveInteger(YDHT, StringHash(("wuxing")), StringHash(("1y6")), ((0x77303678)))
    SaveInteger(YDHT, StringHash(("wuxing")), StringHash(("1y7")), ((0x77303778)))
    SaveInteger(YDHT, StringHash(("wuxing")), StringHash(("1y8")), ((0x77303878)))
    SaveInteger(YDHT, StringHash(("wuxing")), StringHash(("1y9")), ((0x77303978)))
    SaveInteger(YDHT, StringHash(("wuxing")), StringHash(("2y1")), ((0x77313078)))
    SaveInteger(YDHT, StringHash(("wuxing")), StringHash(("2y2")), ((0x77313178)))
    SaveInteger(YDHT, StringHash(("wuxing")), StringHash(("2y3")), ((0x77313278)))
    SaveInteger(YDHT, StringHash(("wuxing")), StringHash(("2y4")), ((0x77313378)))
    SaveInteger(YDHT, StringHash(("wuxing")), StringHash(("2y5")), ((0x77313478)))
    SaveInteger(YDHT, StringHash(("wuxing")), StringHash(("2y6")), ((0x77313578)))
    SaveInteger(YDHT, StringHash(("wuxing")), StringHash(("2y7")), ((0x77313678)))
    SaveInteger(YDHT, StringHash(("wuxing")), StringHash(("2y8")), ((0x77313778)))
    SaveInteger(YDHT, StringHash(("wuxing")), StringHash(("2y9")), ((0x77313878)))
    SaveInteger(YDHT, StringHash(("wuxing")), StringHash(("3y1")), ((0x77313978)))
    SaveInteger(YDHT, StringHash(("wuxing")), StringHash(("3y2")), ((0x77323078)))
    SaveInteger(YDHT, StringHash(("wuxing")), StringHash(("3y3")), ((0x77323178)))
    SaveInteger(YDHT, StringHash(("wuxing")), StringHash(("3y4")), ((0x77323278)))
    SaveInteger(YDHT, StringHash(("wuxing")), StringHash(("3y5")), ((0x77323378)))
    SaveInteger(YDHT, StringHash(("wuxing")), StringHash(("3y6")), ((0x77323478)))
    SaveInteger(YDHT, StringHash(("wuxing")), StringHash(("3y7")), ((0x77323578)))
    SaveInteger(YDHT, StringHash(("wuxing")), StringHash(("3y8")), ((0x77323678)))
    SaveInteger(YDHT, StringHash(("wuxing")), StringHash(("3y9")), ((0x77323778)))
    SaveInteger(YDHT, StringHash(("wuxing")), StringHash(("4y1")), ((0x77323878)))
    SaveInteger(YDHT, StringHash(("wuxing")), StringHash(("4y2")), ((0x77323978)))
    SaveInteger(YDHT, StringHash(("wuxing")), StringHash(("4y3")), ((0x77333078)))
    SaveInteger(YDHT, StringHash(("wuxing")), StringHash(("4y4")), ((0x77333178)))
    SaveInteger(YDHT, StringHash(("wuxing")), StringHash(("4y5")), ((0x77333278)))
    SaveInteger(YDHT, StringHash(("wuxing")), StringHash(("4y6")), ((0x77333378)))
    SaveInteger(YDHT, StringHash(("wuxing")), StringHash(("4y7")), ((0x77333478)))
    SaveInteger(YDHT, StringHash(("wuxing")), StringHash(("4y8")), ((0x77333578)))
    SaveInteger(YDHT, StringHash(("wuxing")), StringHash(("4y9")), ((0x77333678)))
    SaveInteger(YDHT, StringHash(("wuxing")), StringHash(("5y1")), ((0x77333778)))
    SaveInteger(YDHT, StringHash(("wuxing")), StringHash(("5y2")), ((0x77333878)))
    SaveInteger(YDHT, StringHash(("wuxing")), StringHash(("5y3")), ((0x77333978)))
    SaveInteger(YDHT, StringHash(("wuxing")), StringHash(("5y4")), ((0x77343078)))
    SaveInteger(YDHT, StringHash(("wuxing")), StringHash(("5y5")), ((0x77343178)))
    SaveInteger(YDHT, StringHash(("wuxing")), StringHash(("5y6")), ((0x77343278)))
    SaveInteger(YDHT, StringHash(("wuxing")), StringHash(("5y7")), ((0x77343378)))
    SaveInteger(YDHT, StringHash(("wuxing")), StringHash(("5y8")), ((0x77343478)))
    SaveInteger(YDHT, StringHash(("wuxing")), StringHash(("5y9")), ((0x77343578)))
    bj_forLoopAIndex = 1
    bj_forLoopAIndexEnd = 4
    while true do
        if bj_forLoopAIndex > bj_forLoopAIndexEnd then
            break
        end
        if ((GetPlayerController(ConvertedPlayer(bj_forLoopAIndex)) == MAP_CONTROL_USER) and (GetPlayerSlotState(ConvertedPlayer(bj_forLoopAIndex)) == PLAYER_SLOT_STATE_PLAYING)) then
            SaveInteger(YDHT, ((GetHandleId((ConvertedPlayer(bj_forLoopAIndex))))), (((udg_JN_BUTTON[1]))), ((0x4C303130)))
            SaveInteger(YDHT, ((GetHandleId((ConvertedPlayer(bj_forLoopAIndex))))), (((udg_JN_BUTTON[2]))), ((0x4C303131)))
            SaveInteger(YDHT, ((GetHandleId((ConvertedPlayer(bj_forLoopAIndex))))), (((udg_JN_BUTTON[3]))), ((0x4C303132)))
            SaveInteger(YDHT, ((GetHandleId((ConvertedPlayer(bj_forLoopAIndex))))), (((udg_JN_BUTTON[4]))), ((0x4C303133)))
            SaveInteger(YDHT, ((GetHandleId((ConvertedPlayer(bj_forLoopAIndex))))), (((udg_JN_BUTTON[5]))), ((0x4C303134)))
            SaveInteger(YDHT, ((GetHandleId((ConvertedPlayer(bj_forLoopAIndex))))), (((udg_JN_BUTTON[6]))), ((0x4C303135)))
            SaveInteger(YDHT, ((GetHandleId((ConvertedPlayer(bj_forLoopAIndex))))), (((udg_JN_BUTTON[7]))), ((0x4C303136)))
            SaveInteger(YDHT, ((GetHandleId((ConvertedPlayer(bj_forLoopAIndex))))), (((udg_JN_BUTTON[8]))), ((0x4C303137)))
            SaveInteger(YDHT, ((GetHandleId((ConvertedPlayer(bj_forLoopAIndex))))), (((udg_JN_BUTTON[9]))), ((0x4C303138)))
            SaveInteger(YDHT, ((GetHandleId((ConvertedPlayer(bj_forLoopAIndex))))), (((udg_JN_BUTTON[10]))), ((0x4C303139)))
            SaveInteger(YDHT, ((GetHandleId((ConvertedPlayer(bj_forLoopAIndex))))), (((udg_JN_BUTTON[11]))), ((0x4C303230)))
        else
        end
        bj_forLoopAIndex = bj_forLoopAIndex + 1
    end
    udg_wp_cl_BMDJ[1] = 0x72617466
    udg_wp_cl_BMDJ[2] = 0x636B6E67
    udg_wp_cl_BMDJ[3] = 0x64657363
    udg_wp_cl_BMDJ[4] = 0x746B6E6F
    udg_wp_cl_BMDJ[5] = 0x72646534
    udg_wp_cl_BMDJ[6] = 0x6F66726F
end

function InitTrig______________wp()
    gg_trg______________wp = CreateTrigger()
    TriggerAddAction(gg_trg______________wp, Trig______________wpActions)
end

function Trig_DActions()
    local ydl_triggerstep = nil
    local ydl_trigger = nil
    ydl_trigger = gg_trg_99_1_D___u
    ydl_triggerstep = GetHandleId(ydl_trigger) * (LoadInteger(YDLOC, GetHandleId(ydl_trigger), 0xCFDE6C76) + 3)
    SaveInteger(YDLOC, ydl_triggerstep, 0x6F96F2D2, GetConvertedPlayerId(DzGetTriggerKeyPlayer()))
    SaveReal(YDLOC, ydl_triggerstep, 0xA99320FA, DzGetMouseTerrainX())
    SaveReal(YDLOC, ydl_triggerstep, 0xFDF65382, DzGetMouseTerrainY())
    SavePlayerHandle(YDLOC, ydl_triggerstep, 0x097573CA, DzGetTriggerKeyPlayer())
    SaveUnitHandle(YDLOC, ydl_triggerstep, 0x911D5DC2, udg_WJYX[GetConvertedPlayerId(DzGetTriggerKeyPlayer())])
    TriggerExecute(ydl_trigger)
    ydl_trigger = nil
end

function InitTrig_D()
    gg_trg_D = CreateTrigger()
    DzTriggerRegisterKeyEventTrg(gg_trg_D, 1, 0x44)
    TriggerAddAction(gg_trg_D, Trig_DActions)
end
end
