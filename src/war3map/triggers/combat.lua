-- Converted from 342.w3x map/map/war3map.j.
-- Trigger functions grouped by feature.
-- InitTrig_DYCF_005________________u
-- InitTrig_Damge_000
-- InitTrig_Attack_001
-- InitTrig_Death_002
-- InitTrig_wuxingchufa_paichu
-- InitTrig_ZHENDONG
-- InitTrig_dgdfgdgf5
-- InitTrig_dgdfgdgf
-- InitTrig_xuanyun
-- InitTrig_99_1_D___u
-- InitTrig_BOSSchufa________4__u
return function(_ENV)
function Trig_DYCF_005________________uActions()
    local ydul_a = nil
    local ydl_localvar_step = LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xCFDE6C76)
    ydl_localvar_step = ydl_localvar_step + 3
    SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xCFDE6C76, ydl_localvar_step)
    SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xECE825E7, ydl_localvar_step)
    if ((IsUnitGroupEmptyBJ(udg_rsm[GetConvertedPlayerId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))]) == true)) then
        ydul_a = 0
        while true do
            if ydul_a > 5 then
                break
            end
            if ((LoadInteger(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x7980F1A7) == ydul_a)) then
                SaveStr(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2D1FF186, SubStringBJ(LoadStr((jn), (LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xF374F3BD)), 4), ((ydul_a * 4) + 1), ((ydul_a * 4) + 4)))
                DoNothing()
                if true then
                    break
                end
            else
            end
            ydul_a = ydul_a + 1
        end
        SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x688DFB59, (YDWES2Id((LoadStr(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2D1FF186)))))
        ydul_a = 1
        while true do
            if ydul_a > S2I(EXExecuteScript("(require'jass.slk').ability[" .. I2S(LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xF374F3BD)) .. "].Missilespeed")) then
                break
            end
            SaveUnitHandle(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x5F9850BF, CreateUnit(Player(7), LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x688DFB59), udg_LGFZB_x[GetConvertedPlayerId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))], udg_LGFZB_y[GetConvertedPlayerId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))], 0))
            SaveUnitHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x384C9D86, LoadUnitHandle(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x5F9850BF))
            SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x6C2DED4E, LoadInteger(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x123EC98D))
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
        SaveInteger(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x6371EF69, GetSpellAbilityId())
    else
        DisplayTextToPlayer(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946), 0, 0, "提升：你有正在进行的挑战。")
    end
    FlushChildHashtable(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step)
end

function InitTrig_DYCF_005________________u()
    gg_trg_DYCF_005________________u = CreateTrigger()
    DisableTrigger(gg_trg_DYCF_005________________u)
    TriggerAddAction(gg_trg_DYCF_005________________u, Trig_DYCF_005________________uActions)
end

function Trig_Damge_000Func010Func001Func002Func003Func001Func003Func006T()
    EXPauseUnit((LoadUnitHandle(YDLOC, GetHandleId(GetExpiredTimer()), 0x458B7DE9)), false)
    JK_RouDam(LoadUnitHandle(YDLOC, GetHandleId(GetExpiredTimer()), 0xF047C7C9), 350.00, GetUnitX(LoadUnitHandle(YDLOC, GetHandleId(GetExpiredTimer()), 0x458B7DE9)), GetUnitY(LoadUnitHandle(YDLOC, GetHandleId(GetExpiredTimer()), 0x458B7DE9)), LoadReal(YDLOC, GetHandleId(GetExpiredTimer()), 0xE777B983), "", false, false, ATTACK_TYPE_NORMAL, DAMAGE_TYPE_NORMAL, WEAPON_TYPE_WHOKNOWS)
    FlushChildHashtable(YDLOC, GetHandleId(GetExpiredTimer()))
    DestroyTimer(GetExpiredTimer())
end

function Trig_Damge_000Actions()
    local ydl_timer = nil
    local ydl_group = nil
    local ydl_unit = nil
    local ydul_p = nil
    local ydl_localvar_step = LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xCFDE6C76)
    local d = nil
    local d1 = nil
    local cjlocgn_00000000 = nil
    local cjlocgn_00000001 = nil
    ydl_localvar_step = ydl_localvar_step + 3
    SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xCFDE6C76, ydl_localvar_step)
    SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xECE825E7, ydl_localvar_step)
    if ((GetUnitUserData(GetEventDamageSource()) == 456)) then
        EXSetEventDamage(((0.001) * 1.0))
        UnitDamageTarget(udg_WJYX[GetConvertedPlayerId(GetOwningPlayer(GetEventDamageSource()))], GetTriggerUnit(), GetEventDamage(), false, false, ATTACK_TYPE_MELEE, DAMAGE_TYPE_NORMAL, WEAPON_TYPE_WHOKNOWS)
        FlushChildHashtable(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step)
        ydl_timer = nil
        ydl_group = nil
        ydl_unit = nil
        do
            return
        end
    else
    end
    if ((GetTriggerUnit() == gg_unit_O001_0009)) then
        if ((((ATTACK_TYPE_NORMAL) == ConvertAttackType(EXGetEventDamageData(YDWEEventDamageData__EVENT_DAMAGE_DATA_ATTACK_TYPE))) == true)) then
            EXSetEventDamage(((1.00) * 1.0))
        else
            if ((IsUnitType(GetEventDamageSource(), UNIT_TYPE_HERO) == true)) then
                EXSetEventDamage((((GetUnitStateSwap(UNIT_STATE_MAX_LIFE, GetTriggerUnit()) * 0.023)) * 1.0))
            else
                EXSetEventDamage((((GetUnitStateSwap(UNIT_STATE_MAX_LIFE, GetTriggerUnit()) * 0.003)) * 1.0))
            end
            DisplayTimedTextToPlayer(GetLocalPlayer(), 0, 0, 0.50, YDWEGetPlayerColorString(Player(0), (("基地被攻击力:") .. (R2SW(GetUnitLifePercent(GetTriggerUnit()), 1, 1)) .. ("%"))))
        end
        FlushChildHashtable(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step)
        ydl_timer = nil
        ydl_group = nil
        ydl_unit = nil
        do
            return
        end
    else
    end
    DisableTrigger(GetTriggeringTrigger())
    SaveReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x6DD3A3AB, GetEventDamage())
    d = udg_WJYX[GetConvertedPlayerId(GetOwningPlayer(GetEventDamageSource()))]
    d1 = GetTriggerUnit()
    SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x6F96F2D2, GetConvertedPlayerId(GetOwningPlayer(GetEventDamageSource())))
    SavePlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946, ConvertedPlayer(LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x6F96F2D2)))
    if ((IsUnitEnemy((d1), Player(5)) == true)) then
        if ((GetEventDamageSource() == (d)) and ((0 ~= EXGetEventDamageData(YDWEEventDamageData__EVENT_DAMAGE_DATA_IS_ATTACK)) == true)) then
            if ((GetUnitAbilityLevelSwapped((0x53483032), GetEventDamageSource()) > 0)) then
                SaveInteger(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0xB962FC3D, (LoadInteger(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0xB962FC3D) + 1))
                if ((LoadInteger(YDHT, GetHandleId(GetOwningPlayer(d)), 0xB962FC3D) == 7)) then
                    SaveInteger(YDHT, GetHandleId(GetOwningPlayer(d)), 0xB962FC3D, 0)
                    DestroyEffect(AddSpecialEffect("Abilities\\Spells\\Orc\\WarStomp\\WarStompCaster.mdl", (GetUnitX(GetTriggerUnit()) + 0.00), (GetUnitY(GetTriggerUnit()) + 0.00)))
                    SaveReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xE777B983, (GetEventDamage() + (I2R(GetHeroStr(d, true)) * 7.00)))
                    EXPauseUnit((GetTriggerUnit()), true)
                    ydl_timer = CreateTimer()
                    SaveUnitHandle(YDLOC, GetHandleId(ydl_timer), 0xF047C7C9, GetEventDamageSource())
                    SaveUnitHandle(YDLOC, GetHandleId(ydl_timer), 0x458B7DE9, GetTriggerUnit())
                    SaveReal(YDLOC, GetHandleId(ydl_timer), 0xE777B983, LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xE777B983))
                    TimerStart(ydl_timer, 0.50, false, Trig_Damge_000Func010Func001Func002Func003Func001Func003Func006T)
                    YDWEJumpTimer(GetTriggerUnit(), 0, 0.00, 0.50, 0.01, 300)
                else
                end
            else
            end
            DestroyEffect(AddSpecialEffect("Attack.mdx", GetUnitX(GetTriggerUnit()), GetUnitY(GetTriggerUnit())))
            SaveReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x022B1B92, (150.00 + LoadReal(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x54BD8D0F)))
            ydl_group = CreateGroup()
            GroupEnumUnitsInRange(ydl_group, GetUnitX(GetTriggerUnit()), GetUnitY(GetTriggerUnit()), LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x022B1B92), nil)
            while true do
                ydl_unit = FirstOfGroup(ydl_group)
                if ydl_unit == nil then
                    break
                end
                GroupRemoveUnit(ydl_group, ydl_unit)
                if ((ydl_unit ~= GetTriggerUnit()) and (IsUnitAliveBJ(ydl_unit) == true) and (IsUnitEnemy(ydl_unit, LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)) == true)) then
                    UnitDamageTarget(udg_WJYX[GetConvertedPlayerId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))], ydl_unit, (LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x6DD3A3AB) * LoadReal(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0xDA717BFA)), false, false, ATTACK_TYPE_MELEE, DAMAGE_TYPE_SONIC, WEAPON_TYPE_WHOKNOWS)
                else
                end
            end
            DestroyGroup(ydl_group)
            SaveInteger(YDHT, GetHandleId(GetOwningPlayer(d)), 0xF8201AD6, (LoadInteger(YDHT, GetHandleId(GetOwningPlayer(d)), 0xF8201AD6) + 1))
            if ((LoadInteger(YDHT, GetHandleId(GetOwningPlayer(d)), 0xF8201AD6) == 10)) then
                SaveInteger(YDHT, GetHandleId(GetOwningPlayer(d)), 0xF8201AD6, 0)
                DestroyEffect(AddSpecialEffect("az_ui_qiege.mdx", (GetUnitX(GetTriggerUnit()) + 0.00), (GetUnitY(GetTriggerUnit()) + 0.00)))
                SaveReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x5A9E1FE8, (GetEventDamage() * udg_GLSH[GetConvertedPlayerId(GetOwningPlayer(d))]))
                if ((GetUnitAbilityLevelSwapped((0x53483133), GetEventDamageSource()) > 0) and (GetHeroLevel(GetTriggerUnit()) < 50)) then
                    SaveReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x5A9E1FE8, (LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x5A9E1FE8) + (GetUnitStateSwap(UNIT_STATE_MAX_LIFE, GetTriggerUnit()) * 0.01)))
                else
                end
            else
            end
        else
        end
    else
    end
    if ((GetEventDamageSource() == udg_WJYX[GetConvertedPlayerId(GetOwningPlayer(GetEventDamageSource()))]) and (IsUnitEnemy(GetTriggerUnit(), Player(0)) == true)) then
        SavePlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946, GetOwningPlayer(d))
        SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x6F96F2D2, GetConvertedPlayerId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)))
        SaveReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x02341A13, (GetUnitState(d1, ConvertUnitState(0x20)) * 0.02))
        SaveReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x814F563B, (1.00 + (0.02 * GetUnitState(d1, ConvertUnitState(0x20)))))
        SaveReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x8D052876, (LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x02341A13) / LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x814F563B)))
        if ((((DAMAGE_TYPE_UNKNOWN) == ConvertDamageType(EXGetEventDamageData(YDWEEventDamageData__EVENT_DAMAGE_DATA_DAMAGE_TYPE))) == false)) then
            SaveReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xA99320FA, GetUnitX(d1))
            SaveReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xFDF65382, GetUnitY(d1))
            SaveReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB259B269, 1.00)
            SaveReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB259B269, (LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB259B269) + LoadReal(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0xB00B5016)))
            SaveReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x6DD3A3AB, (GetEventDamage() + ((LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x5A9E1FE8) + LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xE777B983)) + LoadReal(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x5C7AF36C))))
            if (((0 ~= EXGetEventDamageData(YDWEEventDamageData__EVENT_DAMAGE_DATA_IS_ATTACK)) == true)) then
                SaveReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x645CA970, (LoadReal(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x25495654) + 0.00))
                SaveReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x020DC1BA, (LoadReal(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x09DB3E68) + 0.00))
                SaveReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x6DD3A3AB, (LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x6DD3A3AB) + (GetEventDamage() * LoadReal(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0xEEEA13B0))))
                SaveReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x6DD3A3AB, (LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x6DD3A3AB) + (I2R(GetHeroAgi(d, true)) / 2.00)))
                SaveReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x6DD3A3AB, (LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x6DD3A3AB) + (LoadReal(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0xACF05DFE) * LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x6DD3A3AB))))
                if ((GetUnitAbilityLevelSwapped((0x53483037), GetEventDamageSource()) == 0) and (GetRandomReal(0, 1) <= RMinBJ(LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x645CA970), 0.25))) then
                    SaveReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB259B269, (LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB259B269) + (LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x020DC1BA) / 1.00)))
                    SaveReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xE777B983, (LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x6DD3A3AB) * LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB259B269)))
                    SaveReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xA9F6B5BA, (LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xE777B983) - LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x6DD3A3AB)))
                    SaveReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x6DD3A3AB, (LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x6DD3A3AB) + (LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xA9F6B5BA) * 1.00)))
                    DestroyEffect(AddSpecialEffect("az_ui_baoji.mdx", GetUnitX(d1), GetUnitY(d1)))
                    SetUnitAnimationWithRarity(d, "attack", RARITY_RARE)
                else
                end
                if ((GetUnitAbilityLevelSwapped((0x53483038), GetEventDamageSource()) > 0)) then
                    if ((LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x8D052876) <= 0.90)) then
                        SaveReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x6DD3A3AB, (LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x6DD3A3AB) + (GetEventDamage() * 0.35)))
                    else
                    end
                else
                end
                SaveReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x59E18EE2, LoadReal(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x8B1CE21E))
                SaveReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x596F297F, (GetEventDamage() * LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x59E18EE2)))
                SaveReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x596F297F, (LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x596F297F) + (I2R(GetHeroAgi(d, true)) / 2.00)))
                JK_SX_Change(d, UNIT_STATE_LIFE, 1, LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x596F297F))
                if ((GetUnitAbilityLevelSwapped((0x53483131), GetEventDamageSource()) > 0)) then
                    SaveReal(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0xD9748BB5, LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x596F297F))
                    SaveReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x6DD3A3AB, (LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x6DD3A3AB) + LoadReal(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0xD9748BB5)))
                else
                end
                if ((GetUnitAbilityLevelSwapped((0x53483131), GetEventDamageSource()) > 0)) then
                    if ((GetRandomReal(0, 1) <= 0.10)) then
                        SaveReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x6DD3A3AB, (LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x6DD3A3AB) * 2.00))
                        cjlocgn_00000000 = CreateUnit(GetOwningPlayer(d), (0x65303030), GetUnitX(d), GetUnitY(d), GetUnitFacing(d))
                        DzSetUnitModel(cjlocgn_00000000, (EXExecuteScript("(require'jass.slk').unit[" .. I2S(GetUnitTypeId(d)) .. "].file")))
                        SetUnitVertexColor(cjlocgn_00000000, 0, 0, 0, 190)
                        SetUnitAnimationWithRarity(cjlocgn_00000000, "attack", RARITY_FREQUENT)
                        UnitApplyTimedLifeBJ(1.00, 0x42726169, cjlocgn_00000000)
                        cjlocgn_00000000 = nil
                    else
                    end
                else
                end
            else
                if ((IsUnitType(GetTriggerUnit(), UNIT_TYPE_MAGIC_IMMUNE) == true)) then
                    SaveReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x6DD3A3AB, 0.01)
                else
                    SaveReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x50AD9C63, LoadReal(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x508FB3EA))
                    SaveReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xDFF064FB, LoadReal(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x340B6D5D))
                    SaveReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xFC2F4609, LoadReal(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x1514A9DB))
                    SaveReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x67F0747A, LoadReal(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x49E8B4D6))
                    if ((LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x67F0747A) > 0.00)) then
                        SaveReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x596F297F, (GetEventDamage() * LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x67F0747A)))
                        JK_SX_Change(d, UNIT_STATE_LIFE, 1, LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x596F297F))
                    else
                    end
                    SaveReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x6DD3A3AB, (LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x6DD3A3AB) + (GetEventDamage() * LoadReal(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x9691B869))))
                    if ((GetRandomReal(0, 1) <= (LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xDFF064FB) / 1.00))) then
                        SaveReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB259B269, (LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB259B269) + LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xFC2F4609)))
                        SaveReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x6DD3A3AB, (LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x6DD3A3AB) * (LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB259B269) + LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x50AD9C63))))
                    else
                        SaveReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x6DD3A3AB, (LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x6DD3A3AB) * (1.00 + LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x50AD9C63))))
                    end
                    SaveReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x6DD3A3AB, (LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x6DD3A3AB) + (I2R(GetHeroInt(d, true)) / 100.00)))
                    SaveReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x6DD3A3AB, (LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x6DD3A3AB) - (LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x6DD3A3AB) * (LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x8D052876) - LoadReal(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x8B470E4E)))))
                    if ((UnitHasBuffBJ(GetTriggerUnit(), 0x6D666C79) == true)) then
                        SaveReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x6DD3A3AB, (LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x6DD3A3AB) + (LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x6DD3A3AB) * 0.33)))
                    else
                    end
                    if ((GetUnitAbilityLevelSwapped((0x53483136), GetEventDamageSource()) == 0)) then
                        if ((GetRandomReal(0, 1) <= 0.11)) then
                            SaveReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x6DD3A3AB, (LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x6DD3A3AB) + (LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x6DD3A3AB) * 0.33)))
                        else
                        end
                    else
                    end
                end
            end
            SaveReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x6DD3A3AB, (LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x6DD3A3AB) * (1.00 - (0.04 * I2R(LoadInteger(YDHT, GetHandleId(Player(PLAYER_NEUTRAL_AGGRESSIVE)), 0xB43FB128))))))
        else
            SaveReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x6DD3A3AB, GetEventDamage())
        end
        if ((GetTriggerUnit() == LoadUnitHandle(YDHT, GetHandleId(Player(7)), 0x944CCEB0))) then
            EXSetEventDamage(((RMinBJ((GetUnitStateSwap(UNIT_STATE_MAX_LIFE, GetTriggerUnit()) * (0.15 - (0.01 * I2R(LoadInteger(YDHT, GetHandleId(Player(PLAYER_NEUTRAL_AGGRESSIVE)), 0xB43FB128))))), LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x6DD3A3AB))) * 1.0))
        else
            EXSetEventDamage(((LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x6DD3A3AB)) * 1.0))
        end
        cjlocgn_00000001 = R2SW(LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x6DD3A3AB), 0, 0)
        SaveReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x4AF79D7A, GetUnitY(GetTriggerUnit()))
        if ((LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x6DD3A3AB) >= 1000000000.00)) then
            SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2970F80D, (StringLength((cjlocgn_00000001)) - 10))
        else
            if ((LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x6DD3A3AB) >= 100000.00)) then
                SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2970F80D, (StringLength((cjlocgn_00000001)) - 6))
            else
                SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2970F80D, (StringLength((cjlocgn_00000001)) - 2))
            end
        end
        ydul_p = 1
        while true do
            if ydul_p > LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2970F80D) then
                break
            end
            SaveReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2D1E4992 + (ydul_p), ((I2R(ydul_p) - 1.00) * 35.00))
            SaveReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x49D14A0C, (GetUnitX(GetTriggerUnit()) + (CosBJ(360.00) * LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2D1E4992 + (ydul_p)))))
            SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2B0A6845 + (ydul_p), S2I(SubStringBJ((cjlocgn_00000001), ydul_p, ydul_p)))
            if (((0 ~= EXGetEventDamageData(YDWEEventDamageData__EVENT_DAMAGE_DATA_IS_ATTACK)) ~= true)) then
                DestroyEffect(AddSpecialEffect(udg_pf_string1[LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2B0A6845 + (ydul_p))], LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x49D14A0C), LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x4AF79D7A)))
                if ((ydul_p == LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2970F80D))) then
                    SaveReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2D1E4992 + ((ydul_p + 1)), (I2R(ydul_p) * 35.00))
                    SaveReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x49D14A0C, (GetUnitX(GetTriggerUnit()) + (CosBJ(360.00) * LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2D1E4992 + ((ydul_p + 1))))))
                    if ((LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x6DD3A3AB) >= 1000000000.00)) then
                        DestroyEffect(AddSpecialEffect(udg_pf_string1[11], LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x49D14A0C), LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x4AF79D7A)))
                    else
                        if ((LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x6DD3A3AB) >= 100000.00)) then
                            DestroyEffect(AddSpecialEffect(udg_pf_string1[10], LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x49D14A0C), LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x4AF79D7A)))
                        else
                        end
                    end
                else
                end
            else
                DestroyEffect(AddSpecialEffect(udg_pf_string[LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2B0A6845 + (ydul_p))], LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x49D14A0C), LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x4AF79D7A)))
                if ((ydul_p == LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2970F80D))) then
                    SaveReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2D1E4992 + ((ydul_p + 1)), (I2R(ydul_p) * 35.00))
                    SaveReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x49D14A0C, (GetUnitX(GetTriggerUnit()) + (CosBJ(360.00) * LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2D1E4992 + ((ydul_p + 1))))))
                    if ((LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x6DD3A3AB) >= 1000000000.00)) then
                        DestroyEffect(AddSpecialEffect(udg_pf_string[11], LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x49D14A0C), LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x4AF79D7A)))
                    else
                        if ((LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x6DD3A3AB) >= 100000.00)) then
                            DestroyEffect(AddSpecialEffect(udg_pf_string[10], LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x49D14A0C), LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x4AF79D7A)))
                        else
                        end
                    end
                else
                end
            end
            ydul_p = ydul_p + 1
        end
        cjlocgn_00000001 = nil
        d = nil
        d1 = nil
    else
        if ((GetTriggerUnit() == udg_WJYX[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))])) then
            SavePlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946, GetOwningPlayer(GetTriggerUnit()))
            SaveReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x9F07BF14, (LoadReal(YDHT, GetHandleId(GetOwningPlayer(GetTriggerUnit())), 0xFB8FACBD) + 0.00))
            SaveReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x9F07BF14, RMinBJ(LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x9F07BF14), 0.75))
            if ((GetRandomReal(0, 1) <= LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x9F07BF14))) then
                EXSetEventDamage(((1.00) * 1.0))
                if ((GetUnitAbilityLevelSwapped((0x53483034), d1) > 0)) then
                    AdjustPlayerStateBJ((10 + LoadInteger(YDHT, GetHandleId(Player(PLAYER_NEUTRAL_AGGRESSIVE)), 0xB43FB128)), GetOwningPlayer(GetTriggerUnit()), PLAYER_STATE_RESOURCE_GOLD)
                    YDWETimerDestroyEffect(0.00, AddSpecialEffectTarget("Abilities\\Spells\\Orc\\SpiritLink\\SpiritLinkZapTarget.mdl", GetTriggerUnit(), "chest"))
                else
                end
            else
                SaveReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x5AF44D77, (LoadReal(YDHT, GetHandleId(GetOwningPlayer(GetTriggerUnit())), 0x11767CA1) + 0.00))
                SaveReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x5AF44D77, RMinBJ(LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x5AF44D77), 0.90))
                SaveReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xF3FE330A, (LoadReal(YDHT, GetHandleId(GetOwningPlayer(GetTriggerUnit())), 0xF11499E9) + 0.00))
                SaveReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xF3FE330A, RMinBJ(LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xF3FE330A), 0.75))
                SaveReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x28E98DD6, (GetEventDamage() * (1.00 - LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x5AF44D77))))
                SaveReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x28E98DD6, (LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x28E98DD6) - I2R(IMinBJ((GetHeroStr(GetTriggerUnit(), true) // 10), 3000000))))
                SaveReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x28E98DD6, (LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x28E98DD6) * ((I2R((LoadInteger(YDHT, GetHandleId(Player(PLAYER_NEUTRAL_AGGRESSIVE)), 0xB43FB128) - 1)) * 0.15) + 1.00)))
                if ((GetRandomReal(0, 1) <= LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xF3FE330A))) then
                    SaveReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x28E98DD6, (LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x28E98DD6) * 0.50))
                else
                end
                if (((0 ~= EXGetEventDamageData(YDWEEventDamageData__EVENT_DAMAGE_DATA_IS_ATTACK)) == true)) then
                    SaveReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x28E98DD6, (LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x28E98DD6) - LoadReal(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x77194C38)))
                else
                    SaveReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x28E98DD6, (LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x28E98DD6) - LoadReal(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0xD4E85C3E)))
                end
                EXSetEventDamage(((LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x28E98DD6)) * 1.0))
            end
            d = nil
            d1 = nil
        else
        end
    end
    d = nil
    d1 = nil
    EnableTrigger(GetTriggeringTrigger())
    FlushChildHashtable(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step)
    ydl_timer = nil
    ydl_group = nil
    ydl_unit = nil
end

function InitTrig_Damge_000()
    gg_trg_Damge_000 = CreateTrigger()
    JYDamageEvent(gg_trg_Damge_000)
    TriggerAddAction(gg_trg_Damge_000, Trig_Damge_000Actions)
end

function Trig_Attack_001Conditions()
    do
        return ((IsUnitType(GetAttacker(), UNIT_TYPE_HERO) == true) and (IsUnitInForce(GetAttacker(), udg_ZXWJZ) == true))
    end
end

function Trig_Attack_001Actions()
    if ((GetUnitAbilityLevelSwapped((0x53483132), GetAttacker()) > 0)) then
        if ((GetRandomReal(0, 1) <= 0.10)) then
            AdjustPlayerStateBJ(GetHeroLevel(GetAttacker()), GetOwningPlayer(GetAttacker()), PLAYER_STATE_RESOURCE_GOLD)
        else
        end
    else
    end
end

function InitTrig_Attack_001()
    gg_trg_Attack_001 = CreateTrigger()
    TriggerRegisterAnyUnitEventBJ(gg_trg_Attack_001, EVENT_PLAYER_UNIT_ATTACKED)
    TriggerAddCondition(gg_trg_Attack_001, Condition(Trig_Attack_001Conditions))
    TriggerAddAction(gg_trg_Attack_001, Trig_Attack_001Actions)
end

function Trig_Death_002Func002Func001Func001Func002Func001Func002Func009A()
    RemoveUnit(GetEnumUnit())
end

function Trig_Death_002Func002Func001Func001Func002Func001Func002Func018T()
    ReviveHero(LoadUnitHandle(YDLOC, GetHandleId(GetExpiredTimer()), 0x458B7DE9), -140.00, 270.00, false)
    PauseUnitBJ(false, LoadUnitHandle(YDHT, GetHandleId(GetOwningPlayer(LoadUnitHandle(YDLOC, GetHandleId(GetExpiredTimer()), 0x458B7DE9))), 0xFB35C934))
    PauseUnitBJ(false, LoadUnitHandle(YDHT, GetHandleId(GetOwningPlayer(LoadUnitHandle(YDLOC, GetHandleId(GetExpiredTimer()), 0x458B7DE9))), 0xED062940))
    SetUnitManaPercentBJ(LoadUnitHandle(YDLOC, GetHandleId(GetExpiredTimer()), 0x458B7DE9), 100)
    JK_CameraTranslation(GetOwningPlayer(LoadUnitHandle(YDLOC, GetHandleId(GetExpiredTimer()), 0x458B7DE9)), GetUnitX(LoadUnitHandle(YDLOC, GetHandleId(GetExpiredTimer()), 0x458B7DE9)), GetUnitY(LoadUnitHandle(YDLOC, GetHandleId(GetExpiredTimer()), 0x458B7DE9)), 0.00)
    DestroyTimerDialog(LoadTimerDialogHandle(YDLOC, GetHandleId(GetExpiredTimer()), 0x5528DE7A))
    DestroyTimer(LoadTimerHandle(YDLOC, GetHandleId(GetExpiredTimer()), 0x0294D446))
    FlushChildHashtable(YDLOC, GetHandleId(GetExpiredTimer()))
    DestroyTimer(GetExpiredTimer())
end

function Trig_Death_002Func002Func001Func001Func003Func001Func002Func008A()
    DisplayTextToPlayer(GetEnumPlayer(), 0, 0, "基地拥有30秒无敌时间，请火速救援！")
end

function Trig_Death_002Func002Func001Func001Func003Func001Func002Func009T()
    SetUnitInvulnerable(gg_unit_O001_0009, false)
    FlushChildHashtable(YDLOC, GetHandleId(GetExpiredTimer()))
    DestroyTimer(GetExpiredTimer())
end

function Trig_Death_002Func005Func001Func004Func001Func002Func005T()
    IssueNeutralImmediateOrderById(GetOwningPlayer(LoadUnitHandle(YDLOC, GetHandleId(GetExpiredTimer()), 0xBFD17F9F)), (LoadUnitHandle(YDHT, ((GetHandleId((GetOwningPlayer(LoadUnitHandle(YDLOC, GetHandleId(GetExpiredTimer()), 0xBFD17F9F)))))), (StringHash("03NPC")))), String2OrderIdBJ((EXExecuteScript("(require'jass.slk').ability[" .. I2S(LoadInteger(YDLOC, GetHandleId(GetExpiredTimer()), 0xF374F3BD + (LoadInteger(YDHT, GetHandleId(GetOwningPlayer(LoadUnitHandle(YDLOC, GetHandleId(GetExpiredTimer()), 0xBFD17F9F))), 0xD0B486C5)))) .. "].DataF1"))))
    FlushChildHashtable(YDLOC, GetHandleId(GetExpiredTimer()))
    DestroyTimer(GetExpiredTimer())
end

function Trig_Death_002Func005Func001Func006Func001Func002Func003Func002Func003Func007T()
    SelectUnitForPlayerSingle((LoadUnitHandle(YDHT, ((GetHandleId((GetOwningPlayer(LoadUnitHandle(YDLOC, GetHandleId(GetExpiredTimer()), 0xBFD17F9F)))))), (StringHash("05NPC")))), LoadPlayerHandle(YDLOC, GetHandleId(GetExpiredTimer()), 0x48656946))
    FlushChildHashtable(YDLOC, GetHandleId(GetExpiredTimer()))
    DestroyTimer(GetExpiredTimer())
end

function Trig_Death_002Func005Func001Func007Func001Func003A()
    SavePlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0x48656946, GetEnumPlayer())
    if ((GetRandomInt(1, 2) == 1)) then
        SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0xB2B2BF95, (S2I(EXExecuteScript("(require'jass.slk').unit[" .. I2S(GetUnitTypeId(GetTriggerUnit())) .. "].goldcost")) + 0))
    else
        SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0xB2B2BF95, (S2I(EXExecuteScript("(require'jass.slk').unit[" .. I2S(GetUnitTypeId(GetTriggerUnit())) .. "].goldcost")) + 4))
    end
    CreateItem(ChooseRandomItemExBJ(LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0xB2B2BF95), ITEM_TYPE_ANY), (GetRectCenterX(LoadRectHandle(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0x48656946)), 0x4D25E2F4)) + 250.00), GetRectCenterY(LoadRectHandle(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0x48656946)), 0x4D25E2F4)))
    DisplayTimedTextToPlayer(GetLocalPlayer(), 0, 0, 8.00, "Boss已死亡,Boss奖励分发在各位的练功房请注意查收")
    RemoveUnit(LoadUnitHandle(YDHT, GetHandleId(Player(7)), 0x3ED22873))
    if ((GetRandomReal(0, 1.50) <= (0.10 + (0.02 * I2R(GetPlayerTechCountSimple(0x52303044, Player(5))))))) then
        SavePlayerHandle(YDHT, GetHandleId(Player(PLAYER_NEUTRAL_AGGRESSIVE)), 0x119572DE, GetEnumPlayer())
        SaveStr(YDLOC, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0x2D1FF186, "BOSSTJ")
        SaveStr(YDHT, GetHandleId(Player(PLAYER_NEUTRAL_AGGRESSIVE)), 0x0DCA2EC5, LoadStr(YDLOC, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0x2D1FF186))
        SaveInteger(YDHT, GetHandleId(Player(PLAYER_NEUTRAL_AGGRESSIVE)), 0x27A5056E, GetUnitPointValue(GetTriggerUnit()))
        SaveStr(YDHT, GetHandleId(Player(PLAYER_NEUTRAL_AGGRESSIVE)), 0xF5CF51D7, "1")
        SaveInteger(YDHT, GetHandleId(Player(PLAYER_NEUTRAL_AGGRESSIVE)), 0x20482DE3, 30)
        SaveStr(YDHT, GetHandleId(Player(PLAYER_NEUTRAL_AGGRESSIVE)), 0xF99E56C4, "6")
        TriggerExecute(gg_trg_DzApi_______u)
        DisplayTimedTextToPlayer(GetEnumPlayer(), 0, 0, 8.00, (("激活怪物图鉴==") .. (GetUnitName(GetTriggerUnit())) .. ("==")))
        SaveBoolean(YDHT, StringHash((GetPlayerName(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xECE825E7), 0x48656946)))), StringHash(((("6y") .. ("1") .. (I2S(GetUnitPointValue(GetTriggerUnit())))))), (true))
    else
    end
end

function Trig_Death_002Func006Func001Func004Func001Func003Func004Func003Func008T()
    local ydul_A = nil
    SaveReal(YDLOC, GetHandleId(GetExpiredTimer()), 0x312C4181, (LoadReal(YDLOC, GetHandleId(GetExpiredTimer()), 0x312C4181) + 0.02))
    SaveReal(YDLOC, GetHandleId(GetExpiredTimer()), 0xA99320FA + (0), GetUnitX(LoadUnitHandle(YDLOC, GetHandleId(GetExpiredTimer()), 0x911D5DC2)))
    SaveReal(YDLOC, GetHandleId(GetExpiredTimer()), 0xFDF65382 + (0), GetUnitY(LoadUnitHandle(YDLOC, GetHandleId(GetExpiredTimer()), 0x911D5DC2)))
    SaveReal(YDLOC, GetHandleId(GetExpiredTimer()), 0xA99320FA + (3), GetUnitX(LoadUnitHandle(YDLOC, GetHandleId(GetExpiredTimer()), 0xD2A88040)))
    SaveReal(YDLOC, GetHandleId(GetExpiredTimer()), 0xFDF65382 + (3), GetUnitY(LoadUnitHandle(YDLOC, GetHandleId(GetExpiredTimer()), 0xD2A88040)))
    SaveReal(YDLOC, GetHandleId(GetExpiredTimer()), 0x8B1FFFFC + (2), 800.00)
    SaveReal(YDLOC, GetHandleId(GetExpiredTimer()), 0x8B1FFFFC + (3), 0.00)
    ydul_A = 0
    while true do
        if ydul_A > 2 then
            break
        end
        SaveReal(YDLOC, GetHandleId(GetExpiredTimer()), 0x9B1A6867, SquareRoot((Pow((LoadReal(YDLOC, GetHandleId(GetExpiredTimer()), 0xA99320FA + (ydul_A)) - LoadReal(YDLOC, GetHandleId(GetExpiredTimer()), 0xA99320FA + ((ydul_A + 1)))), 2.00) + Pow((LoadReal(YDLOC, GetHandleId(GetExpiredTimer()), 0xFDF65382 + (ydul_A)) - LoadReal(YDLOC, GetHandleId(GetExpiredTimer()), 0xFDF65382 + ((ydul_A + 1)))), 2.00))))
        SaveReal(YDLOC, GetHandleId(GetExpiredTimer()), 0xC1B0964C, Atan2BJ((LoadReal(YDLOC, GetHandleId(GetExpiredTimer()), 0xFDF65382 + ((ydul_A + 1))) - LoadReal(YDLOC, GetHandleId(GetExpiredTimer()), 0xFDF65382 + (ydul_A))), (LoadReal(YDLOC, GetHandleId(GetExpiredTimer()), 0xA99320FA + ((ydul_A + 1))) - LoadReal(YDLOC, GetHandleId(GetExpiredTimer()), 0xA99320FA + (ydul_A)))))
        SaveReal(YDLOC, GetHandleId(GetExpiredTimer()), 0x2392447A + (ydul_A), (LoadReal(YDLOC, GetHandleId(GetExpiredTimer()), 0xA99320FA + (ydul_A)) + ((LoadReal(YDLOC, GetHandleId(GetExpiredTimer()), 0x312C4181) * LoadReal(YDLOC, GetHandleId(GetExpiredTimer()), 0x9B1A6867)) * CosBJ(LoadReal(YDLOC, GetHandleId(GetExpiredTimer()), 0xC1B0964C)))))
        SaveReal(YDLOC, GetHandleId(GetExpiredTimer()), 0xB0897302 + (ydul_A), (LoadReal(YDLOC, GetHandleId(GetExpiredTimer()), 0xFDF65382 + (ydul_A)) + ((LoadReal(YDLOC, GetHandleId(GetExpiredTimer()), 0x312C4181) * LoadReal(YDLOC, GetHandleId(GetExpiredTimer()), 0x9B1A6867)) * SinBJ(LoadReal(YDLOC, GetHandleId(GetExpiredTimer()), 0xC1B0964C)))))
        SaveReal(YDLOC, GetHandleId(GetExpiredTimer()), 0xF9472E2C + (ydul_A), (LoadReal(YDLOC, GetHandleId(GetExpiredTimer()), 0x8B1FFFFC + (ydul_A)) + (LoadReal(YDLOC, GetHandleId(GetExpiredTimer()), 0x312C4181) * (LoadReal(YDLOC, GetHandleId(GetExpiredTimer()), 0x8B1FFFFC + ((ydul_A + 1))) - LoadReal(YDLOC, GetHandleId(GetExpiredTimer()), 0x8B1FFFFC + (ydul_A))))))
        ydul_A = ydul_A + 1
    end
    ydul_A = 0
    while true do
        if ydul_A > 1 then
            break
        end
        SaveReal(YDLOC, GetHandleId(GetExpiredTimer()), 0x9B1A6867, SquareRoot((Pow((LoadReal(YDLOC, GetHandleId(GetExpiredTimer()), 0x2392447A + (ydul_A)) - LoadReal(YDLOC, GetHandleId(GetExpiredTimer()), 0x2392447A + ((ydul_A + 1)))), 2.00) + Pow((LoadReal(YDLOC, GetHandleId(GetExpiredTimer()), 0xB0897302 + (ydul_A)) - LoadReal(YDLOC, GetHandleId(GetExpiredTimer()), 0xB0897302 + ((ydul_A + 1)))), 2.00))))
        SaveReal(YDLOC, GetHandleId(GetExpiredTimer()), 0xC1B0964C, Atan2BJ((LoadReal(YDLOC, GetHandleId(GetExpiredTimer()), 0xB0897302 + ((ydul_A + 1))) - LoadReal(YDLOC, GetHandleId(GetExpiredTimer()), 0xB0897302 + (ydul_A))), (LoadReal(YDLOC, GetHandleId(GetExpiredTimer()), 0x2392447A + ((ydul_A + 1))) - LoadReal(YDLOC, GetHandleId(GetExpiredTimer()), 0x2392447A + (ydul_A)))))
        SaveReal(YDLOC, GetHandleId(GetExpiredTimer()), 0x41713DA3 + (ydul_A), (LoadReal(YDLOC, GetHandleId(GetExpiredTimer()), 0x2392447A + (ydul_A)) + ((LoadReal(YDLOC, GetHandleId(GetExpiredTimer()), 0x312C4181) * LoadReal(YDLOC, GetHandleId(GetExpiredTimer()), 0x9B1A6867)) * CosBJ(LoadReal(YDLOC, GetHandleId(GetExpiredTimer()), 0xC1B0964C)))))
        SaveReal(YDLOC, GetHandleId(GetExpiredTimer()), 0x71CA3531 + (ydul_A), (LoadReal(YDLOC, GetHandleId(GetExpiredTimer()), 0xB0897302 + (ydul_A)) + ((LoadReal(YDLOC, GetHandleId(GetExpiredTimer()), 0x312C4181) * LoadReal(YDLOC, GetHandleId(GetExpiredTimer()), 0x9B1A6867)) * SinBJ(LoadReal(YDLOC, GetHandleId(GetExpiredTimer()), 0xC1B0964C)))))
        SaveReal(YDLOC, GetHandleId(GetExpiredTimer()), 0xA0136A6F + (ydul_A), (LoadReal(YDLOC, GetHandleId(GetExpiredTimer()), 0xF9472E2C + (ydul_A)) + (LoadReal(YDLOC, GetHandleId(GetExpiredTimer()), 0x312C4181) * (LoadReal(YDLOC, GetHandleId(GetExpiredTimer()), 0xF9472E2C + ((ydul_A + 1))) - LoadReal(YDLOC, GetHandleId(GetExpiredTimer()), 0xF9472E2C + (ydul_A))))))
        ydul_A = ydul_A + 1
    end
    SaveReal(YDLOC, GetHandleId(GetExpiredTimer()), 0xC1B0964C, Atan2BJ((LoadReal(YDLOC, GetHandleId(GetExpiredTimer()), 0x71CA3531 + (1)) - LoadReal(YDLOC, GetHandleId(GetExpiredTimer()), 0x71CA3531 + (0))), (LoadReal(YDLOC, GetHandleId(GetExpiredTimer()), 0x41713DA3 + (1)) - LoadReal(YDLOC, GetHandleId(GetExpiredTimer()), 0x41713DA3 + (0)))))
    SaveReal(YDLOC, GetHandleId(GetExpiredTimer()), 0x9B1A6867, SquareRoot((Pow((LoadReal(YDLOC, GetHandleId(GetExpiredTimer()), 0x41713DA3 + (0)) - LoadReal(YDLOC, GetHandleId(GetExpiredTimer()), 0x41713DA3 + (1))), 2.00) + Pow((LoadReal(YDLOC, GetHandleId(GetExpiredTimer()), 0x71CA3531 + (0)) - LoadReal(YDLOC, GetHandleId(GetExpiredTimer()), 0x71CA3531 + (1))), 2.00))))
    SaveReal(YDLOC, GetHandleId(GetExpiredTimer()), 0xA99320FA, (LoadReal(YDLOC, GetHandleId(GetExpiredTimer()), 0x41713DA3 + (0)) + ((LoadReal(YDLOC, GetHandleId(GetExpiredTimer()), 0x312C4181) * LoadReal(YDLOC, GetHandleId(GetExpiredTimer()), 0x9B1A6867)) * CosBJ(LoadReal(YDLOC, GetHandleId(GetExpiredTimer()), 0xC1B0964C)))))
    SaveReal(YDLOC, GetHandleId(GetExpiredTimer()), 0xFDF65382, (LoadReal(YDLOC, GetHandleId(GetExpiredTimer()), 0x71CA3531 + (0)) + ((LoadReal(YDLOC, GetHandleId(GetExpiredTimer()), 0x312C4181) * LoadReal(YDLOC, GetHandleId(GetExpiredTimer()), 0x9B1A6867)) * SinBJ(LoadReal(YDLOC, GetHandleId(GetExpiredTimer()), 0xC1B0964C)))))
    SaveReal(YDLOC, GetHandleId(GetExpiredTimer()), 0x8B1FFFFC, (LoadReal(YDLOC, GetHandleId(GetExpiredTimer()), 0xA0136A6F + (0)) + (LoadReal(YDLOC, GetHandleId(GetExpiredTimer()), 0x312C4181) * (LoadReal(YDLOC, GetHandleId(GetExpiredTimer()), 0xA0136A6F + (1)) - LoadReal(YDLOC, GetHandleId(GetExpiredTimer()), 0xA0136A6F + (0))))))
    EXSetEffectXY(LoadEffectHandle(YDLOC, GetHandleId(GetExpiredTimer()), 0x62C50DE6), LoadReal(YDLOC, GetHandleId(GetExpiredTimer()), 0xA99320FA), LoadReal(YDLOC, GetHandleId(GetExpiredTimer()), 0xFDF65382))
    EXSetEffectZ(LoadEffectHandle(YDLOC, GetHandleId(GetExpiredTimer()), 0x62C50DE6), LoadReal(YDLOC, GetHandleId(GetExpiredTimer()), 0x8B1FFFFC))
    if ((LoadReal(YDLOC, GetHandleId(GetExpiredTimer()), 0x312C4181) >= 1.00)) then
        EXSetEffectXY(LoadEffectHandle(YDLOC, GetHandleId(GetExpiredTimer()), 0x62C50DE6), GetUnitX(LoadUnitHandle(YDLOC, GetHandleId(GetExpiredTimer()), 0xD2A88040)), GetUnitY(LoadUnitHandle(YDLOC, GetHandleId(GetExpiredTimer()), 0xD2A88040)))
        EXSetEffectZ(LoadEffectHandle(YDLOC, GetHandleId(GetExpiredTimer()), 0x62C50DE6), (GetUnitFlyHeight(LoadUnitHandle(YDLOC, GetHandleId(GetExpiredTimer()), 0xD2A88040)) + 50.00))
        SaveUnitHandle(YDLOC, GetHandleId(GetExpiredTimer()), 0x911D5DC2, nil)
        SaveUnitHandle(YDLOC, GetHandleId(GetExpiredTimer()), 0xD2A88040, nil)
        DestroyEffect(LoadEffectHandle(YDLOC, GetHandleId(GetExpiredTimer()), 0x62C50DE6))
        FlushChildHashtable(YDLOC, GetHandleId(GetExpiredTimer()))
        DestroyTimer(GetExpiredTimer())
    else
    end
end

function Trig_Death_002Func007Func001Func004Func001Func003Func002Func007A()
    if (((LoadInteger(YDHT, ((GetHandleId((Player(PLAYER_NEUTRAL_AGGRESSIVE))))), (552200))) > (LoadInteger(YDHT, ((GetHandleId((GetEnumPlayer())))), (333))))) then
        SaveInteger(YDHT, ((GetHandleId((GetEnumPlayer())))), (333), (((LoadInteger(YDHT, ((GetHandleId((Player(PLAYER_NEUTRAL_AGGRESSIVE))))), (552200))) + 0)))
        DzAPI_Map_StoreInteger(GetEnumPlayer(), "TC", (LoadInteger(YDHT, ((GetHandleId((GetEnumPlayer())))), (333))))
    else
    end
end

function Trig_Death_002Actions()
    local ydl_group = nil
    local ydl_unit = nil
    local ydl_timer = nil
    local ydl_triggerstep = nil
    local ydl_trigger = nil
    local ydul_a = nil
    local ydul_p = nil
    local ydul_b = nil
    local ydl_localvar_step = LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xCFDE6C76)
    local cjlocgn_00000000 = nil
    local cjlocgn_00000001 = nil
    local cjlocgn_00000002 = nil
    ydl_localvar_step = ydl_localvar_step + 3
    SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xCFDE6C76, ydl_localvar_step)
    SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xECE825E7, ydl_localvar_step)
    if ((IsUnitInForce(GetTriggerUnit(), udg_ZXWJZ) == true)) then
        if ((IsUnitType(GetTriggerUnit(), UNIT_TYPE_HERO) == true)) then
            if ((IsUnitIllusionBJ(GetTriggerUnit()) == false)) then
                SavePlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946, GetOwningPlayer(GetTriggerUnit()))
                RemoveUnit(LoadUnitHandle(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x9D4D1A01))
                RemoveUnit(LoadUnitHandle(YDHT, GetHandleId(GetOwningPlayer(GetTriggerUnit())), 0xE67FD1EF))
                RemoveUnit(LoadUnitHandle(YDHT, GetHandleId(GetOwningPlayer(GetTriggerUnit())), 0x5F9850BF))
                PauseUnitBJ(true, LoadUnitHandle(YDHT, GetHandleId(GetOwningPlayer(GetTriggerUnit())), 0xFB35C934))
                PauseUnitBJ(true, LoadUnitHandle(YDHT, GetHandleId(GetOwningPlayer(GetTriggerUnit())), 0xED062940))
                SaveRectHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x007BA3BC, YDWEGetRect(udg_LGFZB_x[GetConvertedPlayerId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))], udg_LGFZB_y[GetConvertedPlayerId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))], 1600.00, 1600.00))
                SaveGroupHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x7B2D08E8, YDWEGetUnitsInRectOfPlayerNull(LoadRectHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x007BA3BC), Player(7)))
                ForGroupBJ(LoadGroupHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x7B2D08E8), Trig_Death_002Func002Func001Func001Func002Func001Func002Func009A)
                GroupClear(LoadGroupHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x7B2D08E8))
                DestroyGroup(LoadGroupHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x7B2D08E8))
                RemoveRect(LoadRectHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x007BA3BC))
                SelectUnitForPlayerSingle(gg_unit_O001_0009, LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))
                SelectUnitRemoveForPlayer(gg_unit_O001_0009, LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))
                SaveTimerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x0294D446, CreateTimer())
                CreateTimerDialogBJ(LoadTimerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x0294D446), (GetUnitName(GetTriggerUnit()) .. "复活："))
                SaveTimerDialogHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x5528DE7A, bj_lastCreatedTimerDialog)
                SaveBoolean(YDHT, GetHandleId(GetOwningPlayer(GetTriggerUnit())), 0x9837AD59, false)
                ydl_timer = LoadTimerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x0294D446)
                SaveUnitHandle(YDLOC, GetHandleId(ydl_timer), 0x458B7DE9, GetTriggerUnit())
                SaveTimerHandle(YDLOC, GetHandleId(ydl_timer), 0x0294D446, LoadTimerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x0294D446))
                SaveTimerDialogHandle(YDLOC, GetHandleId(ydl_timer), 0x5528DE7A, LoadTimerDialogHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x5528DE7A))
                TimerStart(ydl_timer, (9.00 - LoadReal(YDHT, GetHandleId(GetOwningPlayer(GetTriggerUnit())), 0x356FC9A7)), false, Trig_Death_002Func002Func001Func001Func002Func001Func002Func018T)
            else
            end
            SaveBoolean(YDHT, GetHandleId(GetOwningPlayer(GetTriggerUnit())), 0xDAA3C8E8, true)
        else
        end
    else
        if ((GetTriggerUnit() == gg_unit_O001_0009)) then
            if ((LoadBoolean(YDHT, GetHandleId(Player(PLAYER_NEUTRAL_AGGRESSIVE)), 0x7DA39587) == false)) then
                SaveBoolean(YDHT, GetHandleId(Player(PLAYER_NEUTRAL_AGGRESSIVE)), 0x7DA39587, true)
                ReviveHero(GetTriggerUnit(), GetUnitX(GetTriggerUnit()), GetUnitY(GetTriggerUnit()), false)
                SetUnitInvulnerable(gg_unit_O001_0009, true)
                SetUnitAnimation(GetTriggerUnit(), "spell")
                YDWETimerDestroyEffect(9.00, AddSpecialEffectTarget("war3mapImported\\[QH_Xin]TX_z (7).mdl", GetTriggerUnit(), "chest"))
                PanCameraToTimed(GetUnitX(gg_unit_O001_0009), GetUnitY(gg_unit_O001_0009), 0)
                ForForce(udg_ZXWJZ, Trig_Death_002Func002Func001Func001Func003Func001Func002Func008A)
                ydl_timer = CreateTimer()
                TimerStart(ydl_timer, 30.00, false, Trig_Death_002Func002Func001Func001Func003Func001Func002Func009T)
            else
                DestroyTrigger(gg_trg_WIN_finsh)
                ydl_group = CreateGroup()
                GroupEnumUnitsInRange(ydl_group, 0, 0, 1000000000.00, nil)
                while true do
                    ydl_unit = FirstOfGroup(ydl_group)
                    if ydl_unit == nil then
                        break
                    end
                    GroupRemoveUnit(ydl_group, ydl_unit)
                    if ((IsUnitEnemy(ydl_unit, Player(0)) == true)) then
                        SetUnitInvulnerable(ydl_unit, true)
                    else
                    end
                end
                DestroyGroup(ydl_group)
                ydl_group = CreateGroup()
                GroupEnumUnitsInRange(ydl_group, 0, 0, 10000000.00, nil)
                while true do
                    ydl_unit = FirstOfGroup(ydl_group)
                    if ydl_unit == nil then
                        break
                    end
                    GroupRemoveUnit(ydl_group, ydl_unit)
                    if (((IsUnitEnemy(ydl_unit, Player(0)) == true) or (GetOwningPlayer(ydl_unit) == Player(5)))) then
                        RemoveUnit(ydl_unit)
                    else
                    end
                end
                DestroyGroup(ydl_group)
                DestroyTrigger(gg_trg_jgc01)
                DestroyTrigger(gg_trg_jgc02)
                DestroyTrigger(gg_trg_BOSSchufa________4__u)
                DisplayTextToPlayer(GetLocalPlayer(), 0, 0, "很遗憾，游戏失败，请再接再厉！")
            end
        else
        end
    end
    if ((GetUnitTypeId(GetTriggerUnit()) == (0x6530304B))) then
        if ((GetUnitUserData(GetTriggerUnit()) > 0)) then
            SaveEffectHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x62C50DE6, AddSpecialEffect(LoadStr(YDHT, GetUnitUserData(GetTriggerUnit()), 0xA3A268D8), GetUnitX(GetTriggerUnit()), GetUnitY(GetTriggerUnit())))
        else
            SaveEffectHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x62C50DE6, AddSpecialEffect(LoadStr(YDHT, GetHandleId(GetTriggerUnit()), 0xFE88D7FF), GetUnitX(GetTriggerUnit()), GetUnitY(GetTriggerUnit())))
        end
        if ((HaveSavedReal(YDHT, GetHandleId(GetTriggerUnit()), 0xD92E3573) == true)) then
            EXSetEffectSize(LoadEffectHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x62C50DE6), LoadReal(YDHT, GetHandleId(GetTriggerUnit()), 0xD92E3573))
        else
            EXSetEffectSize(LoadEffectHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x62C50DE6), 2.00)
        end
        YDWETimerDestroyEffect(0.70, LoadEffectHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x62C50DE6))
        ydl_group = CreateGroup()
        GroupEnumUnitsInRange(ydl_group, GetUnitX(GetTriggerUnit()), GetUnitY(GetTriggerUnit()), LoadReal(YDHT, GetHandleId(GetTriggerUnit()), 0xF98356D1), nil)
        while true do
            ydl_unit = FirstOfGroup(ydl_group)
            if ydl_unit == nil then
                break
            end
            GroupRemoveUnit(ydl_group, ydl_unit)
            if ((IsUnitType(ydl_unit, UNIT_TYPE_HERO) == true) and (IsUnitInForce(ydl_unit, udg_ZXWJZ) == true)) then
                UnitDamageTargetBJ(GetTriggerUnit(), ydl_unit, LoadReal(YDHT, GetHandleId(GetTriggerUnit()), 0x9375D887), ATTACK_TYPE_NORMAL, DAMAGE_TYPE_NORMAL)
                if ((HaveSavedReal(YDHT, GetHandleId(GetTriggerUnit()), 0xB74CD720) == true)) then
                    UnitDamageTargetBJ(GetTriggerUnit(), ydl_unit, (GetUnitStateSwap(UNIT_STATE_MAX_LIFE, ydl_unit) * LoadReal(YDHT, GetHandleId(GetTriggerUnit()), 0xB74CD720)), ATTACK_TYPE_NORMAL, DAMAGE_TYPE_NORMAL)
                else
                end
            else
            end
        end
        DestroyGroup(ydl_group)
        FlushChildHashtable(YDHT, GetHandleId(GetTriggerUnit()))
        RemoveUnit(GetTriggerUnit())
        FlushChildHashtable(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step)
        ydl_group = nil
        ydl_unit = nil
        ydl_timer = nil
        ydl_trigger = nil
        do
            return
        end
    else
    end
    if ((GetUnitTypeId(GetTriggerUnit()) == (0x65303042))) then
        SavePlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946, GetOwningPlayer(GetTriggerUnit()))
        cjlocgn_00000000 = CreateUnit(GetOwningPlayer(GetTriggerUnit()), (0x65303030), GetUnitX(GetTriggerUnit()), GetUnitY(GetTriggerUnit()), GetUnitFacing(GetTriggerUnit()))
        DzSetUnitModel(cjlocgn_00000000, LoadStr(YDHT, GetHandleId(GetTriggerUnit()), 0xFE88D7FF))
        if ((HaveSavedReal(YDHT, GetHandleId(GetTriggerUnit()), 0xD92E3573) == true)) then
            SetUnitScale(cjlocgn_00000000, LoadReal(YDHT, GetHandleId(GetTriggerUnit()), 0xD92E3573), LoadReal(YDHT, GetHandleId(GetTriggerUnit()), 0xD92E3573), LoadReal(YDHT, GetHandleId(GetTriggerUnit()), 0xD92E3573))
        else
            SetUnitScale(cjlocgn_00000000, 2.00, 2.00, 2.00)
        end
        SaveReal(YDHT, GetHandleId(Player(5)), 0x168B7882, GetUnitFacing(cjlocgn_00000000))
        SaveReal(YDHT, GetHandleId(Player(5)), 0xAAE4E714, 180.00)
        SaveStr(YDHT, GetHandleId(Player(5)), 0x0930E9B6, "")
        SavePlayerHandle(YDHT, GetHandleId(Player(5)), 0x01143B62, GetOwningPlayer(GetTriggerUnit()))
        SaveReal(YDHT, GetHandleId(Player(5)), 0x2D197131, 950.00)
        SaveReal(YDHT, GetHandleId(Player(5)), 0x7526AE49, 50.00)
        SaveReal(YDHT, GetHandleId(Player(5)), 0x7934730C, 0.70)
        SaveReal(YDHT, GetHandleId(Player(5)), 0x8BD073CC, LoadReal(YDHT, GetHandleId(GetTriggerUnit()), 0x9375D887))
        SaveUnitHandle(YDHT, GetHandleId(Player(5)), 0xA466DA53, cjlocgn_00000000)
        SaveUnitHandle(YDHT, GetHandleId(Player(5)), 0xCE212FB3, GetTriggerUnit())
        TriggerExecute(gg_trg_dgdfgdgf)
        FlushChildHashtable(YDHT, GetHandleId(GetTriggerUnit()))
        RemoveUnit(GetTriggerUnit())
        YDWETimerRemoveUnit(0.80, cjlocgn_00000000)
        cjlocgn_00000000 = nil
        FlushChildHashtable(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step)
        ydl_group = nil
        ydl_unit = nil
        ydl_timer = nil
        ydl_trigger = nil
        do
            return
        end
    else
    end
    if ((GetKillingUnit() == udg_WJYX[GetConvertedPlayerId(GetOwningPlayer(GetKillingUnit()))])) then
        SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x6F96F2D2, GetConvertedPlayerId(GetOwningPlayer(GetKillingUnit())))
        SavePlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946, ConvertedPlayer(LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x6F96F2D2)))
        SaveUnitHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x911D5DC2, udg_WJYX[GetConvertedPlayerId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))])
        SaveUnitHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xFC95F560, GetDyingUnit())
        SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xA1CFBB06, GetUnitTypeId(GetDyingUnit()))
        SaveReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB259B269, (LoadReal(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x692728ED) + (1.00 + udg_SDJQ3[GetConvertedPlayerId(GetOwningPlayer(GetKillingUnit()))])))
        SaveReal(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x692728ED, LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB259B269))
        ModifyHeroStat(bj_HEROSTAT_STR, udg_WJYX[GetConvertedPlayerId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))], bj_MODIFYMETHOD_ADD, (LoadInteger(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x0CC2B67B) + LoadInteger(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0xEC60725F)))
        ModifyHeroStat(bj_HEROSTAT_AGI, udg_WJYX[GetConvertedPlayerId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))], bj_MODIFYMETHOD_ADD, (LoadInteger(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x0CC2B67B) + LoadInteger(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x37F60CCB)))
        ModifyHeroStat(bj_HEROSTAT_INT, udg_WJYX[GetConvertedPlayerId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))], bj_MODIFYMETHOD_ADD, (LoadInteger(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x0CC2B67B) + LoadInteger(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0xA22918A3)))
        JK_SX_Change(udg_WJYX[GetConvertedPlayerId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))], ConvertUnitState(0x12), 1, LoadReal(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0xE574B4E8))
        JK_SX_Change(udg_WJYX[GetConvertedPlayerId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))], UNIT_STATE_MAX_LIFE, 1, LoadReal(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x72AFA36E))
        JK_SX_Change(udg_WJYX[GetConvertedPlayerId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))], UNIT_STATE_LIFE, 1, LoadReal(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x72AFA36E))
        JK_SX_Change(udg_WJYX[GetConvertedPlayerId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))], ConvertUnitState(0x20), 1, LoadReal(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x31EAADD3))
        if ((LoadStr(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0xFA19F30A) == "力")) then
            ModifyHeroStat(bj_HEROSTAT_STR, udg_WJYX[GetConvertedPlayerId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))], bj_MODIFYMETHOD_ADD, LoadInteger(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x93EDC219))
        else
            if ((LoadStr(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0xFA19F30A) == "敏")) then
                ModifyHeroStat(bj_HEROSTAT_AGI, udg_WJYX[GetConvertedPlayerId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))], bj_MODIFYMETHOD_ADD, LoadInteger(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x93EDC219))
            else
                if ((LoadStr(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0xFA19F30A) == "智")) then
                    ModifyHeroStat(bj_HEROSTAT_INT, udg_WJYX[GetConvertedPlayerId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))], bj_MODIFYMETHOD_ADD, LoadInteger(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x93EDC219))
                else
                end
            end
        end
        if ((IsSuspendedXP(GetKillingUnit()) ~= true)) then
            SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xF2E9BC9E, R2I((10.00 * (1.00 + udg_SDJQ4[GetConvertedPlayerId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))]))))
            AddHeroXPSwapped(LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xF2E9BC9E), GetKillingUnit(), true)
            if ((GetOwningPlayer(GetKillingUnit()) == GetLocalPlayer())) then
                DzFrameSetAnimateOffset(udg_ui_sjtz[2], (0.01 * qhjyjs(GetKillingUnit())))
            else
            end
        else
        end
        if ((IsItemOwned(udg_wp[LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x6F96F2D2)]) == true)) then
            if ((GetItemCharges(udg_wp[LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x6F96F2D2)]) > 0)) then
                SetItemCharges(udg_wp[LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x6F96F2D2)], (GetItemCharges(udg_wp[LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x6F96F2D2)]) - 1))
            else
                if ((LoadUnitHandle(YDHT, GetHandleId(GetOwningPlayer(GetKillingUnit())), 0xDD032F66) == GetKillingUnit())) then
                    if ((GetOwningPlayer(GetKillingUnit()) == GetLocalPlayer())) then
                        DzFrameShow(udg_GAOLIANG_UI, true)
                        DzFrameSetPoint(udg_GAOLIANG_UI, 4, DzFrameGetItemBarButton(0), 4, 0, 0)
                    else
                    end
                else
                end
            end
            if ((GetItemCharges(udg_wp[LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x6F96F2D2)]) == 1)) then
                if ((LoadUnitHandle(YDHT, GetHandleId(GetOwningPlayer(GetKillingUnit())), 0xDD032F66) == GetKillingUnit())) then
                    if ((GetOwningPlayer(GetKillingUnit()) == GetLocalPlayer())) then
                        DzFrameShow(udg_GAOLIANG_UI, true)
                        DzFrameSetPoint(udg_GAOLIANG_UI, 4, DzFrameGetItemBarButton(0), 4, 0, 0)
                    else
                    end
                else
                end
            else
            end
        else
        end
    else
    end
    if ((GetOwningPlayer(GetTriggerUnit()) == Player(7))) then
        DzFrameShow(LoadInteger(YDHT, GetHandleId(gg_unit_O001_0009), 0x1ADEDE7B), false)
        cjlocgn_00000000 = GetKillingUnit()
        SaveReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2392447A, GetUnitX(GetKillingUnit()))
        SaveReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB0897302, GetUnitY(GetKillingUnit()))
        SaveReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x41713DA3, LoadReal(YDHT, GetHandleId(GetTriggerUnit()), 0xA99320FA))
        SaveReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x71CA3531, LoadReal(YDHT, GetHandleId(GetTriggerUnit()), 0xFDF65382))
        SaveReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xA99320FA, GetUnitX(GetTriggerUnit()))
        SaveReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xFDF65382, GetUnitY(GetTriggerUnit()))
        SavePlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xBAFE77B9, GetOwningPlayer(LoadUnitHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xFC95F560)))
        SaveInteger(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x58FD9FA3, (LoadInteger(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x58FD9FA3) + (LoadInteger(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x9597BD9A) + 1)))
        if ((GetUnitUserData(GetTriggerUnit()) == 1234)) then
            if ((LoadInteger(YDHT, GetHandleId(GetOwningPlayer(GetKillingUnit())), 0xD0B486C5) < 7)) then
                DestroyEffect(AddSpecialEffect("war3mapImported\\[QH_Xin]TX_z (7).mdl", GetUnitX(GetTriggerUnit()), GetUnitY(GetTriggerUnit())))
                SaveInteger(YDHT, GetHandleId(GetOwningPlayer(GetKillingUnit())), 0xD0B486C5, (LoadInteger(YDHT, GetHandleId(GetOwningPlayer(GetKillingUnit())), 0xD0B486C5) + 1))
                AddPlayerTechResearched(GetOwningPlayer(GetKillingUnit()), 0x52303032, 1)
                ydl_timer = CreateTimer()
                SaveInteger(YDLOC, GetHandleId(ydl_timer), 0xF374F3BD + (1), (0x4C47324A))
                SaveInteger(YDLOC, GetHandleId(ydl_timer), 0xF374F3BD + (2), (0x4C47334A))
                SaveInteger(YDLOC, GetHandleId(ydl_timer), 0xF374F3BD + (3), (0x4C47344A))
                SaveInteger(YDLOC, GetHandleId(ydl_timer), 0xF374F3BD + (4), (0x4C47354A))
                SaveInteger(YDLOC, GetHandleId(ydl_timer), 0xF374F3BD + (5), (0x4C47364A))
                SaveUnitHandle(YDLOC, GetHandleId(ydl_timer), 0xBFD17F9F, GetKillingUnit())
                TimerStart(ydl_timer, 0.10, false, Trig_Death_002Func005Func001Func004Func001Func002Func005T)
            else
            end
        else
        end
        if ((IsUnitType(GetTriggerUnit(), UNIT_TYPE_HERO) == true)) then
            if ((GetTriggerUnit() == xgdg_BAA)) then
                TriggerExecute(gg_trg_WIN_finsh)
                bj_forLoopAIndex = 1
                bj_forLoopAIndexEnd = 20
                while true do
                    if bj_forLoopAIndex > bj_forLoopAIndexEnd then
                        break
                    end
                    CreateTextTagLocBJ("恭喜各位通关！\r\n挑战更高难度！\r\n解锁更多剧情！", GetCameraTargetPositionLoc(), 0.00, 10.00, 100, 100.00, 0.00, 0)
                    SetTextTagVelocityBJ(GetLastCreatedTextTag(), 100.00, GetRandomDirectionDeg())
                    SetTextTagPermanent(GetLastCreatedTextTag(), false)
                    SetTextTagLifespan(GetLastCreatedTextTag(), 10.00)
                    SetTextTagFadepoint(GetLastCreatedTextTag(), 0.50)
                    bj_forLoopAIndex = bj_forLoopAIndex + 1
                end
                RemoveUnit(gg_unit_O001_0009)
            else
            end
        else
        end
        if ((IsUnitInGroup(GetTriggerUnit(), udg_rsm[GetConvertedPlayerId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))]) == true)) then
            if ((S2I(EXExecuteScript("(require'jass.slk').unit[" .. I2S(GetUnitTypeId(GetTriggerUnit())) .. "].fmade")) > 0)) then
                SaveInteger(YDHT, ((GetHandleId((LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))))), ((GetUnitTypeId(GetTriggerUnit()))), (((LoadInteger(YDHT, ((GetHandleId((LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))))), ((GetUnitTypeId(GetTriggerUnit()))))) + 1)))
                if ((S2I(EXExecuteScript("(require'jass.slk').unit[" .. I2S(GetUnitTypeId(GetTriggerUnit())) .. "].fmade")) == (LoadInteger(YDHT, ((GetHandleId((LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))))), ((GetUnitTypeId(GetTriggerUnit()))))))) then
                    if ((S2I(EXExecuteScript("(require'jass.slk').unit[" .. I2S(GetUnitTypeId(GetTriggerUnit())) .. "].cargoSize")) == 945)) then
                        SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB0497EE9, (YDWES2Id(((EXExecuteScript("(require'jass.slk').unit[" .. I2S(GetUnitTypeId(GetTriggerUnit())) .. "].Sellitems"))))))
                        AddPlayerTechResearched(GetOwningPlayer(GetKillingUnit()), 0x52303033, 1)
                        SavePlayerHandle(YDHT, GetHandleId(Player(PLAYER_NEUTRAL_AGGRESSIVE)), 0x119572DE, LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))
                        SaveInteger(YDHT, GetHandleId(Player(PLAYER_NEUTRAL_AGGRESSIVE)), 0x171487D7, LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB0497EE9))
                        TriggerExecute(gg_trg_qjyd)
                        DisplayTimedTextToPlayer(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946), 0, 0, 6.00, (YDWEGetPlayerColorString(Player(0), "[系统]：") .. YDWEGetPlayerColorString(Player(6), (GetUnitName(GetTriggerUnit()) .. "已被击败。"))))
                        SaveBoolean(YDHT, StringHash((GetPlayerName(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)))), StringHash(((EXExecuteScript("(require'jass.slk').unit[" .. I2S(GetUnitTypeId(GetTriggerUnit())) .. "].Ubertip")))), (true))
                        UnitRemoveAbilityBJ(LoadInteger(YDHT, GetHandleId(GetOwningPlayer(GetKillingUnit())), 0x6B3D695C), (LoadUnitHandle(YDHT, ((GetHandleId((GetOwningPlayer(GetKillingUnit()))))), (StringHash("10NPC")))))
                        if ((GetPlayerTechCountSimple(0x52303033, LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)) == 10)) then
                            DestroyEffect(AddSpecialEffect("Abilities\\Spells\\Human\\ReviveHuman\\ReviveHuman.mdl", LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xA99320FA), LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xFDF65382)))
                            YDWEReplaceUnitBJNull((LoadUnitHandle(YDHT, ((GetHandleId((GetOwningPlayer(GetKillingUnit()))))), (StringHash("10NPC")))), (0x6E303050), bj_UNIT_STATE_METHOD_DEFAULTS)
                            SaveUnitHandle(YDHT, ((GetHandleId((LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))))), (StringHash("10NPC")), (bj_lastReplacedUnit))
                        else
                        end
                        ydl_trigger = gg_trg_ui_3x1
                        ydl_triggerstep = GetHandleId(ydl_trigger) * (LoadInteger(YDLOC, GetHandleId(ydl_trigger), 0xCFDE6C76) + 3)
                        SavePlayerHandle(YDLOC, ydl_triggerstep, 0x48656946, GetOwningPlayer(GetKillingUnit()))
                        TriggerExecute(ydl_trigger)
                        FlushChildHashtable(YDHT, GetHandleId(GetTriggerUnit()))
                    else
                        RemoveUnit(LoadUnitHandle(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x7903036E))
                        SaveInteger(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0xF5B58222, (LoadInteger(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0xF5B58222) + (1 + R2I(LoadReal(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0xC40EA960)))))
                        DisplayTimedTextToPlayer(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946), 0, 0, 6.00, (YDWEGetPlayerColorString(Player(0), "[系统]：") .. YDWEGetPlayerColorString(Player(6), (GetUnitName(GetTriggerUnit()) .. "已被击败。"))))
                        ydul_a = 1
                        while true do
                            if ydul_a > 6 then
                                break
                            end
                            if ((LoadInteger(YDHT, GetHandleId(GetOwningPlayer(GetKillingUnit())), 0x123EC98D) == (ydul_a * 20))) then
                                SaveInteger(YDHT, GetHandleId(GetOwningPlayer(GetKillingUnit())), 0x9B72688C, 1)
                                SaveInteger(YDHT, GetHandleId(GetOwningPlayer(GetKillingUnit())), 0x123EC98D, (LoadInteger(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x123EC98D) + 1))
                                SaveInteger(YDHT, GetHandleId(GetOwningPlayer(GetKillingUnit())), 0x7980F1A7, (LoadInteger(YDHT, GetHandleId(GetOwningPlayer(GetKillingUnit())), 0x7980F1A7) + 1))
                                if ((LoadInteger(YDHT, GetHandleId(GetOwningPlayer(GetKillingUnit())), 0x7980F1A7) == 2)) then
                                    ShowUnit((LoadUnitHandle(YDHT, ((GetHandleId((Player(PLAYER_NEUTRAL_AGGRESSIVE))))), (StringHash("13NPC")))), true)
                                else
                                end
                                if ((LoadInteger(YDHT, GetHandleId(GetOwningPlayer(GetKillingUnit())), 0x7980F1A7) == 6)) then
                                    ShowUnit((LoadUnitHandle(YDHT, ((GetHandleId((LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))))), (StringHash("11NPC")))), true)
                                    JK_CameraTranslation(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946), GetUnitX((LoadUnitHandle(YDHT, ((GetHandleId((LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))))), (StringHash("11NPC"))))), GetUnitY((LoadUnitHandle(YDHT, ((GetHandleId((LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))))), (StringHash("11NPC"))))), 0.00)
                                    AddPlayerTechResearched(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946), 0x64796B6A, 1)
                                    DestroyEffect(AddSpecialEffectTarget("E\\[e] (7).mdl", (LoadUnitHandle(YDHT, ((GetHandleId((LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))))), (StringHash("11NPC")))), "origin"))
                                    ydl_trigger = gg_trg_UI_tips
                                    ydl_triggerstep = GetHandleId(ydl_trigger) * (LoadInteger(YDLOC, GetHandleId(ydl_trigger), 0xCFDE6C76) + 3)
                                    SavePlayerHandle(YDLOC, ydl_triggerstep, 0x48656946, LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))
                                    SaveInteger(YDLOC, ydl_triggerstep, 0x9CD60476, DzFrameGetCommandBarButton(0, 0))
                                    TriggerExecute(ydl_trigger)
                                else
                                end
                                SavePlayerHandle(YDHT, GetHandleId(Player(PLAYER_NEUTRAL_AGGRESSIVE)), 0x119572DE, GetOwningPlayer(GetKillingUnit()))
                                SaveBoolean(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x8A0F9432, true)
                                SaveInteger(YDHT, GetHandleId(Player(PLAYER_NEUTRAL_AGGRESSIVE)), 0x171487D7, udg_wp_cl_BMDJ[ydul_a])
                                TriggerExecute(gg_trg_qjyd)
                                DoNothing()
                                if true then
                                    break
                                end
                            else
                            end
                            ydul_a = ydul_a + 1
                        end
                        SaveBoolean(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x8498BB84, false)
                        ydl_trigger = gg_trg_UI_tips
                        ydl_triggerstep = GetHandleId(ydl_trigger) * (LoadInteger(YDLOC, GetHandleId(ydl_trigger), 0xCFDE6C76) + 3)
                        SavePlayerHandle(YDLOC, ydl_triggerstep, 0x48656946, LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))
                        SaveInteger(YDLOC, ydl_triggerstep, 0x9CD60476, udg_ui_BYDJ[0])
                        TriggerExecute(ydl_trigger)
                        if ((GetOwningPlayer(GetKillingUnit()) == GetLocalPlayer())) then
                            DzFrameShow(udg_ui_BYDJ[3], false)
                            DzFrameSetText(udg_ui_BYDJ[2], "晋级成功")
                            DzFrameSetTexture(udg_ui_BYDJ[0], (("war3mapImported\\jingshi (") .. (I2S(LoadInteger(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x123EC98D))) .. (").tga")), 0)
                        else
                        end
                        SelectUnitForPlayerSingle(gg_unit_O001_0009, LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))
                        ydl_timer = CreateTimer()
                        SaveUnitHandle(YDLOC, GetHandleId(ydl_timer), 0xBFD17F9F, GetKillingUnit())
                        SavePlayerHandle(YDLOC, GetHandleId(ydl_timer), 0x48656946, LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))
                        TimerStart(ydl_timer, 0.03, false, Trig_Death_002Func005Func001Func006Func001Func002Func003Func002Func003Func007T)
                    end
                    GroupClear(udg_rsm[GetConvertedPlayerId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))])
                else
                end
            else
            end
        else
        end
        if ((GetTriggerUnit() == LoadUnitHandle(YDHT, GetHandleId(Player(7)), 0x944CCEB0))) then
            SaveInteger(YDHT, GetHandleId(Player(7)), 0x64DEEF37, (LoadInteger(YDHT, GetHandleId(Player(7)), 0x64DEEF37) + 1))
            ForForce(udg_ZXWJZ, Trig_Death_002Func005Func001Func007Func001Func003A)
        else
            if ((udg_S > 11)) then
                if ((336699 == S2I(EXExecuteScript("(require'jass.slk').unit[" .. I2S(GetUnitTypeId(GetTriggerUnit())) .. "].cargoSize")))) then
                    if ((GetRandomReal(0, 1.50) <= (0.01 + (0.005 * I2R(GetPlayerTechCountSimple(0x52303044, Player(5))))))) then
                        SavePlayerHandle(YDHT, GetHandleId(Player(PLAYER_NEUTRAL_AGGRESSIVE)), 0x119572DE, GetOwningPlayer(GetKillingUnit()))
                        SaveStr(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2D1FF186, "XGTJ")
                        SaveStr(YDHT, GetHandleId(Player(PLAYER_NEUTRAL_AGGRESSIVE)), 0x0DCA2EC5, LoadStr(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2D1FF186))
                        SaveInteger(YDHT, GetHandleId(Player(PLAYER_NEUTRAL_AGGRESSIVE)), 0x27A5056E, GetUnitPointValue(GetTriggerUnit()))
                        SaveStr(YDHT, GetHandleId(Player(PLAYER_NEUTRAL_AGGRESSIVE)), 0xF5CF51D7, "1")
                        SaveInteger(YDHT, GetHandleId(Player(PLAYER_NEUTRAL_AGGRESSIVE)), 0x20482DE3, 30)
                        SaveStr(YDHT, GetHandleId(Player(PLAYER_NEUTRAL_AGGRESSIVE)), 0xF99E56C4, "5")
                        TriggerExecute(gg_trg_DzApi_______u)
                        DisplayTimedTextToPlayer(GetOwningPlayer(GetKillingUnit()), 0, 0, 8.00, (("激活怪物图鉴==") .. (GetUnitName(GetTriggerUnit())) .. ("==")))
                        SaveBoolean(YDHT, StringHash((GetPlayerName(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)))), StringHash(((("5y") .. ("1") .. (I2S(GetUnitPointValue(GetTriggerUnit())))))), (true))
                    else
                    end
                else
                end
            else
            end
        end
        if ((GetUnitTypeId(GetTriggerUnit()) == (0x4C48584D))) then
            if ((GetUnitUserData(GetTriggerUnit()) == 345)) then
                AdjustPlayerStateBJ(300, GetOwningPlayer(GetKillingUnit()), PLAYER_STATE_RESOURCE_LUMBER)
                cjlocgn_00000000 = nil
                FlushChildHashtable(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step)
                ydl_group = nil
                ydl_unit = nil
                ydl_timer = nil
                ydl_trigger = nil
                do
                    return
                end
            else
            end
            SaveReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x1ADEDE7B, GetUnitX(LoadUnitHandle(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0xF3C2D462)))
            SaveReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x8CD20710, GetUnitY(LoadUnitHandle(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0xF3C2D462)))
            if ((LoadInteger(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x25C8C6CA) == 1)) then
                SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB0497EE9, (0x7277697A))
                SaveBoolean(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x312C4181, true)
            else
                if ((LoadInteger(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x25C8C6CA) == 2)) then
                    SaveBoolean(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x312C4181, true)
                    SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB0497EE9, (0x6876616C))
                else
                    if ((LoadInteger(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x25C8C6CA) == 3)) then
                        SaveUnitHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xEA59A379, (LoadUnitHandle(YDHT, ((GetHandleId((LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))))), (126))))
                        SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB0497EE9, (0x636C7364))
                        SaveBoolean(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x312C4181, true)
                    else
                        if ((LoadInteger(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x25C8C6CA) == 4)) then
                            SaveUnitHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xEA59A379, (LoadUnitHandle(YDHT, ((GetHandleId((LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))))), (127))))
                            SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB0497EE9, (0x6D636F75))
                            SaveBoolean(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x312C4181, true)
                        else
                            if ((LoadInteger(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x25C8C6CA) == 5)) then
                                SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB0497EE9, (0x77617264))
                            else
                                if ((LoadInteger(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x25C8C6CA) == 6)) then
                                    SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB0497EE9, (0x6473756D))
                                else
                                end
                            end
                        end
                    end
                end
            end
            if ((LoadBoolean(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x312C4181) == true)) then
                ShowUnitShow(LoadUnitHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xEA59A379))
                SaveEffectHandle(YDHT, GetHandleId(LoadUnitHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xEA59A379)), 0x20E3903D, AddSpecialEffect("war3mapImported\\LV-9.mdl", GetUnitX(LoadUnitHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xEA59A379)), GetUnitY(LoadUnitHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xEA59A379))))
                DestroyEffect(AddSpecialEffectTarget("Abilities\\Spells\\Human\\Avatar\\AvatarCaster.mdl", LoadUnitHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xEA59A379), "overhead"))
            else
            end
            SaveInteger(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x25C8C6CA, (LoadInteger(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x25C8C6CA) + 1))
            SavePlayerHandle(YDHT, GetHandleId(Player(PLAYER_NEUTRAL_AGGRESSIVE)), 0x119572DE, LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))
            SaveInteger(YDHT, GetHandleId(Player(PLAYER_NEUTRAL_AGGRESSIVE)), 0x171487D7, LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB0497EE9))
            TriggerExecute(gg_trg_qjyd)
            SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xA1CFBB06 + (1), (0x6E303031))
            SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xA1CFBB06 + (2), (0x6E303041))
            SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xA1CFBB06 + (3), (0x6E303042))
            SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xA1CFBB06 + (4), (0x6E303043))
            SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xA1CFBB06 + (5), (0x6E303044))
            SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xA1CFBB06 + (6), (0x6E303045))
            SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xA1CFBB06 + (7), (0x6E303046))
            SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xA1CFBB06 + (8), (0x6E303047))
            RemoveUnit(LoadUnitHandle(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0xF3C2D462))
            if ((LoadInteger(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x25C8C6CA) ~= 9)) then
                SaveUnitHandle(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0xF3C2D462, CreateUnit(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946), LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xA1CFBB06 + (LoadInteger(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x25C8C6CA))), LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x1ADEDE7B), LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x8CD20710), 270.00))
                SaveUnitHandle(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0xE4977C87, CreateUnit(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946), (0x7A7A3130), 0.00, 0.00, 0))
            else
                SaveUnitHandle(YDHT, ((GetHandleId((LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))))), (StringHash("02NPC")), (CreateUnit(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946), (0x6E303035), LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x1ADEDE7B), LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x8CD20710), -90.00)))
            end
            DestroyEffect(AddSpecialEffect("Abilities\\Spells\\Human\\ReviveHuman\\ReviveHuman.mdl", LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xA99320FA), LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xFDF65382)))
            DisplayTimedTextToPlayer(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946), 0, 0, 6.00, (YDWEGetPlayerColorString(Player(0), "[系统]：") .. YDWEGetPlayerColorString(Player(6), "境界晋升成功")))
            DisplayTimedTextToPlayer(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946), 0, 0, 6.00, (YDWEGetPlayerColorString(Player(0), "[系统]：") .. YDWEGetPlayerColorString(Player(6), ((YDWEGetPlayerColorString(Player(4), "属性提升：")) .. ("") .. ((EXExecuteScript("(require'jass.slk').item[" .. I2S(LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB0497EE9)) .. "].Ubertip")))))))
            SelectUnitForPlayerSingle(udg_WJYX[GetConvertedPlayerId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))], LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))
            RemoveUnit(GetTriggerUnit())
        else
        end
        if ((GetRandomReal(0, 0.10) == 0.01)) then
            CreateItem(ChooseRandomItemExBJ(112233, ITEM_TYPE_ANY), GetUnitX(GetTriggerUnit()), GetUnitY(GetTriggerUnit()))
        else
        end
        if ((GetRandomReal(0, 0.10) == 0.01)) then
            CreateItem(ChooseRandomItemBJ(7752), GetUnitX(GetTriggerUnit()), GetUnitY(GetTriggerUnit()))
        else
        end
        cjlocgn_00000000 = nil
    else
    end
    if ((GetOwningPlayer(GetTriggerUnit()) == Player(6))) then
        SaveReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB259B269, (I2R(udg_LGFJBJL[GetConvertedPlayerId(GetOwningPlayer(GetKillingUnit()))]) * (1.00 + udg_SDJQ[GetConvertedPlayerId(GetOwningPlayer(GetKillingUnit()))])))
        cjlocgn_00000001 = R2SW(LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB259B269), 0, 0)
        SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2970F80D, (StringLength((cjlocgn_00000001)) - 2))
        ydul_p = 0
        while true do
            if ydul_p > LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2970F80D) then
                break
            end
            SaveReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2D1E4992 + (ydul_p), ((I2R(ydul_p) - 1.00) * 35.00))
            SaveReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x49D14A0C, (GetUnitX(GetTriggerUnit()) + (CosBJ(360.00) * LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2D1E4992 + (ydul_p)))))
            SaveReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x4AF79D7A, (GetUnitY(GetTriggerUnit()) + 50.00))
            if ((ydul_p == 0)) then
                YDWETimerDestroyEffect(0.00, AddSpecialEffect(udg_pf_string2[10], LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x49D14A0C), LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x4AF79D7A)))
            else
                SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2B0A6845 + (ydul_p), S2I(SubStringBJ((cjlocgn_00000001), ydul_p, ydul_p)))
                YDWETimerDestroyEffect(0.00, AddSpecialEffect(udg_pf_string2[LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2B0A6845 + (ydul_p))], LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x49D14A0C), LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x4AF79D7A)))
            end
            ydul_p = ydul_p + 1
        end
        cjlocgn_00000001 = nil
        AdjustPlayerStateBJ(R2I(LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB259B269)), LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946), PLAYER_STATE_RESOURCE_GOLD)
        if ((GetRandomReal(0, (2.00 - LoadReal(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0xFE5A5BB9))) <= 0.01)) then
            cjlocgn_00000002 = PlaceRandomItem(udg_FB_WPC, udg_LGFZB_x[GetConvertedPlayerId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))], (udg_LGFZB_y[GetConvertedPlayerId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))] - 350.00))
            DestroyEffect(AddSpecialEffect("G\\[g] (8).mdl", GetItemX(cjlocgn_00000002), GetItemY(cjlocgn_00000002)))
            cjlocgn_00000002 = nil
        else
        end
        if ((LoadInteger(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x28E450B3) < 5)) then
            SaveInteger(YDHT, GetHandleId(GetOwningPlayer(GetKillingUnit())), 0xE0DE9502, (LoadInteger(YDHT, GetHandleId(GetOwningPlayer(GetKillingUnit())), 0xE0DE9502) + 1))
            if ((LoadInteger(YDHT, GetHandleId(GetOwningPlayer(GetKillingUnit())), 0xE0DE9502) == 18)) then
                SaveInteger(YDHT, GetHandleId(GetOwningPlayer(GetKillingUnit())), 0xE0DE9502, 0)
                SaveUnitHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xD2A88040, (LoadUnitHandle(YDHT, ((GetHandleId((GetOwningPlayer(GetKillingUnit()))))), (StringHash("12NPC")))))
                if ((GetUnitLifePercent(LoadUnitHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xD2A88040)) ~= 100.00)) then
                    SaveUnitHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x911D5DC2, GetTriggerUnit())
                    ydul_a = 1
                    while true do
                        if ydul_a > 2 then
                            break
                        end
                        SaveReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xC1B0964C, YDWEAngleBetweenUnits(LoadUnitHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xD2A88040), LoadUnitHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x911D5DC2)))
                        SaveReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x015C3B01, (63.00 * I2R((ydul_a - 2))))
                        SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xD6E440E0, ISignBJ(GetRandomInt(-1, 0)))
                        SaveReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xC7C5EF2D, ((I2R(LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xD6E440E0)) * LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x015C3B01))))
                        SaveReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x0073BEE9, ((I2R(LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xD6E440E0)) * LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x015C3B01))))
                        SaveEffectHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x62C50DE6, AddSpecialEffect("war3mapImported\\dandao (6).mdl", GetUnitX(LoadUnitHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x911D5DC2)), GetUnitY(LoadUnitHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x911D5DC2))))
                        EXSetEffectZ(LoadEffectHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x62C50DE6), (GetUnitFlyHeight(LoadUnitHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x911D5DC2)) + 50.00))
                        ydl_timer = CreateTimer()
                        SaveUnitHandle(YDLOC, GetHandleId(ydl_timer), 0x911D5DC2, LoadUnitHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x911D5DC2))
                        SaveUnitHandle(YDLOC, GetHandleId(ydl_timer), 0xD2A88040, LoadUnitHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xD2A88040))
                        SaveEffectHandle(YDLOC, GetHandleId(ydl_timer), 0x62C50DE6, LoadEffectHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x62C50DE6))
                        SaveReal(YDLOC, GetHandleId(ydl_timer), 0xA99320FA + (1), (GetUnitX(LoadUnitHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x911D5DC2)) + ((YDWEDistanceBetweenUnits(LoadUnitHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x911D5DC2), LoadUnitHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xD2A88040)) / 1.00) * CosBJ(((LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xC1B0964C)) + (LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xC7C5EF2D)))))))
                        SaveReal(YDLOC, GetHandleId(ydl_timer), 0xFDF65382 + (1), (GetUnitY(LoadUnitHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x911D5DC2)) + ((YDWEDistanceBetweenUnits(LoadUnitHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x911D5DC2), LoadUnitHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xD2A88040)) / 1.00) * SinBJ(((LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xC1B0964C)) + (LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xC7C5EF2D)))))))
                        SaveReal(YDLOC, GetHandleId(ydl_timer), 0x8B1FFFFC + (1), ((60.00 - LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x015C3B01)) * 4.00))
                        SaveReal(YDLOC, GetHandleId(ydl_timer), 0xA99320FA + (2), (GetUnitX(LoadUnitHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x911D5DC2)) + ((YDWEDistanceBetweenUnits(LoadUnitHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x911D5DC2), LoadUnitHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xD2A88040)) / 5.00) * CosBJ(((((LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xC1B0964C)) - (180.00))) - (LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x0073BEE9)))))))
                        SaveReal(YDLOC, GetHandleId(ydl_timer), 0xFDF65382 + (2), (GetUnitY(LoadUnitHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x911D5DC2)) + ((YDWEDistanceBetweenUnits(LoadUnitHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x911D5DC2), LoadUnitHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xD2A88040)) / 5.00) * SinBJ(((((LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xC1B0964C)) - (180.00))) - (LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x0073BEE9)))))))
                        SaveReal(YDLOC, GetHandleId(ydl_timer), 0x8B1FFFFC + (2), ((60.00 - LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x015C3B01)) * 5.00))
                        SaveReal(YDLOC, GetHandleId(ydl_timer), 0xC1B0964C, LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xC1B0964C))
                        SaveReal(YDLOC, GetHandleId(ydl_timer), 0x9B1A6867, LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x9B1A6867))
                        SaveReal(YDLOC, GetHandleId(ydl_timer), 0x312C4181, LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x312C4181))
                        SaveReal(YDLOC, GetHandleId(ydl_timer), 0x2392447A, LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2392447A))
                        SaveReal(YDLOC, GetHandleId(ydl_timer), 0x41713DA3, LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x41713DA3))
                        SaveReal(YDLOC, GetHandleId(ydl_timer), 0xB0897302, LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB0897302))
                        SaveReal(YDLOC, GetHandleId(ydl_timer), 0x71CA3531, LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x71CA3531))
                        SaveReal(YDLOC, GetHandleId(ydl_timer), 0xF9472E2C, LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xF9472E2C))
                        SaveReal(YDLOC, GetHandleId(ydl_timer), 0xA0136A6F, LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xA0136A6F))
                        TimerStart(ydl_timer, 0.03, true, Trig_Death_002Func006Func001Func004Func001Func003Func004Func003Func008T)
                        ydul_a = ydul_a + 1
                    end
                    JK_SX_Change(LoadUnitHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xD2A88040), UNIT_STATE_LIFE, 1, 1.00)
                    if ((GetUnitLifePercent(LoadUnitHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xD2A88040)) == 100.00)) then
                        DisplayTextToPlayer(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946), 0, 0, (YDWEGetPlayerColorString(Player(0), "[系统]：") .. YDWEGetPlayerColorString(Player(6), "神像已收集满真气,可以进行先天罡气挑战了。")))
                        SaveEffectHandle(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0xC43A1D5D, AddSpecialEffect("war3mapImported\\yujing (2).mdx", GetUnitX(LoadUnitHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xD2A88040)), GetUnitY(LoadUnitHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xD2A88040))))
                        if ((GetKillingUnit() == LoadUnitHandle(YDHT, GetHandleId(GetOwningPlayer(GetKillingUnit())), 0xDD032F66)) and (GetOwningPlayer(GetKillingUnit()) == GetLocalPlayer())) then
                            DzFrameShow(udg_GAOLIANG_UI3[0], true)
                            DzFrameSetPoint(udg_GAOLIANG_UI3[0], 4, DzFrameGetCommandBarButton(1, 3), 4, 0, 0)
                        else
                        end
                    else
                    end
                    SaveUnitHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x911D5DC2, nil)
                else
                end
                SaveUnitHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xD2A88040, nil)
            else
            end
        else
        end
        if (((LoadBoolean(YDHT, ((GetHandleId((LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))))), (((0x78736732))))) == true)) then
            if ((LoadBoolean(YDHT, GetHandleId(GetOwningPlayer(GetKillingUnit())), 0x8498BB84) ~= true)) then
                SaveInteger(YDHT, GetHandleId(GetOwningPlayer(GetKillingUnit())), 0x6B37AF61, (LoadInteger(YDHT, GetHandleId(GetOwningPlayer(GetKillingUnit())), 0x6B37AF61) + 1))
                if ((GetOwningPlayer(GetKillingUnit()) == GetLocalPlayer())) then
                    DzFrameSetText(udg_ui_BYDJ[2], ((I2S(LoadInteger(YDHT, GetHandleId(GetOwningPlayer(GetKillingUnit())), 0x6B37AF61))) .. ("/") .. (I2S((LoadInteger(YDHT, GetHandleId(GetOwningPlayer(GetKillingUnit())), 0x9B72688C) * 10)))))
                else
                end
                if ((LoadInteger(YDHT, GetHandleId(GetOwningPlayer(GetKillingUnit())), 0x6B37AF61) == (LoadInteger(YDHT, GetHandleId(GetOwningPlayer(GetKillingUnit())), 0x9B72688C) * 10))) then
                    PlaySoundOnUnitBJ(gg_snd_DevourMagic, 100, udg_WJYX[GetConvertedPlayerId(GetOwningPlayer(GetKillingUnit()))])
                    SaveInteger(YDHT, GetHandleId(GetOwningPlayer(GetKillingUnit())), 0x6B37AF61, 0)
                    SaveInteger(YDHT, GetHandleId(GetOwningPlayer(GetKillingUnit())), 0x123EC98D, (LoadInteger(YDHT, GetHandleId(GetOwningPlayer(GetKillingUnit())), 0x123EC98D) + 1))
                    SaveInteger(YDHT, GetHandleId(GetOwningPlayer(GetKillingUnit())), 0x9B72688C, (LoadInteger(YDHT, GetHandleId(GetOwningPlayer(GetKillingUnit())), 0x9B72688C) + 1))
                    udg_SDJQ3[GetConvertedPlayerId(GetOwningPlayer(GetKillingUnit()))] = (udg_SDJQ3[GetConvertedPlayerId(GetOwningPlayer(GetKillingUnit()))] + 0.01)
                    udg_SDJQ[GetConvertedPlayerId(GetOwningPlayer(GetKillingUnit()))] = (udg_SDJQ[GetConvertedPlayerId(GetOwningPlayer(GetKillingUnit()))] + 0.01)
                    if ((GetOwningPlayer(GetKillingUnit()) == GetLocalPlayer())) then
                        DzFrameSetTexture(udg_ui_BYDJ[0], (("war3mapImported\\jingshi (") .. (I2S(LoadInteger(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x123EC98D))) .. (").tga")), 0)
                    else
                    end
                    ydul_b = 1
                    while true do
                        if ydul_b > 4 then
                            break
                        end
                        if ((LoadInteger(YDHT, GetHandleId(GetOwningPlayer(GetKillingUnit())), 0x9B72688C) == (ydul_b * 5))) then
                            SaveBoolean(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xE8A67BC5, true)
                            SaveUnitHandle(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x7903036E, CreateUnit(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946), udg_DY_JS[ydul_b], 0, 0, 0))
                            DoNothing()
                            if true then
                                break
                            end
                        else
                        end
                        ydul_b = ydul_b + 1
                    end
                    if ((LoadBoolean(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xE8A67BC5) == true)) then
                        SaveBoolean(YDHT, GetHandleId(GetOwningPlayer(GetKillingUnit())), 0x8498BB84, true)
                        if ((GetOwningPlayer(GetKillingUnit()) == GetLocalPlayer())) then
                            DzFrameSetText(udg_ui_BYDJ[2], "点击挑战")
                            DzFrameShow(udg_ui_BYDJ[3], true)
                        else
                        end
                    else
                    end
                else
                end
            else
            end
        else
        end
        if ((IsUnitHiddenBJ((LoadUnitHandle(YDHT, ((GetHandleId((GetOwningPlayer(GetKillingUnit()))))), (StringHash("05NPC"))))) ~= true)) then
            SaveInteger(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0xF5B58222, (LoadInteger(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0xF5B58222) + 1))
            if ((GetOwningPlayer(GetKillingUnit()) == GetLocalPlayer())) then
                DzFrameSetText(LoadInteger(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0xFCB78772), (("|cff000000") .. (("宗门威望：" .. I2S(LoadInteger(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0xF5B58222)))) .. ("|r")))
            else
            end
        else
        end
    else
    end
    if ((GetOwningPlayer(GetTriggerUnit()) == Player(PLAYER_NEUTRAL_AGGRESSIVE))) then
        if (((LoadBoolean(YDHT, ((GetHandleId((GetOwningPlayer(GetKillingUnit()))))), ((GetUnitTypeId(GetTriggerUnit()))))) ~= true)) then
            ConditionalTriggerExecute((LoadTriggerHandle(YDHT, ((GetHandleId((Player(PLAYER_NEUTRAL_AGGRESSIVE))))), (StringHash(("cfq" .. I2S((LoadInteger(YDHT, ((GetHandleId((Player(PLAYER_NEUTRAL_AGGRESSIVE))))), ((GetUnitTypeId(GetTriggerUnit()))))))))))))
        else
        end
        if ((12345678 ~= GetUnitUserData(GetTriggerUnit()))) then
            ydl_trigger = gg_trg_QJFH
            ydl_triggerstep = GetHandleId(ydl_trigger) * (LoadInteger(YDLOC, GetHandleId(ydl_trigger), 0xCFDE6C76) + 3)
            SaveReal(YDLOC, ydl_triggerstep, 0x52DB984E, GetUnitStateSwap(UNIT_STATE_MAX_LIFE, GetTriggerUnit()))
            SaveReal(YDLOC, ydl_triggerstep, 0x5039AFFB, GetUnitStateSwap(ConvertUnitState(0x12), GetTriggerUnit()))
            SaveReal(YDLOC, ydl_triggerstep, 0x23E43AEF, GetUnitStateSwap(ConvertUnitState(0x51), GetTriggerUnit()))
            SaveInteger(YDLOC, ydl_triggerstep, 0x688DFB59, GetUnitTypeId(GetTriggerUnit()))
            SaveReal(YDLOC, ydl_triggerstep, 0xA99320FA, GetUnitX(GetTriggerUnit()))
            TriggerExecute(ydl_trigger)
        else
        end
        if ((IsUnitInGroup(GetTriggerUnit(), xgdg_EzA) == true)) then
            GroupRemoveUnitSimple(GetTriggerUnit(), xgdg_EzA)
            if ((IsUnitGroupEmptyBJ(xgdg_EzA) == true)) then
                if (((LoadInteger(YDHT, ((GetHandleId((Player(PLAYER_NEUTRAL_AGGRESSIVE))))), (552200))) < 301)) then
                    SaveReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xEF89346E, 3.00)
                    SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x8B1FFFFC, (LoadInteger(YDHT, ((GetHandleId((Player(PLAYER_NEUTRAL_AGGRESSIVE))))), (552200))))
                    SaveReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xA9BFF3AE, ((((I2R(((LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x8B1FFFFC) // 2) * 50))) * (I2R((LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x8B1FFFFC) // 3))) * (I2R(1)))) * (I2R(((LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x8B1FFFFC)) // (6)))) + (0.00)))
                    SaveInteger(YDHT, ((GetHandleId((Player(PLAYER_NEUTRAL_AGGRESSIVE))))), (552200), (((LoadInteger(YDHT, ((GetHandleId((Player(PLAYER_NEUTRAL_AGGRESSIVE))))), (552200))) + 1)))
                    DisplayTimedTextToPlayer(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946), 0, 0, 7.00, ("[系统]：" .. ("乾坤塔层数已刷新，当前：" .. I2S((LoadInteger(YDHT, ((GetHandleId((Player(PLAYER_NEUTRAL_AGGRESSIVE))))), (552200)))))))
                    ForForce(udg_ZXWJZ, Trig_Death_002Func007Func001Func004Func001Func003Func002Func007A)
                    ydul_a = 1
                    while true do
                        if ydul_a > 10 then
                            break
                        end
                        if (((LoadInteger(YDHT, ((GetHandleId((Player(PLAYER_NEUTRAL_AGGRESSIVE))))), (552200))) == (10 * ydul_a))) then
                            SaveReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2D345649, GetRandomDirectionDeg())
                            SaveReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x38AB9941, GetRandomReal(0, 500.00))
                            SaveReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x6150906F, (-8400.00 + (CosBJ(LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2D345649)) * LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x38AB9941))))
                            SaveReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x6D77F75F, (-21500.00 + (SinBJ(LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2D345649)) * LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x38AB9941))))
                            SaveUnitHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x384C9D86, CreateUnit(Player(PLAYER_NEUTRAL_AGGRESSIVE), (0x6E6E7267), LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x6150906F), LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x6D77F75F), 270.00))
                            SaveUnitHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x911D5DC2 + (ydul_a), LoadUnitHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x384C9D86))
                            GroupAddUnitSimple(LoadUnitHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x384C9D86), xgdg_EzA)
                            JK_SX_Change(LoadUnitHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x911D5DC2 + (ydul_a)), ConvertUnitState(0x12), 1, ((LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xA9BFF3AE)) * (1.00) * (1.00)))
                            JK_SX_Change(LoadUnitHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x911D5DC2 + (ydul_a)), UNIT_STATE_MAX_LIFE, 1, ((GetUnitStateSwap(ConvertUnitState(0x12), LoadUnitHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x911D5DC2 + (ydul_a)))) * (12.00) * (LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xEF89346E))))
                            JK_SX_Change(LoadUnitHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x911D5DC2 + (ydul_a)), ConvertUnitState(0x20), 1, ((I2R(LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x8B1FFFFC))) * (20.00) * (LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xEF89346E))))
                            JK_SX_Change(LoadUnitHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x911D5DC2 + (ydul_a)), ConvertUnitState(0x51), 1, 30.00)
                            SetUnitMoveSpeed(LoadUnitHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x911D5DC2 + (ydul_a)), 410.00)
                            SetUnitLifePercentBJ(LoadUnitHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x911D5DC2 + (ydul_a)), 100)
                            DoNothing()
                            if true then
                                break
                            end
                        else
                        end
                        ydul_a = ydul_a + 1
                    end
                    ydul_a = 1
                    while true do
                        if ydul_a > 5 then
                            break
                        end
                        SaveReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2D345649, GetRandomDirectionDeg())
                        SaveReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x38AB9941, GetRandomReal(0, 500.00))
                        SaveReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x6150906F, (-8400.00 + (CosBJ(LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2D345649)) * LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x38AB9941))))
                        SaveReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x6D77F75F, (-21500.00 + (SinBJ(LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2D345649)) * LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x38AB9941))))
                        SaveUnitHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x384C9D86, CreateUnit(Player(PLAYER_NEUTRAL_AGGRESSIVE), (0x6E687963), LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x6150906F), LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x6D77F75F), 270.00))
                        GroupAddUnitSimple(LoadUnitHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x384C9D86), xgdg_EzA)
                        SaveUnitHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x911D5DC2 + (ydul_a), LoadUnitHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x384C9D86))
                        JK_SX_Change(LoadUnitHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x911D5DC2 + (ydul_a)), ConvertUnitState(0x12), 1, ((LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xA9BFF3AE)) * (0.30) * (1.00)))
                        JK_SX_Change(LoadUnitHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x911D5DC2 + (ydul_a)), UNIT_STATE_MAX_LIFE, 1, ((GetUnitStateSwap(ConvertUnitState(0x12), LoadUnitHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x911D5DC2 + (ydul_a)))) * (8.00) * (LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xEF89346E))))
                        JK_SX_Change(LoadUnitHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x911D5DC2 + (ydul_a)), ConvertUnitState(0x20), 1, ((I2R(LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x8B1FFFFC))) * (20.00) * (LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xEF89346E))))
                        JK_SX_Change(LoadUnitHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x911D5DC2 + (ydul_a)), ConvertUnitState(0x51), 1, 30.00)
                        SetUnitMoveSpeed(LoadUnitHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x911D5DC2 + (ydul_a)), 410.00)
                        SetUnitLifePercentBJ(LoadUnitHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x911D5DC2 + (ydul_a)), 100)
                        ydul_a = ydul_a + 1
                    end
                else
                end
            else
            end
        else
        end
    else
    end
    FlushChildHashtable(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step)
    ydl_group = nil
    ydl_unit = nil
    ydl_timer = nil
    ydl_trigger = nil
end

function InitTrig_Death_002()
    gg_trg_Death_002 = CreateTrigger()
    TriggerRegisterAnyUnitEventBJ(gg_trg_Death_002, EVENT_PLAYER_UNIT_DEATH)
    TriggerAddAction(gg_trg_Death_002, Trig_Death_002Actions)
end

function Trig_wuxingchufa_paichuActions()
    local ydul_a = nil
    local ydl_localvar_step = LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xCFDE6C76)
    ydl_localvar_step = ydl_localvar_step + 3
    SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xCFDE6C76, ydl_localvar_step)
    SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xECE825E7, ydl_localvar_step)
    SavePlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946, LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))
    SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x6C2DED4E, LoadInteger(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x93DEBCFA))
    ydul_a = 1
    while true do
        if ydul_a > 9 then
            break
        end
        if (((LoadBoolean(YDHT, ((GetHandleId((LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))))), (((LoadInteger(YDHT, StringHash(("wuxing")), StringHash((((I2S(LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x6C2DED4E))) .. ("y") .. (I2S(ydul_a))))))))))) == true)) then
        else
            SaveBoolean(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x312C4181, true)
            DoNothing()
            if true then
                break
            end
        end
        ydul_a = ydul_a + 1
    end
    if ((LoadBoolean(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x312C4181) == true)) then
        FlushChildHashtable(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step)
        do
            return
        end
    else
        JK_UnitTranslationB(udg_WJYX[GetConvertedPlayerId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))], udg_LGFZB_x[GetConvertedPlayerId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))], udg_LGFZB_y[GetConvertedPlayerId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))], bj_lastCreatedEffect, 0.00, "", true)
        SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xF374F3BD + (1), (0x77783031))
        SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xF374F3BD + (2), (0x77783032))
        SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xF374F3BD + (3), (0x77783033))
        SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xF374F3BD + (4), (0x77783034))
        SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xF374F3BD + (5), (0x77783035))
        SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xF374F3BD + (6), (0x77783036))
        UnitRemoveAbilityBJ(LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xF374F3BD + (LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x6C2DED4E))), (LoadUnitHandle(YDHT, ((GetHandleId((LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))))), (StringHash("08NPC")))))
        AddPlayerTechResearched(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946), 0x52303035, 1)
    end
    FlushChildHashtable(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step)
end

function InitTrig_wuxingchufa_paichu()
    gg_trg_wuxingchufa_paichu = CreateTrigger()
    TriggerAddAction(gg_trg_wuxingchufa_paichu, Trig_wuxingchufa_paichuActions)
end

function Trig_ZHENDONGFunc004T()
    CameraClearNoiseForPlayer(LoadPlayerHandle(YDLOC, GetHandleId(GetExpiredTimer()), 0x48656946))
    FlushChildHashtable(YDLOC, GetHandleId(GetExpiredTimer()))
    DestroyTimer(GetExpiredTimer())
end

function Trig_ZHENDONGActions()
    local ydl_timer = nil
    local ydl_localvar_step = LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xCFDE6C76)
    ydl_localvar_step = ydl_localvar_step + 3
    SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xCFDE6C76, ydl_localvar_step)
    SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xECE825E7, ydl_localvar_step)
    SavePlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946, LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))
    SaveReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x0050BBB8, LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x0050BBB8))
    CameraSetEQNoiseForPlayer(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946), 6.00)
    ydl_timer = CreateTimer()
    SavePlayerHandle(YDLOC, GetHandleId(ydl_timer), 0x48656946, LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))
    TimerStart(ydl_timer, LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x0050BBB8), false, Trig_ZHENDONGFunc004T)
    FlushChildHashtable(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step)
    ydl_timer = nil
end

function InitTrig_ZHENDONG()
    gg_trg_ZHENDONG = CreateTrigger()
    DisableTrigger(gg_trg_ZHENDONG)
    TriggerAddAction(gg_trg_ZHENDONG, Trig_ZHENDONGActions)
end

function Trig_dgdfgdgf5Func005T()
    local ydl_group = nil
    local ydl_unit = nil
    SaveInteger(YDLOC, GetHandleId(GetExpiredTimer()), 0x6C2DED4E, (LoadInteger(YDLOC, GetHandleId(GetExpiredTimer()), 0x6C2DED4E) + 1))
    if ((LoadReal(YDLOC, GetHandleId(GetExpiredTimer()), 0x0DB3E3D6) > 0.00)) then
        YDWEFlyEnable(LoadUnitHandle(YDLOC, GetHandleId(GetExpiredTimer()), 0x384C9D86))
        SetUnitFlyHeight(LoadUnitHandle(YDLOC, GetHandleId(GetExpiredTimer()), 0x384C9D86), LoadReal(YDLOC, GetHandleId(GetExpiredTimer()), 0x0DB3E3D6), 1000000000.00)
    else
    end
    if (((I2R(LoadInteger(YDLOC, GetHandleId(GetExpiredTimer()), 0x6C2DED4E)) * LoadReal(YDLOC, GetHandleId(GetExpiredTimer()), 0x96EC469A)) >= LoadReal(YDLOC, GetHandleId(GetExpiredTimer()), 0x38AB9941))) then
        GroupClear(LoadGroupHandle(YDLOC, GetHandleId(GetExpiredTimer()), 0x7B2D08E8))
        DestroyGroup(LoadGroupHandle(YDLOC, GetHandleId(GetExpiredTimer()), 0x7B2D08E8))
        SaveUnitHandle(YDLOC, GetHandleId(GetExpiredTimer()), 0x384C9D86, nil)
        SaveUnitHandle(YDLOC, GetHandleId(GetExpiredTimer()), 0xFA076041, nil)
        FlushChildHashtable(YDLOC, GetHandleId(GetExpiredTimer()))
        DestroyTimer(GetExpiredTimer())
    else
        if ((LoadInteger(YDLOC, GetHandleId(GetExpiredTimer()), 0x4AF79D7A) == 0)) then
            NFTSSetUnitLoc(LoadUnitHandle(YDLOC, GetHandleId(GetExpiredTimer()), 0x384C9D86), true, LoadUnitHandle(YDLOC, GetHandleId(GetExpiredTimer()), 0x384C9D86), 0, 0, ((LoadReal(YDLOC, GetHandleId(GetExpiredTimer()), 0x2D345649)) + (((LoadReal(YDLOC, GetHandleId(GetExpiredTimer()), 0x6C5E960D)) * (I2R(LoadInteger(YDLOC, GetHandleId(GetExpiredTimer()), 0x6C2DED4E)))))), LoadReal(YDLOC, GetHandleId(GetExpiredTimer()), 0x96EC469A))
            EXSetUnitFacing(LoadUnitHandle(YDLOC, GetHandleId(GetExpiredTimer()), 0x384C9D86), ((LoadReal(YDLOC, GetHandleId(GetExpiredTimer()), 0x2D345649)) + (((LoadReal(YDLOC, GetHandleId(GetExpiredTimer()), 0x6C5E960D)) * (I2R(LoadInteger(YDLOC, GetHandleId(GetExpiredTimer()), 0x6C2DED4E)))))))
        else
            NFTSSetUnitLoc(LoadUnitHandle(YDLOC, GetHandleId(GetExpiredTimer()), 0x384C9D86), true, LoadUnitHandle(YDLOC, GetHandleId(GetExpiredTimer()), 0x384C9D86), 0, 0, ((LoadReal(YDLOC, GetHandleId(GetExpiredTimer()), 0x2D345649)) + (((((-1.00) * (LoadReal(YDLOC, GetHandleId(GetExpiredTimer()), 0x6C5E960D)))) * (I2R(LoadInteger(YDLOC, GetHandleId(GetExpiredTimer()), 0x6C2DED4E)))))), LoadReal(YDLOC, GetHandleId(GetExpiredTimer()), 0x96EC469A))
            EXSetUnitFacing(LoadUnitHandle(YDLOC, GetHandleId(GetExpiredTimer()), 0x384C9D86), ((LoadReal(YDLOC, GetHandleId(GetExpiredTimer()), 0x2D345649)) + (((((-1.00) * (LoadReal(YDLOC, GetHandleId(GetExpiredTimer()), 0x6C5E960D)))) * (I2R(LoadInteger(YDLOC, GetHandleId(GetExpiredTimer()), 0x6C2DED4E)))))))
        end
        ydl_group = CreateGroup()
        GroupEnumUnitsInRange(ydl_group, GetUnitX(LoadUnitHandle(YDLOC, GetHandleId(GetExpiredTimer()), 0x384C9D86)), GetUnitY(LoadUnitHandle(YDLOC, GetHandleId(GetExpiredTimer()), 0x384C9D86)), LoadReal(YDLOC, GetHandleId(GetExpiredTimer()), 0x664DCA73), nil)
        while true do
            ydl_unit = FirstOfGroup(ydl_group)
            if ydl_unit == nil then
                break
            end
            GroupRemoveUnit(ydl_group, ydl_unit)
            if ((GetUnitAbilityLevelSwapped((0x416C6F63), ydl_unit) < 1) and (GetUnitAbilityLevelSwapped((0x4176756C), ydl_unit) < 1) and (GetUnitStateSwap(UNIT_STATE_LIFE, ydl_unit) ~= 0.00) and (IsUnitEnemy(ydl_unit, LoadPlayerHandle(YDLOC, GetHandleId(GetExpiredTimer()), 0x48656946)) == true)) then
                if ((IsUnitInGroup(ydl_unit, LoadGroupHandle(YDLOC, GetHandleId(GetExpiredTimer()), 0x7B2D08E8)) ~= true)) then
                    UnitDamageTarget(LoadUnitHandle(YDLOC, GetHandleId(GetExpiredTimer()), 0xFA076041), ydl_unit, LoadReal(YDLOC, GetHandleId(GetExpiredTimer()), 0x6DD3A3AB), false, false, ATTACK_TYPE_NORMAL, DAMAGE_TYPE_NORMAL, WEAPON_TYPE_WHOKNOWS)
                    if ((LoadStr(YDLOC, GetHandleId(GetExpiredTimer()), 0x0930E9B6) == "y")) then
                        YDWESetUnitAbilityDataReal(udg_ZDYXY, (0x41303156), 1, 102, 1.00)
                        YDWESetUnitAbilityDataReal(udg_ZDYXY, (0x41303156), 1, 103, 1.00)
                        IssueTargetOrder(udg_ZDYXY, "thunderbolt", ydl_unit)
                        DestroyEffect(AddSpecialEffect("Abilities\\Spells\\Human\\Thunderclap\\ThunderClapCaster.mdl", GetUnitX(ydl_unit), GetUnitY(ydl_unit)))
                    else
                    end
                    if ((LoadStr(YDLOC, GetHandleId(GetExpiredTimer()), 0x0930E9B6) == "h")) then
                        YDWESetUnitAbilityDataReal(udg_ZDYXY, (0x41303156), 1, 102, 1.00)
                        YDWESetUnitAbilityDataReal(udg_ZDYXY, (0x41303156), 1, 103, 1.00)
                        IssueTargetOrder(udg_ZDYXY, "thunderbolt", ydl_unit)
                        DestroyEffect(AddSpecialEffect("Abilities\\Spells\\Orc\\MirrorImage\\MirrorImageCaster.mdl", GetUnitX(ydl_unit), GetUnitY(ydl_unit)))
                    else
                    end
                    if ((LoadStr(YDLOC, GetHandleId(GetExpiredTimer()), 0x0930E9B6) == "b")) then
                        YDWESetUnitAbilityDataReal(udg_ZDYXY, (0x41303156), 1, 102, 1.00)
                        YDWESetUnitAbilityDataReal(udg_ZDYXY, (0x41303156), 1, 103, 1.00)
                        IssueTargetOrder(udg_ZDYXY, "thunderbolt", ydl_unit)
                        YDWETimerDestroyEffect(1.00, AddSpecialEffectTarget("Abilities\\Spells\\Undead\\FreezingBreath\\FreezingBreathTargetArt.mdl", ydl_unit, "chest"))
                    else
                    end
                else
                end
                GroupAddUnitSimple(ydl_unit, LoadGroupHandle(YDLOC, GetHandleId(GetExpiredTimer()), 0x7B2D08E8))
            else
            end
        end
        DestroyGroup(ydl_group)
    end
    ydl_group = nil
    ydl_unit = nil
end

function Trig_dgdfgdgf5Actions()
    local ydl_timer = nil
    local ydl_localvar_step = LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xCFDE6C76)
    ydl_localvar_step = ydl_localvar_step + 3
    SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xCFDE6C76, ydl_localvar_step)
    SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xECE825E7, ydl_localvar_step)
    SaveReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xE96F2201, (LoadReal(YDHT, GetHandleId(Player(5)), 0x7934730C) / 0.01))
    SaveReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x96EC469A, (LoadReal(YDHT, GetHandleId(Player(5)), 0x2D197131) / RMaxBJ(0.01, LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xE96F2201))))
    SavePlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946, LoadPlayerHandle(YDHT, GetHandleId(Player(5)), 0x01143B62))
    if ((LoadInteger(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x4AF79D7A) == 0)) then
        SaveInteger(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x4AF79D7A, 1)
    else
        SaveInteger(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x4AF79D7A, 0)
    end
    ydl_timer = CreateTimer()
    SaveReal(YDLOC, GetHandleId(ydl_timer), 0x2D345649, LoadReal(YDHT, GetHandleId(Player(5)), 0x168B7882))
    SaveReal(YDLOC, GetHandleId(ydl_timer), 0x664DCA73, LoadReal(YDHT, GetHandleId(Player(5)), 0xAAE4E714))
    SaveUnitHandle(YDLOC, GetHandleId(ydl_timer), 0x384C9D86, LoadUnitHandle(YDHT, GetHandleId(Player(5)), 0xA466DA53))
    SaveUnitHandle(YDLOC, GetHandleId(ydl_timer), 0xFA076041, LoadUnitHandle(YDHT, GetHandleId(Player(5)), 0xCE212FB3))
    SavePlayerHandle(YDLOC, GetHandleId(ydl_timer), 0x48656946, LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))
    SaveReal(YDLOC, GetHandleId(ydl_timer), 0x38AB9941, LoadReal(YDHT, GetHandleId(Player(5)), 0x2D197131))
    SaveReal(YDLOC, GetHandleId(ydl_timer), 0x0DB3E3D6, LoadReal(YDHT, GetHandleId(Player(5)), 0x7526AE49))
    SaveReal(YDLOC, GetHandleId(ydl_timer), 0x0050BBB8, LoadReal(YDHT, GetHandleId(Player(5)), 0x7934730C))
    SaveReal(YDLOC, GetHandleId(ydl_timer), 0x6DD3A3AB, LoadReal(YDHT, GetHandleId(Player(5)), 0x8BD073CC))
    SaveStr(YDLOC, GetHandleId(ydl_timer), 0x0930E9B6, LoadStr(YDHT, GetHandleId(Player(5)), 0x0930E9B6))
    SaveGroupHandle(YDLOC, GetHandleId(ydl_timer), 0x7B2D08E8, CreateGroup())
    SaveReal(YDLOC, GetHandleId(ydl_timer), 0xE96F2201, LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xE96F2201))
    SaveReal(YDLOC, GetHandleId(ydl_timer), 0x96EC469A, LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x96EC469A))
    SaveInteger(YDLOC, GetHandleId(ydl_timer), 0x6C2DED4E, 0)
    SaveInteger(YDLOC, GetHandleId(ydl_timer), 0x4AF79D7A, LoadInteger(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946)), 0x4AF79D7A))
    SaveReal(YDLOC, GetHandleId(ydl_timer), 0x6C5E960D, GetRandomReal(0.50, 1.25))
    TimerStart(ydl_timer, 0.01, true, Trig_dgdfgdgf5Func005T)
    FlushChildHashtable(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step)
    ydl_timer = nil
end

function InitTrig_dgdfgdgf5()
    gg_trg_dgdfgdgf5 = CreateTrigger()
    DisableTrigger(gg_trg_dgdfgdgf5)
    TriggerAddAction(gg_trg_dgdfgdgf5, Trig_dgdfgdgf5Actions)
end

function Trig_dgdfgdgfFunc003T()
    local ydl_group = nil
    local ydl_unit = nil
    SaveInteger(YDLOC, GetHandleId(GetExpiredTimer()), 0x6C2DED4E, (LoadInteger(YDLOC, GetHandleId(GetExpiredTimer()), 0x6C2DED4E) + 1))
    if ((LoadReal(YDLOC, GetHandleId(GetExpiredTimer()), 0x0DB3E3D6) > 0.00)) then
        YDWEFlyEnable(LoadUnitHandle(YDLOC, GetHandleId(GetExpiredTimer()), 0x384C9D86))
        SetUnitFlyHeight(LoadUnitHandle(YDLOC, GetHandleId(GetExpiredTimer()), 0x384C9D86), LoadReal(YDLOC, GetHandleId(GetExpiredTimer()), 0x0DB3E3D6), 1000000000.00)
    else
    end
    if (((I2R(LoadInteger(YDLOC, GetHandleId(GetExpiredTimer()), 0x6C2DED4E)) * LoadReal(YDLOC, GetHandleId(GetExpiredTimer()), 0x96EC469A)) >= LoadReal(YDLOC, GetHandleId(GetExpiredTimer()), 0x38AB9941))) then
        GroupClear(LoadGroupHandle(YDLOC, GetHandleId(GetExpiredTimer()), 0x7B2D08E8))
        DestroyGroup(LoadGroupHandle(YDLOC, GetHandleId(GetExpiredTimer()), 0x7B2D08E8))
        SaveUnitHandle(YDLOC, GetHandleId(GetExpiredTimer()), 0x384C9D86, nil)
        SaveUnitHandle(YDLOC, GetHandleId(GetExpiredTimer()), 0xFA076041, nil)
        SaveStr(YDLOC, GetHandleId(GetExpiredTimer()), 0x0930E9B6, "")
        FlushChildHashtable(YDLOC, GetHandleId(GetExpiredTimer()))
        DestroyTimer(GetExpiredTimer())
    else
        if ((GetUnitMoveSpeed(LoadUnitHandle(YDLOC, GetHandleId(GetExpiredTimer()), 0x384C9D86)) > 0.00)) then
            SetUnitFacing(LoadUnitHandle(YDLOC, GetHandleId(GetExpiredTimer()), 0x384C9D86), LoadReal(YDLOC, GetHandleId(GetExpiredTimer()), 0x2D345649))
            SetUnitPosition(LoadUnitHandle(YDLOC, GetHandleId(GetExpiredTimer()), 0x384C9D86), (GetUnitX(LoadUnitHandle(YDLOC, GetHandleId(GetExpiredTimer()), 0x384C9D86)) + (CosBJ(LoadReal(YDLOC, GetHandleId(GetExpiredTimer()), 0x2D345649)) * LoadReal(YDLOC, GetHandleId(GetExpiredTimer()), 0x96EC469A))), (GetUnitY(LoadUnitHandle(YDLOC, GetHandleId(GetExpiredTimer()), 0x384C9D86)) + (LoadReal(YDLOC, GetHandleId(GetExpiredTimer()), 0x96EC469A) * SinBJ(LoadReal(YDLOC, GetHandleId(GetExpiredTimer()), 0x2D345649)))))
        else
        end
        if ((LoadReal(YDLOC, GetHandleId(GetExpiredTimer()), 0x6DD3A3AB) ~= 0.00)) then
            ydl_group = CreateGroup()
            GroupEnumUnitsInRange(ydl_group, GetUnitX(LoadUnitHandle(YDLOC, GetHandleId(GetExpiredTimer()), 0x384C9D86)), GetUnitY(LoadUnitHandle(YDLOC, GetHandleId(GetExpiredTimer()), 0x384C9D86)), LoadReal(YDLOC, GetHandleId(GetExpiredTimer()), 0x664DCA73), nil)
            while true do
                ydl_unit = FirstOfGroup(ydl_group)
                if ydl_unit == nil then
                    break
                end
                GroupRemoveUnit(ydl_group, ydl_unit)
                if ((GetUnitAbilityLevelSwapped((0x416C6F63), ydl_unit) < 1) and (GetUnitAbilityLevelSwapped((0x4176756C), ydl_unit) < 1) and (0.00 ~= GetUnitStateSwap(UNIT_STATE_LIFE, ydl_unit)) and (IsUnitEnemy(ydl_unit, LoadPlayerHandle(YDLOC, GetHandleId(GetExpiredTimer()), 0x48656946)) == true)) then
                    if ((IsUnitInGroup(ydl_unit, LoadGroupHandle(YDLOC, GetHandleId(GetExpiredTimer()), 0x7B2D08E8)) ~= true)) then
                        UnitDamageTarget(LoadUnitHandle(YDLOC, GetHandleId(GetExpiredTimer()), 0xFA076041), ydl_unit, LoadReal(YDLOC, GetHandleId(GetExpiredTimer()), 0x6DD3A3AB), false, false, ATTACK_TYPE_MELEE, DAMAGE_TYPE_NORMAL, WEAPON_TYPE_WHOKNOWS)
                        DestroyEffect(AddSpecialEffectTarget("Objects\\Spawnmodels\\Undead\\UndeadLargeDeathExplode\\UndeadLargeDeathExplode.mdl", ydl_unit, "chest"))
                        if ((LoadStr(YDLOC, GetHandleId(GetExpiredTimer()), 0x0930E9B6) == "y")) then
                            YDWESetUnitAbilityDataReal(udg_ZDYXY, (0x41303156), 1, 102, 1.00)
                            YDWESetUnitAbilityDataReal(udg_ZDYXY, (0x41303156), 1, 103, 1.00)
                            IssueTargetOrder(udg_ZDYXY, "thunderbolt", ydl_unit)
                            DestroyEffect(AddSpecialEffect("Abilities\\Spells\\Human\\Thunderclap\\ThunderClapCaster.mdl", GetUnitX(ydl_unit), GetUnitY(ydl_unit)))
                        else
                            if ((LoadStr(YDLOC, GetHandleId(GetExpiredTimer()), 0x0930E9B6) == "h")) then
                                YDWESetUnitAbilityDataReal(udg_ZDYXY, (0x41303156), 1, 102, 1.00)
                                YDWESetUnitAbilityDataReal(udg_ZDYXY, (0x41303156), 1, 103, 1.00)
                                IssueTargetOrder(udg_ZDYXY, "thunderbolt", ydl_unit)
                                DestroyEffect(AddSpecialEffect("Abilities\\Spells\\Orc\\MirrorImage\\MirrorImageCaster.mdl", GetUnitX(ydl_unit), GetUnitY(ydl_unit)))
                            else
                                if ((LoadStr(YDLOC, GetHandleId(GetExpiredTimer()), 0x0930E9B6) == "b")) then
                                    YDWESetUnitAbilityDataReal(udg_ZDYXY, (0x41303156), 1, 102, 1.00)
                                    YDWESetUnitAbilityDataReal(udg_ZDYXY, (0x41303156), 1, 103, 1.00)
                                    IssueTargetOrder(udg_ZDYXY, "thunderbolt", ydl_unit)
                                    YDWETimerDestroyEffect(1.00, AddSpecialEffectTarget("Abilities\\Spells\\Undead\\FreezingBreath\\FreezingBreathTargetArt.mdl", ydl_unit, "chest"))
                                else
                                end
                            end
                        end
                    else
                    end
                    GroupAddUnitSimple(ydl_unit, LoadGroupHandle(YDLOC, GetHandleId(GetExpiredTimer()), 0x7B2D08E8))
                else
                end
            end
            DestroyGroup(ydl_group)
        else
        end
    end
    ydl_group = nil
    ydl_unit = nil
end

function Trig_dgdfgdgfActions()
    local ydl_timer = nil
    local ydl_localvar_step = LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xCFDE6C76)
    ydl_localvar_step = ydl_localvar_step + 3
    SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xCFDE6C76, ydl_localvar_step)
    SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xECE825E7, ydl_localvar_step)
    SaveReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xE96F2201, (LoadReal(YDHT, GetHandleId(Player(5)), 0x7934730C) / 0.01))
    SaveReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x96EC469A, (LoadReal(YDHT, GetHandleId(Player(5)), 0x2D197131) / RMaxBJ(0.01, LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xE96F2201))))
    ydl_timer = CreateTimer()
    SaveReal(YDLOC, GetHandleId(ydl_timer), 0x2D345649, LoadReal(YDHT, GetHandleId(Player(5)), 0x168B7882))
    SaveReal(YDLOC, GetHandleId(ydl_timer), 0x664DCA73, LoadReal(YDHT, GetHandleId(Player(5)), 0xAAE4E714))
    SaveUnitHandle(YDLOC, GetHandleId(ydl_timer), 0x384C9D86, LoadUnitHandle(YDHT, GetHandleId(Player(5)), 0xA466DA53))
    SaveUnitHandle(YDLOC, GetHandleId(ydl_timer), 0xFA076041, LoadUnitHandle(YDHT, GetHandleId(Player(5)), 0xCE212FB3))
    SavePlayerHandle(YDLOC, GetHandleId(ydl_timer), 0x48656946, LoadPlayerHandle(YDHT, GetHandleId(Player(5)), 0x01143B62))
    SaveReal(YDLOC, GetHandleId(ydl_timer), 0x38AB9941, LoadReal(YDHT, GetHandleId(Player(5)), 0x2D197131))
    SaveReal(YDLOC, GetHandleId(ydl_timer), 0x0DB3E3D6, LoadReal(YDHT, GetHandleId(Player(5)), 0x7526AE49))
    SaveReal(YDLOC, GetHandleId(ydl_timer), 0x0050BBB8, LoadReal(YDHT, GetHandleId(Player(5)), 0x7934730C))
    SaveReal(YDLOC, GetHandleId(ydl_timer), 0x6DD3A3AB, LoadReal(YDHT, GetHandleId(Player(5)), 0x8BD073CC))
    SaveStr(YDLOC, GetHandleId(ydl_timer), 0x0930E9B6, LoadStr(YDHT, GetHandleId(Player(5)), 0x0930E9B6))
    SaveGroupHandle(YDLOC, GetHandleId(ydl_timer), 0x7B2D08E8, CreateGroup())
    SaveReal(YDLOC, GetHandleId(ydl_timer), 0xE96F2201, LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xE96F2201))
    SaveReal(YDLOC, GetHandleId(ydl_timer), 0x96EC469A, LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x96EC469A))
    SaveInteger(YDLOC, GetHandleId(ydl_timer), 0x6C2DED4E, 0)
    TimerStart(ydl_timer, 0.01, true, Trig_dgdfgdgfFunc003T)
    FlushChildHashtable(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step)
    ydl_timer = nil
end

function InitTrig_dgdfgdgf()
    gg_trg_dgdfgdgf = CreateTrigger()
    DisableTrigger(gg_trg_dgdfgdgf)
    TriggerAddAction(gg_trg_dgdfgdgf, Trig_dgdfgdgfActions)
end

function Trig_xuanyunFunc001T()
    EXPauseUnit((LoadUnitHandle(YDLOC, GetHandleId(GetExpiredTimer()), 0x458B7DE9)), false)
    FlushChildHashtable(YDLOC, GetHandleId(GetExpiredTimer()))
    DestroyTimer(GetExpiredTimer())
end

function Trig_xuanyunActions()
    local ydl_timer = nil
    local ydl_localvar_step = LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xCFDE6C76)
    ydl_localvar_step = ydl_localvar_step + 3
    SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xCFDE6C76, ydl_localvar_step)
    SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xECE825E7, ydl_localvar_step)
    ydl_timer = CreateTimer()
    SaveUnitHandle(YDLOC, GetHandleId(ydl_timer), 0x458B7DE9, GetTriggerUnit())
    TimerStart(ydl_timer, LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x0050BBB8), false, Trig_xuanyunFunc001T)
    FlushChildHashtable(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step)
    ydl_timer = nil
end

function InitTrig_xuanyun()
    gg_trg_xuanyun = CreateTrigger()
    DisableTrigger(gg_trg_xuanyun)
    TriggerAddAction(gg_trg_xuanyun, Trig_xuanyunActions)
end

function Trig_99_1_D___uFunc006Func003Func006T()
    SaveBoolean(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetExpiredTimer()), 0x097573CA)), 0xDAA3C8E8, true)
    FlushChildHashtable(YDLOC, GetHandleId(GetExpiredTimer()))
    DestroyTimer(GetExpiredTimer())
end

function Trig_99_1_D___uFunc006Func003Func021T()
    SaveInteger(YDLOC, GetHandleId(GetExpiredTimer()), 0x312C4181, (LoadInteger(YDLOC, GetHandleId(GetExpiredTimer()), 0x312C4181) + 1))
    MoveLocation(LoadLocationHandle(YDLOC, GetHandleId(GetExpiredTimer()), 0x9CD60476), (GetUnitX(LoadUnitHandle(YDLOC, GetHandleId(GetExpiredTimer()), 0x911D5DC2)) + (CosBJ(LoadReal(YDLOC, GetHandleId(GetExpiredTimer()), 0x2D345649)) * 45.00)), (GetUnitY(LoadUnitHandle(YDLOC, GetHandleId(GetExpiredTimer()), 0x911D5DC2)) + (45.00 * SinBJ(LoadReal(YDLOC, GetHandleId(GetExpiredTimer()), 0x2D345649)))))
    SaveReal(YDLOC, GetHandleId(GetExpiredTimer()), 0x38AB9941, (LoadReal(YDLOC, GetHandleId(GetExpiredTimer()), 0x38AB9941) - 45.00))
    if ((LoadUnitHandle(YDLOC, GetHandleId(GetExpiredTimer()), 0x08E7AAC9) ~= nil) and (ModuloInteger(LoadInteger(YDLOC, GetHandleId(GetExpiredTimer()), 0x312C4181), 3) == 0)) then
        SetUnitTimeScale(LoadUnitHandle(YDLOC, GetHandleId(GetExpiredTimer()), 0x08E7AAC9), 0.00)
    else
    end
    if ((IsTerrainPathableBJ(LoadLocationHandle(YDLOC, GetHandleId(GetExpiredTimer()), 0x9CD60476), PATHING_TYPE_WALKABILITY) == true)) then
        if ((LoadUnitHandle(YDLOC, GetHandleId(GetExpiredTimer()), 0x08E7AAC9) ~= nil)) then
            SetUnitTimeScale(LoadUnitHandle(YDLOC, GetHandleId(GetExpiredTimer()), 0x08E7AAC9), 0.00)
        else
        end
        IssuePointOrder(LoadUnitHandle(YDLOC, GetHandleId(GetExpiredTimer()), 0x911D5DC2), "move", (LoadReal(YDLOC, GetHandleId(GetExpiredTimer()), 0xA99320FA) + (CosBJ(LoadReal(YDLOC, GetHandleId(GetExpiredTimer()), 0x2D345649)) * 25.00)), ((25.00 * SinBJ(LoadReal(YDLOC, GetHandleId(GetExpiredTimer()), 0x2D345649))) + LoadReal(YDLOC, GetHandleId(GetExpiredTimer()), 0xFDF65382)))
        SaveUnitHandle(YDLOC, GetHandleId(GetExpiredTimer()), 0x911D5DC2, nil)
        RemoveLocation(LoadLocationHandle(YDLOC, GetHandleId(GetExpiredTimer()), 0x9CD60476))
        FlushChildHashtable(YDLOC, GetHandleId(GetExpiredTimer()))
        DestroyTimer(GetExpiredTimer())
    else
        SetUnitX(LoadUnitHandle(YDLOC, GetHandleId(GetExpiredTimer()), 0x911D5DC2), (RMinBJ(RMaxBJ(((GetLocationX(LoadLocationHandle(YDLOC, GetHandleId(GetExpiredTimer()), 0x9CD60476))) * 1.0), yd_MapMinX), yd_MapMaxX)))
        SetUnitY(LoadUnitHandle(YDLOC, GetHandleId(GetExpiredTimer()), 0x911D5DC2), (RMinBJ(RMaxBJ(((GetLocationY(LoadLocationHandle(YDLOC, GetHandleId(GetExpiredTimer()), 0x9CD60476))) * 1.0), yd_MapMinY), yd_MapMaxY)))
    end
    if ((LoadReal(YDLOC, GetHandleId(GetExpiredTimer()), 0x38AB9941) <= 150.00)) then
        if ((LoadBoolean(YDLOC, GetHandleId(GetExpiredTimer()), 0x32A9E4C8) ~= true)) then
            SaveBoolean(YDLOC, GetHandleId(GetExpiredTimer()), 0x32A9E4C8, true)
            IssuePointOrder(LoadUnitHandle(YDLOC, GetHandleId(GetExpiredTimer()), 0x911D5DC2), "move", (LoadReal(YDLOC, GetHandleId(GetExpiredTimer()), 0xA99320FA) + (CosBJ(LoadReal(YDLOC, GetHandleId(GetExpiredTimer()), 0x2D345649)) * 25.00)), ((25.00 * SinBJ(LoadReal(YDLOC, GetHandleId(GetExpiredTimer()), 0x2D345649))) + LoadReal(YDLOC, GetHandleId(GetExpiredTimer()), 0xFDF65382)))
        else
        end
        if ((LoadReal(YDLOC, GetHandleId(GetExpiredTimer()), 0x38AB9941) <= 5.00)) then
            if ((LoadUnitHandle(YDLOC, GetHandleId(GetExpiredTimer()), 0x08E7AAC9) ~= nil)) then
                SetUnitTimeScale(LoadUnitHandle(YDLOC, GetHandleId(GetExpiredTimer()), 0x08E7AAC9), 0.00)
            else
            end
            RemoveLocation(LoadLocationHandle(YDLOC, GetHandleId(GetExpiredTimer()), 0x9CD60476))
            IssueImmediateOrder(LoadUnitHandle(YDLOC, GetHandleId(GetExpiredTimer()), 0x911D5DC2), "stop")
            FlushChildHashtable(YDLOC, GetHandleId(GetExpiredTimer()))
            DestroyTimer(GetExpiredTimer())
        else
        end
    else
    end
end

function Trig_99_1_D___uActions()
    local ydul_a = nil
    local ydl_timer = nil
    local ydl_localvar_step = LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xCFDE6C76)
    ydl_localvar_step = ydl_localvar_step + 3
    SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xCFDE6C76, ydl_localvar_step)
    SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xECE825E7, ydl_localvar_step)
    SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x6F96F2D2, LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x6F96F2D2))
    SaveReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xA99320FA, LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xA99320FA))
    SaveReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xFDF65382, LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xFDF65382))
    SavePlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x097573CA, LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x097573CA))
    SaveUnitHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x911D5DC2, LoadUnitHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x911D5DC2))
    if ((IsUnitHiddenBJ(LoadUnitHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x911D5DC2)) ~= true) and (IsUnitPausedBJ(LoadUnitHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x911D5DC2)) ~= true)) then
        if ((GetUnitStateSwap(UNIT_STATE_LIFE, LoadUnitHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x911D5DC2)) ~= 0.00) and (LoadUnitHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x911D5DC2) == udg_WJYX[LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x6F96F2D2)]) and (LoadBoolean(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x097573CA)), 0xDAA3C8E8) == true)) then
            SaveInteger(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x097573CA)), 0xAC179DA1, (LoadInteger(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x097573CA)), 0xAC179DA1) + 1))
            if ((LoadInteger(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x097573CA)), 0xAC179DA1) == 800)) then
                SavePlayerHandle(YDHT, GetHandleId(Player(PLAYER_NEUTRAL_AGGRESSIVE)), 0x119572DE, LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x097573CA))
                SaveStr(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2D1FF186, "CD")
                SaveStr(YDHT, GetHandleId(Player(PLAYER_NEUTRAL_AGGRESSIVE)), 0x0DCA2EC5, LoadStr(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2D1FF186))
                SaveInteger(YDHT, GetHandleId(Player(PLAYER_NEUTRAL_AGGRESSIVE)), 0x27A5056E, 3)
                SaveStr(YDHT, GetHandleId(Player(PLAYER_NEUTRAL_AGGRESSIVE)), 0xF5CF51D7, "1")
                SaveInteger(YDHT, GetHandleId(Player(PLAYER_NEUTRAL_AGGRESSIVE)), 0x20482DE3, 30)
                SaveStr(YDHT, GetHandleId(Player(PLAYER_NEUTRAL_AGGRESSIVE)), 0xF99E56C4, "8")
                TriggerExecute(gg_trg_DzApi_______u)
                ydul_a = 1
                while true do
                    if ydul_a > 5 then
                        break
                    end
                    DisplayTimedTextToPlayer(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946), 0, 0, 8.00, (("激活彩蛋==") .. ("我要飞的更高") .. ("==")))
                    ydul_a = ydul_a + 1
                end
            else
                if (((LoadStr(YDHT, StringHash((GetPlayerName(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x097573CA)))), StringHash(((("8y") .. ("1") .. ("3")))))) == "1")) then
                    DoNothing()
                else
                    SetUnitState(LoadUnitHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x911D5DC2), UNIT_STATE_MANA, (GetUnitStateSwap(UNIT_STATE_MANA, LoadUnitHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x911D5DC2)) - 100.00))
                end
            end
            SaveBoolean(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x097573CA)), 0xDAA3C8E8, false)
            ydl_timer = CreateTimer()
            SavePlayerHandle(YDLOC, GetHandleId(ydl_timer), 0x097573CA, LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x097573CA))
            TimerStart(ydl_timer, 0.20, false, Trig_99_1_D___uFunc006Func003Func006T)
            SaveLocationHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x9CD60476, GetUnitLoc(LoadUnitHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x911D5DC2)))
            SaveLocationHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB0FD2C34, Location(LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xA99320FA), LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xFDF65382)))
            SaveBoolean(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x89CAD642, false)
            SaveReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2D345649, AngleBetweenPoints(LoadLocationHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x9CD60476), LoadLocationHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB0FD2C34)))
            SaveReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x38AB9941, RMinBJ(600.00, RMaxBJ(30.00, (DistanceBetweenPoints(LoadLocationHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x9CD60476), LoadLocationHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB0FD2C34)) - 50.00))))
            SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2F128C38, R2I((LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x38AB9941) / 30.00)))
            EXSetUnitFacing(LoadUnitHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x911D5DC2), LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2D345649))
            SetUnitAnimation(LoadUnitHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x911D5DC2), "Walk")
            SaveStr(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x22E0E7E8, (EXExecuteScript("(require'jass.slk').unit[" .. I2S(GetUnitTypeId(LoadUnitHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x911D5DC2))) .. "].file")))
            YDWETimerRemoveUnit(2, CreateUnitAtLoc(Player(PLAYER_NEUTRAL_PASSIVE), (0x65303055), LoadLocationHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x9CD60476), LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2D345649)))
            if ((SubStringBJ(LoadStr(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x22E0E7E8), (StringLength(LoadStr(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x22E0E7E8)) - 3), StringLength(LoadStr(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x22E0E7E8))) ~= "mdx")) then
                SaveStr(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x22E0E7E8, (LoadStr(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x22E0E7E8) .. ".mdx"))
            else
            end
            SaveReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB54F5BCB, (S2R(EXExecuteScript("(require'jass.slk').unit[" .. I2S(GetUnitTypeId(LoadUnitHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x911D5DC2))) .. "].modelScale")) + 0.10))
            RemoveLocation(LoadLocationHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB0FD2C34))
            ydl_timer = CreateTimer()
            SaveLocationHandle(YDLOC, GetHandleId(ydl_timer), 0x9CD60476, LoadLocationHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x9CD60476))
            SaveUnitHandle(YDLOC, GetHandleId(ydl_timer), 0x911D5DC2, LoadUnitHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x911D5DC2))
            SaveReal(YDLOC, GetHandleId(ydl_timer), 0x2D345649, LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x2D345649))
            SaveReal(YDLOC, GetHandleId(ydl_timer), 0x38AB9941, LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x38AB9941))
            SaveBoolean(YDLOC, GetHandleId(ydl_timer), 0x32A9E4C8, LoadBoolean(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x32A9E4C8))
            SaveUnitHandle(YDLOC, GetHandleId(ydl_timer), 0x08E7AAC9, LoadUnitHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x08E7AAC9))
            SaveInteger(YDLOC, GetHandleId(ydl_timer), 0x312C4181, LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x312C4181))
            SaveReal(YDLOC, GetHandleId(ydl_timer), 0xA99320FA, LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xA99320FA))
            SaveReal(YDLOC, GetHandleId(ydl_timer), 0xFDF65382, LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xFDF65382))
            TimerStart(ydl_timer, 0.02, true, Trig_99_1_D___uFunc006Func003Func021T)
        else
            if ((LoadBoolean(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x097573CA)), 0xDAA3C8E8) == false)) then
                DisplayTextToPlayer(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x097573CA), 0, 0, "技能冷却中或该区域禁止D。")
            else
            end
        end
    else
    end
    FlushChildHashtable(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step)
    ydl_timer = nil
end

function InitTrig_99_1_D___u()
    gg_trg_99_1_D___u = CreateTrigger()
    DisableTrigger(gg_trg_99_1_D___u)
    TriggerAddAction(gg_trg_99_1_D___u, Trig_99_1_D___uActions)
end

function Trig_BOSSchufa________4__uFunc003Func013Func006Func003Func001Func002Func007Func004T()
    local ydul_a = nil
    SaveInteger(YDHT, GetHandleId(LoadUnitHandle(YDLOC, GetHandleId(GetExpiredTimer()), 0x911D5DC2)), 0x89675586, ((LoadInteger(YDHT, GetHandleId(LoadUnitHandle(YDLOC, GetHandleId(GetExpiredTimer()), 0x911D5DC2)), 0x89675586)) + (1)))
    if ((LoadInteger(YDHT, GetHandleId(LoadUnitHandle(YDLOC, GetHandleId(GetExpiredTimer()), 0x911D5DC2)), 0x89675586) <= 5)) then
        ydul_a = 1
        while true do
            if ydul_a > 6 then
                break
            end
            SaveLocationHandle(YDLOC, GetHandleId(GetExpiredTimer()), 0xB0FD2C34, PolarProjectionBJ(LoadLocationHandle(YDLOC, GetHandleId(GetExpiredTimer()), 0x9CD60476), (256.00 * I2R(LoadInteger(YDHT, GetHandleId(LoadUnitHandle(YDLOC, GetHandleId(GetExpiredTimer()), 0x911D5DC2)), 0x89675586))), ((60.00) * (I2R(ydul_a)))))
            SaveUnitHandle(YDLOC, GetHandleId(GetExpiredTimer()), 0xFC95F560, CreateUnitAtLoc(Player(PLAYER_NEUTRAL_AGGRESSIVE), (0x6530304B), LoadLocationHandle(YDLOC, GetHandleId(GetExpiredTimer()), 0xB0FD2C34), 0))
            SaveReal(YDHT, GetHandleId(LoadUnitHandle(YDLOC, GetHandleId(GetExpiredTimer()), 0xFC95F560)), 0x9375D887, LoadReal(YDLOC, GetHandleId(GetExpiredTimer()), 0x6DD3A3AB))
            SaveStr(YDHT, GetHandleId(LoadUnitHandle(YDLOC, GetHandleId(GetExpiredTimer()), 0xFC95F560)), 0xFE88D7FF, "war3mapImported\\misaka light.mdl")
            SaveReal(YDHT, GetHandleId(LoadUnitHandle(YDLOC, GetHandleId(GetExpiredTimer()), 0xFC95F560)), 0xF98356D1, 250.00)
            RemoveLocation(LoadLocationHandle(YDLOC, GetHandleId(GetExpiredTimer()), 0xB0FD2C34))
            ydul_a = ydul_a + 1
        end
    else
        RemoveLocation(LoadLocationHandle(YDLOC, GetHandleId(GetExpiredTimer()), 0x9CD60476))
        PauseUnitBJ(false, LoadUnitHandle(YDLOC, GetHandleId(GetExpiredTimer()), 0x911D5DC2))
        RemoveSavedInteger(YDHT, GetHandleId(LoadUnitHandle(YDLOC, GetHandleId(GetExpiredTimer()), 0x911D5DC2)), 0x89675586)
        FlushChildHashtable(YDLOC, GetHandleId(GetExpiredTimer()))
        DestroyTimer(GetExpiredTimer())
    end
end

function Trig_BOSSchufa________4__uFunc003Func013Func006Func003Func001Func002Func007Func006Func007T()
    local ydul_a = nil
    ydul_a = 1
    while true do
        if ydul_a > 12 then
            break
        end
        SaveUnitHandle(YDLOC, GetHandleId(GetExpiredTimer()), 0x384C9D86, CreateUnit(LoadPlayerHandle(YDLOC, GetHandleId(GetExpiredTimer()), 0x48656946), (0x7A303437), GetUnitX(LoadUnitHandle(YDLOC, GetHandleId(GetExpiredTimer()), 0xE8A264CC)), GetUnitY(LoadUnitHandle(YDLOC, GetHandleId(GetExpiredTimer()), 0xE8A264CC)), ((30.00) * (I2R(ydul_a)))))
        DzSetUnitModel(LoadUnitHandle(YDLOC, GetHandleId(GetExpiredTimer()), 0x384C9D86), "war3mapImported\\TX_1 (34).mdl")
        YDWEFlyEnable(LoadUnitHandle(YDLOC, GetHandleId(GetExpiredTimer()), 0x384C9D86))
        SetUnitFlyHeight(LoadUnitHandle(YDLOC, GetHandleId(GetExpiredTimer()), 0x384C9D86), 120.00, 2000.00)
        YDWETimerRemoveUnit(0.70, LoadUnitHandle(YDLOC, GetHandleId(GetExpiredTimer()), 0x384C9D86))
        SaveReal(YDHT, GetHandleId(Player(5)), 0x168B7882, GetUnitFacing(LoadUnitHandle(YDLOC, GetHandleId(GetExpiredTimer()), 0x384C9D86)))
        SaveReal(YDHT, GetHandleId(Player(5)), 0xAAE4E714, 120.00)
        SaveStr(YDHT, GetHandleId(Player(5)), 0x0930E9B6, "")
        SavePlayerHandle(YDHT, GetHandleId(Player(5)), 0x01143B62, LoadPlayerHandle(YDLOC, GetHandleId(GetExpiredTimer()), 0x48656946))
        SaveReal(YDHT, GetHandleId(Player(5)), 0x2D197131, 1200.00)
        SaveReal(YDHT, GetHandleId(Player(5)), 0x7526AE49, 50.00)
        SaveReal(YDHT, GetHandleId(Player(5)), 0x7934730C, 0.70)
        SaveReal(YDHT, GetHandleId(Player(5)), 0x8BD073CC, LoadReal(YDLOC, GetHandleId(GetExpiredTimer()), 0x6DD3A3AB))
        SaveUnitHandle(YDHT, GetHandleId(Player(5)), 0xA466DA53, LoadUnitHandle(YDLOC, GetHandleId(GetExpiredTimer()), 0x384C9D86))
        SaveUnitHandle(YDHT, GetHandleId(Player(5)), 0xCE212FB3, LoadUnitHandle(YDLOC, GetHandleId(GetExpiredTimer()), 0xE8A264CC))
        TriggerExecute(gg_trg_dgdfgdgf)
        ydul_a = ydul_a + 1
    end
    PauseUnitBJ(false, LoadUnitHandle(YDLOC, GetHandleId(GetExpiredTimer()), 0xE8A264CC))
    FlushChildHashtable(YDLOC, GetHandleId(GetExpiredTimer()))
    DestroyTimer(GetExpiredTimer())
end

function Trig_BOSSchufa________4__uFunc003Func013Func006Func003Func001Func002Func007Func006Func009Func012T()
    PauseUnitBJ(false, LoadUnitHandle(YDLOC, GetHandleId(GetExpiredTimer()), 0xE8A264CC))
    SetUnitTimeScale(LoadUnitHandle(YDLOC, GetHandleId(GetExpiredTimer()), 0xE8A264CC), 1)
    FlushChildHashtable(YDLOC, GetHandleId(GetExpiredTimer()))
    DestroyTimer(GetExpiredTimer())
end

function Trig_BOSSchufa________4__uFunc003Func013Func006Func003Func001Func002Func007Func006Func009Func014Func004T()
    SaveInteger(YDHT, GetHandleId(LoadUnitHandle(YDLOC, GetHandleId(GetExpiredTimer()), 0x911D5DC2)), 0x89675586, ((LoadInteger(YDHT, GetHandleId(LoadUnitHandle(YDLOC, GetHandleId(GetExpiredTimer()), 0x911D5DC2)), 0x89675586)) + (1)))
    if ((LoadInteger(YDHT, GetHandleId(LoadUnitHandle(YDLOC, GetHandleId(GetExpiredTimer()), 0x911D5DC2)), 0x89675586) <= 45)) then
        SaveReal(YDLOC, GetHandleId(GetExpiredTimer()), 0x6DD3A3AB, ((11000.00 * S2R(EXExecuteScript("(require'jass.slk').unit[" .. I2S(GetUnitTypeId(LoadUnitHandle(YDLOC, GetHandleId(GetExpiredTimer()), 0x911D5DC2))) .. "].regenMana"))) * I2R(GetPlayerTechCountSimple(0x52303044, Player(5)))))
        SaveLocationHandle(YDLOC, GetHandleId(GetExpiredTimer()), 0x9CD60476, JK_Round(1000.00, GetUnitX(LoadUnitHandle(YDLOC, GetHandleId(GetExpiredTimer()), 0x911D5DC2)), GetUnitY(LoadUnitHandle(YDLOC, GetHandleId(GetExpiredTimer()), 0x911D5DC2))))
        SaveUnitHandle(YDLOC, GetHandleId(GetExpiredTimer()), 0xFC95F560, CreateUnitAtLoc(Player(PLAYER_NEUTRAL_AGGRESSIVE), (0x6530304B), LoadLocationHandle(YDLOC, GetHandleId(GetExpiredTimer()), 0x9CD60476), 0))
        SaveReal(YDHT, GetHandleId(LoadUnitHandle(YDLOC, GetHandleId(GetExpiredTimer()), 0xFC95F560)), 0x9375D887, LoadReal(YDLOC, GetHandleId(GetExpiredTimer()), 0x6DD3A3AB))
        SaveReal(YDHT, GetHandleId(LoadUnitHandle(YDLOC, GetHandleId(GetExpiredTimer()), 0xFC95F560)), 0xF98356D1, 250.00)
        SaveStr(YDHT, GetHandleId(LoadUnitHandle(YDLOC, GetHandleId(GetExpiredTimer()), 0xFC95F560)), 0xFE88D7FF, "war3mapImported\\TX_1 (33).mdl")
        RemoveLocation(LoadLocationHandle(YDLOC, GetHandleId(GetExpiredTimer()), 0x9CD60476))
    else
        RemoveSavedInteger(YDHT, GetHandleId(LoadUnitHandle(YDLOC, GetHandleId(GetExpiredTimer()), 0x911D5DC2)), 0x89675586)
        PauseUnit(LoadUnitHandle(YDLOC, GetHandleId(GetExpiredTimer()), 0x911D5DC2), false)
        FlushChildHashtable(YDLOC, GetHandleId(GetExpiredTimer()))
        DestroyTimer(GetExpiredTimer())
    end
end

function Trig_BOSSchufa________4__uFunc003Func013Func006Func003Func001Func002Func007Func006Func009Func014Func006Func008T()
    SaveInteger(YDHT, GetHandleId(LoadUnitHandle(YDLOC, GetHandleId(GetExpiredTimer()), 0x911D5DC2)), 0x89675586, ((LoadInteger(YDHT, GetHandleId(LoadUnitHandle(YDLOC, GetHandleId(GetExpiredTimer()), 0x911D5DC2)), 0x89675586)) + (1)))
    if ((LoadInteger(YDHT, GetHandleId(LoadUnitHandle(YDLOC, GetHandleId(GetExpiredTimer()), 0x911D5DC2)), 0x89675586) <= 25)) then
        SaveLocationHandle(YDLOC, GetHandleId(GetExpiredTimer()), 0x9CD60476, JK_Round(1000.00, GetUnitX(LoadUnitHandle(YDLOC, GetHandleId(GetExpiredTimer()), 0x911D5DC2)), GetUnitY(LoadUnitHandle(YDLOC, GetHandleId(GetExpiredTimer()), 0x911D5DC2))))
        SaveUnitHandle(YDLOC, GetHandleId(GetExpiredTimer()), 0xFC95F560, CreateUnitAtLoc(Player(PLAYER_NEUTRAL_AGGRESSIVE), (0x6530304B), LoadLocationHandle(YDLOC, GetHandleId(GetExpiredTimer()), 0x9CD60476), 0))
        SaveReal(YDHT, GetHandleId(LoadUnitHandle(YDLOC, GetHandleId(GetExpiredTimer()), 0xFC95F560)), 0x9375D887, LoadReal(YDLOC, GetHandleId(GetExpiredTimer()), 0x6DD3A3AB))
        SaveReal(YDHT, GetHandleId(LoadUnitHandle(YDLOC, GetHandleId(GetExpiredTimer()), 0xFC95F560)), 0xF98356D1, 250.00)
        SaveStr(YDHT, GetHandleId(LoadUnitHandle(YDLOC, GetHandleId(GetExpiredTimer()), 0xFC95F560)), 0xFE88D7FF, "war3mapImported\\TX_1 (3).mdl")
        RemoveLocation(LoadLocationHandle(YDLOC, GetHandleId(GetExpiredTimer()), 0x9CD60476))
    else
        RemoveSavedInteger(YDHT, GetHandleId(LoadUnitHandle(YDLOC, GetHandleId(GetExpiredTimer()), 0x911D5DC2)), 0x89675586)
        PauseUnit(LoadUnitHandle(YDLOC, GetHandleId(GetExpiredTimer()), 0x911D5DC2), false)
        FlushChildHashtable(YDLOC, GetHandleId(GetExpiredTimer()))
        DestroyTimer(GetExpiredTimer())
    end
end

function Trig_BOSSchufa________4__uFunc003Func013Func006Conditions()
    local ydl_timer = nil
    local ydul_a = nil
    if ((GetAttacker() == xgdg_BAA)) then
        if ((GetRandomReal(0, 1.50) <= 0.01)) then
            SaveUnitHandle(YDLOC, GetHandleId(GetTriggeringTrigger()), 0x911D5DC2, GetAttacker())
            SavePlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()), 0x48656946, GetOwningPlayer(GetAttacker()))
            SaveReal(YDLOC, GetHandleId(GetTriggeringTrigger()), 0x6DD3A3AB, ((GetUnitStateSwap(ConvertUnitState(0x12), GetAttacker()) * 10.00) * (I2R(GetPlayerTechCountSimple(0x52303044, Player(5))) * 0.20)))
            SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xFFCC81C4, GetRandomInt(1, GetPlayerTechCountSimple(0x52303044, Player(5))))
            if ((LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xFFCC81C4) > 5)) then
                SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xFFCC81C4, 5)
            else
            end
            if ((LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xFFCC81C4) == 1)) then
                PauseUnitBJ(true, LoadUnitHandle(YDLOC, GetHandleId(GetTriggeringTrigger()), 0x911D5DC2))
                SetUnitAnimation(GetAttacker(), "spell slam")
                ydl_timer = CreateTimer()
                SaveUnitHandle(YDLOC, GetHandleId(ydl_timer), 0x911D5DC2, GetAttacker())
                SaveLocationHandle(YDLOC, GetHandleId(ydl_timer), 0x9CD60476, GetUnitLoc(GetTriggerUnit()))
                SaveLocationHandle(YDLOC, GetHandleId(ydl_timer), 0xB0FD2C34, LoadLocationHandle(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xB0FD2C34))
                SaveUnitHandle(YDLOC, GetHandleId(ydl_timer), 0xFC95F560, LoadUnitHandle(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xFC95F560))
                SaveReal(YDLOC, GetHandleId(ydl_timer), 0x6DD3A3AB, LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()), 0x6DD3A3AB))
                TimerStart(ydl_timer, 0.30, true, Trig_BOSSchufa________4__uFunc003Func013Func006Func003Func001Func002Func007Func004T)
                ydl_timer = nil
                do
                    return
                end
            else
                if ((LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xFFCC81C4) == 2)) then
                    SaveReal(YDLOC, GetHandleId(GetTriggeringTrigger()), 0x2D345649, GetUnitFacing(GetAttacker()))
                    PauseUnitBJ(true, GetAttacker())
                    SetUnitAnimation(GetAttacker(), "spell slam")
                    SaveReal(YDHT, GetHandleId(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()), 0x48656946)), 0x0CB0B6D6, LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()), 0x6DD3A3AB))
                    ydul_a = 1
                    while true do
                        if ydul_a > 12 then
                            break
                        end
                        SaveUnitHandle(YDLOC, GetHandleId(GetTriggeringTrigger()), 0x384C9D86, CreateUnit(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()), 0x48656946), (0x65303042), GetUnitX(GetAttacker()), GetUnitY(GetAttacker()), ((30.00) * (I2R(ydul_a)))))
                        SetUnitAnimation(LoadUnitHandle(YDLOC, GetHandleId(GetTriggeringTrigger()), 0x384C9D86), "birth")
                        YDWETimerRemoveUnit(1.50, LoadUnitHandle(YDLOC, GetHandleId(GetTriggeringTrigger()), 0x384C9D86))
                        ydul_a = ydul_a + 1
                    end
                    ydl_timer = CreateTimer()
                    SaveUnitHandle(YDLOC, GetHandleId(ydl_timer), 0xE8A264CC, GetAttacker())
                    SaveUnitHandle(YDLOC, GetHandleId(ydl_timer), 0x384C9D86, LoadUnitHandle(YDLOC, GetHandleId(GetTriggeringTrigger()), 0x384C9D86))
                    SaveReal(YDLOC, GetHandleId(ydl_timer), 0x6DD3A3AB, LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()), 0x6DD3A3AB))
                    SavePlayerHandle(YDLOC, GetHandleId(ydl_timer), 0x48656946, LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()), 0x48656946))
                    TimerStart(ydl_timer, 1.50, false, Trig_BOSSchufa________4__uFunc003Func013Func006Func003Func001Func002Func007Func006Func007T)
                    ydl_timer = nil
                    do
                        return
                    end
                else
                    if ((LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xFFCC81C4) == 3)) then
                        SaveReal(YDLOC, GetHandleId(GetTriggeringTrigger()), 0x2D345649, GetUnitFacing(GetAttacker()))
                        PauseUnitBJ(true, GetAttacker())
                        SetUnitAnimation(GetAttacker(), "attack")
                        SetUnitTimeScale(GetAttacker(), 0.50)
                        SaveUnitHandle(YDLOC, GetHandleId(GetTriggeringTrigger()), 0x384C9D86, CreateUnit(Player(PLAYER_NEUTRAL_AGGRESSIVE), (0x6530304B), GetUnitX(GetTriggerUnit()), GetUnitY(GetTriggerUnit()), 0))
                        SetUnitScale(LoadUnitHandle(YDLOC, GetHandleId(GetTriggeringTrigger()), 0x384C9D86), 3.00, 3.00, 3.00)
                        SaveReal(YDHT, GetHandleId(LoadUnitHandle(YDLOC, GetHandleId(GetTriggeringTrigger()), 0x384C9D86)), 0x9375D887, LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()), 0x6DD3A3AB))
                        SaveReal(YDHT, GetHandleId(LoadUnitHandle(YDLOC, GetHandleId(GetTriggeringTrigger()), 0x384C9D86)), 0xF98356D1, 750.00)
                        SaveReal(YDHT, GetHandleId(LoadUnitHandle(YDLOC, GetHandleId(GetTriggeringTrigger()), 0x384C9D86)), 0xD92E3573, 3.00)
                        SaveStr(YDHT, GetHandleId(LoadUnitHandle(YDLOC, GetHandleId(GetTriggeringTrigger()), 0x384C9D86)), 0xFE88D7FF, "war3mapImported\\TX_1 (30).mdl")
                        ydl_timer = CreateTimer()
                        SaveUnitHandle(YDLOC, GetHandleId(ydl_timer), 0xE8A264CC, GetAttacker())
                        TimerStart(ydl_timer, 1.50, false, Trig_BOSSchufa________4__uFunc003Func013Func006Func003Func001Func002Func007Func006Func009Func012T)
                        ydl_timer = nil
                        do
                            return
                        end
                    else
                        if ((LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xFFCC81C4) == 4)) then
                            PauseUnitBJ(true, LoadUnitHandle(YDLOC, GetHandleId(GetTriggeringTrigger()), 0x911D5DC2))
                            SetUnitAnimation(GetAttacker(), "spell")
                            ydl_timer = CreateTimer()
                            SaveUnitHandle(YDLOC, GetHandleId(ydl_timer), 0x911D5DC2, GetAttacker())
                            SaveLocationHandle(YDLOC, GetHandleId(ydl_timer), 0x9CD60476, LoadLocationHandle(YDLOC, GetHandleId(GetTriggeringTrigger()), 0x9CD60476))
                            SaveUnitHandle(YDLOC, GetHandleId(ydl_timer), 0xFC95F560, LoadUnitHandle(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xFC95F560))
                            SaveReal(YDLOC, GetHandleId(ydl_timer), 0x6DD3A3AB, LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()), 0x6DD3A3AB))
                            TimerStart(ydl_timer, 0.07, true, Trig_BOSSchufa________4__uFunc003Func013Func006Func003Func001Func002Func007Func006Func009Func014Func004T)
                            ydl_timer = nil
                            do
                                return
                            end
                        else
                            if ((LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xFFCC81C4) == 5)) then
                                SaveLocationHandle(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xC18F437A, GetUnitLoc(GetTriggerUnit()))
                                PauseUnitBJ(true, LoadUnitHandle(YDLOC, GetHandleId(GetTriggeringTrigger()), 0x911D5DC2))
                                SetUnitAnimation(GetAttacker(), "spell")
                                SaveEffectHandle(YDLOC, GetHandleId(GetTriggeringTrigger()), 0x62C50DE6, AddSpecialEffectLoc("war3mapImported\\[qh_xin]tx_z (12).mdl", LoadLocationHandle(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xC18F437A)))
                                EXSetEffectSize(LoadEffectHandle(YDLOC, GetHandleId(GetTriggeringTrigger()), 0x62C50DE6), 5.00)
                                YDWETimerDestroyEffect(5.00, LoadEffectHandle(YDLOC, GetHandleId(GetTriggeringTrigger()), 0x62C50DE6))
                                ydl_timer = CreateTimer()
                                SaveUnitHandle(YDLOC, GetHandleId(ydl_timer), 0x911D5DC2, GetAttacker())
                                SaveLocationHandle(YDLOC, GetHandleId(ydl_timer), 0x9CD60476, LoadLocationHandle(YDLOC, GetHandleId(GetTriggeringTrigger()), 0x9CD60476))
                                SaveUnitHandle(YDLOC, GetHandleId(ydl_timer), 0xFC95F560, LoadUnitHandle(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xFC95F560))
                                SaveReal(YDLOC, GetHandleId(ydl_timer), 0x6DD3A3AB, LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()), 0x6DD3A3AB))
                                TimerStart(ydl_timer, 0.10, true, Trig_BOSSchufa________4__uFunc003Func013Func006Func003Func001Func002Func007Func006Func009Func014Func006Func008T)
                                RemoveLocation(LoadLocationHandle(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xC18F437A))
                                ydl_timer = nil
                                do
                                    return
                                end
                            else
                            end
                        end
                    end
                end
            end
        else
        end
    else
    end
    if (((EVENT_UNIT_DEATH == GetTriggerEventId()) == true)) then
        FlushChildHashtable(YDLOC, GetHandleId(GetTriggeringTrigger()))
        DestroyTrigger(GetTriggeringTrigger())
    else
    end
    ydl_timer = nil
end

function Trig_BOSSchufa________4__uFunc003Func013Func008Func002Func002002()
    CustomDefeatBJ(GetEnumPlayer(), "失败!")
end

function Trig_BOSSchufa________4__uFunc003Func013Func008Func002Func003002()
    CustomVictoryBJ(GetEnumPlayer(), true, true)
end

function Trig_BOSSchufa________4__uFunc003Func013Func008T()
    if ((GetUnitStateSwap(UNIT_STATE_LIFE, LoadUnitHandle(YDLOC, GetHandleId(GetExpiredTimer()), 0x76ABBC1D)) ~= 0.00)) then
        ForForce(udg_ZXWJZ, Trig_BOSSchufa________4__uFunc003Func013Func008Func002Func002002)
    else
        ForForce(udg_ZXWJZ, Trig_BOSSchufa________4__uFunc003Func013Func008Func002Func003002)
    end
    FlushChildHashtable(YDLOC, GetHandleId(GetExpiredTimer()))
    DestroyTimer(GetExpiredTimer())
end

function Trig_BOSSchufa________4__uFunc003Func015Func001Conditions()
    SaveReal(YDLOC, GetHandleId(GetTriggeringTrigger()), 0x6DD3A3AB, GetEventDamage())
    EXSetEventDamage(((RMaxBJ((GetUnitStateSwap(UNIT_STATE_MAX_LIFE, GetTriggerUnit()) * 0.03), LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()), 0x6DD3A3AB))) * 1.0))
    if (((EVENT_UNIT_DEATH == GetTriggerEventId()) == true)) then
        FlushChildHashtable(YDLOC, GetHandleId(GetTriggeringTrigger()))
        DestroyTrigger(GetTriggeringTrigger())
    else
    end
end

function Trig_BOSSchufa________4__uFunc003Func016T()
    if ((GetUnitStateSwap(UNIT_STATE_LIFE, LoadUnitHandle(YDLOC, GetHandleId(GetExpiredTimer()), 0x944CCEB0)) ~= 0.00)) then
        IssuePointOrder(LoadUnitHandle(YDLOC, GetHandleId(GetExpiredTimer()), 0x944CCEB0), "attack", GetUnitX(gg_unit_O001_0009), GetUnitY(gg_unit_O001_0009))
    else
        SaveUnitHandle(YDLOC, GetHandleId(GetExpiredTimer()), 0x944CCEB0, nil)
        FlushChildHashtable(YDLOC, GetHandleId(GetExpiredTimer()))
        DestroyTimer(GetExpiredTimer())
    end
end

function Trig_BOSSchufa________4__uActions()
    local ydl_trigger = nil
    local ydl_timer = nil
    local ydl_localvar_step = LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xCFDE6C76)
    ydl_localvar_step = ydl_localvar_step + 3
    SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xCFDE6C76, ydl_localvar_step)
    SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), 0xECE825E7, ydl_localvar_step)
    SaveReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xA99320FA, 2812.00)
    SaveReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xFDF65382, -5945.00)
    if ((LoadBoolean(YDHT, GetHandleId(Player(5)), 0xB9C24643) == false)) then
        PlaySoundBJ(gg_snd_SargerasLaugh)
        SaveInteger(YDHT, GetHandleId(Player(7)), 0xB567476E, (LoadInteger(YDHT, GetHandleId(Player(7)), 0xB567476E) + 1))
        if ((LoadBoolean(YDHT, GetHandleId(Player(PLAYER_NEUTRAL_AGGRESSIVE)), 0x15E3BC42) == true)) then
            SaveUnitHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x911D5DC2 + (1), PlaceRandomUnit(udg_STdwc[LoadInteger(YDHT, GetPlayerTechCountSimple(0x52303044, Player(5)), 0x97A871CF)], Player(7), LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xA99320FA), LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xFDF65382), 0))
        else
            SaveUnitHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x911D5DC2 + (1), PlaceRandomUnit(udg_STdwc[LoadInteger(YDHT, GetHandleId(Player(7)), 0xB567476E)], Player(7), LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xA99320FA), LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xFDF65382), 0))
        end
        SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x3989EA46, GetUnitTypeId(LoadUnitHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x911D5DC2 + (1))))
        UnitPoolRemoveUnitType(udg_STdwc[1], LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x3989EA46))
        SaveReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x6E193DD8, S2R(EXExecuteScript("(require'jass.slk').unit[" .. I2S(GetUnitTypeId(LoadUnitHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x911D5DC2 + (1)))) .. "].regenHP")))
        JK_SX_Change(LoadUnitHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x911D5DC2 + (1)), ConvertUnitState(0x51), 1, 10.00)
        JK_SX_Change(LoadUnitHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x911D5DC2 + (1)), UNIT_STATE_MAX_LIFE, 1, ((250.00) * (I2R((GetPlayerTechCountSimple(0x52303044, Player(5)) + GetPlayerTechCountSimple(0x52303044, Player(5))))) * (LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x6E193DD8))))
        IssuePointOrder(LoadUnitHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x911D5DC2 + (1)), "attack", GetUnitX(gg_unit_O001_0009), GetUnitY(gg_unit_O001_0009))
        SaveUnitHandle(YDHT, GetHandleId(Player(7)), 0x944CCEB0, LoadUnitHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x911D5DC2 + (1)))
        SetUnitLifePercentBJ(LoadUnitHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x911D5DC2 + (1)), 100)
        if ((udg_S == LoadInteger(YDHT, GetPlayerTechCountSimple(0x52303044, Player(5)), 0xF095A1F4))) then
            xgdg_BAA = LoadUnitHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x911D5DC2 + (1))
            DestroyTrigger(gg_trg_jgc01)
            DestroyTrigger(gg_trg_jgc02)
            SaveUnitHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x0023286E, LoadUnitHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x911D5DC2 + (1)))
            ydl_trigger = CreateTrigger()
            SaveLocationHandle(YDLOC, GetHandleId(ydl_trigger), 0x9CD60476, LoadLocationHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x9CD60476))
            SaveLocationHandle(YDLOC, GetHandleId(ydl_trigger), 0xB0FD2C34, LoadLocationHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xB0FD2C34))
            SaveLocationHandle(YDLOC, GetHandleId(ydl_trigger), 0xC18F437A, LoadLocationHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xC18F437A))
            SaveUnitHandle(YDLOC, GetHandleId(ydl_trigger), 0x911D5DC2, LoadUnitHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x911D5DC2))
            SaveUnitHandle(YDLOC, GetHandleId(ydl_trigger), 0xFC95F560, LoadUnitHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xFC95F560))
            SaveUnitHandle(YDLOC, GetHandleId(ydl_trigger), 0x384C9D86, LoadUnitHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x384C9D86))
            SaveReal(YDLOC, GetHandleId(ydl_trigger), 0x6DD3A3AB, LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x6DD3A3AB))
            SaveEffectHandle(YDLOC, GetHandleId(ydl_trigger), 0x62C50DE6, LoadEffectHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x62C50DE6))
            SavePlayerHandle(YDLOC, GetHandleId(ydl_trigger), 0x48656946, LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x48656946))
            SaveInteger(YDLOC, GetHandleId(ydl_trigger), 0xFFCC81C4, LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xFFCC81C4))
            TriggerRegisterAnyUnitEventBJ(ydl_trigger, EVENT_PLAYER_UNIT_ATTACKED)
            TriggerRegisterUnitEvent(ydl_trigger, LoadUnitHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x0023286E), EVENT_UNIT_DEATH)
            TriggerAddCondition(ydl_trigger, Condition(Trig_BOSSchufa________4__uFunc003Func013Func006Conditions))
            SaveTimerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x38782FFC, CreateTimer())
            TimerDialogSetTitle(LoadTimerDialogHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x341D852A), "距离游戏结束还有：")
            CreateTimerDialogBJ(LoadTimerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x38782FFC), "距离游戏结束：")
            SaveTimerDialogHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x341D852A, bj_lastCreatedTimerDialog)
            TimerDialogSetTimeColorBJ(GetLastCreatedTimerDialogBJ(), 100.00, 100.00, 100.00, 0)
            ydl_timer = LoadTimerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x38782FFC)
            SaveUnitHandle(YDLOC, GetHandleId(ydl_timer), 0x76ABBC1D, LoadUnitHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x911D5DC2 + (1)))
            TimerStart(ydl_timer, 600.00, false, Trig_BOSSchufa________4__uFunc003Func013Func008T)
        else
        end
        RemoveLocation(LoadLocationHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xA1614B4D))
        ydl_trigger = CreateTrigger()
        SaveReal(YDLOC, GetHandleId(ydl_trigger), 0x6DD3A3AB, LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x6DD3A3AB))
        TriggerRegisterUnitEvent(ydl_trigger, LoadUnitHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x0023286E), EVENT_UNIT_DAMAGED)
        TriggerRegisterUnitEvent(ydl_trigger, LoadUnitHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x0023286E), EVENT_UNIT_DEATH)
        TriggerAddCondition(ydl_trigger, Condition(Trig_BOSSchufa________4__uFunc003Func015Func001Conditions))
        ydl_timer = CreateTimer()
        SaveUnitHandle(YDLOC, GetHandleId(ydl_timer), 0x944CCEB0, LoadUnitHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x911D5DC2 + (1)))
        TimerStart(ydl_timer, 10.00, true, Trig_BOSSchufa________4__uFunc003Func016T)
    else
        SaveUnitHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x911D5DC2 + (1), PlaceRandomUnit(udg_STdwc[1], Player(7), LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xA99320FA), LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0xFDF65382), 0))
        SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x3989EA46, GetUnitTypeId(LoadUnitHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x911D5DC2 + (1))))
        JK_SX_Change(LoadUnitHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x911D5DC2 + (1)), ConvertUnitState(0x12), 1, 500000.00)
        JK_SX_Change(LoadUnitHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x911D5DC2 + (1)), UNIT_STATE_MAX_LIFE, 1, (100000.00 * I2R(udg_S)))
        JK_SX_Change(LoadUnitHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x911D5DC2 + (1)), ConvertUnitState(0x20), 1, (1000.00 * I2R(udg_S)))
        JK_SX_Change(LoadUnitHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x911D5DC2 + (1)), ConvertUnitState(0x51), 1, 10.00)
        IssuePointOrder(LoadUnitHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 0x911D5DC2 + (1)), "attack", GetUnitX(gg_unit_O001_0009), GetUnitY(gg_unit_O001_0009))
    end
    FlushChildHashtable(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step)
    ydl_trigger = nil
    ydl_timer = nil
end

function InitTrig_BOSSchufa________4__u()
    gg_trg_BOSSchufa________4__u = CreateTrigger()
    DisableTrigger(gg_trg_BOSSchufa________4__u)
    TriggerAddAction(gg_trg_BOSSchufa________4__u, Trig_BOSSchufa________4__uActions)
end
end
