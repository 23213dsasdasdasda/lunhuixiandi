-- Converted from 342.w3x map/map/war3map.j.
-- Trigger functions grouped by feature.
-- InitTrig_dw________02
-- InitTrig_dwlx_____________u
-- InitTrig_dwsq______________04
-- InitTrig_work
-- InitTrig_quyuWF2
-- InitTrig_YXC
return function(_ENV)
function Trig_dw________02Func001A()
    if ((GetPlayerController(GetEnumPlayer()) == MAP_CONTROL_USER) and (GetPlayerSlotState(GetEnumPlayer()) == PLAYER_SLOT_STATE_PLAYING)) then
        SaveReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0xA99320FA, udg_LGFZB_x[GetConvertedPlayerId(GetEnumPlayer())])
        SaveReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0xFDF65382, udg_LGFZB_y[GetConvertedPlayerId(GetEnumPlayer())])
        SaveUnitHandle(YDHT, ((GetHandleId((GetEnumPlayer())))), (StringHash("01NPC")), (CreateUnit(GetEnumPlayer(), (0x6E303032), (LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0xA99320FA) - 500.00), (LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0xFDF65382) + 50.00), 270.00)))
        ShowUnit((LoadUnitHandle(YDHT, ((GetHandleId((GetEnumPlayer())))), (StringHash("01NPC")))), false)
        SaveUnitHandle(YDHT, ((GetHandleId((GetEnumPlayer())))), (StringHash("02NPC")), (CreateUnit(GetEnumPlayer(), (0x6E303031), (LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0xA99320FA) - 500.00), (LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0xFDF65382) + 350.00), 270.00)))
        SaveUnitHandle(YDHT, ((GetHandleId((GetEnumPlayer())))), (StringHash("03NPC")), (CreateUnit(GetEnumPlayer(), (0x6E303030), (LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0xA99320FA) - 200.00), (LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0xFDF65382) + 350.00), 270.00)))
        SaveUnitHandle(YDHT, ((GetHandleId((GetEnumPlayer())))), (StringHash("04NPC")), (CreateUnit(GetEnumPlayer(), (0x6E303033), (LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0xA99320FA) + 500.00), (LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0xFDF65382) + 350.00), 270.00)))
        ShowUnit((LoadUnitHandle(YDHT, ((GetHandleId((GetEnumPlayer())))), (StringHash("04NPC")))), false)
        SaveUnitHandle(YDHT, GetHandleId(GetEnumPlayer()), 0x29F18A93, (LoadUnitHandle(YDHT, ((GetHandleId((GetEnumPlayer())))), (StringHash("04NPC")))))
        AddItemToStockBJ((0x4C303130), LoadUnitHandle(YDHT, GetHandleId(GetEnumPlayer()), 0x29F18A93), 1, 1)
        AddItemToStockBJ((0x4C303131), LoadUnitHandle(YDHT, GetHandleId(GetEnumPlayer()), 0x29F18A93), 1, 1)
        AddItemToStockBJ((0x4C303132), LoadUnitHandle(YDHT, GetHandleId(GetEnumPlayer()), 0x29F18A93), 1, 1)
        AddItemToStockBJ((0x4C303133), LoadUnitHandle(YDHT, GetHandleId(GetEnumPlayer()), 0x29F18A93), 1, 1)
        AddItemToStockBJ((0x4C303134), LoadUnitHandle(YDHT, GetHandleId(GetEnumPlayer()), 0x29F18A93), 1, 1)
        AddItemToStockBJ((0x4C303135), LoadUnitHandle(YDHT, GetHandleId(GetEnumPlayer()), 0x29F18A93), 1, 1)
        AddItemToStockBJ((0x4C303136), LoadUnitHandle(YDHT, GetHandleId(GetEnumPlayer()), 0x29F18A93), 1, 1)
        AddItemToStockBJ((0x4C303137), LoadUnitHandle(YDHT, GetHandleId(GetEnumPlayer()), 0x29F18A93), 1, 1)
        AddItemToStockBJ((0x4C303138), LoadUnitHandle(YDHT, GetHandleId(GetEnumPlayer()), 0x29F18A93), 1, 1)
        SaveUnitHandle(YDHT, ((GetHandleId((GetEnumPlayer())))), (StringHash("05NPC")), (CreateUnit(GetEnumPlayer(), (0x6E303034), (LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0xA99320FA) + 500.00), (LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0xFDF65382) + 50.00), 270.00)))
        ShowUnit((LoadUnitHandle(YDHT, ((GetHandleId((GetEnumPlayer())))), (StringHash("05NPC")))), false)
        SaveUnitHandle(YDHT, ((GetHandleId((GetEnumPlayer())))), (StringHash("08NPC")), (CreateUnit(GetEnumPlayer(), (0x6E303038), (LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0xA99320FA) - 500.00), (LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0xFDF65382) - 450.00), 270.00)))
        ShowUnit((LoadUnitHandle(YDHT, ((GetHandleId((GetEnumPlayer())))), (StringHash("08NPC")))), false)
        SaveUnitHandle(YDHT, ((GetHandleId((GetEnumPlayer())))), (StringHash("09NPC")), (CreateUnit(GetEnumPlayer(), (0x6E303039), (LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0xA99320FA) + 200.00), (LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0xFDF65382) + 350.00), 270.00)))
        ShowUnit((LoadUnitHandle(YDHT, ((GetHandleId((GetEnumPlayer())))), (StringHash("09NPC")))), false)
        SaveUnitHandle(YDHT, ((GetHandleId((GetEnumPlayer())))), (StringHash("10NPC")), (CreateUnit(GetEnumPlayer(), (0x6E303048), (LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0xA99320FA) - 500.00), (LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0xFDF65382) - 200.00), 270.00)))
        ShowUnit((LoadUnitHandle(YDHT, ((GetHandleId((GetEnumPlayer())))), (StringHash("10NPC")))), false)
        SaveUnitHandle(YDHT, ((GetHandleId((GetEnumPlayer())))), (StringHash("11NPC")), (CreateUnit(GetEnumPlayer(), (0x6E30304E), (LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0xA99320FA) + 700.00), (LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0xFDF65382) + 50.00), 270.00)))
        ShowUnit((LoadUnitHandle(YDHT, ((GetHandleId((GetEnumPlayer())))), (StringHash("11NPC")))), false)
        SaveUnitHandle(YDHT, ((GetHandleId((GetEnumPlayer())))), (StringHash("12NPC")), (CreateUnit(GetEnumPlayer(), (0x6E30304F), (LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0xA99320FA) + 500.00), (LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0xFDF65382) - 200.00), 270.00)))
        SetUnitState((LoadUnitHandle(YDHT, ((GetHandleId((GetEnumPlayer())))), (StringHash("12NPC")))), UNIT_STATE_LIFE, 1.00)
        SaveUnitHandle(YDHT, ((GetHandleId((GetEnumPlayer())))), (StringHash("13NPC")), (CreateUnit(GetEnumPlayer(), (0x6E303052), (LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0xA99320FA) + 700.00), (LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0xFDF65382) - 200.00), 270.00)))
        ShowUnit((LoadUnitHandle(YDHT, ((GetHandleId((GetEnumPlayer())))), (StringHash("13NPC")))), false)
        SaveUnitHandle(YDHT, ((GetHandleId((GetEnumPlayer())))), (StringHash("14NPC")), (CreateUnit(GetEnumPlayer(), (0x6E303054), (LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0xA99320FA) - 700.00), (LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0xFDF65382) - 200.00), 270.00)))
        ShowUnit((LoadUnitHandle(YDHT, ((GetHandleId((GetEnumPlayer())))), (StringHash("14NPC")))), false)
    else
    end
end

function Trig_dw________02Actions()
    ForForce(udg_ZXWJZ, Trig_dw________02Func001A)
end

function InitTrig_dw________02()
    gg_trg_dw________02 = CreateTrigger()
    TriggerAddAction(gg_trg_dw________02, Trig_dw________02Actions)
end

function Trig_dwlx_____________uActions()
    udg_YXXZ[1] = (0x59583031)
    udg_YXXZ[2] = (0x59583032)
    udg_YXXZ[3] = (0x59583033)
    udg_YXXZ[4] = (0x59583034)
    udg_YXXZ[5] = (0x59583035)
    udg_YXXZ[6] = (0x59583036)
    udg_YXXZ[7] = (0x59583037)
    udg_YXXZ[8] = (0x59583038)
    udg_YXXZ[9] = (0x59583039)
    udg_YXXZ[10] = (0x59583130)
    udg_YXXZ[11] = (0x59583131)
    udg_YXXZ[12] = (0x59583132)
    udg_YXXZ[13] = (0x59583133)
    udg_YXXZ[14] = (0x59583134)
    udg_YXXZ[15] = (0x59583135)
    udg_YXXZ[16] = (0x59583136)
    udg_YXXZ[17] = (0x59583137)
    udg_YXXZ[18] = (0x59583138)
    udg_YXXZ[19] = (0x59583139)
    udg_YXXZ[20] = (0x59583230)
    udg_YXXZ[21] = (0x59583231)
    udg_YXXZ[22] = (0x59583232)
    udg_YXXZ[23] = (0x59583233)
    udg_qjsg1[1] = (0x78736731)
    udg_qjsg1[2] = (0x78736732)
    udg_qjsg1[3] = (0x66303031)
    udg_qjsg1[4] = (0x66303032)
    udg_qjsg1[5] = (0x66303033)
    udg_qjsg1[6] = (0x66303034)
    udg_qjsg1[7] = (0x66303035)
    udg_qjsg1[8] = (0x66303036)
    udg_qjsg1[9] = (0x66303037)
    udg_qjsg1[10] = (0x66303038)
    udg_qjsg1[11] = (0x66303039)
    udg_qjsg1[12] = (0x66303130)
    udg_qjsg1[13] = (0x66303131)
    udg_qjsg1[14] = (0x66303132)
    udg_qjsg1[15] = (0x66303133)
    udg_qjsg1[16] = (0x66303134)
    udg_qjsg1[17] = (0x66303135)
    udg_qjsg1[18] = (0x66303136)
    udg_qjsg1[19] = (0x66303137)
    udg_qjsg1[20] = (0x66303138)
    udg_qjsg1[21] = (0x66303139)
    udg_qjsg1[22] = (0x66303230)
    udg_qjsg1[23] = (0x66303231)
    udg_qjsg1[24] = (0x66303232)
    udg_qjsg1[25] = (0x66303233)
    udg_qjsg1[26] = (0x66303234)
    udg_qjsg1[27] = (0x66303235)
    udg_qjsg1[28] = (0x66303236)
    udg_qjsg1[29] = (0x66303237)
    udg_qjsg1[30] = (0x66303238)
    udg_qjsg1[31] = (0x66303239)
    udg_qjsg1[32] = (0x66303330)
    udg_qjsg1[33] = (0x66303331)
    udg_qjsg1[34] = (0x66303332)
    udg_qjsg1[35] = (0x66303333)
    udg_qjsg1[36] = (0x66303334)
    udg_qjsg1[37] = (0x66303335)
    udg_qjsg1[38] = (0x66303336)
    udg_qjsg1[39] = (0x66303337)
    udg_qjsg1[40] = (0x66303338)
    udg_qjsg1[41] = (0x66303339)
    udg_qjsg1[42] = (0x66303430)
    udg_qjsg1[43] = (0x66303431)
    udg_qjsg1[44] = (0x66303432)
    udg_qjsg1[45] = (0x66303433)
    udg_qjsg1[46] = (0x66303434)
    udg_qjsg1[47] = (0x66303435)
    udg_qjsg1[48] = (0x66303436)
    udg_qjsg1[49] = (0x66303437)
    udg_qjsg1[50] = (0x66303438)
    udg_qjsg1[51] = (0x66303439)
    udg_qjsg1[52] = (0x66303530)
    udg_qjsg1[53] = (0x66303531)
    udg_qjsg1[54] = (0x66303532)
    udg_qjsg1[55] = (0x66303533)
    udg_qjsg1[56] = (0x66303534)
    udg_qjsg1[57] = (0x66303535)
    udg_qjsg1[58] = (0x66303536)
    udg_qjsg1[59] = (0x66303537)
    udg_qjsg1[60] = (0x66303538)
    udg_qjsg1[61] = (0x66303539)
    udg_qjsg1[62] = (0x66303630)
    udg_qjsg1[63] = (0x66303631)
    udg_qjsg1[64] = (0x66303632)
    udg_qjsg1[65] = (0x66303633)
    udg_qjsg1[66] = (0x66303634)
    udg_qjsg1[67] = (0x66303635)
    udg_qjsg1[68] = (0x66303636)
    udg_qjsg1[69] = (0x66303637)
    udg_qjsg1[70] = (0x66303638)
    udg_qjsg1[71] = (0x66303639)
    udg_qjsg1[72] = (0x66303730)
    udg_qjsg1[73] = (0x66303731)
    udg_qjsg1[74] = (0x66303732)
    udg_qjsg1[75] = (0x66303733)
    udg_qjsg1[76] = (0x66303734)
    udg_qjsg1[77] = (0x66303735)
    udg_qjsg1[78] = (0x66303736)
    udg_qjsg1[79] = (0x66303737)
    udg_qjsg1[80] = (0x66303738)
    udg_qjsg1[81] = (0x66303739)
    udg_qjsg1[82] = (0x66303830)
    udg_qjsg1[83] = (0x66303831)
    udg_qjsg1[84] = (0x66303832)
    udg_qjsg1[85] = (0x66303833)
    udg_qjsg1[86] = (0x66303834)
    udg_qjsg1[87] = (0x66303835)
    udg_qjsg1[88] = (0x66303836)
    udg_qjsg1[89] = (0x66303837)
    udg_qjsg1[90] = (0x66303838)
    udg_qjsg1[91] = (0x66303839)
    udg_qjsg1[92] = (0x66303930)
    udg_qjsg1[93] = (0x66303931)
    udg_qjsg1[94] = (0x66303932)
    udg_qjsg1[95] = (0x66303933)
    udg_qjsg1[96] = (0x5A544731)
    udg_qjsg1[97] = (0x5A544732)
    udg_qjsg1[98] = (0x5A544733)
    udg_qjsg1[99] = (0x5A544734)
    udg_qjsg1[100] = (0x5A544735)
    udg_qjsg1[101] = (0x5A544736)
    udg_qjsg1[102] = (0x5A544737)
    udg_qjsg1[103] = (0x5A544738)
    udg_qjsg1[104] = (0x5A544739)
    udg_qjsg1[105] = (0x5A543130)
    udg_qjsg1[106] = (0x5A543131)
    udg_qjsg1[107] = (0x5A543132)
    udg_qjsg1[108] = (0x65623031)
    udg_qjsg1[109] = (0x65623032)
    udg_qjsg1[110] = (0x65623033)
    udg_qjsg1[111] = (0x65623034)
    udg_qjsg1[112] = (0x65623035)
    udg_qjsg1[113] = (0x65623036)
    udg_qjsg1[114] = (0x53443039)
    udg_qjsg1[115] = (0x53443130)
    udg_LGF[1] = (0x4C474231)
    udg_LGF[2] = (0x4C474232)
    udg_LGF[3] = (0x4C474233)
    udg_LGF[4] = (0x4C474234)
    udg_LGF[5] = (0x4C474235)
    udg_DY_JS[1] = 0x64796231
    udg_DY_JS[2] = 0x64796232
    udg_DY_JS[3] = 0x64796233
    udg_DY_JS[4] = 0x64796234
    udg_LZJZ[1] = 0x79787331
    udg_LZJZ[2] = 0x79787332
    udg_LZJZ[3] = 0x79787333
    udg_LZJZ[4] = 0x79787334
    udg_LZJZ[5] = 0x79787335
    udg_LZJZ[6] = 0x79787336
    udg_LZJZ[7] = 0x79787337
    udg_LZJZ[8] = 0x79787338
    udg_LZJZ[9] = 0x79787339
    udg_JGGGG[1] = 0x6E616E62
    udg_JGGGG[2] = 0x6E657264
    udg_JGGGG[3] = 0x6E72656C
    udg_JGGGG[4] = 0x6E63696D
    udg_JGGGG[5] = 0x6E6F7765
    udg_JGGGG[6] = 0x6E706C62
    udg_JGGGG[7] = 0x6E66706C
    udg_JGGGG[8] = 0x6E6D6D75
    udg_JGGGG[9] = 0x6E697468
    udg_JGGGG[10] = 0x6E747276
    udg_JGGGG[11] = 0x6E647266
    udg_JGGGG[12] = 0x6E64726A
    udg_JGGGG[13] = 0x6E656E70
    udg_JGGGG[14] = 0x6E737370
    udg_JGGGG[15] = 0x6E696E6D
    udg_JGGGG[16] = 0x6E696E61
    udg_JGGGG[17] = 0x6E696E66
    udg_JGGGG[18] = 0x6E647176
    udg_JGGGG[19] = 0x6E737477
    udg_JGGGG[20] = 0x6E73726E
    udg_JGGGG[21] = 0x6E6B6F62
    udg_JGGGG[22] = 0x6E737161
    udg_JGGGG[23] = 0x6E747273
    udg_JGGGG[24] = 0x6E73676E
    udg_JGGGG[25] = 0x6E727A74
    udg_JGGGG[26] = 0x6E647468
    udg_JGGGG[27] = 0x6E647474
    udg_JGGGG[28] = 0x6E727A73
    udg_JGGGG[29] = 0x6E687964
    udg_JGGGG[30] = 0x6E6C7072
end

function InitTrig_dwlx_____________u()
    gg_trg_dwlx_____________u = CreateTrigger()
    TriggerAddAction(gg_trg_dwlx_____________u, Trig_dwlx_____________uActions)
end

function Trig_dwsq______________04Func001T()
    SaveInteger(YDLOC, GetHandleId(GetExpiredTimer()), 0x6C2DED4E, (LoadInteger(YDLOC, GetHandleId(GetExpiredTimer()), 0x6C2DED4E) + 1))
    bj_forLoopAIndex = 1
    bj_forLoopAIndexEnd = S2I(EXExecuteScript("(require'jass.slk').unit[" .. I2S(udg_qjsg1[LoadInteger(YDLOC, GetHandleId(GetExpiredTimer()), 0x6C2DED4E)]) .. "].Farea2"))
    while true do
        if bj_forLoopAIndex > bj_forLoopAIndexEnd then
            break
        end
        SaveLocationHandle(YDLOC, GetHandleId(GetExpiredTimer()), 0x9CD60476, JK_Round(S2R(EXExecuteScript("(require'jass.slk').unit[" .. I2S(udg_qjsg1[LoadInteger(YDLOC, GetHandleId(GetExpiredTimer()), 0x6C2DED4E)]) .. "].Cool2")), S2R(EXExecuteScript("(require'jass.slk').unit[" .. I2S(udg_qjsg1[LoadInteger(YDLOC, GetHandleId(GetExpiredTimer()), 0x6C2DED4E)]) .. "].HFact2")), S2R(EXExecuteScript("(require'jass.slk').unit[" .. I2S(udg_qjsg1[LoadInteger(YDLOC, GetHandleId(GetExpiredTimer()), 0x6C2DED4E)]) .. "].Qfact2"))))
        CreateNUnitsAtLocFacingLocBJ(1, udg_qjsg1[LoadInteger(YDLOC, GetHandleId(GetExpiredTimer()), 0x6C2DED4E)], Player(PLAYER_NEUTRAL_AGGRESSIVE), LoadLocationHandle(YDLOC, GetHandleId(GetExpiredTimer()), 0x9CD60476), LoadLocationHandle(YDLOC, GetHandleId(GetExpiredTimer()), 0x9CD60476))
        SetUnitFacing(bj_lastCreatedUnit, -90.00)
        SetUnitAcquireRange(bj_lastCreatedUnit, 200.00)
        SaveInteger(YDHT, ((GetHandleId((Player(PLAYER_NEUTRAL_AGGRESSIVE))))), ((GetUnitTypeId(bj_lastCreatedUnit))), (S2I(EXExecuteScript("(require'jass.slk').unit[" .. I2S(GetUnitTypeId(bj_lastCreatedUnit)) .. "].dice2"))))
        RemoveLocation(LoadLocationHandle(YDLOC, GetHandleId(GetExpiredTimer()), 0x9CD60476))
        bj_forLoopAIndex = bj_forLoopAIndex + 1
    end
    if ((LoadInteger(YDLOC, GetHandleId(GetExpiredTimer()), 0x6C2DED4E) == 115)) then
        FlushChildHashtable(YDLOC, GetHandleId(GetExpiredTimer()))
        DestroyTimer(GetExpiredTimer())
    else
    end
end

function Trig_dwsq______________04Actions()
    local ydl_timer = nil
    local ydl_localvar_step = LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xCFDE6C76)
    ydl_localvar_step = ydl_localvar_step + 3
    SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xCFDE6C76, ydl_localvar_step)
    SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xECE825E7, ydl_localvar_step)
    ydl_timer = CreateTimer()
    SaveInteger(YDLOC, GetHandleId(ydl_timer), 0x6C2DED4E, 0)
    SaveLocationHandle(YDLOC, GetHandleId(ydl_timer), 0x9CD60476, LoadLocationHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x9CD60476))
    TimerStart(ydl_timer, 0.50, true, Trig_dwsq______________04Func001T)
    FlushChildHashtable(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step)
    ydl_timer = nil
end

function InitTrig_dwsq______________04()
    gg_trg_dwsq______________04 = CreateTrigger()
    TriggerAddAction(gg_trg_dwsq______________04, Trig_dwsq______________04Actions)
end

function Trig_workFunc004Func003A()
    RemoveUnit(GetEnumUnit())
end

function Trig_workActions()
    local ydl_group = nil
    local ydl_unit = nil
    local ydl_localvar_step = LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xCFDE6C76)
    ydl_localvar_step = ydl_localvar_step + 3
    SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xCFDE6C76, ydl_localvar_step)
    SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xECE825E7, ydl_localvar_step)
    SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x5CC134B2, LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x5CC134B2))
    SavePlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946, LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))
    SaveUnitHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x911D5DC2, udg_WJYX[GetConvertedPlayerId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))])
    if ((LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x5CC134B2) <= 6)) then
        SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xA1CFBB06 + (1), (0x6C676D31))
        SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xA1CFBB06 + (2), (0x6C676D32))
        SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xA1CFBB06 + (3), (0x6C676D33))
        SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xA1CFBB06 + (4), (0x6C676D34))
        SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xA1CFBB06 + (5), (0x6C676D35))
        SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xA1CFBB06 + (6), (0x6C676D36))
        DisplayTimedTextToPlayer(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946), 0, 0, 5.00, (EXExecuteScript("(require'jass.slk').unit[" .. I2S(LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xA1CFBB06 + (LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x5CC134B2)))) .. "].Name")))
        ForGroupBJ(udg_LGFdwz[GetConvertedPlayerId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))], Trig_workFunc004Func003A)
        GroupClear(udg_LGFdwz[GetConvertedPlayerId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))])
        udg_LGFDWLX[GetConvertedPlayerId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))] = LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xA1CFBB06 + (LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x5CC134B2)))
    else
        SaveStr(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2D1FF186 + (7), "buildings\\nightelf\\AncientOfLore\\AncientOfLore.mdl")
        SaveStr(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2D1FF186 + (8), "sj_1 (5).mdl")
        SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xA1CFBB06, (0x41413037))
        SaveUnitHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x384C9D86, CreateUnit(Player(7), (0x75303032), GetRectCenterX(LoadRectHandle(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x4D25E2F4)), GetRectCenterY(LoadRectHandle(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x4D25E2F4)), 0))
        DzSetUnitModel(LoadUnitHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x384C9D86), LoadStr(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2D1FF186 + (LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x5CC134B2))))
        SetUnitState(LoadUnitHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x384C9D86), ConvertUnitState(0x12), (S2R(EXExecuteScript("(require'jass.slk').unit[" .. I2S(LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xA1CFBB06)) .. "].dmgplus1")) * 0.88))
        SetUnitState(LoadUnitHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x384C9D86), UNIT_STATE_MAX_LIFE, (S2R(EXExecuteScript("(require'jass.slk').unit[" .. I2S(LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xA1CFBB06)) .. "].HP")) * 0.88))
        SetUnitState(LoadUnitHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x384C9D86), ConvertUnitState(0x20), (S2R(EXExecuteScript("(require'jass.slk').unit[" .. I2S(LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xA1CFBB06)) .. "].def")) * 0.88))
        SetUnitState(LoadUnitHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x384C9D86), ConvertUnitState(0x51), 200.00)
        SetUnitLifePercentBJ(LoadUnitHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x384C9D86), 100)
        UnitApplyTimedLifeBJ(10.00, 0x42487765, LoadUnitHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x384C9D86))
        SetUnitUserData(LoadUnitHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x384C9D86), (LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x5CC134B2) + 338))
        SaveUnitHandle(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x9D4D1A01, LoadUnitHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x384C9D86))
    end
    SaveBoolean(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x9837AD59, true)
    RemoveSavedInteger(YDHT, GetHandleId(Player(PLAYER_NEUTRAL_AGGRESSIVE)), 0x27A5056E)
    RemoveSavedHandle(YDHT, GetHandleId(Player(PLAYER_NEUTRAL_AGGRESSIVE)), 0x119572DE)
    FlushChildHashtable(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step)
    ydl_group = nil
    ydl_unit = nil
end

function InitTrig_work()
    gg_trg_work = CreateTrigger()
    DisableTrigger(gg_trg_work)
    TriggerAddAction(gg_trg_work, Trig_workActions)
end

function Trig_quyuWF2Conditions()
    do
        return ((IsUnitEnemy(GetTriggerUnit(), Player(0)) == true))
    end
end

function Trig_quyuWF2Actions()
    IssuePointOrder(GetTriggerUnit(), "attack", -153.00, -253.00)
end

function InitTrig_quyuWF2()
    gg_trg_quyuWF2 = CreateTrigger()
    YDWETriggerRegisterEnterRectSimpleNull(gg_trg_quyuWF2, gg_rct______________002)
    TriggerAddCondition(gg_trg_quyuWF2, Condition(Trig_quyuWF2Conditions))
    TriggerAddAction(gg_trg_quyuWF2, Trig_quyuWF2Actions)
end

function Trig_YXCActions()
    local ydul_a = nil
    UnitPoolAddUnitType(udg_STdwc[1], 0x41413031, 1)
    UnitPoolAddUnitType(udg_STdwc[1], 0x41413032, 1)
    UnitPoolAddUnitType(udg_STdwc[2], 0x41413033, 1)
    UnitPoolAddUnitType(udg_STdwc[2], 0x41413034, 1)
    UnitPoolAddUnitType(udg_STdwc[3], 0x41413035, 1)
    UnitPoolAddUnitType(udg_STdwc[3], 0x41413036, 1)
    UnitPoolAddUnitType(udg_STdwc[4], 0x41413037, 1)
    UnitPoolAddUnitType(udg_STdwc[4], 0x41413038, 1)
    UnitPoolAddUnitType(udg_STdwc[5], 0x41413039, 1)
    UnitPoolAddUnitType(udg_STdwc[5], 0x41413130, 1)
    UnitPoolAddUnitType(udg_STdwc[6], 0x41413131, 1)
    UnitPoolAddUnitType(udg_STdwc[6], 0x41413132, 1)
    UnitPoolAddUnitType(udg_STdwc[7], 0x41413133, 1)
    UnitPoolAddUnitType(udg_STdwc[7], 0x41413134, 1)
    UnitPoolAddUnitType(udg_STdwc[8], 0x41413135, 1)
    UnitPoolAddUnitType(udg_STdwc[8], 0x41413136, 1)
    DestroyTrigger(GetTriggeringTrigger())
    SaveInteger(YDHT, (StringHash("cdzbxz")), (0), (6))
    SaveInteger(YDHT, (StringHash("cdzbxz")), (1), (8))
    SaveInteger(YDHT, (StringHash("cdzbxz")), (2), (10))
    SaveInteger(YDHT, (StringHash("cdzbxz")), (3), (12))
    SaveInteger(YDHT, (StringHash("cdzbxz")), (4), (14))
    SaveInteger(YDHT, (StringHash("cdzbxz")), (5), (16))
    SaveInteger(YDHT, (StringHash("cdzbxz")), (6), (18))
    SaveInteger(YDHT, (StringHash("cdzbxz")), (7), (20))
    SaveInteger(YDHT, (StringHash("cdzbxz")), (8), (22))
    SaveInteger(YDHT, (StringHash("cdzbxz")), (9), (24))
    SaveInteger(YDHT, (StringHash("cdzbxz")), (10), (26))
    SaveInteger(YDHT, (StringHash("cdzbxz")), (11), (28))
    SaveInteger(YDHT, (StringHash("cdzbxz")), (12), (30))
    SaveInteger(YDHT, (StringHash("cdzbxz")), (13), (32))
    SaveInteger(YDHT, (StringHash("cdzbxz")), (14), (34))
    SaveInteger(YDHT, (StringHash("cdzbxz")), (15), (36))
    SaveInteger(YDHT, (StringHash("cdzbxz")), (16), (38))
    SaveInteger(YDHT, (StringHash("cdzbxz")), (17), (38))
    SaveInteger(YDHT, (StringHash("cdzbxz")), (18), (38))
    SaveInteger(YDHT, (StringHash("cdzbxz")), (19), (40))
    SaveInteger(YDHT, (StringHash("cdzbxz")), (20), (45))
    SaveInteger(YDHT, (StringHash("cdzbxz")), (21), (50))
    SaveInteger(YDHT, (StringHash("cdzbxz")), (22), (53))
    SaveInteger(YDHT, (StringHash("cdzbxz")), (23), (56))
    SaveInteger(YDHT, (StringHash("cdzbxz")), (24), (59))
    SaveInteger(YDHT, (StringHash("cdzbxz")), (25), (60))
    SaveInteger(YDHT, (StringHash("cdzbxz")), (26), (65))
    SaveInteger(YDHT, (StringHash("cdzbxz")), (27), (68))
    SaveInteger(YDHT, (StringHash("cdzbxz")), (28), (70))
    SaveInteger(YDHT, (StringHash("cdzbxz")), (29), (75))
    SaveInteger(YDHT, (StringHash("cdzbxz")), (30), (80))
    SaveInteger(YDHT, (StringHash("cdzbxz")), (31), (85))
    SaveInteger(YDHT, (StringHash("cdzbxz")), (32), (86))
    ydul_a = 33
    while true do
        if ydul_a > 250 then
            break
        end
        SaveInteger(YDHT, (StringHash("cdzbxz")), (ydul_a), (86))
        ydul_a = ydul_a + 1
    end
end

function InitTrig_YXC()
    gg_trg_YXC = CreateTrigger()
    TriggerAddAction(gg_trg_YXC, Trig_YXCActions)
end
end
