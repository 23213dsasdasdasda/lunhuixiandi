-- Converted from 342.w3x map/map/war3map.j.
-- Map creation, trigger registration, main, and config.
return function(_ENV)
function InitGlobals()
    local i = 0
    i = 0
    while true do
        if (i > 1) then
            break
        end
        udg_SDJQ[i] = 0
        i = i + 1
    end
    i = 0
    while true do
        if (i > 1) then
            break
        end
        udg_SDJQ2[i] = 0
        i = i + 1
    end
    udg_ZXWJZ = CreateForce()
    udg_DWZPT = CreateGroup()
    i = 0
    while true do
        if (i > 1) then
            break
        end
        udg_WQTX1[i] = ""
        i = i + 1
    end
    udg_S = 0
    udg_JSB = 0
    udg_JGjishi = CreateTimer()
    udg_tingguai = CreateTimer()
    udg_ND = ""
    i = 0
    while true do
        if (i > 1) then
            break
        end
        udg_JT[i] = 0
        i = i + 1
    end
    udg_index = DialogCreate()
    i = 0
    while true do
        if (i > 5) then
            break
        end
        udg_LZSL[i] = 0
        i = i + 1
    end
    i = 0
    while true do
        if (i > 1) then
            break
        end
        udg_ang[i] = 0
        i = i + 1
    end
    i = 0
    while true do
        if (i > 1) then
            break
        end
        udg_BSBHF[i] = 0
        i = i + 1
    end
    i = 0
    while true do
        if (i > 1) then
            break
        end
        udg_LGFJBJL[i] = 0
        i = i + 1
    end
    i = 0
    while true do
        if (i > 1) then
            break
        end
        udg_UIzx[i] = ""
        i = i + 1
    end
    i = 0
    while true do
        if (i > 4) then
            break
        end
        udg_LGFZB_x[i] = 0
        i = i + 1
    end
    i = 0
    while true do
        if (i > 4) then
            break
        end
        udg_LGFZB_y[i] = 0
        i = i + 1
    end
    xgdg_EzA = CreateGroup()
    i = 0
    while true do
        if (i > 4) then
            break
        end
        udg_LGFdwz[i] = CreateGroup()
        i = i + 1
    end
    i = 0
    while true do
        if (i > 10) then
            break
        end
        udg_pf_string[i] = ""
        i = i + 1
    end
    i = 0
    while true do
        if (i > 10) then
            break
        end
        udg_pf_string1[i] = ""
        i = i + 1
    end
    i = 0
    while true do
        if (i > 10) then
            break
        end
        udg_pf_string2[i] = ""
        i = i + 1
    end
    udg_NVBLSJ = 0
    i = 0
    while true do
        if (i > 1) then
            break
        end
        udg_SDJQ3[i] = 0
        i = i + 1
    end
    i = 0
    while true do
        if (i > 1) then
            break
        end
        udg_SDJQ4[i] = 0
        i = i + 1
    end
    i = 0
    while true do
        if (i > 1) then
            break
        end
        udg_GLSH[i] = 0
        i = i + 1
    end
    udg_SGzs = 0
    i = 0
    while true do
        if (i > 1) then
            break
        end
        udg_js_dwz[i] = CreateGroup()
        i = i + 1
    end
    i = 0
    while true do
        if (i > 4) then
            break
        end
        udg_rsm[i] = CreateGroup()
        i = i + 1
    end
end

function InitSounds()
    gg_snd_Switch = CreateSound("Sound\\Ambient\\DoodadEffects\\Switch.wav", false, true, true, 10, 10, "DefaultEAXON")
    SetSoundParamsFromLabel(gg_snd_Switch, "Switch")
    SetSoundDuration(gg_snd_Switch, 2606)
    gg_snd_Warning = CreateSound("Sound\\Interface\\Warning.wav", false, false, false, 10, 10, "")
    SetSoundParamsFromLabel(gg_snd_Warning, "Warning")
    SetSoundDuration(gg_snd_Warning, 1904)
    gg_snd_GoodJob = CreateSound("Sound\\Interface\\GoodJob.wav", false, false, false, 10, 10, "CombatSoundsEAX")
    SetSoundParamsFromLabel(gg_snd_GoodJob, "GoodJob")
    SetSoundDuration(gg_snd_GoodJob, 2548)
    SetSoundChannel(gg_snd_GoodJob, 1)
    gg_snd_LobstrokkDeath1 = CreateSound("Units\\Creeps\\Lobstrokkblue\\LobstrokkDeath1.wav", false, true, true, 10, 10, "DefaultEAXON")
    SetSoundParamsFromLabel(gg_snd_LobstrokkDeath1, "MakruraDeath")
    SetSoundDuration(gg_snd_LobstrokkDeath1, 2603)
    gg_snd_LobstrokkYes1 = CreateSound("Units\\Creeps\\Lobstrokkblue\\LobstrokkYes1.wav", false, true, true, 10, 10, "DefaultEAXON")
    SetSoundParamsFromLabel(gg_snd_LobstrokkYes1, "LobstrokkYesAttack")
    SetSoundDuration(gg_snd_LobstrokkYes1, 567)
    gg_snd_LobstrokkWhat1 = CreateSound("Units\\Creeps\\Lobstrokkblue\\LobstrokkWhat1.wav", false, true, true, 10, 10, "DefaultEAXON")
    SetSoundParamsFromLabel(gg_snd_LobstrokkWhat1, "LobstrokkWhat")
    SetSoundDuration(gg_snd_LobstrokkWhat1, 1437)
    gg_snd_QuestCompleted = CreateSound("Sound\\Interface\\QuestCompleted.wav", false, false, false, 10, 10, "")
    SetSoundParamsFromLabel(gg_snd_QuestCompleted, "QuestCompleted")
    SetSoundDuration(gg_snd_QuestCompleted, 5155)
    gg_snd_TheHornOfCenarius = CreateSound("Sound\\Ambient\\DoodadEffects\\TheHornOfCenarius.wav", false, false, false, 10, 10, "DefaultEAXON")
    SetSoundParamsFromLabel(gg_snd_TheHornOfCenarius, "HornOfCenariusSound")
    SetSoundDuration(gg_snd_TheHornOfCenarius, 12121)
    gg_snd_SargerasLaugh = CreateSound("Sound\\Ambient\\DoodadEffects\\SargerasLaugh.wav", false, true, true, 10, 10, "DefaultEAXON")
    SetSoundParamsFromLabel(gg_snd_SargerasLaugh, "SargerasLaugh")
    SetSoundDuration(gg_snd_SargerasLaugh, 3326)
    gg_snd_CrateDeath1 = CreateSound("Sound\\Destructibles\\CrateDeath1.wav", false, true, true, 10, 10, "DefaultEAXON")
    SetSoundParamsFromLabel(gg_snd_CrateDeath1, "CrateDeath")
    SetSoundDuration(gg_snd_CrateDeath1, 1329)
    SetSoundChannel(gg_snd_CrateDeath1, 0)
    SetSoundDistances(gg_snd_CrateDeath1, 0.0, 10000.0)
    gg_snd_ArcaneSanctumWhat1 = CreateSound("Buildings\\Human\\ArcaneSanctum\\ArcaneSanctumWhat1.wav", false, true, true, 10, 10, "DefaultEAXON")
    SetSoundParamsFromLabel(gg_snd_ArcaneSanctumWhat1, "ArcaneSanctumWhat")
    SetSoundDuration(gg_snd_ArcaneSanctumWhat1, 3553)
    gg_snd_DevourMagic = CreateSound("Abilities\\Spells\\Undead\\DevourMagic\\DevourMagic.wav", false, true, true, 10, 10, "MissilesEAX")
    SetSoundParamsFromLabel(gg_snd_DevourMagic, "DevourMagicLaunch")
    SetSoundDuration(gg_snd_DevourMagic, 1225)
    gg_snd_1021 = "war3mapImported\\1021.mp3"
end

function CreateUnitsForPlayer4()
    local p = Player(4)
    local u = nil
    local unitID = nil
    local t = nil
    local life = nil
    gg_unit_hrif_0015 = CreateUnit(p, 0x68726966, -6639.1, 287.7, 354.565)
end

function CreateBuildingsForPlayer5()
    local p = Player(5)
    local u = nil
    local unitID = nil
    local t = nil
    local life = nil
    gg_unit_O001_0009 = CreateUnit(p, 0x4F303031, -128.0, -256.0, 270.000)
end

function CreateNeutralHostile()
    local p = Player(PLAYER_NEUTRAL_AGGRESSIVE)
    local u = nil
    local unitID = nil
    local t = nil
    local life = nil
    gg_unit_Hamg_0014 = CreateUnit(p, 0x48616D67, -49.3, 5704.7, 269.320)
    gg_unit_hfoo_0020 = CreateUnit(p, 0x68666F6F, 8657.3, 15479.9, 77.555)
    gg_unit_hfoo_0021 = CreateUnit(p, 0x68666F6F, 8229.8, 14627.8, 318.075)
    gg_unit_hfoo_0022 = CreateUnit(p, 0x68666F6F, 8545.6, 15050.0, 108.922)
end

function CreateNeutralPassive()
    local p = Player(PLAYER_NEUTRAL_PASSIVE)
    local u = nil
    local unitID = nil
    local t = nil
    local life = nil
    u = CreateUnit(p, 0x6D6D6D6D, 18733.1, -11106.6, 180.401)
    u = CreateUnit(p, 0x6D6D6D31, 18442.8, -10885.1, 334.388)
    u = CreateUnit(p, 0x6D6D6D31, 18497.6, -11069.1, 358.344)
    u = CreateUnit(p, 0x6D6D6D31, 19028.5, -10840.6, 211.116)
    u = CreateUnit(p, 0x6D6D6D31, 19038.1, -11326.3, 134.733)
end

function CreatePlayerBuildings()
    CreateBuildingsForPlayer5()
end

function CreatePlayerUnits()
    CreateUnitsForPlayer4()
end

function CreateAllUnits()
    CreateBuildingsForPlayer5()
    CreateNeutralHostile()
    CreateNeutralPassive()
    CreateUnitsForPlayer4()
end

function CreateRegions()
    local we = nil
    gg_rct______________000 = Rect(8448.0, 15840.0, 8768.0, 16032.0)
    gg_rct______________001 = Rect(2016.0, -11872.0, 8224.0, -9056.0)
    gg_rct______________002 = Rect(-1120.0, 1152.0, 896.0, 2816.0)
end

function InitCustomTriggers()
    InitTrig_init()
    InitTrig_TSDJ()
    InitTrig_DYCF_005________________u()
    InitTrig_XTGQ_006________________u()
    InitTrig_QJFH()
    InitTrig_AY_JNCF_003()
    InitTrig_A4_jnsf()
    InitTrig_Damge_000()
    InitTrig_Attack_001()
    InitTrig_Death_002()
    InitTrig_rw_001()
    InitTrig_rwjs_002()
    InitTrig_sw_001()
    InitTrig_sw_002()
    InitTrig_sw_003()
    InitTrig_sw_004()
    InitTrig_sw_005()
    InitTrig_sw_006()
    InitTrig_sw_007()
    InitTrig_sw_008()
    InitTrig_sw_009()
    InitTrig_sw_010()
    InitTrig_sw_011()
    InitTrig_sw_012()
    InitTrig_CSHcs()
    InitTrig_zfc___________06()
    InitTrig_zs________03()
    InitTrig_ss________01()
    InitTrig_dw________02()
    InitTrig_jn________07()
    InitTrig_cfq___________05()
    InitTrig_dwlx_____________u()
    InitTrig_dwsq______________04()
    InitTrig______________wp()
    InitTrig_qjyd()
    InitTrig_qjyd_sj()
    InitTrig_WP_PICK()
    InitTrig_WP_LOSE()
    InitTrig_A6_Sellitem()
    InitTrig_wp_uese()
    InitTrig_SDDH______________001()
    InitTrig_work()
    InitTrig_jn_load()
    InitTrig_UI_tips()
    InitTrig_QJ_1s()
    InitTrig_QJ_3s()
    InitTrig_CHUSHIHUA()
    InitTrig_xiandaochufa_ui()
    InitTrig_wuxingchufa_paichu()
    InitTrig_ui_3x1()
    InitTrig_UI_XSFB_____________u()
    InitTrig_ui_old()
    InitTrig_UI_button()
    InitTrig_UI_TBSJ()
    InitTrig_UI_TEXT_002()
    InitTrig_wendaxuanren6()
    InitTrig_chufaqi_shuxingmianban()
    InitTrig_ZHENDONG()
    InitTrig_dgdfgdgf5()
    InitTrig_dgdfgdgf()
    InitTrig_xuanyun()
    InitTrig_SHILI()
    InitTrig_DzAPI_______________u()
    InitTrig_DzAPI_______________3()
    InitTrig_DzAPI_______________2()
    InitTrig_DzApi_______u()
    InitTrig_WIN_finsh()
    InitTrig_SHUBIAOGUNLUN()
    InitTrig_YJ_QJ()
    InitTrig_D()
    InitTrig_99_1_D___u()
    InitTrig_shuruxinxi()
    InitTrig_jgc01()
    InitTrig_jgc02()
    InitTrig_BOSSchufa________4__u()
    InitTrig_quyuWF2()
    InitTrig_YXC()
    InitTrig________jn()
    InitTrig_jinshouzhi()
end

function RunInitializationTriggers()
    -- These four trigger globals are declared in the recovered map but their
    -- initializer functions are missing, so do not pass nil handles to natives.
    if gg_trg_dw ~= nil then
        ConditionalTriggerExecute(gg_trg_dw)
    end
    if gg_trg_jn ~= nil then
        ConditionalTriggerExecute(gg_trg_jn)
    end
    if gg_trg_wp1 ~= nil then
        ConditionalTriggerExecute(gg_trg_wp1)
    end
    if gg_trg_lua_yuchuli ~= nil then
        ConditionalTriggerExecute(gg_trg_lua_yuchuli)
    end
    if gg_trg_CHUSHIHUA ~= nil then
        ConditionalTriggerExecute(gg_trg_CHUSHIHUA)
    end
end

function InitCustomPlayerSlots()
    SetPlayerStartLocation(Player(0), 0)
    ForcePlayerStartLocation(Player(0), 0)
    SetPlayerColor(Player(0), ConvertPlayerColor(0))
    SetPlayerRacePreference(Player(0), RACE_PREF_HUMAN)
    SetPlayerRaceSelectable(Player(0), false)
    SetPlayerController(Player(0), MAP_CONTROL_USER)
    SetPlayerStartLocation(Player(1), 1)
    ForcePlayerStartLocation(Player(1), 1)
    SetPlayerColor(Player(1), ConvertPlayerColor(1))
    SetPlayerRacePreference(Player(1), RACE_PREF_HUMAN)
    SetPlayerRaceSelectable(Player(1), false)
    SetPlayerController(Player(1), MAP_CONTROL_USER)
    SetPlayerStartLocation(Player(2), 2)
    ForcePlayerStartLocation(Player(2), 2)
    SetPlayerColor(Player(2), ConvertPlayerColor(2))
    SetPlayerRacePreference(Player(2), RACE_PREF_HUMAN)
    SetPlayerRaceSelectable(Player(2), false)
    SetPlayerController(Player(2), MAP_CONTROL_USER)
    SetPlayerStartLocation(Player(3), 3)
    ForcePlayerStartLocation(Player(3), 3)
    SetPlayerColor(Player(3), ConvertPlayerColor(3))
    SetPlayerRacePreference(Player(3), RACE_PREF_HUMAN)
    SetPlayerRaceSelectable(Player(3), false)
    SetPlayerController(Player(3), MAP_CONTROL_USER)
    SetPlayerStartLocation(Player(4), 4)
    SetPlayerColor(Player(4), ConvertPlayerColor(4))
    SetPlayerRacePreference(Player(4), RACE_PREF_HUMAN)
    SetPlayerRaceSelectable(Player(4), false)
    SetPlayerController(Player(4), MAP_CONTROL_COMPUTER)
    SetPlayerStartLocation(Player(5), 5)
    SetPlayerColor(Player(5), ConvertPlayerColor(5))
    SetPlayerRacePreference(Player(5), RACE_PREF_ORC)
    SetPlayerRaceSelectable(Player(5), false)
    SetPlayerController(Player(5), MAP_CONTROL_COMPUTER)
    SetPlayerStartLocation(Player(6), 6)
    SetPlayerColor(Player(6), ConvertPlayerColor(6))
    SetPlayerRacePreference(Player(6), RACE_PREF_UNDEAD)
    SetPlayerRaceSelectable(Player(6), false)
    SetPlayerController(Player(6), MAP_CONTROL_COMPUTER)
    SetPlayerStartLocation(Player(7), 7)
    SetPlayerColor(Player(7), ConvertPlayerColor(7))
    SetPlayerRacePreference(Player(7), RACE_PREF_NIGHTELF)
    SetPlayerRaceSelectable(Player(7), false)
    SetPlayerController(Player(7), MAP_CONTROL_COMPUTER)
end

function InitCustomTeams()
    SetPlayerTeam(Player(0), 0)
    SetPlayerTeam(Player(1), 0)
    SetPlayerTeam(Player(2), 0)
    SetPlayerTeam(Player(3), 0)
    SetPlayerTeam(Player(4), 0)
    SetPlayerTeam(Player(5), 0)
    SetPlayerAllianceStateAllyBJ(Player(0), Player(1), true)
    SetPlayerAllianceStateAllyBJ(Player(0), Player(2), true)
    SetPlayerAllianceStateAllyBJ(Player(0), Player(3), true)
    SetPlayerAllianceStateAllyBJ(Player(0), Player(4), true)
    SetPlayerAllianceStateAllyBJ(Player(0), Player(5), true)
    SetPlayerAllianceStateAllyBJ(Player(1), Player(0), true)
    SetPlayerAllianceStateAllyBJ(Player(1), Player(2), true)
    SetPlayerAllianceStateAllyBJ(Player(1), Player(3), true)
    SetPlayerAllianceStateAllyBJ(Player(1), Player(4), true)
    SetPlayerAllianceStateAllyBJ(Player(1), Player(5), true)
    SetPlayerAllianceStateAllyBJ(Player(2), Player(0), true)
    SetPlayerAllianceStateAllyBJ(Player(2), Player(1), true)
    SetPlayerAllianceStateAllyBJ(Player(2), Player(3), true)
    SetPlayerAllianceStateAllyBJ(Player(2), Player(4), true)
    SetPlayerAllianceStateAllyBJ(Player(2), Player(5), true)
    SetPlayerAllianceStateAllyBJ(Player(3), Player(0), true)
    SetPlayerAllianceStateAllyBJ(Player(3), Player(1), true)
    SetPlayerAllianceStateAllyBJ(Player(3), Player(2), true)
    SetPlayerAllianceStateAllyBJ(Player(3), Player(4), true)
    SetPlayerAllianceStateAllyBJ(Player(3), Player(5), true)
    SetPlayerAllianceStateAllyBJ(Player(4), Player(0), true)
    SetPlayerAllianceStateAllyBJ(Player(4), Player(1), true)
    SetPlayerAllianceStateAllyBJ(Player(4), Player(2), true)
    SetPlayerAllianceStateAllyBJ(Player(4), Player(3), true)
    SetPlayerAllianceStateAllyBJ(Player(4), Player(5), true)
    SetPlayerAllianceStateAllyBJ(Player(5), Player(0), true)
    SetPlayerAllianceStateAllyBJ(Player(5), Player(1), true)
    SetPlayerAllianceStateAllyBJ(Player(5), Player(2), true)
    SetPlayerAllianceStateAllyBJ(Player(5), Player(3), true)
    SetPlayerAllianceStateAllyBJ(Player(5), Player(4), true)
    SetPlayerTeam(Player(6), 1)
    SetPlayerTeam(Player(7), 1)
    SetPlayerAllianceStateAllyBJ(Player(6), Player(7), true)
    SetPlayerAllianceStateAllyBJ(Player(7), Player(6), true)
    SetPlayerAllianceStateVisionBJ(Player(6), Player(7), true)
    SetPlayerAllianceStateVisionBJ(Player(7), Player(6), true)
end

function InitAllyPriorities()
    SetStartLocPrioCount(0, 3)
    SetStartLocPrio(0, 0, 1, MAP_LOC_PRIO_HIGH)
    SetStartLocPrio(0, 1, 2, MAP_LOC_PRIO_HIGH)
    SetStartLocPrio(0, 2, 3, MAP_LOC_PRIO_HIGH)
    SetStartLocPrioCount(1, 3)
    SetStartLocPrio(1, 0, 0, MAP_LOC_PRIO_HIGH)
    SetStartLocPrio(1, 1, 2, MAP_LOC_PRIO_HIGH)
    SetStartLocPrio(1, 2, 3, MAP_LOC_PRIO_HIGH)
    SetStartLocPrioCount(2, 3)
    SetStartLocPrio(2, 0, 0, MAP_LOC_PRIO_HIGH)
    SetStartLocPrio(2, 1, 1, MAP_LOC_PRIO_HIGH)
    SetStartLocPrio(2, 2, 3, MAP_LOC_PRIO_HIGH)
    SetStartLocPrioCount(3, 3)
    SetStartLocPrio(3, 0, 0, MAP_LOC_PRIO_HIGH)
    SetStartLocPrio(3, 1, 1, MAP_LOC_PRIO_HIGH)
    SetStartLocPrio(3, 2, 2, MAP_LOC_PRIO_HIGH)
end

function main()
    SetCameraBounds(-12288.0 + GetCameraMargin(CAMERA_MARGIN_LEFT), -12160.0 + GetCameraMargin(CAMERA_MARGIN_BOTTOM), 20480.0 - GetCameraMargin(CAMERA_MARGIN_RIGHT), 20096.0 - GetCameraMargin(CAMERA_MARGIN_TOP), -12288.0 + GetCameraMargin(CAMERA_MARGIN_LEFT), 20096.0 - GetCameraMargin(CAMERA_MARGIN_TOP), 20480.0 - GetCameraMargin(CAMERA_MARGIN_RIGHT), -12160.0 + GetCameraMargin(CAMERA_MARGIN_BOTTOM))
    SetDayNightModels("Environment\\DNC\\DNCAshenvale\\DNCAshenvaleTerrain\\DNCAshenvaleTerrain.mdl", "Environment\\DNC\\DNCAshenvale\\DNCAshenvaleUnit\\DNCAshenvaleUnit.mdl")
    NewSoundEnvironment("Default")
    SetAmbientDaySound("AshenvaleDay")
    SetAmbientNightSound("AshenvaleNight")
    SetMapMusic("Music", true, 0)
    InitSounds()
    CreateRegions()
    CreateAllUnits()
    InitBlizzard()
    ExecuteFunc("cjLibw560nbs9b8nse46703948___init")
    ExecuteFunc("Func___Init")
    ExecuteFunc("ModNameSystem__ModName_int")
    ExecuteFunc("InitializeSJWE")
    ExecuteFunc("XGGeneralBonusSystem__Initialize")
    ExecuteFunc("YDTriggerSaveLoadSystem___Init")
    ExecuteFunc("InitializeYD")
    ExecuteFunc("YDWETimerSystem__Init")
    InitGlobals()
    InitCustomTriggers()
    RunInitializationTriggers()
end

function config()
    SetMapName("Forestwalk")
    SetMapDescription("凌乱的蜘蛛网悬挂于每一颗树上，显然蜘蛛是这里的统治种族。恶魔之血惊惧了大地，久久缠绕于这些生物之上。")
    SetPlayers(8)
    SetTeams(8)
    SetGamePlacement(MAP_PLACEMENT_TEAMS_TOGETHER)
    DefineStartLocation(0, -6400.0, 192.0)
    DefineStartLocation(1, -6400.0, 192.0)
    DefineStartLocation(2, -6400.0, 192.0)
    DefineStartLocation(3, -6400.0, 192.0)
    DefineStartLocation(4, -8256.0, 16448.0)
    DefineStartLocation(5, -10112.0, -3904.0)
    DefineStartLocation(6, -9280.0, 2304.0)
    DefineStartLocation(7, -5504.0, 3840.0)
    InitCustomPlayerSlots()
    InitCustomTeams()
    InitAllyPriorities()
end
end
