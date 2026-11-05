-- Converted from 342.w3x map/map/war3map.j.
-- DzAPI compatibility functions.
return function(_ENV)
function DzAPI_Map_IsPlatformVIP(whichPlayer)
    do
        return DzAPI_Map_GetPlatformVIP(whichPlayer) > 0
    end
end

function DzAPI_Map_Global_GetStoreString(key)
    do
        return RequestExtraStringData(36, GetLocalPlayer(), key, nil, false, 0, 0, 0)
    end
end

function DzAPI_Map_Global_StoreString(key, value)
    RequestExtraStringData(37, GetLocalPlayer(), key, value, false, 0, 0, 0)
end

function DzAPI_Map_Global_ChangeMsg(trig)
    DzTriggerRegisterSyncData(trig, "DZGAU", true)
end

function DzAPI_Map_ServerArchive(whichPlayer, key)
    do
        return RequestExtraStringData(38, whichPlayer, key, nil, false, 0, 0, 0)
    end
end

function DzAPI_Map_SaveServerArchive(whichPlayer, key, value)
    RequestExtraBooleanData(39, whichPlayer, key, value, false, 0, 0, 0)
end

function DzAPI_Map_IsRPGQuickMatch()
    do
        return RequestExtraBooleanData(40, nil, nil, nil, false, 0, 0, 0)
    end
end

function DzAPI_Map_GetMallItemCount(whichPlayer, key)
    do
        return RequestExtraIntegerData(41, whichPlayer, key, nil, false, 0, 0, 0)
    end
end

function DzAPI_Map_ConsumeMallItem(whichPlayer, key, count)
    do
        return RequestExtraBooleanData(42, whichPlayer, key, nil, false, count, 0, 0)
    end
end

function DzAPI_Map_EnablePlatformSettings(whichPlayer, option, enable)
    do
        return RequestExtraBooleanData(43, whichPlayer, nil, nil, enable, option, 0, 0)
    end
end

function DzAPI_Map_IsBuyReforged(whichPlayer)
    do
        return RequestExtraBooleanData(44, whichPlayer, nil, nil, false, 0, 0, 0)
    end
end

function DzAPI_Map_StoreIntegerEX(whichPlayer, key, value)
    key = "I" .. key
    RequestExtraBooleanData(39, whichPlayer, key, I2S(value), false, 0, 0, 0)
    key = nil
    whichPlayer = nil
end

function DzAPI_Map_GetStoredIntegerEX(whichPlayer, key)
    local value = nil
    key = "I" .. key
    value = S2I(RequestExtraStringData(38, whichPlayer, key, nil, false, 0, 0, 0))
    key = nil
    whichPlayer = nil
    do
        return value
    end
end

function DzAPI_Map_StoreInteger(whichPlayer, key, value)
    key = "I" .. key
    DzAPI_Map_SaveServerValue(whichPlayer, key, I2S(value))
    key = nil
    whichPlayer = nil
end

function DzAPI_Map_GetStoredInteger(whichPlayer, key)
    local value = nil
    key = "I" .. key
    value = S2I(DzAPI_Map_GetServerValue(whichPlayer, key))
    key = nil
    whichPlayer = nil
    do
        return value
    end
end

function DzAPI_Map_CommentTotalCount1(whichPlayer, id)
    do
        return RequestExtraIntegerData(52, whichPlayer, nil, nil, false, id, 0, 0)
    end
end

function DzAPI_Map_StoreReal(whichPlayer, key, value)
    key = "R" .. key
    DzAPI_Map_SaveServerValue(whichPlayer, key, R2S(value))
    key = nil
    whichPlayer = nil
end

function DzAPI_Map_GetStoredReal(whichPlayer, key)
    local value = nil
    key = "R" .. key
    value = S2R(DzAPI_Map_GetServerValue(whichPlayer, key))
    key = nil
    whichPlayer = nil
    do
        return value
    end
end

function DzAPI_Map_StoreBoolean(whichPlayer, key, value)
    key = "B" .. key
    if (value) then
        DzAPI_Map_SaveServerValue(whichPlayer, key, "1")
    else
        DzAPI_Map_SaveServerValue(whichPlayer, key, "0")
    end
    key = nil
    whichPlayer = nil
end

function DzAPI_Map_GetStoredBoolean(whichPlayer, key)
    local value = nil
    key = "B" .. key
    key = DzAPI_Map_GetServerValue(whichPlayer, key)
    if (key == "1") then
        value = true
    else
        value = false
    end
    key = nil
    whichPlayer = nil
    do
        return value
    end
end

function DzAPI_Map_StoreString(whichPlayer, key, value)
    key = "S" .. key
    DzAPI_Map_SaveServerValue(whichPlayer, key, value)
    key = nil
    whichPlayer = nil
end

function DzAPI_Map_GetStoredString(whichPlayer, key)
    do
        return DzAPI_Map_GetServerValue(whichPlayer, "S" .. key)
    end
end

function DzAPI_Map_StoreStringEX(whichPlayer, key, value)
    key = "S" .. key
    RequestExtraBooleanData(39, whichPlayer, key, value, false, 0, 0, 0)
    key = nil
    whichPlayer = nil
end

function DzAPI_Map_GetStoredStringEX(whichPlayer, key)
    do
        return RequestExtraStringData(38, whichPlayer, "S" .. key, nil, false, 0, 0, 0)
    end
end

function DzAPI_Map_GetStoredUnitType(whichPlayer, key)
    local value = nil
    key = "I" .. key
    value = S2I(DzAPI_Map_GetServerValue(whichPlayer, key))
    key = nil
    whichPlayer = nil
    do
        return value
    end
end

function DzAPI_Map_GetStoredAbilityId(whichPlayer, key)
    local value = nil
    key = "I" .. key
    value = S2I(DzAPI_Map_GetServerValue(whichPlayer, key))
    key = nil
    whichPlayer = nil
    do
        return value
    end
end

function DzAPI_Map_FlushStoredMission(whichPlayer, key)
    DzAPI_Map_SaveServerValue(whichPlayer, key, nil)
    key = nil
    whichPlayer = nil
end

function DzAPI_Map_Ladder_SubmitIntegerData(whichPlayer, key, value)
    DzAPI_Map_Ladder_SetStat(whichPlayer, key, I2S(value))
end

function DzAPI_Map_Stat_SubmitUnitIdData(whichPlayer, key, value)
    if (value == 0) then
    else
        DzAPI_Map_Ladder_SetStat(whichPlayer, key, I2S(value))
    end
end

function DzAPI_Map_Stat_SubmitUnitData(whichPlayer, key, value)
    DzAPI_Map_Stat_SubmitUnitIdData(whichPlayer, key, GetUnitTypeId(value))
end

function DzAPI_Map_Ladder_SubmitAblityIdData(whichPlayer, key, value)
    if (value == 0) then
    else
        DzAPI_Map_Ladder_SetStat(whichPlayer, key, I2S(value))
    end
end

function DzAPI_Map_Ladder_SubmitItemIdData(whichPlayer, key, value)
    local S = nil
    if (value == 0) then
        S = "0"
    else
        S = I2S(value)
        DzAPI_Map_Ladder_SetStat(whichPlayer, key, S)
    end
    S = nil
    whichPlayer = nil
end

function DzAPI_Map_Ladder_SubmitItemData(whichPlayer, key, value)
    DzAPI_Map_Ladder_SubmitItemIdData(whichPlayer, key, GetItemTypeId(value))
end

function DzAPI_Map_Ladder_SubmitBooleanData(whichPlayer, key, value)
    if (value) then
        DzAPI_Map_Ladder_SetStat(whichPlayer, key, "1")
    else
        DzAPI_Map_Ladder_SetStat(whichPlayer, key, "0")
    end
end

function DzAPI_Map_Ladder_SubmitTitle(whichPlayer, value)
    DzAPI_Map_Ladder_SetStat(whichPlayer, value, "1")
end

function DzAPI_Map_Ladder_SubmitPlayerRank(whichPlayer, value)
    DzAPI_Map_Ladder_SetPlayerStat(whichPlayer, "RankIndex", I2S(value))
end

function DzAPI_Map_Ladder_SubmitPlayerExtraExp(whichPlayer, value)
    DzAPI_Map_Ladder_SetStat(whichPlayer, "ExtraExp", I2S(value))
end

function DzAPI_Map_PlayedGames(whichPlayer)
    do
        return RequestExtraIntegerData(45, whichPlayer, nil, nil, false, 0, 0, 0)
    end
end

function DzAPI_Map_CommentCount(whichPlayer)
    do
        return RequestExtraIntegerData(46, whichPlayer, nil, nil, false, 0, 0, 0)
    end
end

function DzAPI_Map_FriendCount(whichPlayer)
    do
        return RequestExtraIntegerData(47, whichPlayer, nil, nil, false, 0, 0, 0)
    end
end

function DzAPI_Map_IsConnoisseur(whichPlayer)
    do
        return RequestExtraBooleanData(48, whichPlayer, nil, nil, false, 0, 0, 0)
    end
end

function DzAPI_Map_IsBattleNetAccount(whichPlayer)
    do
        return RequestExtraBooleanData(49, whichPlayer, nil, nil, false, 0, 0, 0)
    end
end

function DzAPI_Map_IsAuthor(whichPlayer)
    do
        return RequestExtraBooleanData(50, whichPlayer, nil, nil, false, 0, 0, 0)
    end
end

function DzAPI_Map_CommentTotalCount()
    do
        return RequestExtraIntegerData(51, nil, nil, nil, false, 0, 0, 0)
    end
end

function DzAPI_Map_Statistics(whichPlayer, eventKey, eventType, value)
    RequestExtraBooleanData(34, whichPlayer, eventKey, "", false, value, 0, 0)
end

function DzAPI_Map_Returns(whichPlayer, label)
    do
        return RequestExtraBooleanData(53, whichPlayer, nil, nil, false, label, 0, 0)
    end
end

function DzAPI_Map_ContinuousCount(whichPlayer, id)
    do
        return RequestExtraIntegerData(54, whichPlayer, nil, nil, false, id, 0, 0)
    end
end
end
