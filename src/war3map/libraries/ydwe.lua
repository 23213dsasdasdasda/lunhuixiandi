-- Converted from 342.w3x map/map/war3map.j.
-- YDWE, save/load, and timer compatibility functions.
return function(_ENV)
function YDTriggerSaveLoadSystem___Init()
    YDHT = InitHashtable()
    YDLOC = InitHashtable()
end

function YDWEGetUnitAbilityState(u, abilcode, state_type)
    do
        return EXGetAbilityState(EXGetUnitAbility(u, abilcode), state_type)
    end
end

function YDWEGetUnitAbilityDataInteger(u, abilcode, level, data_type)
    do
        return EXGetAbilityDataInteger(EXGetUnitAbility(u, abilcode), level, data_type)
    end
end

function YDWEGetUnitAbilityDataReal(u, abilcode, level, data_type)
    do
        return EXGetAbilityDataReal(EXGetUnitAbility(u, abilcode), level, data_type)
    end
end

function YDWEGetUnitAbilityDataString(u, abilcode, level, data_type)
    do
        return EXGetAbilityDataString(EXGetUnitAbility(u, abilcode), level, data_type)
    end
end

function YDWESetUnitAbilityState(u, abilcode, state_type, value)
    do
        return EXSetAbilityState(EXGetUnitAbility(u, abilcode), state_type, value)
    end
end

function YDWESetUnitAbilityDataInteger(u, abilcode, level, data_type, value)
    do
        return EXSetAbilityDataInteger(EXGetUnitAbility(u, abilcode), level, data_type, value)
    end
end

function YDWESetUnitAbilityDataReal(u, abilcode, level, data_type, value)
    do
        return EXSetAbilityDataReal(EXGetUnitAbility(u, abilcode), level, data_type, value)
    end
end

function YDWESetUnitAbilityDataString(u, abilcode, level, data_type, value)
    do
        return EXSetAbilityDataString(EXGetUnitAbility(u, abilcode), level, data_type, value)
    end
end

function YDWEUnitTransform(u, abilcode, targetid)
    UnitAddAbility(u, abilcode)
    EXSetAbilityDataInteger(EXGetUnitAbility(u, abilcode), 1, YDWEAbilityState__ABILITY_DATA_UNITID, GetUnitTypeId(u))
    EXSetAbilityAEmeDataA(EXGetUnitAbility(u, abilcode), GetUnitTypeId(u))
    UnitRemoveAbility(u, abilcode)
    UnitAddAbility(u, abilcode)
    EXSetAbilityAEmeDataA(EXGetUnitAbility(u, abilcode), targetid)
    UnitRemoveAbility(u, abilcode)
end

function YDWEGetItemDataString(itemcode, data_type)
    do
        return EXGetItemDataString(itemcode, data_type)
    end
end

function YDWESetItemDataString(itemcode, data_type, value)
    do
        return EXSetItemDataString(itemcode, data_type, value)
    end
end

function YDWEH2I(h)
    do
        return GetHandleId(h)
    end
end

function YDWEFlushAllData()
    FlushParentHashtable(YDHT)
end

function YDWEFlushMissionByInteger(i)
    FlushChildHashtable(YDHT, i)
end

function YDWEFlushMissionByString(s)
    FlushChildHashtable(YDHT, StringHash(s))
end

function YDWEFlushStoredIntegerByInteger(i, j)
    RemoveSavedInteger(YDHT, i, j)
end

function YDWEFlushStoredIntegerByString(s1, s2)
    RemoveSavedInteger(YDHT, StringHash(s1), StringHash(s2))
end

function YDWEHaveSavedIntegerByInteger(i, j)
    do
        return HaveSavedInteger(YDHT, i, j)
    end
end

function YDWEHaveSavedIntegerByString(s1, s2)
    do
        return HaveSavedInteger(YDHT, StringHash(s1), StringHash(s2))
    end
end

function YDWESaveIntegerByInteger(pTable, pKey, i)
    SaveInteger(YDHT, pTable, pKey, i)
end

function YDWESaveIntegerByString(pTable, pKey, i)
    SaveInteger(YDHT, StringHash(pTable), StringHash(pKey), i)
end

function YDWEGetIntegerByInteger(pTable, pKey)
    do
        return LoadInteger(YDHT, pTable, pKey)
    end
end

function YDWEGetIntegerByString(pTable, pKey)
    do
        return LoadInteger(YDHT, StringHash(pTable), StringHash(pKey))
    end
end

function YDWESaveRealByInteger(pTable, pKey, r)
    SaveReal(YDHT, pTable, pKey, r)
end

function YDWESaveRealByString(pTable, pKey, r)
    SaveReal(YDHT, StringHash(pTable), StringHash(pKey), r)
end

function YDWEGetRealByInteger(pTable, pKey)
    do
        return LoadReal(YDHT, pTable, pKey)
    end
end

function YDWEGetRealByString(pTable, pKey)
    do
        return LoadReal(YDHT, StringHash(pTable), StringHash(pKey))
    end
end

function YDWESaveStringByInteger(pTable, pKey, s)
    SaveStr(YDHT, pTable, pKey, s)
end

function YDWESaveStringByString(pTable, pKey, s)
    SaveStr(YDHT, StringHash(pTable), StringHash(pKey), s)
end

function YDWEGetStringByInteger(pTable, pKey)
    do
        return LoadStr(YDHT, pTable, pKey)
    end
end

function YDWEGetStringByString(pTable, pKey)
    do
        return LoadStr(YDHT, StringHash(pTable), StringHash(pKey))
    end
end

function YDWESaveBooleanByInteger(pTable, pKey, b)
    SaveBoolean(YDHT, pTable, pKey, b)
end

function YDWESaveBooleanByString(pTable, pKey, b)
    SaveBoolean(YDHT, StringHash(pTable), StringHash(pKey), b)
end

function YDWEGetBooleanByInteger(pTable, pKey)
    do
        return LoadBoolean(YDHT, pTable, pKey)
    end
end

function YDWEGetBooleanByString(pTable, pKey)
    do
        return LoadBoolean(YDHT, StringHash(pTable), StringHash(pKey))
    end
end

function YDWESaveUnitByInteger(pTable, pKey, u)
    SaveUnitHandle(YDHT, pTable, pKey, u)
end

function YDWESaveUnitByString(pTable, pKey, u)
    SaveUnitHandle(YDHT, StringHash(pTable), StringHash(pKey), u)
end

function YDWEGetUnitByInteger(pTable, pKey)
    do
        return LoadUnitHandle(YDHT, pTable, pKey)
    end
end

function YDWEGetUnitByString(pTable, pKey)
    do
        return LoadUnitHandle(YDHT, StringHash(pTable), StringHash(pKey))
    end
end

function YDWESaveUnitIDByInteger(pTable, pKey, uid)
    SaveInteger(YDHT, pTable, pKey, uid)
end

function YDWESaveUnitIDByString(pTable, pKey, uid)
    SaveInteger(YDHT, StringHash(pTable), StringHash(pKey), uid)
end

function YDWEGetUnitIDByInteger(pTable, pKey)
    do
        return LoadInteger(YDHT, pTable, pKey)
    end
end

function YDWEGetUnitIDByString(pTable, pKey)
    do
        return LoadInteger(YDHT, StringHash(pTable), StringHash(pKey))
    end
end

function YDWESaveAbilityIDByInteger(pTable, pKey, abid)
    SaveInteger(YDHT, pTable, pKey, abid)
end

function YDWESaveAbilityIDByString(pTable, pKey, abid)
    SaveInteger(YDHT, StringHash(pTable), StringHash(pKey), abid)
end

function YDWEGetAbilityIDByInteger(pTable, pKey)
    do
        return LoadInteger(YDHT, pTable, pKey)
    end
end

function YDWEGetAbilityIDByString(pTable, pKey)
    do
        return LoadInteger(YDHT, StringHash(pTable), StringHash(pKey))
    end
end

function YDWESavePlayerByInteger(pTable, pKey, p)
    SavePlayerHandle(YDHT, pTable, pKey, p)
end

function YDWESavePlayerByString(pTable, pKey, p)
    SavePlayerHandle(YDHT, StringHash(pTable), StringHash(pKey), p)
end

function YDWEGetPlayerByInteger(pTable, pKey)
    do
        return LoadPlayerHandle(YDHT, pTable, pKey)
    end
end

function YDWEGetPlayerByString(pTable, pKey)
    do
        return LoadPlayerHandle(YDHT, StringHash(pTable), StringHash(pKey))
    end
end

function YDWESaveItemByInteger(pTable, pKey, it)
    SaveItemHandle(YDHT, pTable, pKey, it)
end

function YDWESaveItemByString(pTable, pKey, it)
    SaveItemHandle(YDHT, StringHash(pTable), StringHash(pKey), it)
end

function YDWEGetItemByInteger(pTable, pKey)
    do
        return LoadItemHandle(YDHT, pTable, pKey)
    end
end

function YDWEGetItemByString(pTable, pKey)
    do
        return LoadItemHandle(YDHT, StringHash(pTable), StringHash(pKey))
    end
end

function YDWESaveItemIDByInteger(pTable, pKey, itid)
    SaveInteger(YDHT, pTable, pKey, itid)
end

function YDWESaveItemIDByString(pTable, pKey, itid)
    SaveInteger(YDHT, StringHash(pTable), StringHash(pKey), itid)
end

function YDWEGetItemIDByInteger(pTable, pKey)
    do
        return LoadInteger(YDHT, pTable, pKey)
    end
end

function YDWEGetItemIDByString(pTable, pKey)
    do
        return LoadInteger(YDHT, StringHash(pTable), StringHash(pKey))
    end
end

function YDWESaveTimerByInteger(pTable, pKey, t)
    SaveTimerHandle(YDHT, pTable, pKey, t)
end

function YDWESaveTimerByString(pTable, pKey, t)
    SaveTimerHandle(YDHT, StringHash(pTable), StringHash(pKey), t)
end

function YDWEGetTimerByInteger(pTable, pKey)
    do
        return LoadTimerHandle(YDHT, pTable, pKey)
    end
end

function YDWEGetTimerByString(pTable, pKey)
    do
        return LoadTimerHandle(YDHT, StringHash(pTable), StringHash(pKey))
    end
end

function YDWESaveTriggerByInteger(pTable, pKey, trg)
    SaveTriggerHandle(YDHT, pTable, pKey, trg)
end

function YDWESaveTriggerByString(pTable, pKey, trg)
    SaveTriggerHandle(YDHT, StringHash(pTable), StringHash(pKey), trg)
end

function YDWEGetTriggerByInteger(pTable, pKey)
    do
        return LoadTriggerHandle(YDHT, pTable, pKey)
    end
end

function YDWEGetTriggerByString(pTable, pKey)
    do
        return LoadTriggerHandle(YDHT, StringHash(pTable), StringHash(pKey))
    end
end

function YDWESaveLocationByInteger(pTable, pKey, pt)
    SaveLocationHandle(YDHT, pTable, pKey, pt)
end

function YDWESaveLocationByString(pTable, pKey, pt)
    SaveLocationHandle(YDHT, StringHash(pTable), StringHash(pKey), pt)
end

function YDWEGetLocationByInteger(pTable, pKey)
    do
        return LoadLocationHandle(YDHT, pTable, pKey)
    end
end

function YDWEGetLocationByString(pTable, pKey)
    do
        return LoadLocationHandle(YDHT, StringHash(pTable), StringHash(pKey))
    end
end

function YDWESaveGroupByInteger(pTable, pKey, g)
    SaveGroupHandle(YDHT, pTable, pKey, g)
end

function YDWESaveGroupByString(pTable, pKey, g)
    SaveGroupHandle(YDHT, StringHash(pTable), StringHash(pKey), g)
end

function YDWEGetGroupByInteger(pTable, pKey)
    do
        return LoadGroupHandle(YDHT, pTable, pKey)
    end
end

function YDWEGetGroupByString(pTable, pKey)
    do
        return LoadGroupHandle(YDHT, StringHash(pTable), StringHash(pKey))
    end
end

function YDWESaveMultiboardByInteger(pTable, pKey, m)
    SaveMultiboardHandle(YDHT, pTable, pKey, m)
end

function YDWESaveMultiboardByString(pTable, pKey, m)
    SaveMultiboardHandle(YDHT, StringHash(pTable), StringHash(pKey), m)
end

function YDWEGetMultiboardByInteger(pTable, pKey)
    do
        return LoadMultiboardHandle(YDHT, pTable, pKey)
    end
end

function YDWEGetMultiboardByString(pTable, pKey)
    do
        return LoadMultiboardHandle(YDHT, StringHash(pTable), StringHash(pKey))
    end
end

function YDWESaveMultiboardItemByInteger(pTable, pKey, mt)
    SaveMultiboardItemHandle(YDHT, pTable, pKey, mt)
end

function YDWESaveMultiboardItemByString(pTable, pKey, mt)
    SaveMultiboardItemHandle(YDHT, StringHash(pTable), StringHash(pKey), mt)
end

function YDWEGetMultiboardItemByInteger(pTable, pKey)
    do
        return LoadMultiboardItemHandle(YDHT, pTable, pKey)
    end
end

function YDWEGetMultiboardItemByString(pTable, pKey)
    do
        return LoadMultiboardItemHandle(YDHT, StringHash(pTable), StringHash(pKey))
    end
end

function YDWESaveTextTagByInteger(pTable, pKey, tt)
    SaveTextTagHandle(YDHT, pTable, pKey, tt)
end

function YDWESaveTextTagByString(pTable, pKey, tt)
    SaveTextTagHandle(YDHT, StringHash(pTable), StringHash(pKey), tt)
end

function YDWEGetTextTagByInteger(pTable, pKey)
    do
        return LoadTextTagHandle(YDHT, pTable, pKey)
    end
end

function YDWEGetTextTagByString(pTable, pKey)
    do
        return LoadTextTagHandle(YDHT, StringHash(pTable), StringHash(pKey))
    end
end

function YDWESaveLightningByInteger(pTable, pKey, ln)
    SaveLightningHandle(YDHT, pTable, pKey, ln)
end

function YDWESaveLightningByString(pTable, pKey, ln)
    SaveLightningHandle(YDHT, StringHash(pTable), StringHash(pKey), ln)
end

function YDWEGetLightningByInteger(pTable, pKey)
    do
        return LoadLightningHandle(YDHT, pTable, pKey)
    end
end

function YDWEGetLightningByString(pTable, pKey)
    do
        return LoadLightningHandle(YDHT, StringHash(pTable), StringHash(pKey))
    end
end

function YDWESaveRegionByInteger(pTable, pKey, rn)
    SaveRegionHandle(YDHT, pTable, pKey, rn)
end

function YDWESaveRegionByString(pTable, pKey, rt)
    SaveRegionHandle(YDHT, StringHash(pTable), StringHash(pKey), rt)
end

function YDWEGetRegionByInteger(pTable, pKey)
    do
        return LoadRegionHandle(YDHT, pTable, pKey)
    end
end

function YDWEGetRegionByString(pTable, pKey)
    do
        return LoadRegionHandle(YDHT, StringHash(pTable), StringHash(pKey))
    end
end

function YDWESaveRectByInteger(pTable, pKey, rn)
    SaveRectHandle(YDHT, pTable, pKey, rn)
end

function YDWESaveRectByString(pTable, pKey, rt)
    SaveRectHandle(YDHT, StringHash(pTable), StringHash(pKey), rt)
end

function YDWEGetRectByInteger(pTable, pKey)
    do
        return LoadRectHandle(YDHT, pTable, pKey)
    end
end

function YDWEGetRectByString(pTable, pKey)
    do
        return LoadRectHandle(YDHT, StringHash(pTable), StringHash(pKey))
    end
end

function YDWESaveLeaderboardByInteger(pTable, pKey, lb)
    SaveLeaderboardHandle(YDHT, pTable, pKey, lb)
end

function YDWESaveLeaderboardByString(pTable, pKey, lb)
    SaveLeaderboardHandle(YDHT, StringHash(pTable), StringHash(pKey), lb)
end

function YDWEGetLeaderboardByInteger(pTable, pKey)
    do
        return LoadLeaderboardHandle(YDHT, pTable, pKey)
    end
end

function YDWEGetLeaderboardByString(pTable, pKey)
    do
        return LoadLeaderboardHandle(YDHT, StringHash(pTable), StringHash(pKey))
    end
end

function YDWESaveEffectByInteger(pTable, pKey, e)
    SaveEffectHandle(YDHT, pTable, pKey, e)
end

function YDWESaveEffectByString(pTable, pKey, e)
    SaveEffectHandle(YDHT, StringHash(pTable), StringHash(pKey), e)
end

function YDWEGetEffectByInteger(pTable, pKey)
    do
        return LoadEffectHandle(YDHT, pTable, pKey)
    end
end

function YDWEGetEffectByString(pTable, pKey)
    do
        return LoadEffectHandle(YDHT, StringHash(pTable), StringHash(pKey))
    end
end

function YDWESaveDestructableByInteger(pTable, pKey, da)
    SaveDestructableHandle(YDHT, pTable, pKey, da)
end

function YDWESaveDestructableByString(pTable, pKey, da)
    SaveDestructableHandle(YDHT, StringHash(pTable), StringHash(pKey), da)
end

function YDWEGetDestructableByInteger(pTable, pKey)
    do
        return LoadDestructableHandle(YDHT, pTable, pKey)
    end
end

function YDWEGetDestructableByString(pTable, pKey)
    do
        return LoadDestructableHandle(YDHT, StringHash(pTable), StringHash(pKey))
    end
end

function YDWESaveTriggerConditionByInteger(pTable, pKey, tc)
    SaveTriggerConditionHandle(YDHT, pTable, pKey, tc)
end

function YDWESaveTriggerConditionByString(pTable, pKey, tc)
    SaveTriggerConditionHandle(YDHT, StringHash(pTable), StringHash(pKey), tc)
end

function YDWEGetTriggerConditionByInteger(pTable, pKey)
    do
        return LoadTriggerConditionHandle(YDHT, pTable, pKey)
    end
end

function YDWEGetTriggerConditionByString(pTable, pKey)
    do
        return LoadTriggerConditionHandle(YDHT, StringHash(pTable), StringHash(pKey))
    end
end

function YDWESaveTriggerActionByInteger(pTable, pKey, ta)
    SaveTriggerActionHandle(YDHT, pTable, pKey, ta)
end

function YDWESaveTriggerActionByString(pTable, pKey, ta)
    SaveTriggerActionHandle(YDHT, StringHash(pTable), StringHash(pKey), ta)
end

function YDWEGetTriggerActionByInteger(pTable, pKey)
    do
        return LoadTriggerActionHandle(YDHT, pTable, pKey)
    end
end

function YDWEGetTriggerActionByString(pTable, pKey)
    do
        return LoadTriggerActionHandle(YDHT, StringHash(pTable), StringHash(pKey))
    end
end

function YDWESaveTriggerEventByInteger(pTable, pKey, et)
    SaveTriggerEventHandle(YDHT, pTable, pKey, et)
end

function YDWESaveTriggerEventByString(pTable, pKey, et)
    SaveTriggerEventHandle(YDHT, StringHash(pTable), StringHash(pKey), et)
end

function YDWEGetTriggerEventByInteger(pTable, pKey)
    do
        return LoadTriggerEventHandle(YDHT, pTable, pKey)
    end
end

function YDWEGetTriggerEventByString(pTable, pKey)
    do
        return LoadTriggerEventHandle(YDHT, StringHash(pTable), StringHash(pKey))
    end
end

function YDWESaveForceByInteger(pTable, pKey, fc)
    SaveForceHandle(YDHT, pTable, pKey, fc)
end

function YDWESaveForceByString(pTable, pKey, fc)
    SaveForceHandle(YDHT, StringHash(pTable), StringHash(pKey), fc)
end

function YDWEGetForceByInteger(pTable, pKey)
    do
        return LoadForceHandle(YDHT, pTable, pKey)
    end
end

function YDWEGetForceByString(pTable, pKey)
    do
        return LoadForceHandle(YDHT, StringHash(pTable), StringHash(pKey))
    end
end

function YDWESaveBoolexprByInteger(pTable, pKey, be)
    SaveBooleanExprHandle(YDHT, pTable, pKey, be)
end

function YDWESaveBoolexprByString(pTable, pKey, be)
    SaveBooleanExprHandle(YDHT, StringHash(pTable), StringHash(pKey), be)
end

function YDWEGetBoolexprByInteger(pTable, pKey)
    do
        return LoadBooleanExprHandle(YDHT, pTable, pKey)
    end
end

function YDWEGetBoolexprByString(pTable, pKey)
    do
        return LoadBooleanExprHandle(YDHT, StringHash(pTable), StringHash(pKey))
    end
end

function YDWESaveSoundByInteger(pTable, pKey, sd)
    SaveSoundHandle(YDHT, pTable, pKey, sd)
end

function YDWESaveSoundByString(pTable, pKey, sd)
    SaveSoundHandle(YDHT, StringHash(pTable), StringHash(pKey), sd)
end

function YDWEGetSoundByInteger(pTable, pKey)
    do
        return LoadSoundHandle(YDHT, pTable, pKey)
    end
end

function YDWEGetSoundByString(pTable, pKey)
    do
        return LoadSoundHandle(YDHT, StringHash(pTable), StringHash(pKey))
    end
end

function YDWESaveTimerDialogByInteger(pTable, pKey, td)
    SaveTimerDialogHandle(YDHT, pTable, pKey, td)
end

function YDWESaveTimerDialogByString(pTable, pKey, td)
    SaveTimerDialogHandle(YDHT, StringHash(pTable), StringHash(pKey), td)
end

function YDWEGetTimerDialogByInteger(pTable, pKey)
    do
        return LoadTimerDialogHandle(YDHT, pTable, pKey)
    end
end

function YDWEGetTimerDialogByString(pTable, pKey)
    do
        return LoadTimerDialogHandle(YDHT, StringHash(pTable), StringHash(pKey))
    end
end

function YDWESaveTrackableByInteger(pTable, pKey, ta)
    SaveTrackableHandle(YDHT, pTable, pKey, ta)
end

function YDWESaveTrackableByString(pTable, pKey, ta)
    SaveTrackableHandle(YDHT, StringHash(pTable), StringHash(pKey), ta)
end

function YDWEGetTrackableByInteger(pTable, pKey)
    do
        return LoadTrackableHandle(YDHT, pTable, pKey)
    end
end

function YDWEGetTrackableByString(pTable, pKey)
    do
        return LoadTrackableHandle(YDHT, StringHash(pTable), StringHash(pKey))
    end
end

function YDWESaveDialogByInteger(pTable, pKey, d)
    SaveDialogHandle(YDHT, pTable, pKey, d)
end

function YDWESaveDialogByString(pTable, pKey, d)
    SaveDialogHandle(YDHT, StringHash(pTable), StringHash(pKey), d)
end

function YDWEGetDialogByInteger(pTable, pKey)
    do
        return LoadDialogHandle(YDHT, pTable, pKey)
    end
end

function YDWEGetDialogByString(pTable, pKey)
    do
        return LoadDialogHandle(YDHT, StringHash(pTable), StringHash(pKey))
    end
end

function YDWESaveButtonByInteger(pTable, pKey, bt)
    SaveButtonHandle(YDHT, pTable, pKey, bt)
end

function YDWESaveButtonByString(pTable, pKey, bt)
    SaveButtonHandle(YDHT, StringHash(pTable), StringHash(pKey), bt)
end

function YDWEGetButtonByInteger(pTable, pKey)
    do
        return LoadButtonHandle(YDHT, pTable, pKey)
    end
end

function YDWEGetButtonByString(pTable, pKey)
    do
        return LoadButtonHandle(YDHT, StringHash(pTable), StringHash(pKey))
    end
end

function YDWESaveQuestByInteger(pTable, pKey, qt)
    SaveQuestHandle(YDHT, pTable, pKey, qt)
end

function YDWESaveQuestByString(pTable, pKey, qt)
    SaveQuestHandle(YDHT, StringHash(pTable), StringHash(pKey), qt)
end

function YDWEGetQuestByInteger(pTable, pKey)
    do
        return LoadQuestHandle(YDHT, pTable, pKey)
    end
end

function YDWEGetQuestByString(pTable, pKey)
    do
        return LoadQuestHandle(YDHT, StringHash(pTable), StringHash(pKey))
    end
end

function YDWESaveQuestItemByInteger(pTable, pKey, qi)
    SaveQuestItemHandle(YDHT, pTable, pKey, qi)
end

function YDWESaveQuestItemByString(pTable, pKey, qi)
    SaveQuestItemHandle(YDHT, StringHash(pTable), StringHash(pKey), qi)
end

function YDWEGetQuestItemByInteger(pTable, pKey)
    do
        return LoadQuestItemHandle(YDHT, pTable, pKey)
    end
end

function YDWEGetQuestItemByString(pTable, pKey)
    do
        return LoadQuestItemHandle(YDHT, StringHash(pTable), StringHash(pKey))
    end
end

function YDWES2I(s)
    do
        return StringHash(s)
    end
end

function YDWESaveAbilityHandleBJ(AbilityID, key, missionKey, table)
    SaveInteger(table, missionKey, key, AbilityID)
end

function YDWESaveAbilityHandle(table, parentKey, childKey, AbilityID)
    SaveInteger(table, parentKey, childKey, AbilityID)
end

function YDWELoadAbilityHandleBJ(key, missionKey, table)
    do
        return LoadInteger(table, missionKey, key)
    end
end

function YDWELoadAbilityHandle(table, parentKey, childKey)
    do
        return LoadInteger(table, parentKey, childKey)
    end
end

function YDWECoordinateX(x)
    do
        return RMinBJ(RMaxBJ(x, yd_MapMinX), yd_MapMaxX)
    end
end

function YDWECoordinateY(y)
    do
        return RMinBJ(RMaxBJ(y, yd_MapMinY), yd_MapMaxY)
    end
end

function YDWEDistanceBetweenUnits(a, b)
    do
        return SquareRoot((GetUnitX(a) - GetUnitX(b)) * (GetUnitX(a) - GetUnitX(b)) + (GetUnitY(a) - GetUnitY(b)) * (GetUnitY(a) - GetUnitY(b)))
    end
end

function YDWEAngleBetweenUnits(fromUnit, toUnit)
    do
        return bj_RADTODEG * Atan2(GetUnitY(toUnit) - GetUnitY(fromUnit), GetUnitX(toUnit) - GetUnitX(fromUnit))
    end
end

function YDWEGetRect(x, y, width, height)
    do
        return Rect(x - width * 0.5, y - height * 0.5, x + width * 0.5, y + height * 0.5)
    end
end

function YDWEFlyEnable(u)
    UnitAddAbility(u, 0x416D7266)
    UnitRemoveAbility(u, 0x416D7266)
end

function YDWEId2S(value)
    local charMap = bj_AllString
    local result = ""
    local remainingValue = value
    local charValue = nil
    local byteno = nil
    byteno = 0
    while true do
        charValue = ModuloInteger(remainingValue, 256)
        remainingValue = remainingValue // 256
        result = SubString(charMap, charValue, charValue + 1) .. result
        byteno = byteno + 1
        if byteno == 4 then
            break
        end
    end
    do
        return result
    end
end

function YDWES2Id(targetstr)
    local originstr = bj_AllString
    local strlength = StringLength(targetstr)
    local a = 0
    local b = 0
    local numx = 1
    local result = 0
    while true do
        if b > strlength - 1 then
            break
        end
        numx = R2I(Pow(256, strlength - 1 - b))
        a = 1
        while true do
            if a > 255 then
                break
            end
            if SubString(targetstr, b, b + 1) == SubString(originstr, a, a + 1) then
                result = result + a * numx
                a = 256
            end
            a = a + 1
        end
        b = b + 1
    end
    do
        return result
    end
end

function YDWES2UnitId(targetstr)
    do
        return YDWES2Id(targetstr)
    end
end

function YDWES2ItemId(targetstr)
    do
        return YDWES2Id(targetstr)
    end
end

function YDWESetMapLimitCoordinate(MinX, MaxX, MinY, MaxY)
    yd_MapMaxX = MaxX
    yd_MapMinX = MinX
    yd_MapMaxY = MaxY
    yd_MapMinY = MinY
end

function YDWESyStemAbilityCastingOverTriggerAction(hero, index)
    local i = 0
    while true do
        if i >= YDWEBase__AbilityCastingOverEventNumber then
            break
        end
        if YDWEBase__AbilityCastingOverEventType[i] == index then
            bj_lastAbilityCastingUnit = hero
            if YDWEBase__AbilityCastingOverEventQueue[i] ~= nil and TriggerEvaluate(YDWEBase__AbilityCastingOverEventQueue[i]) and IsTriggerEnabled(YDWEBase__AbilityCastingOverEventQueue[i]) then
                TriggerExecute(YDWEBase__AbilityCastingOverEventQueue[i])
            end
        end
        i = i + 1
    end
end

function YDWESyStemAbilityCastingOverRegistTrigger(trg, index)
    YDWEBase__AbilityCastingOverEventQueue[YDWEBase__AbilityCastingOverEventNumber] = trg
    YDWEBase__AbilityCastingOverEventType[YDWEBase__AbilityCastingOverEventNumber] = index
    YDWEBase__AbilityCastingOverEventNumber = YDWEBase__AbilityCastingOverEventNumber + 1
end

function YDWECreateUnitPool()
    bj_lastCreatedUnitPool = CreateUnitPool()
end

function YDWEPlaceRandomUnit(up, p, x, y, face)
    bj_lastPoolAbstractedUnit = PlaceRandomUnit(up, p, x, y, face)
end

function YDWEGetLastUnitPool()
    do
        return bj_lastCreatedUnitPool
    end
end

function YDWEGetLastPoolAbstractedUnit()
    do
        return bj_lastPoolAbstractedUnit
    end
end

function YDWECreateItemPool()
    bj_lastCreatedItemPool = CreateItemPool()
end

function YDWEPlaceRandomItem(ip, x, y)
    bj_lastPoolAbstractedItem = PlaceRandomItem(ip, x, y)
end

function YDWEGetLastItemPool()
    do
        return bj_lastCreatedItemPool
    end
end

function YDWEGetLastPoolAbstractedItem()
    do
        return bj_lastPoolAbstractedItem
    end
end

function YDWESetAttackDamageWeaponType(at, dt, wt)
    bj_lastSetAttackType = at
    bj_lastSetDamageType = dt
    bj_lastSetWeaponType = wt
end

function YDWEGetPlayerColorString(p, s)
    do
        return YDWEBase__yd_PlayerColor[GetHandleId(GetPlayerColor(p))] .. s .. "|r"
    end
end

function YDWEGetUnitItemSoftId(hero, it)
    local i = 0
    while true do
        if i > 5 then
            break
        end
        if UnitItemInSlot(hero, i) == it then
            do
                return i + 1
            end
        end
        i = i + 1
    end
    do
        return 0
    end
end

function YDWEVersion_Display()
    DisplayTimedTextToPlayer(GetTriggerPlayer(), 0, 0, 30, "|cFF1E90FF当前编辑器版本为： |r|cFF00FF00YDWE 1.31.9.1000")
    do
        return false
    end
end

function YDWEVersion_Init()
    local t = CreateTrigger()
    local i = 0
    while true do
        if i == 12 then
            break
        end
        TriggerRegisterPlayerChatEvent(t, Player(i), "YDWE Version", true)
        i = i + 1
    end
    TriggerAddCondition(t, Condition(YDWEVersion_Display))
    t = nil
end

function YDWEIsEventPhysicalDamage()
    do
        return 0 ~= EXGetEventDamageData(YDWEEventDamageData__EVENT_DAMAGE_DATA_IS_PHYSICAL)
    end
end

function YDWEIsEventAttackDamage()
    do
        return 0 ~= EXGetEventDamageData(YDWEEventDamageData__EVENT_DAMAGE_DATA_IS_ATTACK)
    end
end

function YDWEIsEventRangedDamage()
    do
        return 0 ~= EXGetEventDamageData(YDWEEventDamageData__EVENT_DAMAGE_DATA_IS_RANGED)
    end
end

function YDWEIsEventDamageType(damageType)
    do
        return damageType == ConvertDamageType(EXGetEventDamageData(YDWEEventDamageData__EVENT_DAMAGE_DATA_DAMAGE_TYPE))
    end
end

function YDWEIsEventWeaponType(weaponType)
    do
        return weaponType == ConvertWeaponType(EXGetEventDamageData(YDWEEventDamageData__EVENT_DAMAGE_DATA_WEAPON_TYPE))
    end
end

function YDWEIsEventAttackType(attackType)
    do
        return attackType == ConvertAttackType(EXGetEventDamageData(YDWEEventDamageData__EVENT_DAMAGE_DATA_ATTACK_TYPE))
    end
end

function YDWESetEventDamage(amount)
    do
        return EXSetEventDamage(amount)
    end
end

function YDWEGetInventoryIndexOfItemTypeBJNull(whichUnit, itemId)
    local index = 0
    if itemId ~= 0 then
        while true do
            if GetItemTypeId(UnitItemInSlot(whichUnit, index)) == itemId then
                do
                    return index + 1
                end
            end
            index = index + 1
            if index >= bj_MAX_INVENTORY then
                break
            end
        end
    end
    do
        return 0
    end
end

function YDWEGetItemOfTypeFromUnitBJNull(whichUnit, itemId)
    local index = 0
    while true do
        yd_NullTempItem = UnitItemInSlot(whichUnit, index)
        if GetItemTypeId(yd_NullTempItem) == itemId then
            do
                return yd_NullTempItem
            end
        end
        index = index + 1
        if index >= bj_MAX_INVENTORY then
            break
        end
    end
    do
        return nil
    end
end

function YDWEGetUnitsInRectOfPlayerNull(r, whichPlayer)
    local g = CreateGroup()
    bj_groupEnumOwningPlayer = whichPlayer
    GroupEnumUnitsInRect(g, r, filterGetUnitsInRectOfPlayer)
    yd_NullTempGroup = g
    g = nil
    do
        return yd_NullTempGroup
    end
end

function YDWEGetUnitsOfPlayerMatchingNull(whichPlayer, filter)
    local g = CreateGroup()
    GroupEnumUnitsOfPlayer(g, whichPlayer, filter)
    DestroyBoolExpr(filter)
    yd_NullTempGroup = g
    g = nil
    do
        return yd_NullTempGroup
    end
end

function YDWESetEffectLoc(e, loc)
    EXSetEffectXY(e, GetLocationX(loc), GetLocationY(loc))
end

function YDWEUnitAddStun(u)
    EXPauseUnit(u, true)
end

function YDWEUnitRemoveStun(u)
    EXPauseUnit(u, false)
end

function YDWEMultiboardSetItemStyleBJNull(mb, col, row, showValue, showIcon)
    local curRow = 0
    local curCol = 0
    local numRows = MultiboardGetRowCount(mb)
    local numCols = MultiboardGetColumnCount(mb)
    local mbitem = nil
    while true do
        curRow = curRow + 1
        if curRow > numRows then
            break
        end
        if (row == 0 or row == curRow) then
            curCol = 0
            while true do
                curCol = curCol + 1
                if curCol > numCols then
                    break
                end
                if (col == 0 or col == curCol) then
                    mbitem = MultiboardGetItem(mb, curRow - 1, curCol - 1)
                    MultiboardSetItemStyle(mbitem, showValue, showIcon)
                    MultiboardReleaseItem(mbitem)
                end
            end
        end
    end
    mbitem = nil
end

function YDWEMultiboardSetItemValueBJNull(mb, col, row, val)
    local curRow = 0
    local curCol = 0
    local numRows = MultiboardGetRowCount(mb)
    local numCols = MultiboardGetColumnCount(mb)
    local mbitem = nil
    while true do
        curRow = curRow + 1
        if curRow > numRows then
            break
        end
        if (row == 0 or row == curRow) then
            curCol = 0
            while true do
                curCol = curCol + 1
                if curCol > numCols then
                    break
                end
                if (col == 0 or col == curCol) then
                    mbitem = MultiboardGetItem(mb, curRow - 1, curCol - 1)
                    MultiboardSetItemValue(mbitem, val)
                    MultiboardReleaseItem(mbitem)
                end
            end
        end
    end
    mbitem = nil
end

function YDWEMultiboardSetItemWidthBJNull(mb, col, row, width)
    local curRow = 0
    local curCol = 0
    local numRows = MultiboardGetRowCount(mb)
    local numCols = MultiboardGetColumnCount(mb)
    local mbitem = nil
    while true do
        curRow = curRow + 1
        if curRow > numRows then
            break
        end
        if (row == 0 or row == curRow) then
            curCol = 0
            while true do
                curCol = curCol + 1
                if curCol > numCols then
                    break
                end
                if (col == 0 or col == curCol) then
                    mbitem = MultiboardGetItem(mb, curRow - 1, curCol - 1)
                    MultiboardSetItemWidth(mbitem, width / 100.0)
                    MultiboardReleaseItem(mbitem)
                end
            end
        end
    end
    mbitem = nil
end

function YDWEPlaySoundNull(soundName)
    local soundHandle = CreateSound(soundName, false, false, true, 12700, 12700, "")
    StartSound(soundHandle)
    KillSoundWhenDone(soundHandle)
    soundHandle = nil
end

function YDWEReplaceUnitBJNull(whichUnit, newUnitId, unitStateMethod)
    local oldUnit = whichUnit
    local newUnit = nil
    local wasHidden = nil
    local index = nil
    local indexItem = nil
    local oldRatio = nil
    if (whichUnit == nil) then
        bj_lastReplacedUnit = whichUnit
        do
            return bj_lastReplacedUnit
        end
    end
    wasHidden = IsUnitHidden(oldUnit)
    ShowUnit(oldUnit, false)
    if (newUnitId == 0x75676F6C) then
        newUnit = CreateBlightedGoldmine(GetOwningPlayer(oldUnit), GetUnitX(oldUnit), GetUnitY(oldUnit), GetUnitFacing(oldUnit))
    else
        newUnit = CreateUnit(GetOwningPlayer(oldUnit), newUnitId, GetUnitX(oldUnit), GetUnitY(oldUnit), GetUnitFacing(oldUnit))
    end
    if (unitStateMethod == bj_UNIT_STATE_METHOD_RELATIVE) then
        if (GetUnitState(oldUnit, UNIT_STATE_MAX_LIFE) > 0) then
            oldRatio = GetUnitState(oldUnit, UNIT_STATE_LIFE) / GetUnitState(oldUnit, UNIT_STATE_MAX_LIFE)
            SetUnitState(newUnit, UNIT_STATE_LIFE, oldRatio * GetUnitState(newUnit, UNIT_STATE_MAX_LIFE))
        end
        if (GetUnitState(oldUnit, UNIT_STATE_MAX_MANA) > 0) and (GetUnitState(newUnit, UNIT_STATE_MAX_MANA) > 0) then
            oldRatio = GetUnitState(oldUnit, UNIT_STATE_MANA) / GetUnitState(oldUnit, UNIT_STATE_MAX_MANA)
            SetUnitState(newUnit, UNIT_STATE_MANA, oldRatio * GetUnitState(newUnit, UNIT_STATE_MAX_MANA))
        end
    elseif (unitStateMethod == bj_UNIT_STATE_METHOD_ABSOLUTE) then
        SetUnitState(newUnit, UNIT_STATE_LIFE, GetUnitState(oldUnit, UNIT_STATE_LIFE))
        if (GetUnitState(newUnit, UNIT_STATE_MAX_MANA) > 0) then
            SetUnitState(newUnit, UNIT_STATE_MANA, GetUnitState(oldUnit, UNIT_STATE_MANA))
        end
    elseif (unitStateMethod == bj_UNIT_STATE_METHOD_DEFAULTS) then
    elseif (unitStateMethod == bj_UNIT_STATE_METHOD_MAXIMUM) then
        SetUnitState(newUnit, UNIT_STATE_LIFE, GetUnitState(newUnit, UNIT_STATE_MAX_LIFE))
        SetUnitState(newUnit, UNIT_STATE_MANA, GetUnitState(newUnit, UNIT_STATE_MAX_MANA))
    else
    end
    SetResourceAmount(newUnit, GetResourceAmount(oldUnit))
    if (IsUnitType(oldUnit, UNIT_TYPE_HERO) and IsUnitType(newUnit, UNIT_TYPE_HERO)) then
        SetHeroXP(newUnit, GetHeroXP(oldUnit), false)
        index = 0
        while true do
            indexItem = UnitItemInSlot(oldUnit, index)
            if (indexItem ~= nil) then
                UnitRemoveItem(oldUnit, indexItem)
                UnitAddItem(newUnit, indexItem)
            end
            index = index + 1
            if index >= bj_MAX_INVENTORY then
                break
            end
        end
    end
    if wasHidden then
        KillUnit(oldUnit)
        RemoveUnit(oldUnit)
    else
        RemoveUnit(oldUnit)
    end
    bj_lastReplacedUnit = newUnit
    oldUnit = nil
    newUnit = nil
    indexItem = nil
    do
        return bj_lastReplacedUnit
    end
end

function YDWEAnyUnitDamagedTriggerAction()
    local i = 0
    while true do
        if i >= YDWETriggerEvent__DamageEventNumber then
            break
        end
        if YDWETriggerEvent__DamageEventQueue[i] ~= nil and IsTriggerEnabled(YDWETriggerEvent__DamageEventQueue[i]) and TriggerEvaluate(YDWETriggerEvent__DamageEventQueue[i]) then
            TriggerExecute(YDWETriggerEvent__DamageEventQueue[i])
        end
        i = i + 1
    end
end

function YDWEAnyUnitDamagedFilter()
    if GetUnitAbilityLevel(GetFilterUnit(), 0x416C6F63) <= 0 then
        TriggerRegisterUnitEvent(yd_DamageEventTrigger, GetFilterUnit(), EVENT_UNIT_DAMAGED)
    end
    do
        return false
    end
end

function YDWEAnyUnitDamagedEnumUnit()
    local g = CreateGroup()
    local i = 0
    while true do
        GroupEnumUnitsOfPlayer(g, Player(i), Condition(YDWEAnyUnitDamagedFilter))
        i = i + 1
        if i >= bj_MAX_PLAYER_SLOTS then
            break
        end
    end
    DestroyGroup(g)
    g = nil
end

function YDWEAnyUnitDamagedRegistTriggerUnitEnter()
    local t = CreateTrigger()
    local r = CreateRegion()
    local world = GetWorldBounds()
    RegionAddRect(r, world)
    TriggerRegisterEnterRegion(t, r, Condition(YDWEAnyUnitDamagedFilter))
    RemoveRect(world)
    t = nil
    r = nil
    world = nil
end

function YDWESyStemAnyUnitDamagedSwap()
    local isEnabled = IsTriggerEnabled(yd_DamageEventTrigger)
    DisableTrigger(yd_DamageEventTrigger)
    if YDWETriggerEvent__yd_DamageEventTriggerToDestory ~= nil then
        DestroyTrigger(YDWETriggerEvent__yd_DamageEventTriggerToDestory)
    end
    YDWETriggerEvent__yd_DamageEventTriggerToDestory = yd_DamageEventTrigger
    yd_DamageEventTrigger = CreateTrigger()
    if not isEnabled then
        DisableTrigger(yd_DamageEventTrigger)
    end
    TriggerAddAction(yd_DamageEventTrigger, YDWEAnyUnitDamagedTriggerAction)
    YDWEAnyUnitDamagedEnumUnit()
end

function YDWESyStemAnyUnitDamagedRegistTrigger(trg)
    if trg == nil then
        do
            return
        end
    end
    if YDWETriggerEvent__DamageEventNumber == 0 then
        yd_DamageEventTrigger = CreateTrigger()
        TriggerAddAction(yd_DamageEventTrigger, YDWEAnyUnitDamagedTriggerAction)
        YDWEAnyUnitDamagedEnumUnit()
        YDWEAnyUnitDamagedRegistTriggerUnitEnter()
        if YDWETriggerEvent__DAMAGE_EVENT_SWAP_ENABLE then
            TimerStart(CreateTimer(), YDWETriggerEvent__DAMAGE_EVENT_SWAP_TIMEOUT, true, YDWESyStemAnyUnitDamagedSwap)
        end
    end
    YDWETriggerEvent__DamageEventQueue[YDWETriggerEvent__DamageEventNumber] = trg
    YDWETriggerEvent__DamageEventNumber = YDWETriggerEvent__DamageEventNumber + 1
end

function YDWESyStemItemUnmovableTriggerAction()
    local i = 0
    if GetIssuedOrderId() >= 852002 and GetIssuedOrderId() <= 852007 then
        bj_lastMovedItemInItemSlot = GetOrderTargetItem()
        while true do
            if i >= YDWETriggerEvent__MoveItemEventNumber then
                break
            end
            if YDWETriggerEvent__MoveItemEventQueue[i] ~= nil and IsTriggerEnabled(YDWETriggerEvent__MoveItemEventQueue[i]) and TriggerEvaluate(YDWETriggerEvent__MoveItemEventQueue[i]) then
                TriggerExecute(YDWETriggerEvent__MoveItemEventQueue[i])
            end
            i = i + 1
        end
    end
end

function YDWESyStemItemUnmovableRegistTrigger(trg)
    if trg == nil then
        do
            return
        end
    end
    if YDWETriggerEvent__MoveItemEventNumber == 0 then
        YDWETriggerEvent__MoveItemEventTrigger = CreateTrigger()
        TriggerAddAction(YDWETriggerEvent__MoveItemEventTrigger, YDWESyStemItemUnmovableTriggerAction)
        TriggerRegisterAnyUnitEventBJ(YDWETriggerEvent__MoveItemEventTrigger, EVENT_PLAYER_UNIT_ISSUED_TARGET_ORDER)
    end
    YDWETriggerEvent__MoveItemEventQueue[YDWETriggerEvent__MoveItemEventNumber] = trg
    YDWETriggerEvent__MoveItemEventNumber = YDWETriggerEvent__MoveItemEventNumber + 1
end

function YDWETriggerRegisterEnterRectSimpleNull(trig, r)
    local rectRegion = CreateRegion()
    RegionAddRect(rectRegion, r)
    yd_NullTempRegion = rectRegion
    rectRegion = nil
    do
        return TriggerRegisterEnterRegion(trig, yd_NullTempRegion, nil)
    end
end

function YDWEUnitHasItemOfTypeBJNull(whichUnit, itemId)
    local index = 0
    if itemId ~= 0 then
        while true do
            if GetItemTypeId(UnitItemInSlot(whichUnit, index)) == itemId then
                do
                    return true
                end
            end
            index = index + 1
            if index >= bj_MAX_INVENTORY then
                break
            end
        end
    end
    do
        return false
    end
end

function YDWEJumpTimerLoop()
    local t = GetExpiredTimer()
    local hero = ((LoadUnitHandle(YDHT, StringHash((I2S((GetHandleId((t)))))), StringHash(("Hero")))))
    local angle = (LoadReal(YDHT, StringHash((I2S((GetHandleId((t)))))), StringHash(("Angle"))))
    local steeps = (LoadInteger(YDHT, StringHash((I2S((GetHandleId((t)))))), StringHash(("steeps"))))
    local steepsMax = (LoadInteger(YDHT, StringHash((I2S((GetHandleId((t)))))), StringHash(("steepsMax"))))
    local heightMax = (LoadReal(YDHT, StringHash((I2S((GetHandleId((t)))))), StringHash(("heightMax"))))
    local dist = (LoadReal(YDHT, StringHash((I2S((GetHandleId((t)))))), StringHash(("dist"))))
    local dheig = (LoadReal(YDHT, StringHash((I2S((GetHandleId((t)))))), StringHash(("dheig"))))
    local OriginHeight = (LoadReal(YDHT, StringHash((I2S((GetHandleId((t)))))), StringHash(("OriginHeight"))))
    local x = (LoadReal(YDHT, StringHash((I2S((GetHandleId((t)))))), StringHash(("X"))))
    local y = (LoadReal(YDHT, StringHash((I2S((GetHandleId((t)))))), StringHash(("Y"))))
    local x1 = 0
    local y1 = 0
    local height = 0
    local lvJumpTimer = MoveMoreLevel_JumpTimer
    local lvUnitMove = (LoadInteger(YDHT, StringHash((I2S((GetHandleId((hero)))))), StringHash(("lvUnitMove"))))
    if steeps < steepsMax and lvJumpTimer >= lvUnitMove then
        x1 = x + steeps * dist * Cos(angle * 3.14159 / 180.0)
        y1 = y + steeps * dist * Sin(angle * 3.14159 / 180.0)
        x1 = (RMinBJ(RMaxBJ(((x1) * 1.0), yd_MapMinX), yd_MapMaxX))
        y1 = (RMinBJ(RMaxBJ(((y1) * 1.0), yd_MapMinY), yd_MapMaxY))
        SetUnitX(hero, x1)
        SetUnitY(hero, y1)
        steeps = steeps + 1
        SaveInteger(YDHT, StringHash((I2S((GetHandleId((t)))))), StringHash(("steeps")), (steeps))
        height = (-(2 * I2R(steeps) * dheig - 1) * (2 * I2R(steeps) * dheig - 1) + 1) * heightMax + OriginHeight
        SetUnitFlyHeight(hero, height, 99999)
        SetUnitFacing(hero, angle)
    else
        SetUnitFlyHeight(hero, OriginHeight, 99999)
        SetUnitPathing(hero, true)
        DestroyTimer(t)
        FlushChildHashtable(YDHT, StringHash((I2S((GetHandleId((t)))))))
        SaveInteger(YDHT, StringHash((I2S((GetHandleId((hero)))))), StringHash(("lvUnitMove")), (0))
        YDWESyStemAbilityCastingOverTriggerAction(hero, 2)
    end
    t = nil
    hero = nil
end

function YDWEJumpTimer(hero, angle, distance, lasttime, timeout, heightMax)
    local t = nil
    local x = GetUnitX(hero)
    local y = GetUnitY(hero)
    local steepsMax = R2I(lasttime / timeout)
    local steeps = 0
    local dist = distance / steepsMax
    local dheig = 1.0 / steepsMax
    local OriginHeight = GetUnitFlyHeight(hero)
    local lvUnitMove = (LoadInteger(YDHT, StringHash((I2S((GetHandleId((hero)))))), StringHash(("lvUnitMove"))))
    if MoveMoreLevel_JumpTimer <= lvUnitMove then
        do
            return
        end
    end
    t = CreateTimer()
    SaveInteger(YDHT, StringHash((I2S((GetHandleId((hero)))))), StringHash(("lvUnitMove")), (MoveMoreLevel_JumpTimer))
    YDWEFlyEnable(hero)
    SetUnitPathing(hero, false)
    SaveUnitHandle(YDHT, StringHash((I2S((GetHandleId((t)))))), StringHash(("Hero")), (hero))
    SaveReal(YDHT, StringHash((I2S((GetHandleId((t)))))), StringHash(("OriginHeight")), ((OriginHeight) * 1.0))
    SaveReal(YDHT, StringHash((I2S((GetHandleId((t)))))), StringHash(("Angle")), ((angle) * 1.0))
    SaveReal(YDHT, StringHash((I2S((GetHandleId((t)))))), StringHash(("dist")), ((dist) * 1.0))
    SaveReal(YDHT, StringHash((I2S((GetHandleId((t)))))), StringHash(("heightMax")), ((heightMax) * 1.0))
    SaveReal(YDHT, StringHash((I2S((GetHandleId((t)))))), StringHash(("dheig")), ((dheig) * 1.0))
    SaveReal(YDHT, StringHash((I2S((GetHandleId((t)))))), StringHash(("X")), ((x) * 1.0))
    SaveReal(YDHT, StringHash((I2S((GetHandleId((t)))))), StringHash(("Y")), ((y) * 1.0))
    SaveInteger(YDHT, StringHash((I2S((GetHandleId((t)))))), StringHash(("steeps")), (steeps))
    SaveInteger(YDHT, StringHash((I2S((GetHandleId((t)))))), StringHash(("steepsMax")), (steepsMax))
    TimerStart(t, timeout, true, YDWEJumpTimerLoop)
    t = nil
end

function YDWETimerSystem__NewTaskIndex()
    local h = YDWETimerSystem__TaskListIdleHead
    if YDWETimerSystem__TaskListIdleHead < 0 then
        if YDWETimerSystem__TaskListIdleMax >= 8000 then
            do
                return 8100
            end
        else
            YDWETimerSystem__TaskListIdleMax = YDWETimerSystem__TaskListIdleMax + 1
            do
                return YDWETimerSystem__TaskListIdleMax
            end
        end
    end
    YDWETimerSystem__TaskListIdleHead = YDWETimerSystem__TaskListIdle[h]
    do
        return h
    end
end

function YDWETimerSystem__DeleteTaskIndex(index)
    YDWETimerSystem__TaskListIdle[index] = YDWETimerSystem__TaskListIdleHead
    YDWETimerSystem__TaskListIdleHead = index
end

function YDWETimerSystem__NewTask(time, proc)
    local index = YDWETimerSystem__NewTaskIndex()
    local h = YDWETimerSystem__TaskListHead
    local t = R2I(100. * time) + YDWETimerSystem__CurrentTime
    local p = nil
    YDWETimerSystem__TaskListProc[index] = proc
    YDWETimerSystem__TaskListTime[index] = t
    while true do
        p = YDWETimerSystem__TaskListNext[h]
        if p < 0 or YDWETimerSystem__TaskListTime[p] >= t then
            YDWETimerSystem__TaskListNext[h] = index
            YDWETimerSystem__TaskListNext[index] = p
            do
                return index
            end
        end
        h = p
    end
    do
        return index
    end
end

function YDWETimerSystemNewTask(time, proc)
    do
        return YDWETimerSystem__NewTask(time, proc)
    end
end

function YDWETimerSystemGetCurrentTask()
    do
        return YDWETimerSystem__CurrentIndex
    end
end

function YDWETimerSystem__RemoveUnit_CallBack()
    RemoveUnit(LoadUnitHandle(YDHT, YDWETimerSystem__TimerHandle, YDWETimerSystem__CurrentIndex))
    RemoveSavedHandle(YDHT, YDWETimerSystem__TimerHandle, YDWETimerSystem__CurrentIndex)
end

function YDWETimerRemoveUnit(time, u)
    SaveUnitHandle(YDHT, YDWETimerSystem__TimerHandle, YDWETimerSystem__NewTask(time, YDWETimerSystem__fnRemoveUnit), u)
end

function YDWETimerSystem__DestroyTimer_CallBack()
    DestroyTimer(LoadTimerHandle(YDHT, YDWETimerSystem__TimerHandle, YDWETimerSystem__CurrentIndex))
    RemoveSavedHandle(YDHT, YDWETimerSystem__TimerHandle, YDWETimerSystem__CurrentIndex)
end

function YDWETimerDestroyTimer(time, t)
    SaveTimerHandle(YDHT, YDWETimerSystem__TimerHandle, YDWETimerSystem__NewTask(time, YDWETimerSystem__fnDestroyTimer), t)
end

function YDWETimerSystem__RemoveItem_CallBack()
    RemoveItem(LoadItemHandle(YDHT, YDWETimerSystem__TimerHandle, YDWETimerSystem__CurrentIndex))
    RemoveSavedHandle(YDHT, YDWETimerSystem__TimerHandle, YDWETimerSystem__CurrentIndex)
end

function YDWETimerRemoveItem(time, it)
    SaveItemHandle(YDHT, YDWETimerSystem__TimerHandle, YDWETimerSystem__NewTask(time, YDWETimerSystem__fnRemoveItem), it)
end

function YDWETimerSystem__DestroyEffect_CallBack()
    DestroyEffect(LoadEffectHandle(YDHT, YDWETimerSystem__TimerHandle, YDWETimerSystem__CurrentIndex))
    RemoveSavedHandle(YDHT, YDWETimerSystem__TimerHandle, YDWETimerSystem__CurrentIndex)
end

function YDWETimerDestroyEffect(time, e)
    SaveEffectHandle(YDHT, YDWETimerSystem__TimerHandle, YDWETimerSystem__NewTask(time, YDWETimerSystem__fnDestroyEffect), e)
end

function YDWETimerSystem__DestroyLightning_CallBack()
    DestroyLightning(LoadLightningHandle(YDHT, YDWETimerSystem__TimerHandle, YDWETimerSystem__CurrentIndex))
    RemoveSavedHandle(YDHT, YDWETimerSystem__TimerHandle, YDWETimerSystem__CurrentIndex)
end

function YDWETimerDestroyLightning(time, lt)
    local i = YDWETimerSystem__NewTask(time, YDWETimerSystem__fnDestroyLightning)
    SaveLightningHandle(YDHT, YDWETimerSystem__TimerHandle, i, lt)
end

function YDWETimerSystem__RunTrigger_CallBack()
    TriggerExecute(LoadTriggerHandle(YDHT, YDWETimerSystem__TimerHandle, YDWETimerSystem__CurrentIndex))
    RemoveSavedHandle(YDHT, YDWETimerSystem__TimerHandle, YDWETimerSystem__CurrentIndex)
end

function YDWETimerRunTrigger(time, trg)
    SaveTriggerHandle(YDHT, YDWETimerSystem__TimerHandle, YDWETimerSystem__NewTask(time, YDWETimerSystem__fnRunTrigger), trg)
end

function YDWETimerDestroyTextTag(time, tt)
    local N = 0
    local i = 0
    if time <= 0 then
        time = 0.01
    end
    SetTextTagPermanent(tt, false)
    SetTextTagLifespan(tt, time)
    SetTextTagFadepoint(tt, time)
end

function YDWETimerSystem__Main()
    local h = YDWETimerSystem__TaskListHead
    local p = nil
    while true do
        YDWETimerSystem__CurrentIndex = YDWETimerSystem__TaskListNext[h]
        if YDWETimerSystem__CurrentIndex < 0 or YDWETimerSystem__CurrentTime < YDWETimerSystem__TaskListTime[YDWETimerSystem__CurrentIndex] then
            break
        end
        TriggerEvaluate(YDWETimerSystem__TaskListProc[YDWETimerSystem__CurrentIndex])
        YDWETimerSystem__DeleteTaskIndex(YDWETimerSystem__CurrentIndex)
        YDWETimerSystem__TaskListNext[h] = YDWETimerSystem__TaskListNext[YDWETimerSystem__CurrentIndex]
    end
    YDWETimerSystem__CurrentTime = YDWETimerSystem__CurrentTime + 1
end

function YDWETimerSystem__Init()
    YDWETimerSystem__Timer = CreateTimer()
    YDWETimerSystem__TimerHandle = GetHandleId(YDWETimerSystem__Timer)
    YDWETimerSystem__CurrentTime = 0
    YDWETimerSystem__TaskListHead = 0
    YDWETimerSystem__TaskListNext[0] = -1
    YDWETimerSystem__TaskListIdleHead = 1
    YDWETimerSystem__TaskListIdleMax = 1
    YDWETimerSystem__TaskListIdle[1] = -1
    YDWETimerSystem__fnRemoveUnit = CreateTrigger()
    YDWETimerSystem__fnDestroyTimer = CreateTrigger()
    YDWETimerSystem__fnRemoveItem = CreateTrigger()
    YDWETimerSystem__fnDestroyEffect = CreateTrigger()
    YDWETimerSystem__fnDestroyLightning = CreateTrigger()
    YDWETimerSystem__fnRunTrigger = CreateTrigger()
    TriggerAddCondition(YDWETimerSystem__fnRemoveUnit, Condition(YDWETimerSystem__RemoveUnit_CallBack))
    TriggerAddCondition(YDWETimerSystem__fnDestroyTimer, Condition(YDWETimerSystem__DestroyTimer_CallBack))
    TriggerAddCondition(YDWETimerSystem__fnRemoveItem, Condition(YDWETimerSystem__RemoveItem_CallBack))
    TriggerAddCondition(YDWETimerSystem__fnDestroyEffect, Condition(YDWETimerSystem__DestroyEffect_CallBack))
    TriggerAddCondition(YDWETimerSystem__fnDestroyLightning, Condition(YDWETimerSystem__DestroyLightning_CallBack))
    TriggerAddCondition(YDWETimerSystem__fnRunTrigger, Condition(YDWETimerSystem__RunTrigger_CallBack))
    TimerStart(YDWETimerSystem__Timer, 0.01, true, YDWETimerSystem__Main)
end

function YDWETimerSystemGetRunIndex()
    do
        return YDWETimerSystem__TimerSystem_RunIndex
    end
end

function YDWETimerSystem__RunPeriodicTriggerFunction()
    local tid = GetHandleId(GetExpiredTimer())
    local trg = LoadTriggerHandle(YDHT, tid, 0xD0001)
    SaveInteger(YDHT, StringHash(I2S(GetHandleId(trg))), StringHash("RunIndex"), LoadInteger(YDHT, tid, 0xD0002))
    if TriggerEvaluate(trg) then
        TriggerExecute(trg)
    end
    trg = nil
end

function YDWETimerSystem__RunPeriodicTriggerFunctionByTimes()
    local tid = GetHandleId(GetExpiredTimer())
    local trg = LoadTriggerHandle(YDHT, tid, 0xD0001)
    local times = LoadInteger(YDHT, tid, 0xD0003)
    SaveInteger(YDHT, StringHash(I2S(GetHandleId(trg))), StringHash("RunIndex"), LoadInteger(YDHT, tid, 0xD0002))
    if TriggerEvaluate(trg) then
        TriggerExecute(trg)
    end
    times = times - 1
    if times > 0 then
        SaveInteger(YDHT, tid, 0xD0003, times)
    else
        DestroyTimer(GetExpiredTimer())
        FlushChildHashtable(YDHT, tid)
    end
    trg = nil
end

function YDWETimerRunPeriodicTrigger(timeout, trg, b, times, data)
    local t = nil
    local tid = nil
    local index = 0
    if timeout < 0 then
        do
            return
        end
    else
        t = CreateTimer()
        tid = GetHandleId(t)
    end
    YDWETimerSystem__TimerSystem_RunIndex = YDWETimerSystem__TimerSystem_RunIndex + 1
    SaveTriggerHandle(YDHT, tid, 0xD0001, trg)
    SaveInteger(YDHT, tid, 0xD0002, YDWETimerSystem__TimerSystem_RunIndex)
    index = LoadInteger(YDHT, GetHandleId(trg), 0x59445453 + data)
    index = index + 1
    SaveInteger(YDHT, GetHandleId(trg), 0x59445453 + data, index)
    SaveTimerHandle(YDHT, GetHandleId(trg), (0x59445453 + data) * index, t)
    if b == false then
        SaveInteger(YDHT, tid, 0xD0003, times)
        TimerStart(t, timeout, true, YDWETimerSystem__RunPeriodicTriggerFunctionByTimes)
    else
        TimerStart(t, timeout, true, YDWETimerSystem__RunPeriodicTriggerFunction)
    end
    t = nil
end

function YDWETimerRunPeriodicTriggerOver(trg, data)
    local trgid = GetHandleId(trg)
    local index = LoadInteger(YDHT, trgid, 0x59445453 + data)
    local t = nil
    while true do
        if index <= 0 then
            break
        end
        t = LoadTimerHandle(YDHT, trgid, (0x59445453 + data) * index)
        DestroyTimer(t)
        FlushChildHashtable(YDHT, GetHandleId(t))
        RemoveSavedHandle(YDHT, trgid, (0x59445453 + data) * index)
        index = index - 1
    end
    RemoveSavedInteger(YDHT, trgid, 0x59445453 + data)
    t = nil
end
end
