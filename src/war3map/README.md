# Warcraft III map Lua modules

Gameplay logic loads as Lua. The staged map's JASS main is reduced to the small call required by the KKWE 1.27 bootstrap; JASS is not the gameplay module format.

Sections install into one shared private Lua environment so map globals and ExecuteFunc dispatch remain available. Load order is declared in init.lua: runtime, map state, compatibility libraries, feature triggers, then map entry.

Trigger functions keep their original names for tracing to map/map/war3map.j.

The feature grouping is an initial organization by trigger names and the routines they register. Review each trigger's actions before rewriting or moving its behavior to a new system.

The initial difficulty screen is built by InitTrig_ui_old in triggers/ui.lua. InitCustomTriggers registers it with a one-shot 0-second timer; after main returns, that timer runs Trig_ui_oldActions and creates the difficulty frames.

| Module | Original trigger groups |
| --- | --- |
| bootstrap.lua | InitTrig_init, InitTrig_CSHcs, InitTrig_CHUSHIHUA, InitTrig_SHILI |
| items.lua | InitTrig_TSDJ, InitTrig_A6_Sellitem, InitTrig_jgc01, InitTrig_jgc02 |
| combat.lua | InitTrig_DYCF_005________________u, InitTrig_Damge_000, InitTrig_Attack_001, InitTrig_Death_002, InitTrig_wuxingchufa_paichu, InitTrig_ZHENDONG, InitTrig_dgdfgdgf5, InitTrig_dgdfgdgf, InitTrig_xuanyun, InitTrig_99_1_D___u, InitTrig_BOSSchufa________4__u |
| hero_skills.lua | InitTrig_XTGQ_006________________u, InitTrig_AY_JNCF_003, InitTrig_A4_jnsf, InitTrig_jn________07, InitTrig_jn_load, InitTrig_YJ_QJ, InitTrig________jn |
| quests.lua | InitTrig_QJFH, InitTrig_rw_001, InitTrig_rwjs_002, InitTrig_sw_001, InitTrig_sw_002, InitTrig_sw_003, InitTrig_sw_004, InitTrig_sw_005, InitTrig_sw_006, InitTrig_sw_007, InitTrig_sw_008, InitTrig_sw_009, InitTrig_sw_010, InitTrig_sw_011, InitTrig_sw_012, InitTrig_cfq___________05, InitTrig_qjyd, InitTrig_qjyd_sj, InitTrig_SDDH______________001, InitTrig_QJ_1s, InitTrig_QJ_3s |
| misc.lua | InitTrig_zfc___________06, InitTrig_zs________03, InitTrig_ss________01, InitTrig______________wp, InitTrig_D |
| world.lua | InitTrig_dw________02, InitTrig_dwlx_____________u, InitTrig_dwsq______________04, InitTrig_work, InitTrig_quyuWF2, InitTrig_YXC |
| hero_selection.lua | InitTrig_WP_PICK, InitTrig_WP_LOSE, InitTrig_wp_uese, InitTrig_wendaxuanren6 |
| ui.lua | InitTrig_UI_tips, InitTrig_xiandaochufa_ui, InitTrig_ui_3x1, InitTrig_UI_XSFB_____________u, InitTrig_ui_old, InitTrig_UI_button, InitTrig_UI_TBSJ, InitTrig_UI_TEXT_002, InitTrig_chufaqi_shuxingmianban, InitTrig_SHUBIAOGUNLUN, InitTrig_shuruxinxi, InitTrig_jinshouzhi |
| platform.lua | InitTrig_DzAPI_______________u, InitTrig_DzAPI_______________3, InitTrig_DzAPI_______________2, InitTrig_DzApi_______u, InitTrig_WIN_finsh |
