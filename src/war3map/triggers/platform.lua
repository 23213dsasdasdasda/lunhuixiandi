-- Converted from 342.w3x map/map/war3map.j.
-- Trigger functions grouped by feature.
-- InitTrig_DzAPI_______________u
-- InitTrig_DzAPI_______________3
-- InitTrig_DzAPI_______________2
-- InitTrig_DzApi_______u
-- InitTrig_WIN_finsh
return function(_ENV)
function Trig_DzAPI_______________uFunc002Func012Func001T()
    SaveInteger(YDLOC, GetHandleId(GetExpiredTimer()), 0x6C2DED4E, (LoadInteger(YDLOC, GetHandleId(GetExpiredTimer()), 0x6C2DED4E) + 1))
    if ((LoadInteger(YDLOC, GetHandleId(GetExpiredTimer()), 0x6C2DED4E) > 9)) then
        SaveStr(YDLOC, GetHandleId(GetExpiredTimer()), 0x12BBBFB9, ("YX" .. I2S(LoadInteger(YDLOC, GetHandleId(GetExpiredTimer()), 0x6C2DED4E))))
    else
        SaveStr(YDLOC, GetHandleId(GetExpiredTimer()), 0x12BBBFB9, ("YX0" .. I2S(LoadInteger(YDLOC, GetHandleId(GetExpiredTimer()), 0x6C2DED4E))))
    end
    SaveInteger(YDHT, ((GetHandleId((LoadPlayerHandle(YDLOC, GetHandleId(GetExpiredTimer()), 0x48656946))))), (((YDWES2Id((LoadStr(YDLOC, GetHandleId(GetExpiredTimer()), 0x12BBBFB9)))))), (DzAPI_Map_GetStoredInteger(LoadPlayerHandle(YDLOC, GetHandleId(GetExpiredTimer()), 0x48656946), LoadStr(YDLOC, GetHandleId(GetExpiredTimer()), 0x12BBBFB9))))
    if ((LoadInteger(YDLOC, GetHandleId(GetExpiredTimer()), 0x6C2DED4E) == 23)) then
        FlushChildHashtable(YDLOC, GetHandleId(GetExpiredTimer()))
        DestroyTimer(GetExpiredTimer())
    else
    end
end

function Trig_DzAPI_______________uFunc002Func014Func006T()
    SaveInteger(YDLOC, GetHandleId(GetExpiredTimer()), 0x6C2DED4E, (LoadInteger(YDLOC, GetHandleId(GetExpiredTimer()), 0x6C2DED4E) + 1))
    if ((LoadInteger(YDLOC, GetHandleId(GetExpiredTimer()), 0x6C2DED4E) > 9)) then
        SaveStr(YDLOC, GetHandleId(GetExpiredTimer()), 0x12BBBFB9, ("YX" .. I2S(LoadInteger(YDLOC, GetHandleId(GetExpiredTimer()), 0x6C2DED4E))))
    else
        SaveStr(YDLOC, GetHandleId(GetExpiredTimer()), 0x12BBBFB9, ("YX0" .. I2S(LoadInteger(YDLOC, GetHandleId(GetExpiredTimer()), 0x6C2DED4E))))
    end
    SaveInteger(YDLOC, GetHandleId(GetExpiredTimer()), 0xA1CFBB06, (YDWES2Id((LoadStr(YDLOC, GetHandleId(GetExpiredTimer()), 0x12BBBFB9)))))
    if ((DzAPI_Map_GetMapLevel(LoadPlayerHandle(YDLOC, GetHandleId(GetExpiredTimer()), 0x48656946)) >= S2I(EXExecuteScript("(require'jass.slk').unit[" .. I2S(LoadInteger(YDLOC, GetHandleId(GetExpiredTimer()), 0xA1CFBB06)) .. "].fmade")))) then
        SaveBoolean(YDHT, ((GetHandleId((LoadPlayerHandle(YDLOC, GetHandleId(GetExpiredTimer()), 0x48656946))))), (((YDWES2Id((LoadStr(YDLOC, GetHandleId(GetExpiredTimer()), 0x12BBBFB9)))))), (true))
    else
    end
    if ((LoadInteger(YDLOC, GetHandleId(GetExpiredTimer()), 0x6C2DED4E) == 20)) then
        FlushChildHashtable(YDLOC, GetHandleId(GetExpiredTimer()))
        DestroyTimer(GetExpiredTimer())
    else
    end
end

function Trig_DzAPI_______________uFunc002A()
    local ydul_a = nil
    local ydl_timer = nil
    SavePlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0x48656946, GetEnumPlayer())
    SaveStr(YDLOC, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0xDF73D176, GetPlayerName(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0x48656946)))
    SaveStr(YDLOC, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0x12BBBFB9, GetPlayerName(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0x48656946)))
    SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0x6F96F2D2, GetConvertedPlayerId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0x48656946)))
    SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0xECC8BBCA, DzAPI_Map_GetMapLevel(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0x48656946)))
    SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0xB2B2BF95, DzAPI_Map_GetMapLevel(GetEnumPlayer()))
    SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0x6C2DED4E, 0)
    SaveInteger(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0x48656946)), 0xC8A927A6, LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0xECC8BBCA))
    SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0x93F0B5A4 + (LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0x6F96F2D2)), (RequestExtraIntegerData(45, (GetEnumPlayer()), nil, nil, false, 0, 0, 0)))
    SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0x6CC9E7DF + (LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0x6F96F2D2)), (LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0x93F0B5A4 + (LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0x6F96F2D2))) * 68))
    ydul_a = 1
    while true do
        if ydul_a > 10 then
            break
        end
        SaveInteger(YDHT, StringHash((GetPlayerName(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0x48656946)))), StringHash((("N" .. I2S(ydul_a)))), (DzAPI_Map_GetStoredInteger(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0x48656946), ("N" .. I2S(ydul_a)))))
        SaveInteger(YDHT, StringHash((GetPlayerName(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0x48656946)))), StringHash((("WSN" .. I2S(ydul_a)))), (DzAPI_Map_GetStoredInteger(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0x48656946), ("WSN" .. I2S(ydul_a)))))
        ydul_a = ydul_a + 1
    end
    ydul_a = 1
    while true do
        if ydul_a > 13 then
            break
        end
        SaveInteger(YDHT, StringHash((GetPlayerName(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0x48656946)))), StringHash((("N" .. I2S(ydul_a)))), (DzAPI_Map_GetStoredInteger(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0x48656946), ("N" .. I2S(ydul_a)))))
        ydul_a = ydul_a + 1
    end
    SaveInteger(YDHT, StringHash((GetPlayerName(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0x48656946)))), StringHash(("JF")), (DzAPI_Map_GetStoredInteger(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0x48656946), "JF")))
    SaveInteger(YDHT, StringHash((GetPlayerName(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0x48656946)))), StringHash(("JF")), (IMinBJ((LoadInteger(YDHT, StringHash((GetPlayerName(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0x48656946)))), StringHash(("JF")))), (DzAPI_Map_GetMapLevel(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0x48656946)) * 10000))))
    SaveStr(YDHT, StringHash((GetPlayerName(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0x48656946)))), StringHash(("XGTJ")), ((DzAPI_Map_GetServerValue((LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0x48656946)), "S" .. ("XGTJ")))))
    ydul_a = 1
    while true do
        if ydul_a > 30 then
            break
        end
        SaveStr(YDHT, StringHash((GetPlayerName(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0x48656946)))), StringHash(((("5y") .. ("1") .. (I2S(ydul_a))))), (SubStringBJ((LoadStr(YDHT, StringHash((GetPlayerName(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0x48656946)))), StringHash(("XGTJ")))), ydul_a, ydul_a)))
        ydul_a = ydul_a + 1
    end
    SaveStr(YDHT, StringHash((GetPlayerName(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0x48656946)))), StringHash(("BOSSTJ")), ((DzAPI_Map_GetServerValue((LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0x48656946)), "S" .. ("BOSSTJ")))))
    ydul_a = 1
    while true do
        if ydul_a > 16 then
            break
        end
        SaveStr(YDHT, StringHash((GetPlayerName(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0x48656946)))), StringHash(((("6y") .. ("1") .. (I2S(ydul_a))))), (SubStringBJ((LoadStr(YDHT, StringHash((GetPlayerName(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0x48656946)))), StringHash(("BOSSTJ")))), ydul_a, ydul_a)))
        ydul_a = ydul_a + 1
    end
    if ((DzAPI_Map_GetStoredInteger(GetEnumPlayer(), "LB1") == 1)) then
        SaveInteger(YDHT, StringHash((GetPlayerName(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0x48656946)))), StringHash(("LB1")), (1))
    else
    end
    if ((DzAPI_Map_GetStoredInteger(GetEnumPlayer(), "LB2") == 1)) then
        SaveInteger(YDHT, StringHash((GetPlayerName(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0x48656946)))), StringHash(("LB2")), (1))
    else
    end
    if ((DzAPI_Map_GetStoredInteger(GetEnumPlayer(), "LB3") == 1)) then
        SaveInteger(YDHT, StringHash((GetPlayerName(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0x48656946)))), StringHash(("LB3")), (1))
    else
    end
    if (((DzAPI_Map_GetServerValue(GetEnumPlayer(), "preset_map_award") == "1") or (DzAPI_Map_GetServerValue(GetEnumPlayer(), "maptest2020") == "1") or (DzAPI_Map_GetStoredInteger(GetEnumPlayer(), "maptest2020") > 0))) then
        SaveInteger(YDHT, StringHash((GetPlayerName(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0x48656946)))), StringHash(("LB4")), (1))
    else
    end
    if ((DzAPI_Map_GetMapLevel(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0x48656946)) >= 3)) then
        SaveInteger(YDHT, StringHash((GetPlayerName(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0x48656946)))), StringHash(("LB5")), (1))
    else
    end
    if (((RequestExtraBooleanData(53, (GetEnumPlayer()), nil, nil, false, (16), 0, 0)) == true)) then
        SaveInteger(YDHT, StringHash((GetPlayerName(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0x48656946)))), StringHash(("LB6")), (1))
    else
    end
    SaveStr(YDHT, StringHash((GetPlayerName(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0x48656946)))), StringHash((("CD"))), ((DzAPI_Map_GetServerValue((LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0x48656946)), "S" .. (("CD"))))))
    ydul_a = 1
    while true do
        if ydul_a > 30 then
            break
        end
        SaveStr(YDHT, StringHash((GetPlayerName(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0x48656946)))), StringHash(((("8y") .. ("1") .. (I2S(ydul_a))))), (SubStringBJ((LoadStr(YDHT, StringHash((GetPlayerName(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0x48656946)))), StringHash(("CD")))), ydul_a, ydul_a)))
        ydul_a = ydul_a + 1
    end
    ydl_timer = CreateTimer()
    SaveInteger(YDLOC, GetHandleId(ydl_timer), 0x6C2DED4E, 0)
    SaveStr(YDLOC, GetHandleId(ydl_timer), 0x12BBBFB9, LoadStr(YDLOC, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0x12BBBFB9))
    SavePlayerHandle(YDLOC, GetHandleId(ydl_timer), 0x48656946, LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0x48656946))
    TimerStart(ydl_timer, 0.03, true, Trig_DzAPI_______________uFunc002Func012Func001T)
    ydul_a = 1
    while true do
        if ydul_a > 9 then
            break
        end
        SaveInteger(YDHT, StringHash((GetPlayerName(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0x48656946)))), StringHash((("SMCD" .. I2S(ydul_a)))), (DzAPI_Map_GetStoredInteger(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0x48656946), ("SMCD" .. I2S(ydul_a)))))
        SaveInteger(YDHT, StringHash((GetPlayerName(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0x48656946)))), StringHash((("SMCD" .. I2S(ydul_a)))), (IMinBJ((DzAPI_Map_GetMapLevel(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0x48656946)) * 3), (LoadInteger(YDHT, StringHash((GetPlayerName(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0x48656946)))), StringHash((("SMCD" .. I2S(ydul_a)))))))))
        DzAPI_Map_StoreInteger(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0x48656946), ("SMCD" .. I2S(ydul_a)), (LoadInteger(YDHT, StringHash((GetPlayerName(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0x48656946)))), StringHash((("SMCD" .. I2S(ydul_a)))))))
        ydul_a = ydul_a + 1
    end
    SaveBoolean(YDHT, ((GetHandleId((GetEnumPlayer())))), (((0x59583031))), (true))
    SaveBoolean(YDHT, ((GetHandleId((GetEnumPlayer())))), (((0x59583032))), (true))
    SaveBoolean(YDHT, ((GetHandleId((GetEnumPlayer())))), (((0x59583033))), (true))
    SaveBoolean(YDHT, ((GetHandleId((GetEnumPlayer())))), (((0x59583034))), (true))
    SaveBoolean(YDHT, ((GetHandleId((GetEnumPlayer())))), (((0x59583035))), (true))
    ydl_timer = CreateTimer()
    SaveInteger(YDLOC, GetHandleId(ydl_timer), 0x6C2DED4E, 5)
    SavePlayerHandle(YDLOC, GetHandleId(ydl_timer), 0x48656946, LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0x48656946))
    SaveInteger(YDLOC, GetHandleId(ydl_timer), 0xA1CFBB06, LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0xA1CFBB06))
    SaveStr(YDLOC, GetHandleId(ydl_timer), 0x12BBBFB9, LoadStr(YDLOC, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0x12BBBFB9))
    TimerStart(ydl_timer, 0.03, true, Trig_DzAPI_______________uFunc002Func014Func006T)
    if ((DzAPI_Map_HasMallItem(GetEnumPlayer(), "SH10") == true)) then
        SaveBoolean(YDHT, ((GetHandleId((LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0x48656946))))), (0x59583231), (true))
    else
    end
    if ((DzAPI_Map_HasMallItem(GetEnumPlayer(), "SHH35") == true)) then
        SaveBoolean(YDHT, ((GetHandleId((LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0x48656946))))), (0x59583232), (true))
    else
    end
    SaveInteger(YDHT, GetHandleId(GetEnumPlayer()), 0x7E36BC89, DzAPI_Map_GetMapLevel(GetEnumPlayer()))
    ydl_timer = nil
end

function Trig_DzAPI_______________uActions()
    ForForce(udg_ZXWJZ, Trig_DzAPI_______________uFunc002A)
    DestroyTrigger(GetTriggeringTrigger())
end

function InitTrig_DzAPI_______________u()
    gg_trg_DzAPI_______________u = CreateTrigger()
    TriggerRegisterTimerEventSingle(gg_trg_DzAPI_______________u, 0.01)
    TriggerAddAction(gg_trg_DzAPI_______________u, Trig_DzAPI_______________uActions)
end

function Trig_DzAPI_______________3Func002A()
    local ydul_a = nil
    SavePlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0x48656946, GetEnumPlayer())
    if ((GetPlayerServerValueSuccess(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0x48656946)) == true)) then
        SaveStr(YDLOC, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0x12BBBFB9, GetPlayerName(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0x48656946)))
        SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0x6F96F2D2, GetConvertedPlayerId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0x48656946)))
        ydul_a = 1
        while true do
            if ydul_a > 5 then
                break
            end
            SaveStr(YDHT, StringHash((GetPlayerName(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0x48656946)))), StringHash((("JFCJ" .. I2S(ydul_a)))), ((DzAPI_Map_GetServerValue((LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0x48656946)), "S" .. (("JFCJ" .. I2S(ydul_a)))))))
            ydul_a = ydul_a + 1
        end
        ydul_a = 1
        while true do
            if ydul_a > 6 then
                break
            end
            SaveInteger(YDHT, StringHash((GetPlayerName(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0x48656946)))), StringHash((("YZ" .. I2S(ydul_a)))), (DzAPI_Map_GetStoredInteger(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0x48656946), ("YZ" .. I2S(ydul_a)))))
            SaveInteger(YDHT, StringHash((GetPlayerName(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0x48656946)))), StringHash((("YZ" .. I2S(ydul_a)))), (IMinBJ((LoadInteger(YDHT, StringHash((GetPlayerName(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0x48656946)))), StringHash((("YZ" .. I2S(ydul_a)))))), (DzAPI_Map_GetMapLevel(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0x48656946)) * 5))))
            DzAPI_Map_StoreInteger(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0x48656946), ("YZ" .. I2S(ydul_a)), (LoadInteger(YDHT, StringHash((GetPlayerName(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0x48656946)))), StringHash((("YZ" .. I2S(ydul_a)))))))
            ydul_a = ydul_a + 1
        end
        ydul_a = 1
        while true do
            if ydul_a > 7 then
                break
            end
            SaveInteger(YDHT, StringHash((GetPlayerName(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0x48656946)))), StringHash((("TDFB" .. I2S(ydul_a)))), (DzAPI_Map_GetStoredInteger(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0x48656946), ("TDFB" .. I2S(ydul_a)))))
            if ((ydul_a == 7)) then
                SaveInteger(YDHT, StringHash((GetPlayerName(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0x48656946)))), StringHash((("TDFB" .. I2S(ydul_a)))), (IMinBJ((LoadInteger(YDHT, StringHash((GetPlayerName(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0x48656946)))), StringHash((("TDFB" .. I2S(ydul_a)))))), (DzAPI_Map_GetMapLevel(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0x48656946)) * 5))))
            else
                SaveInteger(YDHT, StringHash((GetPlayerName(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0x48656946)))), StringHash((("TDFB" .. I2S(ydul_a)))), (IMinBJ((LoadInteger(YDHT, StringHash((GetPlayerName(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0x48656946)))), StringHash((("TDFB" .. I2S(ydul_a)))))), (DzAPI_Map_GetMapLevel(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0x48656946)) * 20))))
            end
            DzAPI_Map_StoreInteger(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0x48656946), ("TDFB" .. I2S(ydul_a)), (LoadInteger(YDHT, StringHash((GetPlayerName(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0x48656946)))), StringHash((("TDFB" .. I2S(ydul_a)))))))
            ydul_a = ydul_a + 1
        end
        ydul_a = 1
        while true do
            if ydul_a > 86 then
                break
            end
            SaveInteger(YDHT, StringHash((LoadStr(YDLOC, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0x12BBBFB9))), StringHash((("CDFB" .. I2S(ydul_a)))), (DzAPI_Map_GetStoredInteger(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0x48656946), ("CDFB" .. I2S(ydul_a)))))
            ydul_a = ydul_a + 1
        end
        SaveInteger(YDHT, StringHash((GetPlayerName(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0x48656946)))), StringHash(("QD")), (DzAPI_Map_GetStoredInteger(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0x48656946), "QD")))
        SaveInteger(YDHT, ((GetHandleId((LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0x48656946))))), (333), (DzAPI_Map_GetStoredInteger(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0x48656946), "TC")))
    else
        DisplayTextToPlayer(GetEnumPlayer(), 0, 0, "您的存档信息读取失败,请退出后重新进入游戏！")
        CustomDefeatBJ(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0x48656946), "失败!")
    end
    SaveInteger(YDHT, GetHandleId(GetEnumPlayer()), 0x23FD97AA, DzAPI_Map_GetMapLevel(GetEnumPlayer()))
end

function Trig_DzAPI_______________3Actions()
    ForForce(udg_ZXWJZ, Trig_DzAPI_______________3Func002A)
    DestroyTrigger(GetTriggeringTrigger())
end

function InitTrig_DzAPI_______________3()
    gg_trg_DzAPI_______________3 = CreateTrigger()
    TriggerRegisterTimerEventSingle(gg_trg_DzAPI_______________3, 0.05)
    TriggerAddAction(gg_trg_DzAPI_______________3, Trig_DzAPI_______________3Actions)
end

function Trig_DzAPI_______________2Func002A()
    SavePlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0x48656946, GetEnumPlayer())
    if ((GetPlayerServerValueSuccess(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0x48656946)) == true)) then
        SaveStr(YDLOC, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0xDF73D176, GetPlayerName(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0x48656946)))
        SaveStr(YDLOC, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0x12BBBFB9, GetPlayerName(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0x48656946)))
        SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0x6F96F2D2, GetConvertedPlayerId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0x48656946)))
        if (((DzAPI_Map_GetGuildName(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0x48656946)) == "王者星耀殿堂") or (DzAPI_Map_GetGuildName(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0x48656946)) == "王者星耀会所"))) then
            SaveInteger(YDHT, StringHash((GetPlayerName(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0x48656946)))), StringHash(("LB9")), (1))
        else
            if (((DzAPI_Map_GetGuildName(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0x48656946)) == "心动俱乐部") or (DzAPI_Map_GetGuildName(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0x48656946)) == "心动俱乐部①") or (DzAPI_Map_GetGuildName(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0x48656946)) == "心动俱乐部②") or (DzAPI_Map_GetGuildName(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0x48656946)) == "心动俱乐部③") or (DzAPI_Map_GetGuildName(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0x48656946)) == "星耀俱乐部") or (DzAPI_Map_GetGuildName(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0x48656946)) == "王者星耀殿堂") or (DzAPI_Map_GetGuildName(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0x48656946)) == "星辰俱乐部") or (DzAPI_Map_GetGuildName(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0x48656946)) == "星动俱乐部") or (DzAPI_Map_GetGuildName(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0x48656946)) == "墨汁联盟先遣团") or (DzAPI_Map_GetGuildName(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0x48656946)) == "星耀俱乐部①") or (DzAPI_Map_GetGuildName(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0x48656946)) == "星耀俱乐部②") or (DzAPI_Map_GetGuildName(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0x48656946)) == "星耀俱乐部③") or (DzAPI_Map_GetGuildName(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0x48656946)) == "星耀俱乐部④") or (DzAPI_Map_GetGuildName(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0x48656946)) == "星耀俱乐部⑤") or (DzAPI_Map_GetGuildName(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0x48656946)) == "星耀俱乐部⑥") or (DzAPI_Map_GetGuildName(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0x48656946)) == "星耀俱乐部⑦") or (DzAPI_Map_GetGuildName(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0x48656946)) == "星耀俱乐部⑧") or (DzAPI_Map_GetGuildName(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0x48656946)) == "星耀俱乐部⑨") or (DzAPI_Map_GetGuildName(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0x48656946)) == "星耀俱乐部⑽") or (DzAPI_Map_GetGuildName(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0x48656946)) == "星耀俱乐部①①") or (DzAPI_Map_GetGuildName(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0x48656946)) == "星耀俱乐部①②"))) then
                SaveInteger(YDHT, StringHash((GetPlayerName(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0x48656946)))), StringHash(("LB8")), (1))
            else
                if (((DzAPI_Map_GetGuildName(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0x48656946)) == "心动学院") or (DzAPI_Map_GetGuildName(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0x48656946)) == "墨汁联盟") or (DzAPI_Map_GetGuildName(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0x48656946)) == "心动俱乐部") or (DzAPI_Map_GetGuildName(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0x48656946)) == "心动俱乐部①") or (DzAPI_Map_GetGuildName(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0x48656946)) == "心动俱乐部②") or (DzAPI_Map_GetGuildName(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0x48656946)) == "心动俱乐部③") or (DzAPI_Map_GetGuildName(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0x48656946)) == "星耀俱乐部") or (DzAPI_Map_GetGuildName(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0x48656946)) == "王者星耀殿堂") or (DzAPI_Map_GetGuildName(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0x48656946)) == "星辰俱乐部") or (DzAPI_Map_GetGuildName(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0x48656946)) == "星动俱乐部") or (DzAPI_Map_GetGuildName(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0x48656946)) == "墨汁联盟先遣团") or (DzAPI_Map_GetGuildName(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0x48656946)) == "星耀俱乐部①") or (DzAPI_Map_GetGuildName(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0x48656946)) == "星耀俱乐部②") or (DzAPI_Map_GetGuildName(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0x48656946)) == "星耀俱乐部③") or (DzAPI_Map_GetGuildName(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0x48656946)) == "星耀俱乐部④") or (DzAPI_Map_GetGuildName(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0x48656946)) == "星耀俱乐部⑤") or (DzAPI_Map_GetGuildName(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0x48656946)) == "星耀俱乐部⑥") or (DzAPI_Map_GetGuildName(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0x48656946)) == "星耀俱乐部⑦") or (DzAPI_Map_GetGuildName(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0x48656946)) == "星耀俱乐部⑧") or (DzAPI_Map_GetGuildName(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0x48656946)) == "星耀俱乐部⑨") or (DzAPI_Map_GetGuildName(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0x48656946)) == "星耀俱乐部⑽") or (DzAPI_Map_GetGuildName(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0x48656946)) == "星耀俱乐部①①") or (DzAPI_Map_GetGuildName(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0x48656946)) == "星耀俱乐部①②"))) then
                    SaveInteger(YDHT, StringHash((GetPlayerName(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0x48656946)))), StringHash(("LB7")), (1))
                else
                end
            end
        end
    else
        DisplayTextToPlayer(GetEnumPlayer(), 0, 0, "您的存档信息读取失败,请退出后重新进入游戏！")
        CustomDefeatBJ(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0x48656946), "失败!")
    end
end

function Trig_DzAPI_______________2Actions()
    ForForce(udg_ZXWJZ, Trig_DzAPI_______________2Func002A)
    DestroyTrigger(GetTriggeringTrigger())
end

function InitTrig_DzAPI_______________2()
    gg_trg_DzAPI_______________2 = CreateTrigger()
    TriggerRegisterTimerEventSingle(gg_trg_DzAPI_______________2, 0.10)
    TriggerAddAction(gg_trg_DzAPI_______________2, Trig_DzAPI_______________2Actions)
end

function Trig_DzApi_______uActions()
    local ydul_a = nil
    local ydl_localvar_step = LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xCFDE6C76)
    ydl_localvar_step = ydl_localvar_step + 3
    SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xCFDE6C76, ydl_localvar_step)
    SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xECE825E7, ydl_localvar_step)
    SavePlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946, LoadPlayerHandle(YDHT, GetHandleId(Player(PLAYER_NEUTRAL_AGGRESSIVE)), 0x119572DE))
    SaveStr(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x12BBBFB9, GetPlayerName(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)))
    SaveStr(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x27FEC68B, LoadStr(YDHT, GetHandleId(Player(PLAYER_NEUTRAL_AGGRESSIVE)), 0x0DCA2EC5))
    SaveStr(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xF99E56C4, LoadStr(YDHT, GetHandleId(Player(PLAYER_NEUTRAL_AGGRESSIVE)), 0xF99E56C4))
    SaveStr(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xF5CF51D7, LoadStr(YDHT, GetHandleId(Player(PLAYER_NEUTRAL_AGGRESSIVE)), 0xF5CF51D7))
    SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x6C2DED4E, LoadInteger(YDHT, GetHandleId(Player(PLAYER_NEUTRAL_AGGRESSIVE)), 0x27A5056E))
    SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x6F16F339, LoadInteger(YDHT, GetHandleId(Player(PLAYER_NEUTRAL_AGGRESSIVE)), 0x20482DE3))
    SaveStr(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xD0DB6BE8, I2S(LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x6C2DED4E)))
    SaveStr(YDHT, StringHash((LoadStr(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x12BBBFB9))), StringHash(((((LoadStr(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xF99E56C4) .. "y")) .. (LoadStr(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xF5CF51D7)) .. (LoadStr(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xD0DB6BE8))))), ("1"))
    ydul_a = 1
    while true do
        if ydul_a > LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x6F16F339) then
            break
        end
        SaveStr(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2D1FF186 + (ydul_a), (LoadStr(YDHT, StringHash((GetPlayerName(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)))), StringHash(((((LoadStr(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xF99E56C4) .. "y")) .. (LoadStr(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xF5CF51D7)) .. (I2S(ydul_a))))))))
        if ((S2I(LoadStr(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2D1FF186 + (ydul_a))) <= 0)) then
            SaveStr(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2D1FF186 + (ydul_a), "0")
        else
        end
        SaveStr(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2D1FF186, (LoadStr(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2D1FF186) .. LoadStr(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2D1FF186 + (ydul_a))))
        ydul_a = ydul_a + 1
    end
    DzAPI_Map_StoreString(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946), LoadStr(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x27FEC68B), LoadStr(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2D1FF186))
    FlushChildHashtable(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step)
end

function InitTrig_DzApi_______u()
    gg_trg_DzApi_______u = CreateTrigger()
    TriggerAddAction(gg_trg_DzApi_______u, Trig_DzApi_______uActions)
end

function Trig_WIN_finshFunc001Func002A()
    local ydul_b = nil
    SavePlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0x48656946, GetEnumPlayer())
    SaveStr(YDLOC, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0x12BBBFB9, GetPlayerName(GetEnumPlayer()))
    SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0x3338D95D, (LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0x3338D95D) + (10 + (2 * (GetPlayerTechCountSimple(0x52303044, Player(5)) * GetPlayerTechCountSimple(0x52303044, Player(5)))))))
    SaveInteger(YDHT, StringHash((GetPlayerName(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0x48656946)))), StringHash(("JF")), (((LoadInteger(YDHT, StringHash((GetPlayerName(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0x48656946)))), StringHash(("JF")))) + LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0x3338D95D))))
    SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0x6C2F4D23, (LoadInteger(YDHT, StringHash((GetPlayerName(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0x48656946)))), StringHash(("JF")))))
    DzAPI_Map_StoreInteger(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0x48656946), "JF", LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0x6C2F4D23))
    DisplayTimedTextToPlayer(GetEnumPlayer(), 0, 0, 7.00, ("|cffffff00地图积分提升：！|r" .. I2S((0 + LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0x3338D95D)))))
    SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0x3338D95D, 0)
    SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0xFE037379, ((LoadInteger(YDHT, StringHash((GetPlayerName(GetEnumPlayer()))), StringHash((("N" .. I2S(LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0xB43FB128))))))) + 1))
    DzAPI_Map_StoreInteger(GetEnumPlayer(), ("N" .. I2S(LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0xB43FB128))), LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0xFE037379))
    DisplayTimedTextToPlayer(GetEnumPlayer(), 0, 0, 7.00, ("|cffffff00通关数据已存档！|r当前难度存档次数为：" .. I2S(LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0xFE037379))))
    if ((LoadBoolean(YDHT, GetHandleId(Player(PLAYER_NEUTRAL_AGGRESSIVE)), 0x7DA39587) == false)) then
        SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0xFE037379, ((LoadInteger(YDHT, StringHash((GetPlayerName(GetEnumPlayer()))), StringHash((("WSN" .. I2S(LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0xB43FB128))))))) + 1))
        DzAPI_Map_StoreInteger(GetEnumPlayer(), ("WSN" .. I2S(LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0xB43FB128))), LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0xFE037379))
        DisplayTimedTextToPlayer(GetEnumPlayer(), 0, 0, 7.00, ((("|cffffff00通关数据已存档！|r当前无伤通关难度") .. (I2S(LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0xB43FB128))) .. ("存档次数为：")) .. I2S(LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0xFE037379))))
    else
    end
    SaveInteger(YDHT, StringHash((GetPlayerName(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0x48656946)))), StringHash((I2S((udg_TF_JN[LoadInteger(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0x48656946)), 0x9134E1DF)])))), (((LoadInteger(YDHT, StringHash((GetPlayerName(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0x48656946)))), StringHash((I2S((udg_TF_JN[LoadInteger(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0x48656946)), 0x9134E1DF)])))))) + 1)))
    if (((LoadInteger(YDHT, StringHash((LoadStr(YDLOC, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0x12BBBFB9))), StringHash((I2S((udg_TF_JN[LoadInteger(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0x48656946)), 0x9134E1DF)])))))) == 10)) then
        SaveInteger(YDHT, StringHash((GetPlayerName(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0x48656946)))), StringHash((I2S((udg_TF_JN[LoadInteger(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0x48656946)), 0x9134E1DF)])))), (9))
    else
    end
    DzAPI_Map_StoreString(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0x48656946), ("TF" .. I2S(LoadInteger(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0x48656946)), 0x9134E1DF))), (LoadStr(YDLOC, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0x88235475) .. I2S((LoadInteger(YDHT, StringHash((LoadStr(YDLOC, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0x12BBBFB9))), StringHash((I2S((udg_TF_JN[LoadInteger(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0x48656946)), 0x9134E1DF)])))))))))
    DisplayTimedTextToPlayer(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0x48656946), 0, 0, 10.00, (GetAbilityName(udg_TF_JN[LoadInteger(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0x48656946)), 0x9134E1DF)]) .. "通关数已存档!"))
    ydul_b = 1
    while true do
        if ydul_b > 22 then
            break
        end
        if ((ydul_b > 9)) then
            SaveStr(YDLOC, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0x12BBBFB9, ("YX" .. I2S(ydul_b)))
        else
            SaveStr(YDLOC, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0x12BBBFB9, ("YX0" .. I2S(ydul_b)))
        end
        if ((GetUnitTypeId(udg_WJYX[GetConvertedPlayerId(GetEnumPlayer())]) == (YDWES2Id((LoadStr(YDLOC, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0x12BBBFB9)))))) then
            SaveInteger(YDHT, ((GetHandleId((GetEnumPlayer())))), ((GetUnitTypeId(udg_WJYX[GetConvertedPlayerId(GetEnumPlayer())]))), (((LoadInteger(YDHT, ((GetHandleId((GetEnumPlayer())))), ((GetUnitTypeId(udg_WJYX[GetConvertedPlayerId(GetEnumPlayer())]))))) + 1)))
            DzAPI_Map_StoreInteger(GetEnumPlayer(), LoadStr(YDLOC, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0x12BBBFB9), (LoadInteger(YDHT, ((GetHandleId((GetEnumPlayer())))), ((GetUnitTypeId(udg_WJYX[GetConvertedPlayerId(GetEnumPlayer())]))))))
            DisplayTimedTextToPlayer(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0x48656946), 0, 0, 10.00, (GetUnitName(udg_WJYX[GetConvertedPlayerId(GetEnumPlayer())]) .. "转生境界已存档！"))
            DoNothing()
            if true then
                break
            end
        else
        end
        ydul_b = ydul_b + 1
    end
end

function Trig_WIN_finshActions()
    local ydl_localvar_step = LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xCFDE6C76)
    ydl_localvar_step = ydl_localvar_step + 3
    SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xCFDE6C76, ydl_localvar_step)
    SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xECE825E7, ydl_localvar_step)
    SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB43FB128, GetPlayerTechCountSimple(0x52303044, Player(5)))
    ForForce(udg_ZXWJZ, Trig_WIN_finshFunc001Func002A)
    if ((CountPlayersInForceBJ(udg_ZXWJZ) == 1)) then
        if ((GetPlayerTechCountSimple(0x52303044, Player(5)) >= 5)) then
            SavePlayerHandle(YDHT, GetHandleId(Player(PLAYER_NEUTRAL_AGGRESSIVE)), 0x119572DE, ForcePickRandomPlayer(udg_ZXWJZ))
            SaveStr(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2D1FF186, "CD")
            SaveStr(YDHT, GetHandleId(Player(PLAYER_NEUTRAL_AGGRESSIVE)), 0x0DCA2EC5, LoadStr(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2D1FF186))
            SaveInteger(YDHT, GetHandleId(Player(PLAYER_NEUTRAL_AGGRESSIVE)), 0x27A5056E, 30)
            SaveStr(YDHT, GetHandleId(Player(PLAYER_NEUTRAL_AGGRESSIVE)), 0xF5CF51D7, "1")
            SaveInteger(YDHT, GetHandleId(Player(PLAYER_NEUTRAL_AGGRESSIVE)), 0x20482DE3, 30)
            SaveStr(YDHT, GetHandleId(Player(PLAYER_NEUTRAL_AGGRESSIVE)), 0xF99E56C4, "8")
            TriggerExecute(gg_trg_DzApi_______u)
            DisplayTimedTextToPlayer(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946), 0, 0, 8.00, ((YDWEGetPlayerColorString(Player(4), "激活彩蛋==")) .. ((EXExecuteScript("(require'jass.slk').item[" .. I2S((LoadInteger(YDHT, StringHash(((((LoadStr(YDHT, GetHandleId(Player(PLAYER_NEUTRAL_AGGRESSIVE)), 0xF99E56C4) .. "y")) .. (LoadStr(YDHT, GetHandleId(Player(PLAYER_NEUTRAL_AGGRESSIVE)), 0xF5CF51D7)) .. (I2S(LoadInteger(YDHT, GetHandleId(Player(PLAYER_NEUTRAL_AGGRESSIVE)), 0x27A5056E)))))), StringHash((I2S(((udg_UI_FL[(LoadInteger(YDHT, GetHandleId(Player(PLAYER_NEUTRAL_AGGRESSIVE)), 0x27A5056E) + 14)])))))))) .. "].Name"))) .. ("==")))
        else
        end
    else
    end
    DestroyTrigger(GetTriggeringTrigger())
    FlushChildHashtable(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step)
end

function InitTrig_WIN_finsh()
    gg_trg_WIN_finsh = CreateTrigger()
    TriggerAddAction(gg_trg_WIN_finsh, Trig_WIN_finshActions)
end
end
