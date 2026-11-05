-- Converted from 342.w3x map/map/war3map.j.
-- Other original map libraries and helper functions.
return function(_ENV)
function cj_group_copy_75hJKJ3745gf()
    GroupAddUnit(cj_tmpgr_copy_nw509ert7, GetEnumUnit())
end

function cj_true_a497bnsor7()
    do
        return true
    end
end

function cjLibw560nbs9b8nse46703948___init()
    cj_true_bool_4896bnao87 = Condition(cj_true_a497bnsor7)
end

function AutoRemovePowerupItem__Remove()
    if IsItemPowerup(GetManipulatedItem()) == true then
        SetWidgetLife(GetManipulatedItem(), 1.00)
        RemoveItem(GetManipulatedItem())
    end
end

function AutoRemovePowerupItem()
    local t = CreateTrigger()
    TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_PICKUP_ITEM)
    TriggerAddCondition(t, Condition(AutoRemovePowerupItem__Remove))
end

function DzTriggerRegisterMouseEventTrg(trg, status, btn)
    if trg == nil then
        do
            return
        end
    end
    DzTriggerRegisterMouseEvent(trg, btn, status, true, nil)
end

function DzTriggerRegisterKeyEventTrg(trg, status, btn)
    if trg == nil then
        do
            return
        end
    end
    DzTriggerRegisterKeyEvent(trg, btn, status, true, nil)
end

function DzTriggerRegisterMouseMoveEventTrg(trg)
    if trg == nil then
        do
            return
        end
    end
    DzTriggerRegisterMouseMoveEvent(trg, true, nil)
end

function DzTriggerRegisterMouseWheelEventTrg(trg)
    if trg == nil then
        do
            return
        end
    end
    DzTriggerRegisterMouseWheelEvent(trg, true, nil)
end

function DzTriggerRegisterWindowResizeEventTrg(trg)
    if trg == nil then
        do
            return
        end
    end
    DzTriggerRegisterWindowResizeEvent(trg, true, nil)
end

function DzF2I(i)
    do
        return i
    end
end

function DzI2F(i)
    do
        return i
    end
end

function DzK2I(i)
    do
        return i
    end
end

function DzI2K(i)
    do
        return i
    end
end

function GetPlayerServerValueSuccess(whichPlayer)
    if (DzAPI_Map_GetServerValueErrorCode(whichPlayer) == 0) then
        do
            return true
        end
    else
        do
            return false
        end
    end
end

function Func___Init()
    SaveReal(wp, 0x5A313231, 1, 8000000)
    SaveReal(wp, 0x5A313231, 6, 10)
    SaveReal(wp, 0x5A313231, 8, 150)
    SaveReal(wp, 0x5A313231, 15, 110)
    SaveReal(wp, 0x5A313231, 21, 105)
    SaveReal(wp, 0x5A313231, 48, 3)
    SaveReal(wp, 0x73686A36, 17, 10)
    SaveReal(wp, 0x73686A36, 22, 10)
    SaveReal(wp, 0x73686A36, 78, 10)
    SaveReal(wp, 0x57483034, 2, 66)
    SaveReal(wp, 0x73686A31, 17, 10)
    SaveReal(wp, 0x73686A31, 22, 10)
    SaveReal(wp, 0x73686A31, 78, 10)
    SaveReal(wp, 0x68303671, 84, 15)
    SaveReal(wp, 0x5A313139, 1, 3500000)
    SaveReal(wp, 0x5A313139, 2, 800)
    SaveReal(wp, 0x5A313139, 3, 13527000)
    SaveReal(wp, 0x5A313139, 6, 3)
    SaveReal(wp, 0x5A313139, 18, 30)
    SaveReal(wp, 0x5A313139, 25, 0.1)
    SaveReal(wp, 0x5A313230, 1, 3500000)
    SaveReal(wp, 0x5A313230, 2, 2500)
    SaveReal(wp, 0x5A313230, 3, 13527000)
    SaveReal(wp, 0x5A313230, 6, 3)
    SaveReal(wp, 0x5A313230, 8, 30)
    SaveReal(wp, 0x5A313230, 13, 3)
    SaveReal(wp, 0x5A313230, 15, 5)
    SaveReal(wp, 0x5A313230, 28, 5)
    SaveReal(wp, 0x5A313335, 2, 20000)
    SaveReal(wp, 0x5A313335, 15, 110)
    SaveReal(wp, 0x5A313335, 16, 13)
    SaveReal(wp, 0x5A313335, 29, 5)
    SaveReal(wp, 0x5A313335, 48, 1000)
    SaveReal(wp, 0x5A313335, 51, 45)
    SaveReal(wp, 0x68313571, 7, 1)
    SaveReal(wp, 0x68313571, 9, 7)
    SaveReal(wp, 0x5A313130, 1, 3560000)
    SaveReal(wp, 0x5A313130, 8, 50)
    SaveReal(wp, 0x5A313130, 9, 30)
    SaveReal(wp, 0x5A313130, 15, 5)
    SaveReal(wp, 0x5A313130, 18, 25)
    SaveReal(wp, 0x5A313130, 26, 1200000)
    SaveReal(wp, 0x53585733, 17, 1)
    SaveReal(wp, 0x6C713433, 3, 15000)
    SaveReal(wp, 0x6C713433, 28, 1.5)
    SaveReal(wp, 0x6C713537, 13, 0.2)
    SaveReal(wp, 0x5A303537, 3, 828888)
    SaveReal(wp, 0x5A303537, 10, 2)
    SaveReal(wp, 0x5A303537, 13, 1)
    SaveReal(wp, 0x5A303537, 22, 52750)
    SaveReal(wp, 0x5A303537, 26, 57250)
    SaveReal(wp, 0x5A303537, 52, 57250)
    ItemPoolAddItemType(cjc4, 0x5A303537, 0.08)
    SaveReal(wp, 0x64793236, 8, 25)
    SaveReal(wp, 0x68313671, 21, 3)
    SaveReal(wp, 0x68313671, 84, 25)
    SaveReal(wp, 0x5A303737, 3, 5200000)
    SaveReal(wp, 0x5A303737, 19, 10)
    SaveReal(wp, 0x5A303737, 31, 4)
    SaveReal(wp, 0x5A303737, 52, 1206450)
    SaveReal(wp, 0x5A303335, 3, 30000)
    ItemPoolAddItemType(cjc2, 0x5A303335, 0.1)
    ItemPoolAddItemType(cjc3, 0x5A303335, 0.4)
    ItemPoolAddItemType(cjc4, 0x5A303335, 1.00)
    SaveReal(wp, 0x73686A35, 17, 10)
    SaveReal(wp, 0x73686A35, 22, 10)
    SaveReal(wp, 0x73686A35, 78, 10)
    SaveReal(wp, 0x5A303331, 5, 9000)
    ItemPoolAddItemType(cjc2, 0x5A303331, 0.1)
    ItemPoolAddItemType(cjc3, 0x5A303331, 0.4)
    ItemPoolAddItemType(cjc4, 0x5A303331, 1.00)
    SaveReal(wp, 0x73686A32, 17, 10)
    SaveReal(wp, 0x73686A32, 22, 10)
    SaveReal(wp, 0x73686A32, 78, 10)
    SaveReal(wp, 0x68313771, 6, 1)
    SaveReal(wp, 0x68313771, 8, 23)
    SaveReal(wp, 0x6C713231, 3, 1000)
    SaveReal(wp, 0x6C713231, 45, 3)
    SaveReal(wp, 0x6C713239, 8, 3)
    SaveReal(wp, 0x6C713239, 9, 3)
    SaveReal(wp, 0x5A313131, 10, 15)
    SaveReal(wp, 0x5A313131, 17, 100)
    SaveReal(wp, 0x5A313131, 18, 100)
    SaveReal(wp, 0x5A313131, 19, 100)
    SaveReal(wp, 0x5A313131, 22, 3500000)
    SaveReal(wp, 0x5A313131, 26, 3500000)
    SaveReal(wp, 0x5A313131, 52, 3500000)
    SaveReal(wp, 0x73686A33, 17, 10)
    SaveReal(wp, 0x73686A33, 22, 10)
    SaveReal(wp, 0x73686A33, 78, 10)
    SaveReal(wp, 0x7331306A, 3, 256)
    SaveReal(wp, 0x7331306A, 47, 256)
    SaveReal(wp, 0x53303148, 22, 1)
    SaveReal(wp, 0x53303148, 33, 150)
    SaveReal(wp, 0x53303148, 40, 25)
    SaveReal(wp, 0x53303148, 81, 1)
    SaveReal(wp, 0x78737735, 1, 5400)
    SaveReal(wp, 0x78737735, 2, 150)
    SaveReal(wp, 0x78737735, 3, 37000)
    SaveReal(wp, 0x78737735, 4, 16200)
    SaveReal(wp, 0x78737735, 45, 63)
    SaveReal(wp, 0x78737735, 85, 9)
    SaveReal(wp, 0x72617466, 68, 550)
    SaveReal(wp, 0x64793336, 32, 4)
    SaveReal(wp, 0x5A303039, 1, 150)
    SaveReal(wp, 0x5A303039, 26, 350)
    ItemPoolAddItemType(cjc1, 0x5A303039, 1.00)
    SaveReal(wp, 0x4C303131, 27, 10)
    SaveReal(wp, 0x6631306A, 1, 6500)
    SaveReal(wp, 0x6631306A, 3, 41000)
    SaveReal(wp, 0x6631306A, 4, 6000)
    SaveReal(wp, 0x6631306A, 11, 1000)
    SaveReal(wp, 0x5A303939, 1, 3500000)
    SaveReal(wp, 0x5A303939, 2, 800)
    SaveReal(wp, 0x5A303939, 3, 13527000)
    SaveReal(wp, 0x5A303939, 6, 3)
    SaveReal(wp, 0x5A303939, 18, 30)
    SaveReal(wp, 0x5A303939, 25, 0.1)
    SaveReal(wp, 0x736A7A33, 63, 1)
    SaveReal(wp, 0x5A303239, 52, 5000)
    ItemPoolAddItemType(cjc1, 0x5A303239, 0.1)
    ItemPoolAddItemType(cjc2, 0x5A303239, 0.4)
    ItemPoolAddItemType(cjc3, 0x5A303239, 1.00)
    SaveReal(wp, 0x53585731, 15, 1)
    SaveReal(wp, 0x7332306A, 68, 10000)
    SaveReal(wp, 0x5A303139, 1, 750)
    SaveReal(wp, 0x5A303139, 6, 1)
    ItemPoolAddItemType(cjc1, 0x5A303139, 0.4)
    ItemPoolAddItemType(cjc2, 0x5A303139, 1.00)
    SaveReal(wp, 0x5A303230, 3, 4500)
    SaveReal(wp, 0x5A303230, 13, 0.3)
    ItemPoolAddItemType(cjc1, 0x5A303230, 0.4)
    ItemPoolAddItemType(cjc2, 0x5A303230, 1.00)
    SaveReal(wp, 0x6A303263, 1, 550)
    SaveReal(wp, 0x6A303263, 3, 3550)
    SaveReal(wp, 0x6A303263, 5, 265)
    SaveReal(wp, 0x6A303263, 62, 1)
    SaveReal(wp, 0x7332336A, 54, 1000000)
    SaveReal(wp, 0x7030316C, 1, 666)
    SaveReal(wp, 0x7030316C, 2, 10)
    SaveReal(wp, 0x7030316C, 3, 2000)
    SaveReal(wp, 0x7030316C, 4, 1)
    SaveReal(wp, 0x7030316C, 85, 1)
    SaveReal(wp, 0x7030316C, 86, 3)
    SaveReal(wp, 0x5A313039, 1, 3400000)
    SaveReal(wp, 0x5A313039, 7, 3)
    SaveReal(wp, 0x5A313039, 9, 30)
    SaveReal(wp, 0x5A313039, 16, 3)
    SaveReal(wp, 0x5A313039, 19, 25)
    SaveReal(wp, 0x5A313039, 23, 5)
    SaveReal(wp, 0x6A303163, 1, 125)
    SaveReal(wp, 0x6A303163, 3, 1750)
    SaveReal(wp, 0x6A303163, 5, 125)
    SaveReal(wp, 0x6A303163, 61, 1)
    SaveReal(wp, 0x5A313333, 10, 15)
    SaveReal(wp, 0x5A313333, 17, 100)
    SaveReal(wp, 0x5A313333, 18, 100)
    SaveReal(wp, 0x5A313333, 19, 100)
    SaveReal(wp, 0x5A313333, 22, 3500000)
    SaveReal(wp, 0x5A313333, 26, 3500000)
    SaveReal(wp, 0x5A313333, 52, 3500000)
    SaveReal(wp, 0x6632306A, 1, 56500)
    SaveReal(wp, 0x6632306A, 3, 410000)
    SaveReal(wp, 0x6632306A, 4, 26000)
    SaveReal(wp, 0x6632306A, 11, 10000)
    SaveReal(wp, 0x6632306A, 12, 10000)
    SaveReal(wp, 0x424D3032, 18, 2)
    SaveReal(wp, 0x68333771, 25, 0.1)
    SaveReal(wp, 0x68333771, 43, 300)
    SaveReal(wp, 0x73686A34, 17, 10)
    SaveReal(wp, 0x73686A34, 22, 10)
    SaveReal(wp, 0x73686A34, 78, 10)
    SaveReal(wp, 0x64793234, 60, 1)
    SaveReal(wp, 0x6630366A, 1, 2500)
    SaveReal(wp, 0x6630366A, 3, 17500)
    SaveReal(wp, 0x6630366A, 4, 2000)
    SaveReal(wp, 0x6C713237, 4, 1)
    SaveReal(wp, 0x6C713237, 29, 1)
    SaveReal(wp, 0x6C713237, 85, 1)
    SaveReal(wp, 0x64793134, 62, 5)
    SaveReal(wp, 0x6630356A, 1, 1500)
    SaveReal(wp, 0x6630356A, 3, 10000)
    SaveReal(wp, 0x6630356A, 4, 1666)
    SaveReal(wp, 0x7031346C, 1, 60000)
    SaveReal(wp, 0x7031346C, 2, 200)
    SaveReal(wp, 0x7031346C, 3, 420000)
    SaveReal(wp, 0x7031346C, 4, 7)
    SaveReal(wp, 0x7031346C, 85, 7)
    SaveReal(wp, 0x7031346C, 87, 2)
    SaveReal(wp, 0x5A303430, 2, 120)
    SaveReal(wp, 0x5A303430, 3, 25000)
    ItemPoolAddItemType(cjc2, 0x5A303430, 0.1)
    ItemPoolAddItemType(cjc3, 0x5A303430, 0.4)
    ItemPoolAddItemType(cjc4, 0x5A303430, 1.00)
    SaveReal(wp, 0x78737733, 1, 925)
    SaveReal(wp, 0x78737733, 2, 90)
    SaveReal(wp, 0x78737733, 3, 6166)
    SaveReal(wp, 0x78737733, 4, 3288)
    SaveReal(wp, 0x78737733, 45, 35)
    SaveReal(wp, 0x78737733, 85, 5)
    SaveReal(wp, 0x7331366A, 9, 33)
    SaveReal(wp, 0x53585735, 19, 1)
    SaveReal(wp, 0x746B6E6F, 72, 3)
    SaveReal(wp, 0x68303771, 4, 1)
    SaveReal(wp, 0x68303771, 84, 1)
    SaveReal(wp, 0x68303771, 85, 1)
    SaveReal(wp, 0x7031336C, 1, 60000)
    SaveReal(wp, 0x7031336C, 2, 200)
    SaveReal(wp, 0x7031336C, 3, 420000)
    SaveReal(wp, 0x7031336C, 4, 7)
    SaveReal(wp, 0x7031336C, 85, 7)
    SaveReal(wp, 0x7031336C, 87, 2)
    SaveReal(wp, 0x7331356A, 18, 20)
    SaveReal(wp, 0x68303371, 8, 13)
    SaveReal(wp, 0x5A303435, 1, 25000)
    SaveReal(wp, 0x5A303435, 6, 2)
    SaveReal(wp, 0x5A303435, 15, 4)
    SaveReal(wp, 0x5A303435, 16, 2)
    ItemPoolAddItemType(cjc3, 0x5A303435, 0.1)
    ItemPoolAddItemType(cjc4, 0x5A303435, 0.15)
    SaveReal(wp, 0x73323179, 28, 20)
    SaveReal(wp, 0x73323179, 29, 20)
    SaveReal(wp, 0x6631366A, 1, 30500)
    SaveReal(wp, 0x6631366A, 3, 211000)
    SaveReal(wp, 0x6631366A, 4, 13000)
    SaveReal(wp, 0x6631366A, 11, 7000)
    SaveReal(wp, 0x6631366A, 12, 7000)
    SaveReal(wp, 0x73313079, 13, 2)
    SaveReal(wp, 0x73313079, 21, 5)
    SaveReal(wp, 0x424D3033, 19, 2)
    SaveReal(wp, 0x6631356A, 1, 26500)
    SaveReal(wp, 0x6631356A, 3, 151000)
    SaveReal(wp, 0x6631356A, 4, 11000)
    SaveReal(wp, 0x6631356A, 11, 6000)
    SaveReal(wp, 0x6631356A, 12, 6000)
    SaveReal(wp, 0x7030346C, 1, 3600)
    SaveReal(wp, 0x7030346C, 2, 40)
    SaveReal(wp, 0x7030346C, 3, 8000)
    SaveReal(wp, 0x7030346C, 4, 3)
    SaveReal(wp, 0x7030346C, 37, 5)
    SaveReal(wp, 0x7030346C, 85, 3)
    SaveReal(wp, 0x68323871, 35, 3)
    SaveReal(wp, 0x5A303535, 1, 78025)
    SaveReal(wp, 0x5A303535, 6, 3)
    SaveReal(wp, 0x5A303535, 15, 4)
    SaveReal(wp, 0x5A303535, 22, 112400)
    SaveReal(wp, 0x5A303535, 35, 1.5)
    ItemPoolAddItemType(cjc4, 0x5A303535, 0.08)
    SaveReal(wp, 0x7030336C, 1, 1866)
    SaveReal(wp, 0x7030336C, 2, 20)
    SaveReal(wp, 0x7030336C, 3, 4000)
    SaveReal(wp, 0x7030336C, 4, 2)
    SaveReal(wp, 0x7030336C, 10, 3)
    SaveReal(wp, 0x7030336C, 85, 2)
    SaveReal(wp, 0x5A303330, 3, 12000)
    SaveReal(wp, 0x5A303330, 34, 18)
    ItemPoolAddItemType(cjc1, 0x5A303330, 0.1)
    ItemPoolAddItemType(cjc2, 0x5A303330, 0.4)
    ItemPoolAddItemType(cjc3, 0x5A303330, 1.00)
    SaveReal(wp, 0x7331336A, 8, 45)
    SaveReal(wp, 0x5A303237, 3, 6000)
    SaveReal(wp, 0x5A303237, 10, 3)
    ItemPoolAddItemType(cjc1, 0x5A303237, 0.1)
    ItemPoolAddItemType(cjc2, 0x5A303237, 0.4)
    ItemPoolAddItemType(cjc3, 0x5A303237, 1.00)
    SaveReal(wp, 0x64793035, 54, 4000)
    SaveReal(wp, 0x424D3034, 21, 2)
    SaveReal(wp, 0x57483032, 3, 100)
    SaveReal(wp, 0x68333871, 15, 33)
    SaveReal(wp, 0x68333871, 28, 16)
    SaveReal(wp, 0x68333871, 29, 16)
    SaveReal(wp, 0x68333871, 70, 13)
    SaveReal(wp, 0x73313279, 17, 17)
    SaveReal(wp, 0x73313279, 22, 20)
    SaveReal(wp, 0x73313279, 78, 20)
    SaveReal(wp, 0x68313471, 13, 1)
    SaveReal(wp, 0x6C713535, 29, 3)
    SaveReal(wp, 0x68323771, 8, 26)
    SaveReal(wp, 0x68323771, 43, 33)
    SaveReal(wp, 0x53585737, 51, 1)
    SaveReal(wp, 0x68323371, 3, 21)
    SaveReal(wp, 0x68323371, 46, 3)
    SaveReal(wp, 0x68323371, 47, 21)
    SaveReal(wp, 0x5A313330, 1, 8000000)
    SaveReal(wp, 0x5A313330, 6, 10)
    SaveReal(wp, 0x5A313330, 8, 150)
    SaveReal(wp, 0x5A313330, 15, 110)
    SaveReal(wp, 0x5A313330, 21, 105)
    SaveReal(wp, 0x5A313330, 48, 3)
    SaveReal(wp, 0x6C713533, 18, 3)
    SaveReal(wp, 0x6C713337, 3, 10500)
    SaveReal(wp, 0x6C713337, 28, 1.2)
    SaveReal(wp, 0x64793136, 16, 10)
    SaveReal(wp, 0x5A313237, 1, 50)
    SaveReal(wp, 0x5A313237, 2, 10000)
    SaveReal(wp, 0x5A313237, 13, 4)
    SaveReal(wp, 0x5A313237, 20, 3)
    SaveReal(wp, 0x5A313237, 23, 5)
    SaveReal(wp, 0x5A313237, 24, 1000)
    SaveReal(wp, 0x5A313237, 31, 3)
    SaveReal(wp, 0x5A313237, 51, 15)
    SaveReal(wp, 0x64793332, 6, 3.5)
    ItemPoolAddItemType(cjc1, 0x5A303130, 1.00)
    SaveReal(wp, 0x5A313235, 2, 20000)
    SaveReal(wp, 0x5A313235, 15, 110)
    SaveReal(wp, 0x5A313235, 16, 13)
    SaveReal(wp, 0x5A313235, 29, 5)
    SaveReal(wp, 0x5A313235, 48, 1000)
    SaveReal(wp, 0x5A313235, 51, 45)
    SaveReal(wp, 0x6630346A, 1, 1100)
    SaveReal(wp, 0x6630346A, 3, 7700)
    SaveReal(wp, 0x6630346A, 4, 666)
    SaveReal(wp, 0x68323471, 14, 13)
    SaveReal(wp, 0x68323471, 27, 13)
    SaveReal(wp, 0x68323471, 34, 13)
    SaveReal(wp, 0x57483136, 22, 18)
    SaveReal(wp, 0x6630336A, 1, 850)
    SaveReal(wp, 0x6630336A, 3, 5600)
    SaveReal(wp, 0x6C713837, 13, 0.5)
    SaveReal(wp, 0x6C713837, 15, 1.5)
    SaveReal(wp, 0x6C713837, 28, 5)
    SaveReal(wp, 0x64793334, 14, 30)
    SaveReal(wp, 0x68333371, 14, 100)
    SaveReal(wp, 0x68333371, 27, 50)
    SaveReal(wp, 0x68333371, 34, 25)
    SaveReal(wp, 0x73313979, 19, 17)
    SaveReal(wp, 0x73313979, 52, 20)
    SaveReal(wp, 0x73313979, 80, 20)
    SaveReal(wp, 0x68323271, 10, 3)
    SaveReal(wp, 0x68323271, 84, 25)
    SaveReal(wp, 0x5A313034, 10, 15)
    SaveReal(wp, 0x5A313034, 17, 100)
    SaveReal(wp, 0x5A313034, 18, 100)
    SaveReal(wp, 0x5A313034, 19, 100)
    SaveReal(wp, 0x5A313034, 22, 3500000)
    SaveReal(wp, 0x5A313034, 26, 3500000)
    SaveReal(wp, 0x5A313034, 52, 3500000)
    SaveReal(wp, 0x6C713833, 1, 12500)
    SaveReal(wp, 0x6C713833, 5, 35000)
    SaveReal(wp, 0x5A303833, 2, 1366)
    SaveReal(wp, 0x5A303833, 3, 5500000)
    SaveReal(wp, 0x5A303833, 28, 20)
    SaveReal(wp, 0x5A303833, 42, 4)
    SaveReal(wp, 0x5A303833, 51, 3)
    SaveReal(wp, 0x68333471, 8, 100)
    SaveReal(wp, 0x64793130, 8, 15)
    SaveReal(wp, 0x5A303033, 5, 300)
    ItemPoolAddItemType(cjc1, 0x5A303033, 1.00)
    SaveReal(wp, 0x6C713733, 16, 0.5)
    SaveReal(wp, 0x6C713733, 20, 0.1)
    SaveReal(wp, 0x5A313031, 1, 8000000)
    SaveReal(wp, 0x5A313031, 6, 10)
    SaveReal(wp, 0x5A313031, 8, 150)
    SaveReal(wp, 0x5A313031, 15, 110)
    SaveReal(wp, 0x5A313031, 21, 105)
    SaveReal(wp, 0x5A313031, 48, 3)
    SaveReal(wp, 0x6631346A, 1, 21500)
    SaveReal(wp, 0x6631346A, 3, 141000)
    SaveReal(wp, 0x6631346A, 4, 10000)
    SaveReal(wp, 0x6631346A, 11, 5500)
    SaveReal(wp, 0x73313779, 16, 13)
    SaveReal(wp, 0x73313779, 19, 10)
    SaveReal(wp, 0x5A303835, 3, 5300000)
    SaveReal(wp, 0x5A303835, 20, 1)
    SaveReal(wp, 0x5A303835, 23, 15)
    SaveReal(wp, 0x5A303835, 26, 126400)
    SaveReal(wp, 0x5A303835, 29, 6)
    SaveReal(wp, 0x5A303835, 42, 4)
    SaveReal(wp, 0x6A303463, 1, 2250)
    SaveReal(wp, 0x6A303463, 3, 13000)
    SaveReal(wp, 0x6A303463, 5, 1025)
    SaveReal(wp, 0x6A303463, 63, 1)
    SaveReal(wp, 0x6A303463, 64, 1)
    SaveReal(wp, 0x6C713633, 3, 30000)
    SaveReal(wp, 0x6C713633, 15, 1)
    SaveReal(wp, 0x6631336A, 1, 19000)
    SaveReal(wp, 0x6631336A, 3, 131000)
    SaveReal(wp, 0x6631336A, 4, 9000)
    SaveReal(wp, 0x6631336A, 11, 5000)
    SaveReal(wp, 0x5A313032, 2, 20000)
    SaveReal(wp, 0x5A313032, 3, 50000000)
    SaveReal(wp, 0x5A313032, 7, 5)
    SaveReal(wp, 0x5A313032, 9, 35)
    SaveReal(wp, 0x5A313032, 15, 70)
    SaveReal(wp, 0x5A313032, 16, 55)
    SaveReal(wp, 0x5A313032, 23, 90)
    SaveReal(wp, 0x73313879, 19, 20)
    SaveReal(wp, 0x5A303630, 1, 235000)
    SaveReal(wp, 0x5A303630, 6, 0.3)
    SaveReal(wp, 0x5A303630, 15, 15)
    SaveReal(wp, 0x5A303630, 35, 3)
    ItemPoolAddItemType(cjc4, 0x5A303630, 0.08)
    SaveReal(wp, 0x5A303133, 3, 7100)
    ItemPoolAddItemType(cjc1, 0x5A303133, 0.4)
    ItemPoolAddItemType(cjc2, 0x5A303133, 1.00)
    SaveReal(wp, 0x68323171, 35, 3)
    SaveReal(wp, 0x68323171, 42, 3)
    SaveReal(wp, 0x6631376A, 1, 36500)
    SaveReal(wp, 0x6631376A, 3, 241000)
    SaveReal(wp, 0x6631376A, 4, 16000)
    SaveReal(wp, 0x6631376A, 11, 7500)
    SaveReal(wp, 0x6631376A, 12, 7500)
    SaveReal(wp, 0x68323071, 38, 3)
    SaveReal(wp, 0x68323071, 84, 25)
    SaveReal(wp, 0x4C303133, 15, 5)
    SaveReal(wp, 0x6C713631, 34, 3)
    SaveReal(wp, 0x6C713735, 3, 30000)
    SaveReal(wp, 0x7031356C, 1, 120000)
    SaveReal(wp, 0x7031356C, 2, 300)
    SaveReal(wp, 0x7031356C, 3, 840000)
    SaveReal(wp, 0x7031356C, 4, 8)
    SaveReal(wp, 0x7031356C, 85, 8)
    SaveReal(wp, 0x7031356C, 87, 3)
    SaveReal(wp, 0x57483138, 3, 50)
    SaveReal(wp, 0x5A303637, 2, 750)
    SaveReal(wp, 0x5A303637, 3, 2300000)
    SaveReal(wp, 0x5A303637, 22, 260400)
    SaveReal(wp, 0x5A303637, 35, 3)
    SaveReal(wp, 0x5A303637, 51, 4)
    SaveReal(wp, 0x6C713831, 8, 100)
    SaveReal(wp, 0x6C713831, 15, 0.2)
    SaveReal(wp, 0x5A303733, 1, 277777)
    SaveReal(wp, 0x5A303733, 6, 1)
    SaveReal(wp, 0x5A303733, 8, 45)
    SaveReal(wp, 0x5A303733, 22, 133750)
    SaveReal(wp, 0x5A303733, 26, 133750)
    SaveReal(wp, 0x5A303733, 52, 133750)
    SaveReal(wp, 0x68333071, 3, 36)
    SaveReal(wp, 0x68333071, 33, 25)
    SaveReal(wp, 0x68333071, 40, 15)
    SaveReal(wp, 0x68333071, 49, 36)
    SaveReal(wp, 0x6A313762, 17, 30)
    SaveReal(wp, 0x6A313762, 18, 30)
    SaveReal(wp, 0x6A313762, 28, 15)
    SaveReal(wp, 0x6A313762, 29, 15)
    SaveReal(wp, 0x6A313762, 51, 8)
    SaveReal(wp, 0x64793132, 14, 10)
    SaveReal(wp, 0x7030386C, 1, 15000)
    SaveReal(wp, 0x7030386C, 2, 80)
    SaveReal(wp, 0x7030386C, 3, 109000)
    SaveReal(wp, 0x7030386C, 4, 4)
    SaveReal(wp, 0x7030386C, 85, 4)
    SaveReal(wp, 0x5A303631, 15, 30)
    SaveReal(wp, 0x5A303631, 28, 18)
    ItemPoolAddItemType(cjc4, 0x5A303631, 0.08)
    SaveReal(wp, 0x53303648, 3, 70)
    SaveReal(wp, 0x53303648, 22, 3)
    SaveReal(wp, 0x53303648, 47, 70)
    SaveReal(wp, 0x53303648, 81, 3)
    SaveReal(wp, 0x53303648, 84, 15)
    SaveReal(wp, 0x68313271, 58, 3)
    SaveReal(wp, 0x68313271, 72, 1)
    SaveReal(wp, 0x5A303531, 2, 300)
    SaveReal(wp, 0x5A303531, 3, 70000)
    ItemPoolAddItemType(cjc3, 0x5A303531, 0.1)
    ItemPoolAddItemType(cjc4, 0x5A303531, 0.15)
    SaveReal(wp, 0x5A303431, 3, 40000)
    ItemPoolAddItemType(cjc2, 0x5A303431, 0.1)
    ItemPoolAddItemType(cjc3, 0x5A303431, 0.4)
    ItemPoolAddItemType(cjc4, 0x5A303431, 1.00)
    SaveReal(wp, 0x5A303034, 43, 5)
    ItemPoolAddItemType(cjc1, 0x5A303034, 1.00)
    SaveReal(wp, 0x6C713235, 43, 5)
    SaveReal(wp, 0x5A313033, 1, 8000000)
    SaveReal(wp, 0x5A313033, 6, 10)
    SaveReal(wp, 0x5A313033, 8, 100)
    SaveReal(wp, 0x5A313033, 28, 66)
    SaveReal(wp, 0x5A313033, 35, 30)
    SaveReal(wp, 0x5A303731, 1, 990000)
    SaveReal(wp, 0x5A303731, 6, 1)
    SaveReal(wp, 0x5A303731, 8, 44)
    SaveReal(wp, 0x5A303731, 13, 1)
    SaveReal(wp, 0x5A303731, 35, 4)
    SaveReal(wp, 0x57483131, 1, 3)
    SaveReal(wp, 0x424D3139, 25, 0.01)
    SaveReal(wp, 0x5A303334, 3, 25500)
    SaveReal(wp, 0x5A303334, 13, 1)
    ItemPoolAddItemType(cjc2, 0x5A303334, 0.1)
    ItemPoolAddItemType(cjc3, 0x5A303334, 0.4)
    ItemPoolAddItemType(cjc4, 0x5A303334, 1.00)
    SaveReal(wp, 0x7031366C, 1, 120000)
    SaveReal(wp, 0x7031366C, 2, 300)
    SaveReal(wp, 0x7031366C, 3, 840000)
    SaveReal(wp, 0x7031366C, 4, 8)
    SaveReal(wp, 0x7031366C, 85, 8)
    SaveReal(wp, 0x7031366C, 87, 3)
    SaveReal(wp, 0x5A313133, 15, 3)
    SaveReal(wp, 0x5A313133, 21, 25)
    SaveReal(wp, 0x5A313133, 26, 3250000)
    SaveReal(wp, 0x5A313133, 30, 1333)
    SaveReal(wp, 0x5A313133, 48, 1333)
    SaveReal(wp, 0x424D3130, 3, 10)
    SaveReal(wp, 0x424D3130, 36, 3)
    SaveReal(wp, 0x424D3130, 43, 15)
    SaveReal(wp, 0x424D3130, 47, 10)
    SaveReal(wp, 0x5A303635, 1, 228888)
    SaveReal(wp, 0x5A303635, 7, 0.1)
    SaveReal(wp, 0x5A303635, 31, 3)
    SaveReal(wp, 0x5A303635, 43, 45)
    SaveReal(wp, 0x5A303635, 52, 206450)
    SaveReal(wp, 0x6C713637, 10, 0.1)
    SaveReal(wp, 0x6C713637, 35, 0.5)
    SaveReal(wp, 0x6C713637, 51, 3)
    SaveReal(wp, 0x6630376A, 1, 3500)
    SaveReal(wp, 0x6630376A, 3, 21000)
    SaveReal(wp, 0x6630376A, 4, 3000)
    SaveReal(wp, 0x64793232, 14, 15)
    SaveReal(wp, 0x73686A38, 17, 10)
    SaveReal(wp, 0x73686A38, 22, 10)
    SaveReal(wp, 0x73686A38, 78, 10)
    SaveReal(wp, 0x53585732, 72, 30)
    SaveReal(wp, 0x7331316A, 12, 3256)
    SaveReal(wp, 0x6631396A, 1, 50000)
    SaveReal(wp, 0x6631396A, 3, 341000)
    SaveReal(wp, 0x6631396A, 4, 22000)
    SaveReal(wp, 0x6631396A, 11, 10000)
    SaveReal(wp, 0x6631396A, 12, 10000)
    SaveReal(wp, 0x68333271, 63, 20)
    SaveReal(wp, 0x6C713432, 3, 11900)
    SaveReal(wp, 0x7030366C, 1, 7200)
    SaveReal(wp, 0x7030366C, 2, 80)
    SaveReal(wp, 0x7030366C, 3, 46000)
    SaveReal(wp, 0x7030366C, 4, 4)
    SaveReal(wp, 0x7030366C, 21, 3)
    SaveReal(wp, 0x7030366C, 85, 4)
    SaveReal(wp, 0x6C713737, 3, 40000)
    SaveReal(wp, 0x6C713737, 15, 0.6)
    SaveReal(wp, 0x5A303434, 3, 6)
    SaveReal(wp, 0x5A303434, 20, 4)
    SaveReal(wp, 0x5A303434, 22, 21450)
    SaveReal(wp, 0x5A303434, 26, 24500)
    SaveReal(wp, 0x5A303434, 45, 6)
    SaveReal(wp, 0x5A303434, 52, 25450)
    ItemPoolAddItemType(cjc3, 0x5A303434, 0.1)
    ItemPoolAddItemType(cjc4, 0x5A303434, 0.15)
    SaveReal(wp, 0x6631316A, 1, 10500)
    SaveReal(wp, 0x6631316A, 3, 71000)
    SaveReal(wp, 0x6631316A, 4, 8000)
    SaveReal(wp, 0x6631316A, 11, 3000)
    SaveReal(wp, 0x6C713839, 3, 120000)
    SaveReal(wp, 0x6C713839, 15, 0.1)
    SaveReal(wp, 0x6C713839, 35, 0.5)
    SaveReal(wp, 0x68313171, 3, 7)
    SaveReal(wp, 0x68313171, 30, 1)
    SaveReal(wp, 0x68313171, 45, 7)
    SaveReal(wp, 0x6C713835, 15, 0.5)
    SaveReal(wp, 0x6C713835, 42, 0.5)
    SaveReal(wp, 0x6C713138, 1, 100)
    SaveReal(wp, 0x6C713332, 3, 7000)
    SaveReal(wp, 0x6C713332, 18, 1)
    SaveReal(wp, 0x57483135, 1, 8)
    SaveReal(wp, 0x5A303032, 3, 2100)
    ItemPoolAddItemType(cjc1, 0x5A303032, 1.00)
    SaveReal(wp, 0x7031326C, 1, 30000)
    SaveReal(wp, 0x7031326C, 2, 100)
    SaveReal(wp, 0x7031326C, 3, 215000)
    SaveReal(wp, 0x7031326C, 4, 6)
    SaveReal(wp, 0x7031326C, 85, 6)
    SaveReal(wp, 0x7031326C, 87, 1)
    SaveReal(wp, 0x64793238, 63, 3)
    SaveReal(wp, 0x6C713139, 2, 10)
    SaveReal(wp, 0x68303271, 27, 13)
    SaveReal(wp, 0x68303271, 84, 3)
    SaveReal(wp, 0x7031316C, 1, 30000)
    SaveReal(wp, 0x7031316C, 2, 100)
    SaveReal(wp, 0x7031316C, 3, 215000)
    SaveReal(wp, 0x7031316C, 4, 6)
    SaveReal(wp, 0x7031316C, 85, 6)
    SaveReal(wp, 0x7031316C, 87, 1)
    SaveReal(wp, 0x5A303132, 5, 1000)
    ItemPoolAddItemType(cjc1, 0x5A303132, 0.4)
    ItemPoolAddItemType(cjc2, 0x5A303132, 1.00)
    SaveReal(wp, 0x7331326A, 17, 20)
    SaveReal(wp, 0x7030376C, 1, 15000)
    SaveReal(wp, 0x7030376C, 2, 80)
    SaveReal(wp, 0x7030376C, 3, 109000)
    SaveReal(wp, 0x7030376C, 4, 4)
    SaveReal(wp, 0x7030376C, 85, 4)
    SaveReal(wp, 0x5A303937, 2, 20000)
    SaveReal(wp, 0x5A303937, 3, 50000000)
    SaveReal(wp, 0x5A303937, 7, 5)
    SaveReal(wp, 0x5A303937, 9, 35)
    SaveReal(wp, 0x5A303937, 15, 70)
    SaveReal(wp, 0x5A303937, 16, 55)
    SaveReal(wp, 0x5A303937, 23, 90)
    SaveReal(wp, 0x5A303633, 16, 6)
    SaveReal(wp, 0x5A303633, 52, 120000)
    ItemPoolAddItemType(cjc4, 0x5A303633, 0.08)
    SaveReal(wp, 0x5A303233, 3, 22000)
    ItemPoolAddItemType(cjc1, 0x5A303233, 0.1)
    ItemPoolAddItemType(cjc2, 0x5A303233, 0.4)
    ItemPoolAddItemType(cjc3, 0x5A303233, 1.00)
    SaveReal(wp, 0x77323978, 28, 6)
    SaveReal(wp, 0x57486631, 17, 50)
    SaveReal(wp, 0x5A303533, 27, 30)
    SaveReal(wp, 0x5A303533, 34, 30)
    ItemPoolAddItemType(cjc3, 0x5A303533, 0.1)
    ItemPoolAddItemType(cjc4, 0x5A303533, 0.15)
    SaveReal(wp, 0x5A303735, 1, 990000)
    SaveReal(wp, 0x5A303735, 6, 1)
    SaveReal(wp, 0x5A303735, 8, 44)
    SaveReal(wp, 0x5A303735, 13, 1)
    SaveReal(wp, 0x5A303735, 35, 4)
    SaveReal(wp, 0x7030326C, 1, 666)
    SaveReal(wp, 0x7030326C, 2, 10)
    SaveReal(wp, 0x7030326C, 3, 2000)
    SaveReal(wp, 0x7030326C, 4, 1)
    SaveReal(wp, 0x7030326C, 85, 1)
    SaveReal(wp, 0x6631326A, 1, 16500)
    SaveReal(wp, 0x6631326A, 3, 101000)
    SaveReal(wp, 0x6631326A, 4, 8000)
    SaveReal(wp, 0x6631326A, 11, 4000)
    SaveReal(wp, 0x68303571, 34, 13)
    SaveReal(wp, 0x68303571, 84, 3)
    SaveReal(wp, 0x6A313662, 11, 100000)
    SaveReal(wp, 0x6A313662, 28, 15)
    SaveReal(wp, 0x6A313662, 29, 15)
    SaveReal(wp, 0x68303171, 65, 1)
    SaveReal(wp, 0x5A303031, 1, 300)
    ItemPoolAddItemType(cjc1, 0x5A303031, 1.00)
    SaveReal(wp, 0x7332326A, 15, 15)
    SaveReal(wp, 0x53585730, 10, 1)
    SaveReal(wp, 0x6C713434, 2, 170)
    SaveReal(wp, 0x6C713434, 28, 1.6)
    SaveReal(wp, 0x5A303337, 4, 15000)
    SaveReal(wp, 0x5A303337, 37, 5)
    ItemPoolAddItemType(cjc2, 0x5A303337, 0.1)
    ItemPoolAddItemType(cjc3, 0x5A303337, 0.4)
    ItemPoolAddItemType(cjc4, 0x5A303337, 1.00)
    SaveReal(wp, 0x73686A37, 17, 10)
    SaveReal(wp, 0x73686A37, 22, 10)
    SaveReal(wp, 0x73686A37, 78, 10)
    SaveReal(wp, 0x6631386A, 1, 41500)
    SaveReal(wp, 0x6631386A, 3, 281000)
    SaveReal(wp, 0x6631386A, 4, 20000)
    SaveReal(wp, 0x6631386A, 11, 10000)
    SaveReal(wp, 0x6631386A, 12, 10000)
    SaveReal(wp, 0x5A303336, 1, 5000)
    SaveReal(wp, 0x5A303336, 2, 120)
    ItemPoolAddItemType(cjc2, 0x5A303336, 0.1)
    ItemPoolAddItemType(cjc3, 0x5A303336, 0.4)
    ItemPoolAddItemType(cjc4, 0x5A303336, 1.00)
    SaveReal(wp, 0x5A303638, 2, 566)
    SaveReal(wp, 0x5A303638, 3, 2208888)
    SaveReal(wp, 0x5A303638, 23, 13)
    SaveReal(wp, 0x5A303638, 26, 264000)
    SaveReal(wp, 0x5A303638, 29, 5)
    SaveReal(wp, 0x77313978, 70, 3)
    SaveReal(wp, 0x73313579, 18, 17)
    SaveReal(wp, 0x73313579, 26, 20)
    SaveReal(wp, 0x73313579, 79, 20)
    SaveReal(wp, 0x424D3038, 3, 30)
    SaveReal(wp, 0x424D3038, 47, 30)
    SaveReal(wp, 0x68333671, 5, 1)
    SaveReal(wp, 0x77323678, 2, 80)
    SaveReal(wp, 0x5A303432, 5, 30000)
    SaveReal(wp, 0x5A303432, 16, 5)
    SaveReal(wp, 0x5A303432, 23, 2)
    ItemPoolAddItemType(cjc3, 0x5A303432, 0.1)
    ItemPoolAddItemType(cjc4, 0x5A303432, 0.15)
    SaveReal(wp, 0x64793335, 8, 35)
    SaveReal(wp, 0x77323778, 4, 28000)
    SaveReal(wp, 0x5A313236, 2, 20000)
    SaveReal(wp, 0x5A313236, 15, 110)
    SaveReal(wp, 0x5A313236, 16, 13)
    SaveReal(wp, 0x5A313236, 29, 5)
    SaveReal(wp, 0x5A313236, 48, 1000)
    SaveReal(wp, 0x5A313236, 51, 45)
    SaveReal(wp, 0x5A303136, 3, 2000)
    SaveReal(wp, 0x5A303136, 10, 1)
    ItemPoolAddItemType(cjc1, 0x5A303136, 0.4)
    ItemPoolAddItemType(cjc2, 0x5A303136, 1.00)
    SaveReal(wp, 0x77323878, 70, 4)
    SaveReal(wp, 0x64793033, 61, 5)
    SaveReal(wp, 0x424D3037, 52, 3)
    SaveReal(wp, 0x424D3037, 80, 3)
    SaveReal(wp, 0x6630386A, 1, 4500)
    SaveReal(wp, 0x6630386A, 3, 28000)
    SaveReal(wp, 0x6630386A, 4, 4000)
    SaveReal(wp, 0x5A303539, 1, 232700)
    SaveReal(wp, 0x5A303539, 6, 6)
    SaveReal(wp, 0x5A303539, 8, 35)
    ItemPoolAddItemType(cjc4, 0x5A303539, 0.08)
    SaveReal(wp, 0x53585736, 21, 1)
    SaveReal(wp, 0x77303978, 4, 14000)
    SaveReal(wp, 0x424D3136, 21, 1)
    SaveReal(wp, 0x424D3137, 16, 1)
    SaveReal(wp, 0x5A303137, 25, 0.01)
    SaveReal(wp, 0x5A303137, 43, 15)
    ItemPoolAddItemType(cjc1, 0x5A303137, 0.4)
    ItemPoolAddItemType(cjc2, 0x5A303137, 1.00)
    SaveReal(wp, 0x5A313334, 2, 20000)
    SaveReal(wp, 0x5A313334, 15, 110)
    SaveReal(wp, 0x5A313334, 16, 13)
    SaveReal(wp, 0x5A313334, 29, 5)
    SaveReal(wp, 0x5A313334, 48, 1000)
    SaveReal(wp, 0x5A313334, 51, 45)
    SaveReal(wp, 0x5A303035, 52, 900)
    ItemPoolAddItemType(cjc1, 0x5A303035, 1.00)
    SaveReal(wp, 0x77313678, 16, 3)
    SaveReal(wp, 0x64793034, 68, 300)
    SaveReal(wp, 0x53303748, 28, 200)
    SaveReal(wp, 0x77343578, 4, 42000)
    SaveReal(wp, 0x6C713334, 3, 8)
    SaveReal(wp, 0x6C713334, 21, 1)
    SaveReal(wp, 0x6C713334, 45, 8)
    SaveReal(wp, 0x77343178, 12, 7333)
    SaveReal(wp, 0x5A313132, 2, 20000)
    SaveReal(wp, 0x5A313132, 15, 110)
    SaveReal(wp, 0x5A313132, 16, 13)
    SaveReal(wp, 0x5A313132, 29, 5)
    SaveReal(wp, 0x5A313132, 48, 1000)
    SaveReal(wp, 0x5A313132, 51, 45)
    SaveReal(wp, 0x7030396C, 1, 15000)
    SaveReal(wp, 0x7030396C, 2, 90)
    SaveReal(wp, 0x7030396C, 3, 105000)
    SaveReal(wp, 0x7030396C, 4, 5)
    SaveReal(wp, 0x7030396C, 85, 5)
    SaveReal(wp, 0x77343478, 2, 100)
    SaveReal(wp, 0x77343378, 16, 6)
    SaveReal(wp, 0x53585734, 18, 1)
    SaveReal(wp, 0x5A313138, 1, 50)
    SaveReal(wp, 0x5A313138, 2, 10000)
    SaveReal(wp, 0x5A313138, 13, 4)
    SaveReal(wp, 0x5A313138, 20, 3)
    SaveReal(wp, 0x5A313138, 23, 5)
    SaveReal(wp, 0x5A313138, 24, 1000)
    SaveReal(wp, 0x5A313138, 31, 3)
    SaveReal(wp, 0x5A313138, 51, 15)
    SaveReal(wp, 0x77303678, 3, 112000)
    SaveReal(wp, 0x77343078, 11, 7333)
    SaveReal(wp, 0x6C713137, 3, 700)
    SaveReal(wp, 0x77303778, 16, 2)
    SaveReal(wp, 0x6C713531, 17, 3)
    SaveReal(wp, 0x77333178, 11, 6333)
    SaveReal(wp, 0x424D3035, 22, 3)
    SaveReal(wp, 0x424D3035, 78, 3)
    SaveReal(wp, 0x77303878, 2, 50)
    SaveReal(wp, 0x7331376A, 19, 20)
    SaveReal(wp, 0x5A313037, 1, 3900000)
    SaveReal(wp, 0x5A313037, 10, 10)
    SaveReal(wp, 0x5A313037, 15, 5)
    SaveReal(wp, 0x5A313037, 16, 3)
    SaveReal(wp, 0x5A313037, 20, 33)
    SaveReal(wp, 0x5A313037, 23, 5)
    SaveReal(wp, 0x5A313037, 31, 33)
    SaveReal(wp, 0x64793032, 86, 3)
    SaveReal(wp, 0x64793235, 16, 16)
    SaveReal(wp, 0x5A303639, 1, 277777)
    SaveReal(wp, 0x5A303639, 6, 1)
    SaveReal(wp, 0x5A303639, 8, 45)
    SaveReal(wp, 0x5A303639, 22, 133750)
    SaveReal(wp, 0x5A303639, 26, 133750)
    SaveReal(wp, 0x5A303639, 52, 133750)
    SaveReal(wp, 0x5A303138, 1, 750)
    SaveReal(wp, 0x5A303138, 37, 1)
    ItemPoolAddItemType(cjc1, 0x5A303138, 0.4)
    ItemPoolAddItemType(cjc2, 0x5A303138, 1.00)
    SaveReal(wp, 0x77333078, 1, 38000)
    SaveReal(wp, 0x68313871, 25, 0.02)
    SaveReal(wp, 0x68313871, 43, 25)
    SaveReal(wp, 0x53323348, 60, 3)
    SaveReal(wp, 0x424D3036, 26, 3)
    SaveReal(wp, 0x424D3036, 79, 3)
    SaveReal(wp, 0x53323748, 86, 3)
    SaveReal(wp, 0x5A303038, 34, 2)
    ItemPoolAddItemType(cjc1, 0x5A303038, 1.00)
    SaveReal(wp, 0x6A313462, 3, 244)
    SaveReal(wp, 0x6A313462, 15, 30)
    SaveReal(wp, 0x6A313462, 21, 25)
    SaveReal(wp, 0x6A313462, 47, 244)
    SaveReal(wp, 0x53303848, 53, 1)
    SaveReal(wp, 0x5A303538, 1, 88000)
    SaveReal(wp, 0x5A303538, 8, 80)
    SaveReal(wp, 0x5A303538, 28, 12)
    ItemPoolAddItemType(cjc4, 0x5A303538, 0.08)
    SaveReal(wp, 0x6C713635, 17, 3)
    SaveReal(wp, 0x6C713635, 18, 3)
    SaveReal(wp, 0x6C713635, 19, 3)
    SaveReal(wp, 0x64793233, 36, 8)
    SaveReal(wp, 0x6C713539, 3, 17500)
    SaveReal(wp, 0x64793331, 15, 12)
    SaveReal(wp, 0x5A303436, 1, 78000)
    SaveReal(wp, 0x5A303436, 15, 8)
    SaveReal(wp, 0x5A303436, 16, 2)
    ItemPoolAddItemType(cjc3, 0x5A303436, 0.1)
    ItemPoolAddItemType(cjc4, 0x5A303436, 0.15)
    SaveReal(wp, 0x77323078, 28, 5)
    SaveReal(wp, 0x6A303862, 3, 180)
    SaveReal(wp, 0x6A303862, 22, 60)
    SaveReal(wp, 0x6A303862, 47, 180)
    SaveReal(wp, 0x6A303862, 78, 60)
    SaveReal(wp, 0x73323479, 36, 12)
    SaveReal(wp, 0x73323479, 46, 12)
    SaveReal(wp, 0x77323378, 12, 5333)
    SaveReal(wp, 0x5A303536, 1, 88000)
    SaveReal(wp, 0x5A303536, 23, 10)
    SaveReal(wp, 0x5A303536, 29, 3)
    SaveReal(wp, 0x5A303536, 35, 2)
    ItemPoolAddItemType(cjc4, 0x5A303536, 0.08)
    SaveReal(wp, 0x57483130, 54, 10000)
    SaveReal(wp, 0x77313178, 28, 4)
    SaveReal(wp, 0x73313379, 6, 5)
    SaveReal(wp, 0x73313379, 8, 33)
    SaveReal(wp, 0x6C713232, 1, 150)
    SaveReal(wp, 0x6A303363, 1, 1050)
    SaveReal(wp, 0x6A303363, 3, 6750)
    SaveReal(wp, 0x6A303363, 5, 525)
    SaveReal(wp, 0x6A303363, 63, 1)
    SaveReal(wp, 0x5A313232, 2, 20000)
    SaveReal(wp, 0x5A313232, 3, 50000000)
    SaveReal(wp, 0x5A313232, 7, 5)
    SaveReal(wp, 0x5A313232, 9, 35)
    SaveReal(wp, 0x5A313232, 15, 70)
    SaveReal(wp, 0x5A313232, 16, 55)
    SaveReal(wp, 0x5A313232, 23, 90)
    SaveReal(wp, 0x77303578, 12, 3333)
    SaveReal(wp, 0x6C713435, 15, 1)
    SaveReal(wp, 0x6C713435, 22, 5400)
    SaveReal(wp, 0x68333971, 18, 12)
    SaveReal(wp, 0x68333971, 26, 666666)
    SaveReal(wp, 0x68333971, 28, 6)
    SaveReal(wp, 0x68333971, 70, 12)
    SaveReal(wp, 0x77333278, 12, 6333)
    SaveReal(wp, 0x77303178, 70, 1)
    SaveReal(wp, 0x77313078, 70, 2)
    SaveReal(wp, 0x6C713338, 2, 150)
    SaveReal(wp, 0x6C713338, 28, 1.3)
    SaveReal(wp, 0x73323379, 14, 33)
    SaveReal(wp, 0x73323379, 34, 33)
    SaveReal(wp, 0x6A303762, 3, 63)
    SaveReal(wp, 0x6A303762, 48, 9)
    SaveReal(wp, 0x6A303762, 49, 63)
    SaveReal(wp, 0x77333478, 16, 5)
    SaveReal(wp, 0x64793031, 36, 3)
    SaveReal(wp, 0x5A303730, 1, 235000)
    SaveReal(wp, 0x5A303730, 6, 4)
    SaveReal(wp, 0x5A303730, 8, 100)
    SaveReal(wp, 0x5A303730, 15, 8)
    SaveReal(wp, 0x53303948, 6, 50)
    SaveReal(wp, 0x53303948, 25, 0.1)
    SaveReal(wp, 0x53303948, 43, 15)
    SaveReal(wp, 0x77323278, 11, 5333)
    SaveReal(wp, 0x6C713238, 3, 8000)
    SaveReal(wp, 0x6C713238, 8, 3)
    SaveReal(wp, 0x5A303338, 1, 10800)
    SaveReal(wp, 0x5A303338, 32, 3)
    ItemPoolAddItemType(cjc2, 0x5A303338, 0.1)
    ItemPoolAddItemType(cjc3, 0x5A303338, 0.4)
    ItemPoolAddItemType(cjc4, 0x5A303338, 1.00)
    SaveReal(wp, 0x64793139, 15, 8)
    SaveReal(wp, 0x77303378, 1, 16000)
    SaveReal(wp, 0x5A303931, 1, 3400000)
    SaveReal(wp, 0x5A303931, 7, 3)
    SaveReal(wp, 0x5A303931, 9, 30)
    SaveReal(wp, 0x5A303931, 16, 3)
    SaveReal(wp, 0x5A303931, 19, 25)
    SaveReal(wp, 0x5A303931, 23, 5)
    SaveReal(wp, 0x5A303830, 3, 5300000)
    SaveReal(wp, 0x5A303830, 20, 1)
    SaveReal(wp, 0x5A303830, 23, 15)
    SaveReal(wp, 0x5A303830, 26, 126400)
    SaveReal(wp, 0x5A303830, 29, 6)
    SaveReal(wp, 0x5A303830, 42, 4)
    SaveReal(wp, 0x73686A39, 17, 10)
    SaveReal(wp, 0x73686A39, 22, 10)
    SaveReal(wp, 0x73686A39, 78, 10)
    SaveReal(wp, 0x64793133, 36, 5)
    SaveReal(wp, 0x5A303439, 1, 31000)
    SaveReal(wp, 0x5A303439, 32, 9)
    ItemPoolAddItemType(cjc3, 0x5A303439, 0.1)
    ItemPoolAddItemType(cjc4, 0x5A303439, 0.15)
    SaveReal(wp, 0x4C303135, 10, 5)
    SaveReal(wp, 0x77313278, 1, 22000)
    SaveReal(wp, 0x6C713832, 15, 0.3)
    SaveReal(wp, 0x6C713832, 20, 0.2)
    SaveReal(wp, 0x6C713436, 26, 5400)
    SaveReal(wp, 0x77333378, 3, 252000)
    SaveReal(wp, 0x6C713536, 16, 1)
    SaveReal(wp, 0x5A303236, 4, 9000)
    ItemPoolAddItemType(cjc1, 0x5A303236, 0.1)
    ItemPoolAddItemType(cjc2, 0x5A303236, 0.4)
    ItemPoolAddItemType(cjc3, 0x5A303236, 1.00)
    SaveReal(wp, 0x77313478, 12, 4333)
    SaveReal(wp, 0x424D3138, 35, 1)
    SaveReal(wp, 0x57483134, 22, 10)
    SaveReal(wp, 0x78737734, 1, 2700)
    SaveReal(wp, 0x78737734, 2, 120)
    SaveReal(wp, 0x78737734, 3, 18820)
    SaveReal(wp, 0x78737734, 4, 8400)
    SaveReal(wp, 0x78737734, 45, 49)
    SaveReal(wp, 0x78737734, 85, 7)
    SaveReal(wp, 0x5A303234, 25, 0.02)
    SaveReal(wp, 0x5A303234, 43, 45)
    ItemPoolAddItemType(cjc1, 0x5A303234, 0.1)
    ItemPoolAddItemType(cjc2, 0x5A303234, 0.4)
    ItemPoolAddItemType(cjc3, 0x5A303234, 1.00)
    SaveReal(wp, 0x6A303262, 3, 48)
    SaveReal(wp, 0x6A303262, 36, 6)
    SaveReal(wp, 0x6A303262, 47, 48)
    SaveReal(wp, 0x78737732, 1, 325)
    SaveReal(wp, 0x78737732, 2, 30)
    SaveReal(wp, 0x78737732, 3, 2166)
    SaveReal(wp, 0x78737732, 4, 1288)
    SaveReal(wp, 0x78737732, 45, 21)
    SaveReal(wp, 0x78737732, 85, 3)
    SaveReal(wp, 0x68313971, 2, 366)
    SaveReal(wp, 0x68313971, 51, 3)
    SaveReal(wp, 0x68313971, 84, 15)
    SaveReal(wp, 0x77303278, 28, 2)
    SaveReal(wp, 0x5A303734, 1, 235000)
    SaveReal(wp, 0x5A303734, 6, 4)
    SaveReal(wp, 0x5A303734, 8, 100)
    SaveReal(wp, 0x5A303734, 15, 8)
    SaveReal(wp, 0x5A303739, 1, 990000)
    SaveReal(wp, 0x5A303739, 2, 266)
    SaveReal(wp, 0x5A303739, 3, 5800000)
    SaveReal(wp, 0x5A303739, 5, 520000)
    SaveReal(wp, 0x5A303739, 13, 4)
    SaveReal(wp, 0x736A7A34, 63, 1)
    SaveReal(wp, 0x736A7A34, 64, 1)
    SaveReal(wp, 0x5A303936, 1, 8000000)
    SaveReal(wp, 0x5A303936, 6, 10)
    SaveReal(wp, 0x5A303936, 8, 150)
    SaveReal(wp, 0x5A303936, 15, 110)
    SaveReal(wp, 0x5A303936, 21, 105)
    SaveReal(wp, 0x5A303936, 48, 3)
    SaveReal(wp, 0x6A303162, 27, 32)
    SaveReal(wp, 0x6C713236, 2, 15)
    SaveReal(wp, 0x6C713236, 28, 1)
    SaveReal(wp, 0x6C713736, 1, 4000)
    SaveReal(wp, 0x6C713538, 1, 2500)
    SaveReal(wp, 0x6A313262, 16, 12)
    SaveReal(wp, 0x6A313262, 19, 5)
    SaveReal(wp, 0x6A313262, 52, 144)
    SaveReal(wp, 0x6A313262, 80, 144)
    SaveReal(wp, 0x5A303932, 1, 3560000)
    SaveReal(wp, 0x5A303932, 8, 50)
    SaveReal(wp, 0x5A303932, 9, 30)
    SaveReal(wp, 0x5A303932, 15, 5)
    SaveReal(wp, 0x5A303932, 18, 25)
    SaveReal(wp, 0x5A303932, 26, 1200000)
    SaveReal(wp, 0x6C713336, 28, 1.1)
    SaveReal(wp, 0x5A303838, 15, 3)
    SaveReal(wp, 0x5A303838, 21, 25)
    SaveReal(wp, 0x5A303838, 26, 3250000)
    SaveReal(wp, 0x5A303838, 30, 1333)
    SaveReal(wp, 0x5A303838, 48, 1333)
    SaveReal(wp, 0x68323971, 16, 7)
    SaveReal(wp, 0x68323971, 24, 500)
    SaveReal(wp, 0x5A303837, 1, 958000)
    SaveReal(wp, 0x5A303837, 6, 4)
    SaveReal(wp, 0x5A303837, 8, 120)
    SaveReal(wp, 0x5A303837, 28, 22)
    SaveReal(wp, 0x5A303839, 1, 3900000)
    SaveReal(wp, 0x5A303839, 10, 10)
    SaveReal(wp, 0x5A303839, 15, 5)
    SaveReal(wp, 0x5A303839, 16, 3)
    SaveReal(wp, 0x5A303839, 20, 33)
    SaveReal(wp, 0x5A303839, 23, 5)
    SaveReal(wp, 0x5A303839, 31, 33)
    SaveReal(wp, 0x77303478, 11, 3333)
    SaveReal(wp, 0x5A313134, 1, 3900000)
    SaveReal(wp, 0x5A313134, 10, 10)
    SaveReal(wp, 0x5A313134, 15, 5)
    SaveReal(wp, 0x5A313134, 16, 3)
    SaveReal(wp, 0x5A313134, 20, 33)
    SaveReal(wp, 0x5A313134, 23, 5)
    SaveReal(wp, 0x5A313134, 31, 33)
    SaveReal(wp, 0x77313578, 3, 142000)
    SaveReal(wp, 0x5A313135, 1, 3400000)
    SaveReal(wp, 0x5A313135, 6, 5)
    SaveReal(wp, 0x5A313135, 8, 50)
    SaveReal(wp, 0x5A313135, 17, 30)
    SaveReal(wp, 0x5A313135, 22, 2500000)
    SaveReal(wp, 0x5A313135, 28, 15)
    SaveReal(wp, 0x5A313135, 30, 5)
    SaveReal(wp, 0x77323178, 1, 30000)
    SaveReal(wp, 0x5A313233, 1, 8000000)
    SaveReal(wp, 0x5A313233, 6, 10)
    SaveReal(wp, 0x5A313233, 8, 100)
    SaveReal(wp, 0x5A313233, 28, 66)
    SaveReal(wp, 0x5A313233, 35, 30)
    SaveReal(wp, 0x5A313239, 1, 3500000)
    SaveReal(wp, 0x5A313239, 2, 2500)
    SaveReal(wp, 0x5A313239, 3, 13527000)
    SaveReal(wp, 0x5A313239, 6, 3)
    SaveReal(wp, 0x5A313239, 8, 30)
    SaveReal(wp, 0x5A313239, 13, 3)
    SaveReal(wp, 0x5A313239, 15, 5)
    SaveReal(wp, 0x5A313239, 28, 5)
    SaveReal(wp, 0x77313378, 11, 4333)
    SaveReal(wp, 0x6C713734, 1, 3000)
    SaveReal(wp, 0x6C713734, 5, 9000)
    SaveReal(wp, 0x53303448, 3, 70)
    SaveReal(wp, 0x53303448, 22, 10)
    SaveReal(wp, 0x53303448, 47, 70)
    SaveReal(wp, 0x53303448, 78, 10)
    SaveReal(wp, 0x53303448, 84, 15)
    SaveReal(wp, 0x5A313331, 2, 20000)
    SaveReal(wp, 0x5A313331, 3, 50000000)
    SaveReal(wp, 0x5A313331, 7, 5)
    SaveReal(wp, 0x5A313331, 9, 35)
    SaveReal(wp, 0x5A313331, 15, 70)
    SaveReal(wp, 0x5A313331, 16, 55)
    SaveReal(wp, 0x5A313331, 23, 90)
    SaveReal(wp, 0x73313679, 7, 5)
    SaveReal(wp, 0x73313679, 9, 33)
    SaveReal(wp, 0x5A303632, 1, 80000)
    SaveReal(wp, 0x5A303632, 35, 5)
    ItemPoolAddItemType(cjc4, 0x5A303632, 0.08)
    SaveReal(wp, 0x6C713834, 3, 84000)
    SaveReal(wp, 0x6C713534, 28, 3)
    SaveReal(wp, 0x6A313162, 3, 12)
    SaveReal(wp, 0x6A313162, 44, 4)
    SaveReal(wp, 0x6A313162, 45, 12)
    SaveReal(wp, 0x64793230, 6, 3.5)
    SaveReal(wp, 0x53303348, 13, 1)
    SaveReal(wp, 0x5A303235, 2, 15)
    ItemPoolAddItemType(cjc1, 0x5A303235, 0.1)
    ItemPoolAddItemType(cjc2, 0x5A303235, 0.4)
    ItemPoolAddItemType(cjc3, 0x5A303235, 1.00)
    SaveReal(wp, 0x77333578, 2, 90)
    SaveReal(wp, 0x64793330, 21, 11)
    SaveReal(wp, 0x6C713732, 2, 250)
    SaveReal(wp, 0x6C713732, 51, 2)
    SaveReal(wp, 0x6630396A, 1, 5500)
    SaveReal(wp, 0x6630396A, 3, 31000)
    SaveReal(wp, 0x6630396A, 4, 5000)
    SaveReal(wp, 0x57486634, 21, 30)
    SaveReal(wp, 0x6C713634, 5, 7500)
    SaveReal(wp, 0x5A303738, 2, 1366)
    SaveReal(wp, 0x5A303738, 3, 5500000)
    SaveReal(wp, 0x5A303738, 28, 20)
    SaveReal(wp, 0x5A303738, 42, 4)
    SaveReal(wp, 0x5A303738, 51, 3)
    SaveReal(wp, 0x6C713639, 1, 10000)
    SaveReal(wp, 0x6C713639, 2, 100)
    SaveReal(wp, 0x6C713639, 3, 70000)
    SaveReal(wp, 0x6C713639, 15, 5)
    SaveReal(wp, 0x53303548, 3, 7)
    SaveReal(wp, 0x53303548, 44, 1)
    SaveReal(wp, 0x53303548, 45, 7)
    SaveReal(wp, 0x53303548, 84, 15)
    SaveReal(wp, 0x5A303532, 1, 31000)
    SaveReal(wp, 0x5A303532, 35, 3)
    ItemPoolAddItemType(cjc3, 0x5A303532, 0.1)
    ItemPoolAddItemType(cjc4, 0x5A303532, 0.15)
    SaveReal(wp, 0x64793039, 15, 5)
    SaveReal(wp, 0x6A303462, 3, 48)
    SaveReal(wp, 0x6A303462, 46, 3)
    SaveReal(wp, 0x6A303462, 47, 48)
    SaveReal(wp, 0x5A303534, 2, 500)
    SaveReal(wp, 0x5A303534, 3, 778888)
    SaveReal(wp, 0x5A303534, 28, 11)
    ItemPoolAddItemType(cjc4, 0x5A303534, 0.08)
    SaveReal(wp, 0x68333171, 27, 16)
    SaveReal(wp, 0x68333171, 28, 7)
    SaveReal(wp, 0x68333171, 29, 7)
    SaveReal(wp, 0x64793239, 43, 40)
    SaveReal(wp, 0x77323478, 3, 182000)
    SaveReal(wp, 0x6A313862, 17, 18)
    SaveReal(wp, 0x6A313862, 18, 18)
    SaveReal(wp, 0x6A313862, 19, 18)
    SaveReal(wp, 0x6C713131, 3, 3)
    SaveReal(wp, 0x6C713131, 45, 3)
    SaveReal(wp, 0x64793231, 27, 15)
    SaveReal(wp, 0x5A303930, 1, 3400000)
    SaveReal(wp, 0x5A303930, 6, 5)
    SaveReal(wp, 0x5A303930, 8, 50)
    SaveReal(wp, 0x5A303930, 17, 30)
    SaveReal(wp, 0x5A303930, 22, 2500000)
    SaveReal(wp, 0x5A303930, 28, 15)
    SaveReal(wp, 0x5A303930, 30, 5)
    SaveReal(wp, 0x6630316A, 1, 350)
    SaveReal(wp, 0x6630316A, 3, 2100)
    SaveReal(wp, 0x6C713132, 36, 1)
    SaveReal(wp, 0x5A303332, 25, 0.03)
    SaveReal(wp, 0x5A303332, 43, 130)
    ItemPoolAddItemType(cjc2, 0x5A303332, 0.1)
    ItemPoolAddItemType(cjc3, 0x5A303332, 0.4)
    ItemPoolAddItemType(cjc4, 0x5A303332, 1.00)
    SaveReal(wp, 0x77323578, 16, 4)
    SaveReal(wp, 0x6C713134, 46, 2)
    SaveReal(wp, 0x6C713135, 3, 10)
    SaveReal(wp, 0x6C713135, 47, 10)
    SaveReal(wp, 0x57483137, 26, 13)
    SaveReal(wp, 0x5A303831, 2, 400)
    SaveReal(wp, 0x5A303831, 3, 5000000)
    SaveReal(wp, 0x5A303831, 5, 133750)
    SaveReal(wp, 0x5A303831, 21, 15)
    SaveReal(wp, 0x5A303831, 35, 4)
    SaveReal(wp, 0x5A303831, 42, 4)
    SaveReal(wp, 0x5A303934, 1, 3500000)
    SaveReal(wp, 0x5A303934, 2, 800)
    SaveReal(wp, 0x5A303934, 3, 13527000)
    SaveReal(wp, 0x5A303934, 6, 3)
    SaveReal(wp, 0x5A303934, 18, 30)
    SaveReal(wp, 0x5A303934, 25, 0.1)
    SaveReal(wp, 0x73313479, 15, 5)
    SaveReal(wp, 0x5A303530, 15, 10)
    SaveReal(wp, 0x5A303530, 28, 6)
    ItemPoolAddItemType(cjc3, 0x5A303530, 0.1)
    ItemPoolAddItemType(cjc4, 0x5A303530, 0.15)
    SaveReal(wp, 0x78737731, 1, 125)
    SaveReal(wp, 0x78737731, 2, 10)
    SaveReal(wp, 0x78737731, 3, 766)
    SaveReal(wp, 0x78737731, 4, 388)
    SaveReal(wp, 0x78737731, 45, 7)
    SaveReal(wp, 0x78737731, 85, 1)
    SaveReal(wp, 0x424D3134, 34, 3)
    SaveReal(wp, 0x6C713234, 1, 350)
    SaveReal(wp, 0x64793038, 21, 9)
    SaveReal(wp, 0x64793237, 32, 4)
    SaveReal(wp, 0x6C713739, 15, 1)
    SaveReal(wp, 0x6C713739, 36, 1)
    SaveReal(wp, 0x5A303834, 1, 990000)
    SaveReal(wp, 0x5A303834, 2, 266)
    SaveReal(wp, 0x5A303834, 3, 5800000)
    SaveReal(wp, 0x5A303834, 5, 520000)
    SaveReal(wp, 0x5A303834, 13, 4)
    SaveReal(wp, 0x6C713532, 19, 3)
    SaveReal(wp, 0x68333571, 41, 5)
    SaveReal(wp, 0x6C713335, 28, 1)
    SaveReal(wp, 0x6C713335, 51, 1)
    SaveReal(wp, 0x5A303036, 27, 2)
    ItemPoolAddItemType(cjc1, 0x5A303036, 1.00)
    SaveReal(wp, 0x6C713437, 52, 5400)
    SaveReal(wp, 0x5A303135, 1, 1000)
    ItemPoolAddItemType(cjc1, 0x5A303135, 0.4)
    ItemPoolAddItemType(cjc2, 0x5A303135, 1.00)
    SaveReal(wp, 0x5A303437, 2, 450)
    SaveReal(wp, 0x5A303437, 3, 778888)
    SaveReal(wp, 0x5A303437, 7, 0.3)
    SaveReal(wp, 0x5A303437, 9, 3)
    SaveReal(wp, 0x5A303437, 31, 2.5)
    SaveReal(wp, 0x5A303437, 43, 35)
    ItemPoolAddItemType(cjc3, 0x5A303437, 0.1)
    ItemPoolAddItemType(cjc4, 0x5A303437, 0.15)
    SaveReal(wp, 0x5A303736, 1, 998999)
    SaveReal(wp, 0x5A303736, 6, 1)
    SaveReal(wp, 0x5A303736, 8, 30)
    SaveReal(wp, 0x5A303736, 15, 2)
    SaveReal(wp, 0x5A303736, 35, 4)
    SaveReal(wp, 0x77313878, 4, 22000)
    SaveReal(wp, 0x6C713438, 14, 10)
    SaveReal(wp, 0x5A303935, 1, 3500000)
    SaveReal(wp, 0x5A303935, 2, 2500)
    SaveReal(wp, 0x5A303935, 3, 13527000)
    SaveReal(wp, 0x5A303935, 6, 3)
    SaveReal(wp, 0x5A303935, 8, 30)
    SaveReal(wp, 0x5A303935, 13, 3)
    SaveReal(wp, 0x5A303935, 15, 5)
    SaveReal(wp, 0x5A303935, 28, 5)
    SaveReal(wp, 0x5A303933, 1, 50)
    SaveReal(wp, 0x5A303933, 2, 10000)
    SaveReal(wp, 0x5A303933, 13, 4)
    SaveReal(wp, 0x5A303933, 20, 3)
    SaveReal(wp, 0x5A303933, 23, 5)
    SaveReal(wp, 0x5A303933, 24, 1000)
    SaveReal(wp, 0x5A303933, 31, 3)
    SaveReal(wp, 0x5A303933, 51, 15)
    SaveReal(wp, 0x5A313035, 2, 20000)
    SaveReal(wp, 0x5A313035, 15, 110)
    SaveReal(wp, 0x5A313035, 16, 13)
    SaveReal(wp, 0x5A313035, 29, 5)
    SaveReal(wp, 0x5A313035, 48, 1000)
    SaveReal(wp, 0x5A313035, 51, 45)
    SaveReal(wp, 0x77313778, 2, 70)
    SaveReal(wp, 0x6A313062, 3, 12)
    SaveReal(wp, 0x6A313062, 44, 4)
    SaveReal(wp, 0x6A313062, 45, 12)
    SaveReal(wp, 0x68323571, 4, 4)
    SaveReal(wp, 0x68323571, 85, 4)
    SaveReal(wp, 0x53313348, 37, 15)
    SaveReal(wp, 0x6C713632, 28, 4)
    SaveReal(wp, 0x64793131, 27, 10)
    SaveReal(wp, 0x6C713636, 1, 3500)
    SaveReal(wp, 0x6C713636, 2, 350)
    SaveReal(wp, 0x6C713636, 3, 22500)
    SaveReal(wp, 0x5A303433, 2, 150)
    SaveReal(wp, 0x5A303433, 3, 70000)
    SaveReal(wp, 0x5A303433, 10, 5)
    ItemPoolAddItemType(cjc3, 0x5A303433, 0.1)
    ItemPoolAddItemType(cjc4, 0x5A303433, 0.15)
    SaveReal(wp, 0x6C713638, 8, 10)
    SaveReal(wp, 0x6C713638, 9, 10)
    SaveReal(wp, 0x6C713638, 15, 2)
    SaveReal(wp, 0x6C713638, 16, 1)
    SaveReal(wp, 0x6C713331, 1, 1000)
    SaveReal(wp, 0x6C713331, 17, 1)
    SaveReal(wp, 0x53313448, 18, 25)
    SaveReal(wp, 0x53313448, 48, 1)
    SaveReal(wp, 0x424D3031, 17, 2)
    SaveReal(wp, 0x53323948, 27, 15)
    SaveReal(wp, 0x53323948, 58, 3)
    SaveReal(wp, 0x64793337, 16, 24)
    SaveReal(wp, 0x6A303562, 27, 48)
    SaveReal(wp, 0x5A303333, 16, 2)
    SaveReal(wp, 0x5A303333, 52, 15000)
    ItemPoolAddItemType(cjc2, 0x5A303333, 0.1)
    ItemPoolAddItemType(cjc3, 0x5A303333, 0.4)
    ItemPoolAddItemType(cjc4, 0x5A303333, 1.00)
    SaveReal(wp, 0x5A313234, 10, 15)
    SaveReal(wp, 0x5A313234, 17, 100)
    SaveReal(wp, 0x5A313234, 18, 100)
    SaveReal(wp, 0x5A313234, 19, 100)
    SaveReal(wp, 0x5A313234, 22, 3500000)
    SaveReal(wp, 0x5A313234, 26, 3500000)
    SaveReal(wp, 0x5A313234, 52, 3500000)
    SaveReal(wp, 0x6C713731, 19, 1)
    SaveReal(wp, 0x6C713731, 52, 10000)
    SaveReal(wp, 0x5A303732, 2, 566)
    SaveReal(wp, 0x5A303732, 3, 2208888)
    SaveReal(wp, 0x5A303732, 23, 13)
    SaveReal(wp, 0x5A303732, 26, 264000)
    SaveReal(wp, 0x5A303732, 29, 5)
    SaveReal(wp, 0x53313548, 1, 50)
    SaveReal(wp, 0x64793137, 43, 30)
    SaveReal(wp, 0x6C713233, 5, 450)
    SaveReal(wp, 0x5A303131, 2, 5)
    ItemPoolAddItemType(cjc1, 0x5A303131, 0.4)
    ItemPoolAddItemType(cjc2, 0x5A303131, 1.00)
    SaveReal(wp, 0x736A7A32, 62, 1)
    SaveReal(wp, 0x6C713836, 3, 90000)
    SaveReal(wp, 0x6C713836, 15, 0.6)
    SaveReal(wp, 0x6C713133, 3, 3)
    SaveReal(wp, 0x6C713133, 49, 3)
    SaveReal(wp, 0x64793037, 43, 15)
    SaveReal(wp, 0x6A303662, 22, 48)
    SaveReal(wp, 0x6A303662, 26, 48)
    SaveReal(wp, 0x6A303662, 52, 48)
    SaveReal(wp, 0x6A303662, 78, 48)
    SaveReal(wp, 0x6A303662, 79, 48)
    SaveReal(wp, 0x6A303662, 80, 48)
    SaveReal(wp, 0x4C303139, 36, 1)
    SaveReal(wp, 0x4C303139, 48, 1)
    SaveReal(wp, 0x6A313962, 11, 180000)
    SaveReal(wp, 0x6A313962, 12, 180000)
    SaveReal(wp, 0x6A313962, 15, 50)
    SaveReal(wp, 0x6A303362, 3, 4)
    SaveReal(wp, 0x6A303362, 30, 1)
    SaveReal(wp, 0x6A303362, 45, 4)
    SaveReal(wp, 0x5A303232, 52, 10000)
    ItemPoolAddItemType(cjc1, 0x5A303232, 0.1)
    ItemPoolAddItemType(cjc2, 0x5A303232, 0.4)
    ItemPoolAddItemType(cjc3, 0x5A303232, 1.00)
    SaveReal(wp, 0x5A313238, 1, 3500000)
    SaveReal(wp, 0x5A313238, 2, 800)
    SaveReal(wp, 0x5A313238, 3, 13527000)
    SaveReal(wp, 0x5A313238, 6, 3)
    SaveReal(wp, 0x5A313238, 18, 30)
    SaveReal(wp, 0x5A313238, 25, 0.1)
    SaveReal(wp, 0x636B6E67, 54, 20000)
    SaveReal(wp, 0x6C713738, 8, 5)
    SaveReal(wp, 0x6C713738, 28, 5)
    SaveReal(wp, 0x5A303438, 2, 400)
    SaveReal(wp, 0x5A303438, 3, 788700)
    SaveReal(wp, 0x5A303438, 10, 5)
    SaveReal(wp, 0x5A303438, 13, 2)
    SaveReal(wp, 0x5A303438, 20, 2)
    ItemPoolAddItemType(cjc3, 0x5A303438, 0.1)
    ItemPoolAddItemType(cjc4, 0x5A303438, 0.15)
    SaveReal(wp, 0x424D3132, 27, 3)
    SaveReal(wp, 0x6C713339, 15, 1)
    SaveReal(wp, 0x6C713339, 28, 1.4)
    SaveReal(wp, 0x64793138, 21, 11)
    SaveReal(wp, 0x5A303636, 1, 235000)
    SaveReal(wp, 0x5A303636, 28, 15)
    SaveReal(wp, 0x5A313136, 1, 3400000)
    SaveReal(wp, 0x5A313136, 7, 3)
    SaveReal(wp, 0x5A313136, 9, 30)
    SaveReal(wp, 0x5A313136, 16, 3)
    SaveReal(wp, 0x5A313136, 19, 25)
    SaveReal(wp, 0x5A313136, 23, 5)
    SaveReal(wp, 0x6C713439, 27, 10)
    SaveReal(wp, 0x5A313030, 1, 3500000)
    SaveReal(wp, 0x5A313030, 2, 2500)
    SaveReal(wp, 0x5A313030, 3, 13527000)
    SaveReal(wp, 0x5A313030, 6, 3)
    SaveReal(wp, 0x5A313030, 8, 30)
    SaveReal(wp, 0x5A313030, 13, 3)
    SaveReal(wp, 0x5A313030, 15, 5)
    SaveReal(wp, 0x5A313030, 28, 5)
    SaveReal(wp, 0x5A303238, 2, 75)
    SaveReal(wp, 0x5A303238, 27, 18)
    ItemPoolAddItemType(cjc1, 0x5A303238, 0.1)
    ItemPoolAddItemType(cjc2, 0x5A303238, 0.4)
    ItemPoolAddItemType(cjc3, 0x5A303238, 1.00)
    SaveReal(wp, 0x68323671, 52, 33)
    SaveReal(wp, 0x6630326A, 1, 550)
    SaveReal(wp, 0x6630326A, 3, 3500)
    SaveReal(wp, 0x6A313362, 25, 0.03)
    SaveReal(wp, 0x6A313362, 40, 32)
    SaveReal(wp, 0x736A7A31, 61, 1)
    SaveReal(wp, 0x57486633, 19, 50)
    SaveReal(wp, 0x5A303634, 1, 80000)
    SaveReal(wp, 0x5A303634, 32, 5)
    ItemPoolAddItemType(cjc4, 0x5A303634, 0.08)
    SaveReal(wp, 0x424D3135, 37, 1)
    SaveReal(wp, 0x4C303230, 30, 1)
    SaveReal(wp, 0x4C303230, 34, 3)
    SaveReal(wp, 0x4C303230, 62, 1)
    SaveReal(wp, 0x5A313137, 1, 3560000)
    SaveReal(wp, 0x5A313137, 8, 50)
    SaveReal(wp, 0x5A313137, 9, 30)
    SaveReal(wp, 0x5A313137, 15, 5)
    SaveReal(wp, 0x5A313137, 18, 25)
    SaveReal(wp, 0x5A313137, 26, 1200000)
    SaveReal(wp, 0x64657363, 34, 10)
    SaveReal(wp, 0x5A303836, 2, 400)
    SaveReal(wp, 0x5A303836, 3, 5000000)
    SaveReal(wp, 0x5A303836, 5, 133750)
    SaveReal(wp, 0x5A303836, 21, 15)
    SaveReal(wp, 0x5A303836, 35, 4)
    SaveReal(wp, 0x5A303836, 42, 4)
    SaveReal(wp, 0x6A303962, 28, 23)
    SaveReal(wp, 0x6A303962, 29, 23)
    SaveReal(wp, 0x6C713431, 1, 1700)
    SaveReal(wp, 0x5A313038, 1, 3400000)
    SaveReal(wp, 0x5A313038, 6, 5)
    SaveReal(wp, 0x5A313038, 8, 50)
    SaveReal(wp, 0x5A313038, 17, 30)
    SaveReal(wp, 0x5A313038, 22, 2500000)
    SaveReal(wp, 0x5A313038, 28, 15)
    SaveReal(wp, 0x5A313038, 30, 5)
    SaveReal(wp, 0x53313048, 35, 3)
    SaveReal(wp, 0x4C303134, 23, 3)
    SaveReal(wp, 0x6A313562, 19, 25)
    SaveReal(wp, 0x6A313562, 52, 184)
    SaveReal(wp, 0x6A313562, 53, 3)
    SaveReal(wp, 0x6A313562, 80, 184)
    SaveReal(wp, 0x424D3039, 27, 7)
    SaveReal(wp, 0x424D3039, 34, 7)
    SaveReal(wp, 0x57486632, 18, 50)
    SaveReal(wp, 0x5A303134, 27, 6)
    ItemPoolAddItemType(cjc1, 0x5A303134, 0.4)
    ItemPoolAddItemType(cjc2, 0x5A303134, 1.00)
    SaveReal(wp, 0x6C713333, 3, 7)
    SaveReal(wp, 0x6C713333, 19, 1)
    SaveReal(wp, 0x6C713333, 45, 7)
    SaveReal(wp, 0x77333978, 1, 45000)
    SaveReal(wp, 0x5A313332, 1, 8000000)
    SaveReal(wp, 0x5A313332, 6, 10)
    SaveReal(wp, 0x5A313332, 8, 100)
    SaveReal(wp, 0x5A313332, 28, 66)
    SaveReal(wp, 0x5A313332, 35, 30)
    SaveReal(wp, 0x5A303231, 1, 3500)
    ItemPoolAddItemType(cjc1, 0x5A303231, 0.1)
    ItemPoolAddItemType(cjc2, 0x5A303231, 0.4)
    ItemPoolAddItemType(cjc3, 0x5A303231, 1.00)
    SaveReal(wp, 0x5A303339, 15, 3)
    SaveReal(wp, 0x5A303339, 28, 2)
    ItemPoolAddItemType(cjc2, 0x5A303339, 0.1)
    ItemPoolAddItemType(cjc3, 0x5A303339, 0.4)
    ItemPoolAddItemType(cjc4, 0x5A303339, 1.00)
    SaveReal(wp, 0x5A313036, 15, 3)
    SaveReal(wp, 0x5A313036, 21, 25)
    SaveReal(wp, 0x5A313036, 26, 3250000)
    SaveReal(wp, 0x5A313036, 30, 1333)
    SaveReal(wp, 0x5A313036, 48, 1333)
    SaveReal(wp, 0x7030356C, 1, 3600)
    SaveReal(wp, 0x7030356C, 2, 40)
    SaveReal(wp, 0x7030356C, 3, 8000)
    SaveReal(wp, 0x7030356C, 4, 3)
    SaveReal(wp, 0x7030356C, 85, 3)
    SaveReal(wp, 0x77333878, 28, 7)
    SaveReal(wp, 0x7031306C, 1, 15000)
    SaveReal(wp, 0x7031306C, 2, 90)
    SaveReal(wp, 0x7031306C, 3, 105000)
    SaveReal(wp, 0x7031306C, 4, 5)
    SaveReal(wp, 0x7031306C, 85, 5)
    SaveReal(wp, 0x64793333, 27, 30)
    SaveReal(wp, 0x5A303037, 4, 900)
    ItemPoolAddItemType(cjc1, 0x5A303037, 1.00)
    SaveReal(wp, 0x4C303130, 14, 10)
    SaveReal(wp, 0x73313179, 10, 3)
    SaveReal(wp, 0x73313179, 11, 33333)
    SaveReal(wp, 0x77333778, 70, 5)
    SaveReal(wp, 0x68303971, 84, 50)
    SaveReal(wp, 0x77333678, 4, 37000)
    SaveReal(wp, 0x7331396A, 19, 20)
    SaveReal(wp, 0x73323079, 4, 5)
    SaveReal(wp, 0x73323079, 27, 15)
    SaveReal(wp, 0x73323079, 85, 5)
    SaveReal(wp, 0x5A303938, 1, 50)
    SaveReal(wp, 0x5A303938, 2, 10000)
    SaveReal(wp, 0x5A303938, 13, 4)
    SaveReal(wp, 0x5A303938, 20, 3)
    SaveReal(wp, 0x5A303938, 23, 5)
    SaveReal(wp, 0x5A303938, 24, 1000)
    SaveReal(wp, 0x5A303938, 31, 3)
    SaveReal(wp, 0x5A303938, 51, 15)
    SaveReal(wp, 0x5A303832, 1, 958000)
    SaveReal(wp, 0x5A303832, 6, 4)
    SaveReal(wp, 0x5A303832, 8, 120)
    SaveReal(wp, 0x5A303832, 28, 22)
    SaveReal(wp, 0x53323448, 65, 15)
    SaveReal(wp, 0x7332316A, 15, 15)
    SaveReal(wp, 0x6C713838, 2, 1000)
    SaveReal(wp, 0x6C713838, 15, 2)
    SaveReal(wp, 0x6C713838, 28, 17)
    SaveReal(wp, 0x77343278, 3, 332000)
    SaveReal(wp, 0x6C713136, 5, 66)
    SaveStr(jn, 0x6A323034, 1, "天下无妖[R]")
    SaveStr(jn, 0x6A323034, 2, "|cff00ffff间隔：60秒|n|r|cffffff00幻化数道分神，拉动神弓同时发难，对敌人造成三围*10倍伤害|r")
    SaveStr(jn, 0x6A323034, 3, "")
    SaveStr(jn, 0x6A323034, 4, "")
    SaveStr(jn, 0x6A323034, 5, "")
    SaveStr(jn, 0x6A323034, 6, "")
    SaveStr(jn, 0x4A4E3039, 1, "|cff00ff00陨落彗星|r")
    SaveStr(jn, 0x4A4E3039, 2, "|cff8080ff属性：火|n|r|cffffff00释放：主动|n|r|cffc0c0c0|n间隔：18秒|n|r|cffffff00持续施法，召唤出大片的彗星从天而降，每颗造成（三围*1.5*[技能等级*10%]）并且造成眩晕")
    SaveStr(jn, 0x4A4E3039, 3, "")
    SaveStr(jn, 0x4A4E3039, 4, "")
    SaveStr(jn, 0x4A4E3039, 5, "")
    SaveStr(jn, 0x4A4E3039, 6, "")
    SaveStr(jn, 0x4A4E3233, 1, "|cff00ff00火焰岚山|r")
    SaveStr(jn, 0x4A4E3233, 2, "|cff8080ff属性：火|n|r|cffffff00释放：被动|n|r|cffffff00攻击有7%几率发动火焰爆炸对900码范围造成三围*2*[技能等级*10%]倍伤害|r")
    SaveStr(jn, 0x4A4E3233, 3, "")
    SaveStr(jn, 0x4A4E3233, 4, "")
    SaveStr(jn, 0x4A4E3233, 5, "")
    SaveStr(jn, 0x4A4E3233, 6, "")
    SaveStr(jn, 0x6A323131, 1, "无定飞环[R]")
    SaveStr(jn, 0x6A323131, 2, "|cff00ffff间隔：60秒|n|r|cffffff00从身后突发数道无定飞环对直线敌人进行碾压伤害，每道造成三围*8倍伤害|r")
    SaveStr(jn, 0x6A323131, 3, "")
    SaveStr(jn, 0x6A323131, 4, "")
    SaveStr(jn, 0x6A323131, 5, "")
    SaveStr(jn, 0x6A323131, 6, "")
    SaveStr(jn, 0x6A323139, 1, "聚合一刀流[R]")
    SaveStr(jn, 0x6A323139, 2, "|cff00ffff间隔：60秒|n|r|cffffff00英雄将化身为刀从天而降，随后在目标敌人周围降下狂乱斩击，每次造成三围*7倍伤害，最终英雄落下造成三围*14倍伤害|r")
    SaveStr(jn, 0x6A323139, 3, "")
    SaveStr(jn, 0x6A323139, 4, "")
    SaveStr(jn, 0x6A323139, 5, "")
    SaveStr(jn, 0x6A323139, 6, "")
    SaveStr(jn, 0x4A4E3230, 1, "|cffffff00金玉蟾蜍|r")
    SaveStr(jn, 0x4A4E3230, 2, "|cff8080ff属性：光|n|r|cffffff00释放：主动|n|r|cffc0c0c0|n间隔：21秒|n|r|cffffff00召唤出一只巨大的蟾蜍，原地蛙鸣会眩晕，且对周围敌人造成三围*6*[技能等级*10%]倍伤害|r")
    SaveStr(jn, 0x4A4E3230, 3, "")
    SaveStr(jn, 0x4A4E3230, 4, "[2个SSR光技能]+[2个SSR暗技能]=暗灭双生(技能羁绊)|n效果①：攻击敌人时几率恢复30%血量召唤一个黑暗巨轮向前滚去，造次4倍攻击力伤害；|n效果②：攻击敌人时几率损失30%血量唤醒光盾，减免75%伤害持续3秒。|n")
    SaveStr(jn, 0x4A4E3230, 5, "")
    SaveStr(jn, 0x4A4E3230, 6, "")
    SaveStr(jn, 0x73303363, 1, "通魔(|cffffcc00C|r)")
    SaveStr(jn, 0x73303363, 2, "通向强大的守卫魔法力量。")
    SaveStr(jn, 0x73303363, 3, "")
    SaveStr(jn, 0x73303363, 4, "b04cb08cb12cb16cb20cb24c")
    SaveStr(jn, 0x73303363, 5, "")
    SaveStr(jn, 0x73303363, 6, "")
    SaveStr(jn, 0x4A4E3335, 1, "|cff00ff00炎神灭劫剑|r")
    SaveStr(jn, 0x4A4E3335, 2, "|cff8080ff属性：火|n|r|cffffff00释放：被动|n|r|cffffff00攻击有7%几率召唤数把神剑从天而降，最终合成造成1次三围*7*[技能等级*10%]倍伤害|r")
    SaveStr(jn, 0x4A4E3335, 3, "")
    SaveStr(jn, 0x4A4E3335, 4, "[2个SSR火技能]+[2个SSR冰技能]=冰火两重天(技能羁绊)|n攻击敌人几率召唤冰火混合的咆哮波，向前冲去，对直线敌人造成全属性x8倍伤害")
    SaveStr(jn, 0x4A4E3335, 5, "")
    SaveStr(jn, 0x4A4E3335, 6, "")
    SaveStr(jn, 0x6A323032, 1, "炎火破邪[R]")
    SaveStr(jn, 0x6A323032, 2, "|cff00ffff间隔：60秒|n|r|cffffff00持续召唤燃烧的风暴向前吹去，被吹到的敌人受到三围*12倍伤害且眩晕|r")
    SaveStr(jn, 0x6A323032, 3, "")
    SaveStr(jn, 0x6A323032, 4, "")
    SaveStr(jn, 0x6A323032, 5, "")
    SaveStr(jn, 0x6A323032, 6, "")
    SaveStr(jn, 0x6A323133, 1, "洪荒兽神[R]")
    SaveStr(jn, 0x6A323133, 2, "|cff00ffff间隔：60秒|n|r|cffffff00体内洪荒异兽血脉相应，召唤出大批洪荒异兽对扇形方向进行冲刺，被冲撞的敌人会受到眩晕效果和三围*4倍伤害|r")
    SaveStr(jn, 0x6A323133, 3, "")
    SaveStr(jn, 0x6A323133, 4, "")
    SaveStr(jn, 0x6A323133, 5, "")
    SaveStr(jn, 0x6A323133, 6, "")
    SaveStr(jn, 0x73303763, 1, "[弟子-云游历练]")
    SaveStr(jn, 0x73303763, 2, "|cff00ffff====[炼化要求]=====|r|n需要门派声望|n|n|cff00ffff====[副本条件]=====|r|na.什么都不会发生|nb.可能会捡到钱|nc.获得随机装备|nd.获得一条奇遇属性|n|n|n")
    SaveStr(jn, 0x73303763, 3, "")
    SaveStr(jn, 0x73303763, 4, "")
    SaveStr(jn, 0x73303763, 5, "")
    SaveStr(jn, 0x73303763, 6, "")
    SaveStr(jn, 0x4A4E3239, 1, "|cff00ff00地狱裂痕|r")
    SaveStr(jn, 0x4A4E3239, 2, "|cff8080ff属性：火|n|r|cffffff00释放：被动|n|r|cffffff00攻击有5%几率对目标周围地区发动地震，每次地震造成三围*2.5*[技能等级*10%]倍伤害|r")
    SaveStr(jn, 0x4A4E3239, 3, "")
    SaveStr(jn, 0x4A4E3239, 4, "")
    SaveStr(jn, 0x4A4E3239, 5, "")
    SaveStr(jn, 0x4A4E3239, 6, "")
    SaveStr(jn, 0x4A4E3332, 1, "|cffffff00暗影魔刀|r")
    SaveStr(jn, 0x4A4E3332, 2, "|cff8080ff属性：暗|n|r|cffffff00释放：被动|n|r|cffffff00攻击敌人7%几率给武器附魔，并对正前方横扫一刀,对周围敌人单位造成*6*[技能等级*10%]倍伤害|r")
    SaveStr(jn, 0x4A4E3332, 3, "")
    SaveStr(jn, 0x4A4E3332, 4, "")
    SaveStr(jn, 0x4A4E3332, 5, "")
    SaveStr(jn, 0x4A4E3332, 6, "")
    SaveStr(jn, 0x4A4E3138, 1, "|cffff6800雷霆启明|r")
    SaveStr(jn, 0x4A4E3138, 2, "|cff8080ff属性：雷|n|r|cffffff00释放：主动|n|r|cffc0c0c0|n间隔：20秒|n|r|cffffff00召唤自身体内的雷霆之力，发出一声怒吼阵晕周围敌人2秒造成三围*6倍伤害，随后周围的电圈会持续对周围敌人造成三围*3*[技能等级*10%]倍伤害。")
    SaveStr(jn, 0x4A4E3138, 3, "")
    SaveStr(jn, 0x4A4E3138, 4, "[2个SSR魔技能]+[2个SSR雷技能]=雷霆幻灭(技能羁绊)|n攻击敌人几率变身雷霆法王持续10秒,内置CD30秒,变身状态攻击会发造次雷霆真实伤害且伤害减免提升99%|n")
    SaveStr(jn, 0x4A4E3138, 5, "")
    SaveStr(jn, 0x4A4E3138, 6, "")
    SaveStr(jn, 0x4A4E3134, 1, "|cffffff00魔元素魔怪|r")
    SaveStr(jn, 0x4A4E3134, 2, "|cff8080ff属性：魔|n|r|cffffff00释放：主动|n|r|cffc0c0c0|n间隔：21秒|n|r|cffffff00召唤1只魔元素魔怪,攻击力等于三围50%|r")
    SaveStr(jn, 0x4A4E3134, 3, "")
    SaveStr(jn, 0x4A4E3134, 4, "")
    SaveStr(jn, 0x4A4E3134, 5, "")
    SaveStr(jn, 0x4A4E3134, 6, "")
    SaveStr(jn, 0x73303863, 1, "[蜀山论道]")
    SaveStr(jn, 0x73303863, 2, "|cff00ffff====[副本要求]=====|r|n需要拥有10名以上门客|n|n|cff00ffff====[获取条件]=====|r|n不断击杀四周涌入的偷猎者,血腥之气到达100%,魂兽会出现,击败魂兽即可完成降服|n|n|cff00ffff====[副本奖励]=====|n|r副本随机刷新的究极品质魂兽")
    SaveStr(jn, 0x73303863, 3, "")
    SaveStr(jn, 0x73303863, 4, "")
    SaveStr(jn, 0x73303863, 5, "")
    SaveStr(jn, 0x73303863, 6, "")
    SaveStr(jn, 0x6A323232, 1, "奥义-九霄雷劫[R]")
    SaveStr(jn, 0x6A323232, 2, "|cff00ffff间隔：60秒|n|r|cffffff00身后会出现一个闪耀的雷电法阵，对面前敌人进行狂轰乱炸，每次造成三围*10倍伤害|r")
    SaveStr(jn, 0x6A323232, 3, "")
    SaveStr(jn, 0x6A323232, 4, "")
    SaveStr(jn, 0x6A323232, 5, "")
    SaveStr(jn, 0x6A323232, 6, "")
    SaveStr(jn, 0x73303663, 1, "[免费刷新]")
    SaveStr(jn, 0x73303663, 2, "|cff00ffff====[立即刷新门客]=====|r|n无需消耗门派声望|n")
    SaveStr(jn, 0x73303663, 3, "")
    SaveStr(jn, 0x73303663, 4, "")
    SaveStr(jn, 0x73303663, 5, "")
    SaveStr(jn, 0x73303663, 6, "")
    SaveStr(jn, 0x6A323037, 1, "冰莽十字固[R]")
    SaveStr(jn, 0x6A323037, 2, "|cff00ffff间隔：60秒|n|r|cffffff00召唤一条奇袭的冰莽，它会以五角路线前行，对所行中的敌人进行冰封且造成三围*15倍伤害|r")
    SaveStr(jn, 0x6A323037, 3, "")
    SaveStr(jn, 0x6A323037, 4, "")
    SaveStr(jn, 0x6A323037, 5, "")
    SaveStr(jn, 0x6A323037, 6, "")
    SaveStr(jn, 0x4A4E3135, 1, "|cff00ff00破虚玄冰阵|r")
    SaveStr(jn, 0x4A4E3135, 2, "|cff8080ff属性：冰|n|r|cffffff00释放：主动|n|r|cffc0c0c0|n间隔：18秒|n|r|cffffff00对目标点发动一次冰爆造成三围*4.5倍范围伤害，随后生成一个冰旋涡将周围敌人拖入其中，最终再次造成三围*9倍伤害|r")
    SaveStr(jn, 0x4A4E3135, 3, "")
    SaveStr(jn, 0x4A4E3135, 4, "[2个SSR火技能]+[2个SSR冰技能]=冰火两重天(技能羁绊)|n攻击敌人几率召唤冰火混合的咆哮波，向前冲去，对直线敌人造成全属性x8倍伤害")
    SaveStr(jn, 0x4A4E3135, 5, "")
    SaveStr(jn, 0x4A4E3135, 6, "")
    SaveStr(jn, 0x4A4E3137, 1, "|cff00ff00乾坤挪移|r")
    SaveStr(jn, 0x4A4E3137, 2, "|cff8080ff属性：魔|n|r|cffffff00释放：主动|n|r|cffc0c0c0|n间隔：15秒|n|r|cffffff00召唤一道从天而降的魔能，以自身为圆心将周围敌人以暗能量束缚住，对被束缚的敌人造成三围*5*[技能等级*10%]伤害。")
    SaveStr(jn, 0x4A4E3137, 3, "")
    SaveStr(jn, 0x4A4E3137, 4, "[2个SSR魔技能]+[2个SSR雷技能]=雷霆幻灭(技能羁绊)|n攻击敌人几率变身雷霆法王持续10秒,内置CD30秒,变身状态攻击会发造次雷霆真实伤害且伤害减免提升99%|n")
    SaveStr(jn, 0x4A4E3137, 5, "")
    SaveStr(jn, 0x4A4E3137, 6, "")
    SaveStr(jn, 0x4A4E3238, 1, "|cff00ff00幻界冰雨|r")
    SaveStr(jn, 0x4A4E3238, 2, "|cff8080ff属性：冰|n|r|cffffff00释放：被动|n|r|cffffff00攻击有4%几率召唤一场冰雨，对450码范围造成三围*3*[技能等级*10%]倍伤害,持续3秒|r")
    SaveStr(jn, 0x4A4E3238, 3, "")
    SaveStr(jn, 0x4A4E3238, 4, "")
    SaveStr(jn, 0x4A4E3238, 5, "")
    SaveStr(jn, 0x4A4E3238, 6, "")
    SaveStr(jn, 0x4A4E3132, 1, "|cffffff00暗影魔灵|r")
    SaveStr(jn, 0x4A4E3132, 2, "|cff8080ff属性：暗|n|r|cffffff00释放：主动|n|r|cffc0c0c0|n间隔：21秒|n|r|cffffff00召唤3个暗界魔灵，攻击力与英雄的三围挂钩|r")
    SaveStr(jn, 0x4A4E3132, 3, "")
    SaveStr(jn, 0x4A4E3132, 4, "")
    SaveStr(jn, 0x4A4E3132, 5, "")
    SaveStr(jn, 0x4A4E3132, 6, "")
    SaveStr(jn, 0x6A323036, 1, "奥义-剑入神颠[R]")
    SaveStr(jn, 0x6A323036, 2, "|cff00ffff间隔：60秒|n|r|cffffff00敌人的周围会召唤出铺天盖地的神剑，猛烈袭来，对被撞击到的敌人造成三围*7倍伤害|r")
    SaveStr(jn, 0x6A323036, 3, "")
    SaveStr(jn, 0x6A323036, 4, "")
    SaveStr(jn, 0x6A323036, 5, "")
    SaveStr(jn, 0x6A323036, 6, "")
    SaveStr(jn, 0x6A323035, 1, "战枪之魂[R]")
    SaveStr(jn, 0x6A323035, 2, "|cff00ffff间隔：60秒|n|r|cffffff00枪魂凝于半空，片刻后从天而降数道神光每道造成三围*10倍伤害|r")
    SaveStr(jn, 0x6A323035, 3, "")
    SaveStr(jn, 0x6A323035, 4, "")
    SaveStr(jn, 0x6A323035, 5, "")
    SaveStr(jn, 0x6A323035, 6, "")
    SaveStr(jn, 0x4A4E3334, 1, "|cff00ff00冰之巨人|r")
    SaveStr(jn, 0x4A4E3334, 2, "|cff8080ff属性：冰|n|r|cffffff00释放：被动|n|r|cffffff00攻击有5%几率召唤一个巨大病人挥舞双臂连砸数次，每次造成三围*5*[技能等级*10%]倍伤害被砸中的敌人会被击飞1秒|r")
    SaveStr(jn, 0x4A4E3334, 3, "")
    SaveStr(jn, 0x4A4E3334, 4, "[2个SSR火技能]+[2个SSR冰技能]=冰火两重天(技能羁绊)|n攻击敌人几率召唤冰火混合的咆哮波，向前冲去，对直线敌人造成全属性x8倍伤害")
    SaveStr(jn, 0x4A4E3334, 5, "")
    SaveStr(jn, 0x4A4E3334, 6, "")
    SaveStr(jn, 0x73303063, 1, "通魔(|cffffcc00C|r)")
    SaveStr(jn, 0x73303063, 2, "通向强大的守卫魔法力量。")
    SaveStr(jn, 0x73303063, 3, "")
    SaveStr(jn, 0x73303063, 4, "b01cb05cb09cb13cb17cb21c")
    SaveStr(jn, 0x73303063, 5, "")
    SaveStr(jn, 0x73303063, 6, "")
    SaveStr(jn, 0x6A323039, 1, "天地汲取[R]")
    SaveStr(jn, 0x6A323039, 2, "|cff00ffff间隔：60秒|n|r|cffffff00不断施法吸取周围敌人的生命转化为自己生命，且被吸到灵魂的敌人会受到三围*8倍伤害|r")
    SaveStr(jn, 0x6A323039, 3, "")
    SaveStr(jn, 0x6A323039, 4, "")
    SaveStr(jn, 0x6A323039, 5, "")
    SaveStr(jn, 0x6A323039, 6, "")
    SaveStr(jn, 0x6A323231, 1, "奥义-末世咒语[R]")
    SaveStr(jn, 0x6A323231, 2, "|cff00ffff间隔：60秒|n|r|cffffff00召唤出一个纯净的法阵，在法阵内的敌人会受到净化每0.5秒受到三围*8倍伤害，在法阵内的友军会直线恢复生命值|r")
    SaveStr(jn, 0x6A323231, 3, "")
    SaveStr(jn, 0x6A323231, 4, "")
    SaveStr(jn, 0x6A323231, 5, "")
    SaveStr(jn, 0x6A323231, 6, "")
    SaveStr(jn, 0x73303263, 1, "通魔(|cffffcc00C|r)")
    SaveStr(jn, 0x73303263, 2, "通向强大的守卫魔法力量。")
    SaveStr(jn, 0x73303263, 3, "")
    SaveStr(jn, 0x73303263, 4, "b03cb07cb11cb15cb19cb23c")
    SaveStr(jn, 0x73303263, 5, "")
    SaveStr(jn, 0x73303263, 6, "")
    SaveStr(jn, 0x4A4E3235, 1, "|cffff6800万雷锁魂|r")
    SaveStr(jn, 0x4A4E3235, 2, "|cff8080ff属性：雷|n|r|cffffff00释放：被动|n|r|cffffff00攻击有5%几率以自身为核召唤一道雷电领域，对进入领域的敌人造成持续三围*1倍伤害且在3秒后自爆造成三围*2*[技能等级*10%]倍伤害，持续3秒|r")
    SaveStr(jn, 0x4A4E3235, 3, "")
    SaveStr(jn, 0x4A4E3235, 4, "")
    SaveStr(jn, 0x4A4E3235, 5, "")
    SaveStr(jn, 0x4A4E3235, 6, "")
    SaveStr(jn, 0x4A4E3032, 1, "|cff00ff00灰烬之风|r")
    SaveStr(jn, 0x4A4E3032, 2, "|cff8080ff属性：火|n|r|cffffff00释放：主动|n|r|cffc0c0c0|n间隔：18秒|n|r|cffffff00发射3道龙卷风，每道造成（三围*2*[技能等级*10%]）")
    SaveStr(jn, 0x4A4E3032, 3, "")
    SaveStr(jn, 0x4A4E3032, 4, "")
    SaveStr(jn, 0x4A4E3032, 5, "")
    SaveStr(jn, 0x4A4E3032, 6, "")
    SaveStr(jn, 0x4A4E3034, 1, "|cffff6800雷霆碎魂|r")
    SaveStr(jn, 0x4A4E3034, 2, "|cff8080ff属性：雷|n|r|cffffff00释放：主动|n|r|cffc0c0c0|n间隔：20秒|n|r|cffffff00一片片绿色雷电逐渐蔓延，对扇形敌人进行轰击，每次造成三围*2*[技能等级*10%]倍伤害。")
    SaveStr(jn, 0x4A4E3034, 3, "")
    SaveStr(jn, 0x4A4E3034, 4, "")
    SaveStr(jn, 0x4A4E3034, 5, "")
    SaveStr(jn, 0x4A4E3034, 6, "")
    SaveStr(jn, 0x6A323031, 1, "破晓疾风[R]")
    SaveStr(jn, 0x6A323031, 2, "|cff00ffff间隔：60秒|n|r|cffffff00引发拳力在敌人脚下相应，造成2秒眩晕，随后周围突起雷电飓风被辐射到的敌人会受到三围*16倍伤害|r")
    SaveStr(jn, 0x6A323031, 3, "")
    SaveStr(jn, 0x6A323031, 4, "")
    SaveStr(jn, 0x6A323031, 5, "")
    SaveStr(jn, 0x6A323031, 6, "")
    SaveStr(jn, 0x4A4E3331, 1, "|cffff6800雷电麒麟|r")
    SaveStr(jn, 0x4A4E3331, 2, "|cff8080ff属性：雷|n|r|cffffff00释放：被动|n|r|cffffff00攻击有5%几率召唤一大片乌云集会于敌人头顶，随后会从云内弹出一只雷电麒麟对敌人冲撞，对550码范围敌人造成三围*5倍伤害且造成1秒眩晕|r")
    SaveStr(jn, 0x4A4E3331, 3, "")
    SaveStr(jn, 0x4A4E3331, 4, "")
    SaveStr(jn, 0x4A4E3331, 5, "")
    SaveStr(jn, 0x4A4E3331, 6, "")
    SaveStr(jn, 0x6A323230, 1, "天炎伏魔刀[R]")
    SaveStr(jn, 0x6A323230, 2, "|cff00ffff间隔：60秒|n|r|cffffff00对面前敌人进行狂乱斩击，随后蓄力对前方扇形区域进行一次终极斩击，每次造成三围*6倍伤害,最终造成三围*12倍伤害|r")
    SaveStr(jn, 0x6A323230, 3, "")
    SaveStr(jn, 0x6A323230, 4, "")
    SaveStr(jn, 0x6A323230, 5, "")
    SaveStr(jn, 0x6A323230, 6, "")
    SaveStr(jn, 0x4A4E3333, 1, "|cffffff00大日如来|r")
    SaveStr(jn, 0x4A4E3333, 2, "|cff8080ff属性：光|n|r|cffffff00释放：被动|n|r|cffffff00攻击有7%几率召唤佛祖虚像，对900码范围造成三围*6*[技能等级*10%]倍伤害|r")
    SaveStr(jn, 0x4A4E3333, 3, "")
    SaveStr(jn, 0x4A4E3333, 4, "")
    SaveStr(jn, 0x4A4E3333, 5, "")
    SaveStr(jn, 0x4A4E3333, 6, "")
    SaveStr(jn, 0x6A323033, 1, "镇妖惊雷[R]")
    SaveStr(jn, 0x6A323033, 2, "|cff00ffff间隔：60秒|n|r|cffffff00唤醒念力在敌人身上引发一次巨大的雷暴造成三围*8倍伤害，随后会有6道雷电四散开来眩晕路径上的单人并且对敌人造成三围*4倍伤害|r")
    SaveStr(jn, 0x6A323033, 3, "")
    SaveStr(jn, 0x6A323033, 4, "")
    SaveStr(jn, 0x6A323033, 5, "")
    SaveStr(jn, 0x6A323033, 6, "")
    SaveStr(jn, 0x4A4E3133, 1, "|cffffff00无尽光枪|r")
    SaveStr(jn, 0x4A4E3133, 2, "|cff8080ff属性：光|n|r|cffffff00释放：主动|n|r|cffc0c0c0|n间隔：21秒|n|r|cffffff00对正前方敌人连续进行光突刺，被光突刺到的敌人会进入麻痹状态，片刻后，爆炸造成三围*5*[技能等级*10%]倍伤害|r")
    SaveStr(jn, 0x4A4E3133, 3, "")
    SaveStr(jn, 0x4A4E3133, 4, "")
    SaveStr(jn, 0x4A4E3133, 5, "")
    SaveStr(jn, 0x4A4E3133, 6, "")
    SaveStr(jn, 0x6A323132, 1, "奥义-万魔刺[R]")
    SaveStr(jn, 0x6A323132, 2, "|cff00ffff间隔：60秒|n|r|cffffff00受到感应，地底会深处无数的倒刺，对敌人造成穿刺伤害，每次造成三围*7倍伤害|r")
    SaveStr(jn, 0x6A323132, 3, "")
    SaveStr(jn, 0x6A323132, 4, "")
    SaveStr(jn, 0x6A323132, 5, "")
    SaveStr(jn, 0x6A323132, 6, "")
    SaveStr(jn, 0x4A4E3139, 1, "|cffffff00暗夜天牢|r")
    SaveStr(jn, 0x4A4E3139, 2, "|cff8080ff属性：暗|n|r|cffffff00释放：主动|n|r|cffc0c0c0|n间隔：21秒|n|r|cffffff00唤醒黑暗的力量，从天而降数道铁索将敌人牢牢锁住无法动弹，受到持续的伤害三围*2倍，最终从天而降一把黑暗血剑造成斩杀伤害三围*8倍|r")
    SaveStr(jn, 0x4A4E3139, 3, "")
    SaveStr(jn, 0x4A4E3139, 4, "[2个SSR光技能]+[2个SSR暗技能]=暗灭双生(技能羁绊)|n效果①：攻击敌人时几率恢复30%血量召唤一个黑暗巨轮向前滚去，造次4倍攻击力伤害；|n效果②：攻击敌人时几率损失30%血量唤醒光盾，减免75%伤害持续3秒。|n")
    SaveStr(jn, 0x4A4E3139, 5, "")
    SaveStr(jn, 0x4A4E3139, 6, "")
    SaveStr(jn, 0x4A4E3237, 1, "|cffffff00莲花封印|r")
    SaveStr(jn, 0x4A4E3237, 2, "|cff8080ff属性：光|n|r|cffffff00释放：被动|n|r|cffffff00攻击有7%几率发动莲花封印，片刻后对900码范围造成三围*2*[技能等级*10%]倍伤害|r")
    SaveStr(jn, 0x4A4E3237, 3, "")
    SaveStr(jn, 0x4A4E3237, 4, "")
    SaveStr(jn, 0x4A4E3237, 5, "")
    SaveStr(jn, 0x4A4E3237, 6, "")
    SaveStr(jn, 0x73313063, 1, "[历练]-魔皇历练")
    SaveStr(jn, 0x73313063, 2, "|cff00ffff====[皇级历练]=====|r|n召唤一位远古大神的分身|n|n|cff00ffff====[属性奖励]=====|r|n晋级种族属性|n|n|cff00ffff====[挑战要求]=====|n|r必须拥有5名以上的魔族门客才可以进行挑战")
    SaveStr(jn, 0x73313063, 3, "")
    SaveStr(jn, 0x73313063, 4, "szs2")
    SaveStr(jn, 0x73313063, 5, "")
    SaveStr(jn, 0x73313063, 6, "")
    SaveStr(jn, 0x4A4E3037, 1, "|cffffff00冰元素魔怪|r")
    SaveStr(jn, 0x4A4E3037, 2, "|cff8080ff属性：冰|n|r|cffffff00释放：主动|n|r|cffc0c0c0|n间隔：21秒|n|r|cffffff00召唤1只冰元素魔怪,攻击力等于三围50%|r")
    SaveStr(jn, 0x4A4E3037, 3, "")
    SaveStr(jn, 0x4A4E3037, 4, "")
    SaveStr(jn, 0x4A4E3037, 5, "")
    SaveStr(jn, 0x4A4E3037, 6, "")
    SaveStr(jn, 0x4A4E3130, 1, "|cff00ff00流心紫炎|r")
    SaveStr(jn, 0x4A4E3130, 2, "|cff8080ff属性：魔|n|r|cffffff00释放：主动|n|r|cffc0c0c0|n间隔：15秒|n|r|cffffff00对面前发出一道燃烧的紫炎，对路径敌人造成三围*6*[技能等级*10%]伤害。")
    SaveStr(jn, 0x4A4E3130, 3, "")
    SaveStr(jn, 0x4A4E3130, 4, "")
    SaveStr(jn, 0x4A4E3130, 5, "")
    SaveStr(jn, 0x4A4E3130, 6, "")
    SaveStr(jn, 0x6A323137, 1, "奥义-风炎绞杀[R]")
    SaveStr(jn, 0x6A323137, 2, "|cff00ffff间隔：60秒|n|r|cffffff00召唤出一段持续旋转的火球，对敌人进行绞杀每次绞杀造成三围*3倍伤害|r")
    SaveStr(jn, 0x6A323137, 3, "")
    SaveStr(jn, 0x6A323137, 4, "")
    SaveStr(jn, 0x6A323137, 5, "")
    SaveStr(jn, 0x6A323137, 6, "")
    SaveStr(jn, 0x4A4E3036, 1, "|cffffff00圣光洗礼|r")
    SaveStr(jn, 0x4A4E3036, 2, "|cff8080ff属性：光|n|r|cffffff00释放：主动|n|r|cffc0c0c0|n间隔：21秒|n|r|cffffff00释放一道持续的光柱，在施法时无法移动，但是每0.1秒恢复3%生命,直线麻痹前方的敌人并且造成三围*0.5*[技能等级*10%]倍伤害|r")
    SaveStr(jn, 0x4A4E3036, 3, "")
    SaveStr(jn, 0x4A4E3036, 4, "")
    SaveStr(jn, 0x4A4E3036, 5, "")
    SaveStr(jn, 0x4A4E3036, 6, "")
    SaveStr(jn, 0x73303163, 1, "通魔(|cffffcc00C|r)")
    SaveStr(jn, 0x73303163, 2, "通向强大的守卫魔法力量。")
    SaveStr(jn, 0x73303163, 3, "")
    SaveStr(jn, 0x73303163, 4, "b02cb06cb10cb14cb18cb22c")
    SaveStr(jn, 0x73303163, 5, "")
    SaveStr(jn, 0x73303163, 6, "")
    SaveStr(jn, 0x4A4E3035, 1, "|cffffff00暗界引力|r")
    SaveStr(jn, 0x4A4E3035, 2, "|cff8080ff属性：暗|n|r|cffffff00释放：主动|n|r|cffc0c0c0|n间隔：21秒|n|r|cffffff00召唤一个黑洞对黑洞周围敌人进行吸引拉扯，每次造成三围*0.5倍伤害且眩晕，最终爆炸造成三围*2.5*[技能等级*10%]倍|r")
    SaveStr(jn, 0x4A4E3035, 3, "")
    SaveStr(jn, 0x4A4E3035, 4, "")
    SaveStr(jn, 0x4A4E3035, 5, "")
    SaveStr(jn, 0x4A4E3035, 6, "")
    SaveStr(jn, 0x73313163, 1, "[历练]-神皇历练")
    SaveStr(jn, 0x73313163, 2, "|cff00ffff====[皇级历练]=====|r|n召唤一位远古大神的分身|n|n|cff00ffff====[属性奖励]=====|r|n晋级种族属性|n|n|cff00ffff====[挑战要求]=====|n|r必须拥有5名以上的神族门客才可以进行挑战")
    SaveStr(jn, 0x73313163, 3, "")
    SaveStr(jn, 0x73313163, 4, "szs3")
    SaveStr(jn, 0x73313163, 5, "")
    SaveStr(jn, 0x73313163, 6, "")
    SaveStr(jn, 0x6A323138, 1, "风雷驱魔咒[R]")
    SaveStr(jn, 0x6A323138, 2, "|cff00ffff间隔：60秒|n|r|cffffff00引发拳力在敌人脚下相应，造成2秒眩晕，随后周围突起雷电飓风被辐射到的敌人会受到三围*16倍伤害|r")
    SaveStr(jn, 0x6A323138, 3, "")
    SaveStr(jn, 0x6A323138, 4, "")
    SaveStr(jn, 0x6A323138, 5, "")
    SaveStr(jn, 0x6A323138, 6, "")
    SaveStr(jn, 0x4A4E3330, 1, "|cff00ff00索命魔刀|r")
    SaveStr(jn, 0x4A4E3330, 2, "|cff8080ff属性：魔|n|r|cffffff00释放：被动|n|r|cffffff00攻击有5%几率召唤数把从天而降的魔刀，每把魔刀坠落对敌人造成造成三围*2.5*[技能等级*10%]倍伤害|r")
    SaveStr(jn, 0x4A4E3330, 3, "")
    SaveStr(jn, 0x4A4E3330, 4, "")
    SaveStr(jn, 0x4A4E3330, 5, "")
    SaveStr(jn, 0x4A4E3330, 6, "")
    SaveStr(jn, 0x73303563, 1, "[招收-门客]")
    SaveStr(jn, 0x73303563, 2, "|cff00ffff====[随机刷新门客]=====|r|n需要门派声望|n|n|cff00ffff====[招收条件]=====|r|n宗门必须拥有空闲的门客位置才行[最多18位]|n|n|cff00ff00====[品质说明]=====|r|cff00ffff|n|r|cffff99cc较高几率捕获[N]级|r|cff00ffff|n中高几率捕获[R]级|n|r|cffff6600较低几率捕获[SR]级|n|r|cffff0000极低几率捕获[SSR]级|n|r|cffffff00无法通过该方式获得[SSSR]级|r|n")
    SaveStr(jn, 0x73303563, 3, "")
    SaveStr(jn, 0x73303563, 4, "")
    SaveStr(jn, 0x73303563, 5, "")
    SaveStr(jn, 0x73303563, 6, "")
    SaveStr(jn, 0x6A323130, 1, "碧落长歌[R]")
    SaveStr(jn, 0x6A323130, 2, "|cff00ffff间隔：60秒|n|r|cffffff00长剑高指召唤一道奇异的能量盘旋于天空，随后会跟随周围敌人单位进行追击，被追击到的敌人会受到每次三围*8倍伤害|r")
    SaveStr(jn, 0x6A323130, 3, "")
    SaveStr(jn, 0x6A323130, 4, "")
    SaveStr(jn, 0x6A323130, 5, "")
    SaveStr(jn, 0x6A323130, 6, "")
    SaveStr(jn, 0x4A4E3338, 1, "|cffffff00灭世魔炎|r")
    SaveStr(jn, 0x4A4E3338, 2, "|cff8080ff属性：暗|n|r|cffffff00释放：被动|n|r|cffffff00攻击敌人7%对360度敌人进行魔炎灼烧,每道造成*6.5*[技能等级*10%]倍伤害|r")
    SaveStr(jn, 0x4A4E3338, 3, "")
    SaveStr(jn, 0x4A4E3338, 4, "[2个SSR光技能]+[2个SSR暗技能]=暗灭双生(技能羁绊)|n效果①：攻击敌人时几率恢复30%血量召唤一个黑暗巨轮向前滚去，造次4倍攻击力伤害；|n效果②：攻击敌人时几率损失30%血量唤醒光盾，减免75%伤害持续3秒。|n")
    SaveStr(jn, 0x4A4E3338, 5, "")
    SaveStr(jn, 0x4A4E3338, 6, "")
    SaveStr(jn, 0x4A4E3038, 1, "|cff00ff00玄天魔冰|r")
    SaveStr(jn, 0x4A4E3038, 2, "|cff8080ff属性：冰|n|r|cffffff00释放：主动|n|r|cffc0c0c0|n间隔：18秒|n|r|cffffff00召唤一道巨大的旋转冰风暴，对周围450码敌人造成三围x6的伤害|r")
    SaveStr(jn, 0x4A4E3038, 3, "")
    SaveStr(jn, 0x4A4E3038, 4, "")
    SaveStr(jn, 0x4A4E3038, 5, "")
    SaveStr(jn, 0x4A4E3038, 6, "")
    SaveStr(jn, 0x73303963, 1, "[历练]-人皇历练")
    SaveStr(jn, 0x73303963, 2, "|cff00ffff====[皇级历练]=====|r|n召唤一位远古大神的分身|n|n|cff00ffff====[属性奖励]=====|r|n晋级种族属性|n|n|cff00ffff====[挑战要求]=====|n|r必须拥有5名以上的人族门客才可以进行挑战")
    SaveStr(jn, 0x73303963, 3, "")
    SaveStr(jn, 0x73303963, 4, "szs1")
    SaveStr(jn, 0x73303963, 5, "")
    SaveStr(jn, 0x73303963, 6, "")
    SaveStr(jn, 0x4A4E3337, 1, "|cffff6800天罚雷珠|r")
    SaveStr(jn, 0x4A4E3337, 2, "|cff8080ff属性：雷|n|r|cffffff00释放：被动|n|r|cffffff00攻击有5%几率以自身为核幻化出一个圆形雷电球，在球体内的敌人会持续受到电击，眩晕，每次受到三围*5倍*[技能等级*10%]倍伤害，持续2.4秒|r")
    SaveStr(jn, 0x4A4E3337, 3, "")
    SaveStr(jn, 0x4A4E3337, 4, "[2个SSR魔技能]+[2个SSR雷技能]=雷霆幻灭(技能羁绊)|n攻击敌人几率变身雷霆法王持续10秒,内置CD30秒,变身状态攻击会发造次雷霆真实伤害且伤害减免提升99%|n")
    SaveStr(jn, 0x4A4E3337, 5, "")
    SaveStr(jn, 0x4A4E3337, 6, "")
    SaveStr(jn, 0x4A4E3339, 1, "|cffffff00净世大悲咒|r")
    SaveStr(jn, 0x4A4E3339, 2, "|cff8080ff属性：光|n|r|cffffff00释放：被动|n|r|cffffff00攻击有5%几率召唤如来佛祖，念诵经文对周围敌人进行超渡，每次造成三围*5*[技能等级*10%]倍伤害|r")
    SaveStr(jn, 0x4A4E3339, 3, "")
    SaveStr(jn, 0x4A4E3339, 4, "[2个SSR光技能]+[2个SSR暗技能]=暗灭双生(技能羁绊)|n效果①：攻击敌人时几率恢复30%血量召唤一个黑暗巨轮向前滚去，造次4倍攻击力伤害；|n效果②：攻击敌人时几率损失30%血量唤醒光盾，减免75%伤害持续3秒。|n")
    SaveStr(jn, 0x4A4E3339, 5, "")
    SaveStr(jn, 0x4A4E3339, 6, "")
    SaveStr(jn, 0x4A4E3031, 1, "|cff00ff00凝冰呼吸|r")
    SaveStr(jn, 0x4A4E3031, 2, "|cff8080ff属性：冰|n|r|cffffff00释放：主动|n|r|cffc0c0c0|n间隔：18秒|n|r|cffffff00喷吐一片冰炎，对扇形敌人造成三围x3伤害|r")
    SaveStr(jn, 0x4A4E3031, 3, "")
    SaveStr(jn, 0x4A4E3031, 4, "")
    SaveStr(jn, 0x4A4E3031, 5, "")
    SaveStr(jn, 0x4A4E3031, 6, "")
    SaveStr(jn, 0x4A4E3033, 1, "|cff00ff00逐梦名刀|r")
    SaveStr(jn, 0x4A4E3033, 2, "|cff8080ff属性：魔|n|r|cffffff00释放：主动|n|r|cffc0c0c0|n间隔：15秒|n|r|cffffff00对前方连续突起三道名刀，将敌人击飞且眩晕，,每次造成三围*2.5*[技能等级*10%]伤害。")
    SaveStr(jn, 0x4A4E3033, 3, "")
    SaveStr(jn, 0x4A4E3033, 4, "")
    SaveStr(jn, 0x4A4E3033, 5, "")
    SaveStr(jn, 0x4A4E3033, 6, "")
    SaveStr(jn, 0x4A4E3336, 1, "|cff00ff00嗜血反击|r")
    SaveStr(jn, 0x4A4E3336, 2, "|cff8080ff属性：魔|n|r|cffffff00释放：被动|n|r|cffffff00攻击敌人时有5%几率释放泣血,对一条直线敌人造成持续伤害，每次三围*4*技能等级%,且释放过程中会恢复自身30%最大生命值|r")
    SaveStr(jn, 0x4A4E3336, 3, "")
    SaveStr(jn, 0x4A4E3336, 4, "[2个SSR魔技能]+[2个SSR雷技能]=雷霆幻灭(技能羁绊)|n攻击敌人几率变身雷霆法王持续10秒,内置CD30秒,变身状态攻击会发造次雷霆真实伤害且伤害减免提升99%|n")
    SaveStr(jn, 0x4A4E3336, 5, "")
    SaveStr(jn, 0x4A4E3336, 6, "")
    SaveStr(jn, 0x4A4E3131, 1, "|cffff6800万雷锁魂|r")
    SaveStr(jn, 0x4A4E3131, 2, "|cff8080ff属性：雷|n|r|cffffff00释放：主动|n|r|cffc0c0c0|n间隔：20秒|n|r|cffffff00召唤一大片雷电区域，1.5秒会自动爆炸，每次造成三围*4*[技能等级*10%]倍伤害。")
    SaveStr(jn, 0x4A4E3131, 3, "")
    SaveStr(jn, 0x4A4E3131, 4, "")
    SaveStr(jn, 0x4A4E3131, 5, "")
    SaveStr(jn, 0x4A4E3131, 6, "")
    SaveStr(jn, 0x6A323135, 1, "奥义-极电雷尊[R]")
    SaveStr(jn, 0x6A323135, 2, "|cff00ffff间隔：60秒|n|r|cffffff00在敌人身上召唤出一个雷电法阵，片刻后周围会生出无数的雷元子向目标集聚，对路径上的敌人造成三围*6倍伤害|r")
    SaveStr(jn, 0x6A323135, 3, "")
    SaveStr(jn, 0x6A323135, 4, "")
    SaveStr(jn, 0x6A323135, 5, "")
    SaveStr(jn, 0x6A323135, 6, "")
    SaveStr(jn, 0x6A323134, 1, "奥义-光阴聚合杀[R]")
    SaveStr(jn, 0x6A323134, 2, "|cff00ffff间隔：60秒|n|r|cffffff00在目标敌人身上产出一个法阵，随后法阵会破散成五道光铸，向中心聚拢造成一次三围*12倍伤害|r")
    SaveStr(jn, 0x6A323134, 3, "")
    SaveStr(jn, 0x6A323134, 4, "")
    SaveStr(jn, 0x6A323134, 5, "")
    SaveStr(jn, 0x6A323134, 6, "")
    SaveStr(jn, 0x4A4E3231, 1, "|cffffff00雷元素魔怪|r")
    SaveStr(jn, 0x4A4E3231, 2, "|cff8080ff属性：雷|n|r|cffffff00释放：主动|n|r|cffc0c0c0|n间隔：21秒|n|r|cffffff00召唤1只雷元素魔怪,攻击力等于三围50%|r")
    SaveStr(jn, 0x4A4E3231, 3, "")
    SaveStr(jn, 0x4A4E3231, 4, "")
    SaveStr(jn, 0x4A4E3231, 5, "")
    SaveStr(jn, 0x4A4E3231, 6, "")
    SaveStr(jn, 0x4A4E3136, 1, "|cff00ff00九转火云珠|r")
    SaveStr(jn, 0x4A4E3136, 2, "|cff8080ff属性：火|n|r|cffffff00释放：主动|n|r|cffc0c0c0|n间隔：18秒|n|r|cffffff00持续施法，召唤出大片的彗星从天而降，每颗造成（三围*5*[技能等级*10%]）并且造成眩晕")
    SaveStr(jn, 0x4A4E3136, 3, "")
    SaveStr(jn, 0x4A4E3136, 4, "[2个SSR火技能]+[2个SSR冰技能]=冰火两重天(技能羁绊)|n攻击敌人几率召唤冰火混合的咆哮波，向前冲去，对直线敌人造成全属性x8倍伤害")
    SaveStr(jn, 0x4A4E3136, 5, "")
    SaveStr(jn, 0x4A4E3136, 6, "")
    SaveStr(jn, 0x4A4E3232, 1, "|cff00ff00玄冰破晓|r")
    SaveStr(jn, 0x4A4E3232, 2, "|cff8080ff属性：冰|n|r|cffffff00释放：被动|n|r|cffffff00攻击有7%几率召唤一个玄冰，在敌人脚下爆炸，对900码范围造成三围*2*[技能等级*10%]倍伤害|r")
    SaveStr(jn, 0x4A4E3232, 3, "")
    SaveStr(jn, 0x4A4E3232, 4, "")
    SaveStr(jn, 0x4A4E3232, 5, "")
    SaveStr(jn, 0x4A4E3232, 6, "")
    SaveStr(jn, 0x6A323136, 1, "奥义-极炎地狱[R]")
    SaveStr(jn, 0x6A323136, 2, "|cff00ffff间隔：60秒|n|r|cffffff00拳峰展开，炽热之气从拳峰喷涌而出，对扇形敌人造成持续伤害，每次三围*8倍|r")
    SaveStr(jn, 0x6A323136, 3, "")
    SaveStr(jn, 0x6A323136, 4, "")
    SaveStr(jn, 0x6A323136, 5, "")
    SaveStr(jn, 0x6A323136, 6, "")
    SaveStr(jn, 0x4A4E3236, 1, "|cffffff00暗影三重奏|r")
    SaveStr(jn, 0x4A4E3236, 2, "|cff8080ff属性：暗|n|r|cffffff00释放：被动|n|r|cffffff00攻击敌人7%几率召唤三重暗影魔力对前方冲去,每道造成*1.5*[技能等级*10%]倍伤害|r")
    SaveStr(jn, 0x4A4E3236, 3, "")
    SaveStr(jn, 0x4A4E3236, 4, "")
    SaveStr(jn, 0x4A4E3236, 5, "")
    SaveStr(jn, 0x4A4E3236, 6, "")
    SaveStr(jn, 0x4A4E3234, 1, "|cff00ff00暗夜黑龙|r")
    SaveStr(jn, 0x4A4E3234, 2, "|cff8080ff属性：魔|n|r|cffffff00释放：被动|n|r|cffffff00攻击有7%几率召唤一条旋转的黑龙持续3秒，对靠近的敌人造成三围*1.5*[技能等级*10%]倍伤害|r")
    SaveStr(jn, 0x4A4E3234, 3, "")
    SaveStr(jn, 0x4A4E3234, 4, "")
    SaveStr(jn, 0x4A4E3234, 5, "")
    SaveStr(jn, 0x4A4E3234, 6, "")
    SaveStr(jn, 0x6A323038, 1, "苍穹变[R]")
    SaveStr(jn, 0x6A323038, 2, "|cff00ffff间隔：60秒|n|r|cffffff00苍穹变，天地动，魔法暴击几率+100% 伤害减免+100%,持续6秒|r")
    SaveStr(jn, 0x6A323038, 3, "")
    SaveStr(jn, 0x6A323038, 4, "")
    SaveStr(jn, 0x6A323038, 5, "")
    SaveStr(jn, 0x6A323038, 6, "")
end

function JYCallUnitTrigger()
    local i = 0
    while true do
        if i >= JYDamage__JYDamageNum then
            break
        end
        if JYDamage__TriggerEventArray[i] ~= nil and IsTriggerEnabled(JYDamage__TriggerEventArray[i]) and TriggerEvaluate(JYDamage__TriggerEventArray[i]) then
            TriggerExecute(JYDamage__TriggerEventArray[i])
        end
        i = i + 1
    end
    do
        return true
    end
end

function JYDamageCondition()
    local u = GetFilterUnit()
    local t = nil
    if GetUnitAbilityLevel(u, 0x416C6F63) <= 0 then
        GroupAddUnit(JYDamage__JYDamageGroup, u)
        SaveTriggerHandle(JYDamage__DamageHt, GetHandleId(u), 0x74726967, CreateTrigger())
        t = LoadTriggerHandle(JYDamage__DamageHt, GetHandleId(u), 0x74726967)
        TriggerRegisterUnitEvent(t, u, EVENT_UNIT_DAMAGED)
        TriggerAddCondition(t, Condition(JYCallUnitTrigger))
    end
    u = nil
    t = nil
    do
        return false
    end
end

function JYClearTrigger()
    DestroyTrigger(LoadTriggerHandle(JYDamage__DamageHt, GetHandleId(GetDyingUnit()), 0x74726967))
end

function JYRegisterUnit()
    local t = CreateTrigger()
    local t1 = CreateTrigger()
    local r = CreateRegion()
    RegionAddRect(r, GetWorldBounds())
    TriggerRegisterEnterRegion(t, r, Condition(JYDamageCondition))
    GroupEnumUnitsInRect(JYDamage__JYDamageGroup, GetWorldBounds(), Condition(JYDamageCondition))
    TriggerRegisterAnyUnitEventBJ(t1, EVENT_PLAYER_UNIT_DEATH)
    TriggerAddAction(t1, JYClearTrigger)
    r = nil
    t = nil
    t1 = nil
end

function JYDamageEvent(trg)
    if trg == nil then
        do
            return
        end
    end
    if JYDamage__JYDamageNum == 0 then
        JYRegisterUnit()
    end
    JYDamage__TriggerEventArray[JYDamage__JYDamageNum] = trg
    JYDamage__JYDamageNum = JYDamage__JYDamageNum + 1
end

function ModNameSystem__ModName_int()
    SaveInteger(AC, StringHash("遍历单位"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历单位"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历单位"), LoadInteger(AC, StringHash("遍历单位"), StringHash("遍历上限")), 0x65646573)
    SaveStr(AC, StringHash("遍历名字"), LoadInteger(AC, StringHash("遍历单位"), StringHash("遍历上限")), "暗夜精灵族护卫舰")
    SaveInteger(AC, StringHash("遍历单位"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历单位"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历单位"), LoadInteger(AC, StringHash("遍历单位"), StringHash("遍历上限")), 0x6C676D32)
    SaveStr(AC, StringHash("遍历名字"), LoadInteger(AC, StringHash("遍历单位"), StringHash("遍历上限")), "练功单位2")
    SaveInteger(AC, StringHash("遍历单位"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历单位"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历单位"), LoadInteger(AC, StringHash("遍历单位"), StringHash("遍历上限")), 0x6E303046)
    SaveStr(AC, StringHash("遍历名字"), LoadInteger(AC, StringHash("遍历单位"), StringHash("遍历上限")), "|cffffff00修为历练|r")
    SaveInteger(AC, StringHash("遍历单位"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历单位"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历单位"), LoadInteger(AC, StringHash("遍历单位"), StringHash("遍历上限")), 0x6C676D33)
    SaveStr(AC, StringHash("遍历名字"), LoadInteger(AC, StringHash("遍历单位"), StringHash("遍历上限")), "练功单位3")
    SaveInteger(AC, StringHash("遍历单位"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历单位"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历单位"), LoadInteger(AC, StringHash("遍历单位"), StringHash("遍历上限")), 0x6C676D34)
    SaveStr(AC, StringHash("遍历名字"), LoadInteger(AC, StringHash("遍历单位"), StringHash("遍历上限")), "练功单位4")
    SaveInteger(AC, StringHash("遍历单位"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历单位"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历单位"), LoadInteger(AC, StringHash("遍历单位"), StringHash("遍历上限")), 0x63633035)
    SaveStr(AC, StringHash("遍历名字"), LoadInteger(AC, StringHash("遍历单位"), StringHash("遍历上限")), "|cff00ffff完成上一个故事回忆|r")
    SaveInteger(AC, StringHash("遍历单位"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历单位"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历单位"), LoadInteger(AC, StringHash("遍历单位"), StringHash("遍历上限")), 0x45776172)
    SaveStr(AC, StringHash("遍历名字"), LoadInteger(AC, StringHash("遍历单位"), StringHash("遍历上限")), "守望者")
    SaveInteger(AC, StringHash("遍历单位"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历单位"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历单位"), LoadInteger(AC, StringHash("遍历单位"), StringHash("遍历上限")), 0x6C676D31)
    SaveStr(AC, StringHash("遍历名字"), LoadInteger(AC, StringHash("遍历单位"), StringHash("遍历上限")), "练功单位1")
    SaveInteger(AC, StringHash("遍历单位"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历单位"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历单位"), LoadInteger(AC, StringHash("遍历单位"), StringHash("遍历上限")), 0x6E667630)
    SaveStr(AC, StringHash("遍历名字"), LoadInteger(AC, StringHash("遍历单位"), StringHash("遍历上限")), "暗夜精灵族渔村")
    SaveInteger(AC, StringHash("遍历单位"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历单位"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历单位"), LoadInteger(AC, StringHash("遍历单位"), StringHash("遍历上限")), 0x6E636177)
    SaveStr(AC, StringHash("遍历名字"), LoadInteger(AC, StringHash("遍历单位"), StringHash("遍历上限")), "战争古树")
    SaveInteger(AC, StringHash("遍历单位"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历单位"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历单位"), LoadInteger(AC, StringHash("遍历单位"), StringHash("遍历上限")), 0x65666472)
    SaveStr(AC, StringHash("遍历名字"), LoadInteger(AC, StringHash("遍历单位"), StringHash("遍历上限")), "精灵龙")
    SaveInteger(AC, StringHash("遍历单位"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历单位"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历单位"), LoadInteger(AC, StringHash("遍历单位"), StringHash("遍历上限")), 0x7A7A3135)
    SaveStr(AC, StringHash("遍历名字"), LoadInteger(AC, StringHash("遍历单位"), StringHash("遍历上限")), "需解锁上级")
    SaveInteger(AC, StringHash("遍历单位"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历单位"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历单位"), LoadInteger(AC, StringHash("遍历单位"), StringHash("遍历上限")), 0x72736D31)
    SaveStr(AC, StringHash("遍历名字"), LoadInteger(AC, StringHash("遍历单位"), StringHash("遍历上限")), "|cff00ff00需要5名以上人族门客|r")
    SaveInteger(AC, StringHash("遍历单位"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历单位"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历单位"), LoadInteger(AC, StringHash("遍历单位"), StringHash("遍历上限")), 0x65736864)
    SaveStr(AC, StringHash("遍历名字"), LoadInteger(AC, StringHash("遍历单位"), StringHash("遍历上限")), "塞恩德里斯")
    SaveInteger(AC, StringHash("遍历单位"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历单位"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历单位"), LoadInteger(AC, StringHash("遍历单位"), StringHash("遍历上限")), 0x45696C6D)
    SaveStr(AC, StringHash("遍历名字"), LoadInteger(AC, StringHash("遍历单位"), StringHash("遍历上限")), "恶魔猎手")
    SaveInteger(AC, StringHash("遍历单位"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历单位"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历单位"), LoadInteger(AC, StringHash("遍历单位"), StringHash("遍历上限")), 0x6E666E70)
    SaveStr(AC, StringHash("遍历名字"), LoadInteger(AC, StringHash("遍历单位"), StringHash("遍历上限")), "威力之泉")
    SaveInteger(AC, StringHash("遍历单位"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历单位"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历单位"), LoadInteger(AC, StringHash("遍历单位"), StringHash("遍历上限")), 0x6E6F7733)
    SaveStr(AC, StringHash("遍历名字"), LoadInteger(AC, StringHash("遍历单位"), StringHash("遍历上限")), "猫头鹰侦察者")
    SaveInteger(AC, StringHash("遍历单位"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历单位"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历单位"), LoadInteger(AC, StringHash("遍历单位"), StringHash("遍历上限")), 0x6E767230)
    SaveStr(AC, StringHash("遍历名字"), LoadInteger(AC, StringHash("遍历单位"), StringHash("遍历上限")), "暗夜精灵族渔村")
    SaveInteger(AC, StringHash("遍历单位"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历单位"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历单位"), LoadInteger(AC, StringHash("遍历单位"), StringHash("遍历上限")), 0x456D6F6F)
    SaveStr(AC, StringHash("遍历名字"), LoadInteger(AC, StringHash("遍历单位"), StringHash("遍历上限")), "月之女祭司")
    SaveInteger(AC, StringHash("遍历单位"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历单位"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历单位"), LoadInteger(AC, StringHash("遍历单位"), StringHash("遍历上限")), 0x65736879)
    SaveStr(AC, StringHash("遍历名字"), LoadInteger(AC, StringHash("遍历单位"), StringHash("遍历上限")), "暗夜精灵族船坞")
    SaveInteger(AC, StringHash("遍历单位"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历单位"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历单位"), LoadInteger(AC, StringHash("遍历单位"), StringHash("遍历上限")), 0x72736D33)
    SaveStr(AC, StringHash("遍历名字"), LoadInteger(AC, StringHash("遍历单位"), StringHash("遍历上限")), "|cff00ff00需要5名以上魔族门客|r")
    SaveInteger(AC, StringHash("遍历单位"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历单位"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历单位"), LoadInteger(AC, StringHash("遍历单位"), StringHash("遍历上限")), 0x63633038)
    SaveStr(AC, StringHash("遍历名字"), LoadInteger(AC, StringHash("遍历单位"), StringHash("遍历上限")), "|cff00ffff完成上一个故事回忆|r")
    SaveInteger(AC, StringHash("遍历单位"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历单位"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历单位"), LoadInteger(AC, StringHash("遍历单位"), StringHash("遍历上限")), 0x6564636D)
    SaveStr(AC, StringHash("遍历名字"), LoadInteger(AC, StringHash("遍历单位"), StringHash("遍历上限")), "利爪德鲁伊")
    SaveInteger(AC, StringHash("遍历单位"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历单位"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历单位"), LoadInteger(AC, StringHash("遍历单位"), StringHash("遍历上限")), 0x6E767232)
    SaveStr(AC, StringHash("遍历名字"), LoadInteger(AC, StringHash("遍历单位"), StringHash("遍历上限")), "暗夜精灵族渔村")
    SaveInteger(AC, StringHash("遍历单位"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历单位"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历单位"), LoadInteger(AC, StringHash("遍历单位"), StringHash("遍历上限")), 0x6E303045)
    SaveStr(AC, StringHash("遍历名字"), LoadInteger(AC, StringHash("遍历单位"), StringHash("遍历上限")), "|cffffff00修为历练|r")
    SaveInteger(AC, StringHash("遍历单位"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历单位"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历单位"), LoadInteger(AC, StringHash("遍历单位"), StringHash("遍历上限")), 0x45657669)
    SaveStr(AC, StringHash("遍历名字"), LoadInteger(AC, StringHash("遍历单位"), StringHash("遍历上限")), "恶魔猎手")
    SaveInteger(AC, StringHash("遍历单位"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历单位"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历单位"), LoadInteger(AC, StringHash("遍历单位"), StringHash("遍历上限")), 0x45747972)
    SaveStr(AC, StringHash("遍历名字"), LoadInteger(AC, StringHash("遍历单位"), StringHash("遍历上限")), "月之女祭司")
    SaveInteger(AC, StringHash("遍历单位"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历单位"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历单位"), LoadInteger(AC, StringHash("遍历单位"), StringHash("遍历上限")), 0x65687072)
    SaveStr(AC, StringHash("遍历名字"), LoadInteger(AC, StringHash("遍历单位"), StringHash("遍历上限")), "角鹰兽骑士")
    SaveInteger(AC, StringHash("遍历单位"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历单位"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历单位"), LoadInteger(AC, StringHash("遍历单位"), StringHash("遍历上限")), 0x65676F6C)
    SaveStr(AC, StringHash("遍历名字"), LoadInteger(AC, StringHash("遍历单位"), StringHash("遍历上限")), "被缠绕的金矿")
    SaveInteger(AC, StringHash("遍历单位"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历单位"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历单位"), LoadInteger(AC, StringHash("遍历单位"), StringHash("遍历上限")), 0x45777264)
    SaveStr(AC, StringHash("遍历名字"), LoadInteger(AC, StringHash("遍历单位"), StringHash("遍历上限")), "守望者")
    SaveInteger(AC, StringHash("遍历单位"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历单位"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历单位"), LoadInteger(AC, StringHash("遍历单位"), StringHash("遍历上限")), 0x4564656D)
    SaveStr(AC, StringHash("遍历名字"), LoadInteger(AC, StringHash("遍历单位"), StringHash("遍历上限")), "恶魔猎手")
    SaveInteger(AC, StringHash("遍历单位"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历单位"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历单位"), LoadInteger(AC, StringHash("遍历单位"), StringHash("遍历上限")), 0x6E637465)
    SaveStr(AC, StringHash("遍历名字"), LoadInteger(AC, StringHash("遍历单位"), StringHash("遍历上限")), "永恒之树")
    SaveInteger(AC, StringHash("遍历单位"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历单位"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历单位"), LoadInteger(AC, StringHash("遍历单位"), StringHash("遍历上限")), 0x6562616C)
    SaveStr(AC, StringHash("遍历名字"), LoadInteger(AC, StringHash("遍历单位"), StringHash("遍历上限")), "投刃车")
    SaveInteger(AC, StringHash("遍历单位"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历单位"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历单位"), LoadInteger(AC, StringHash("遍历单位"), StringHash("遍历上限")), 0x63633034)
    SaveStr(AC, StringHash("遍历名字"), LoadInteger(AC, StringHash("遍历单位"), StringHash("遍历上限")), "|cff00ffff完成上一个故事回忆|r")
    SaveInteger(AC, StringHash("遍历单位"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历单位"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历单位"), LoadInteger(AC, StringHash("遍历单位"), StringHash("遍历上限")), 0x64796231)
    SaveStr(AC, StringHash("遍历名字"), LoadInteger(AC, StringHash("遍历单位"), StringHash("遍历上限")), "|cff00ffff道源本精 提升至5阶|r")
    SaveInteger(AC, StringHash("遍历单位"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历单位"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历单位"), LoadInteger(AC, StringHash("遍历单位"), StringHash("遍历上限")), 0x456D6672)
    SaveStr(AC, StringHash("遍历名字"), LoadInteger(AC, StringHash("遍历单位"), StringHash("遍历上限")), "丛林守护者")
    SaveInteger(AC, StringHash("遍历单位"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历单位"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历单位"), LoadInteger(AC, StringHash("遍历单位"), StringHash("遍历上限")), 0x63633032)
    SaveStr(AC, StringHash("遍历名字"), LoadInteger(AC, StringHash("遍历单位"), StringHash("遍历上限")), "|cff00ffff完成上一个故事回忆|r")
    SaveInteger(AC, StringHash("遍历单位"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历单位"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历单位"), LoadInteger(AC, StringHash("遍历单位"), StringHash("遍历上限")), 0x65646F73)
    SaveStr(AC, StringHash("遍历名字"), LoadInteger(AC, StringHash("遍历单位"), StringHash("遍历上限")), "奇美拉栖木")
    SaveInteger(AC, StringHash("遍历单位"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历单位"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历单位"), LoadInteger(AC, StringHash("遍历单位"), StringHash("遍历上限")), 0x6530304B)
    SaveStr(AC, StringHash("遍历名字"), LoadInteger(AC, StringHash("遍历单位"), StringHash("遍历上限")), "预警e00k")
    SaveInteger(AC, StringHash("遍历单位"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历单位"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历单位"), LoadInteger(AC, StringHash("遍历单位"), StringHash("遍历上限")), 0x7A7A3137)
    SaveStr(AC, StringHash("遍历名字"), LoadInteger(AC, StringHash("遍历单位"), StringHash("遍历上限")), "需解锁上级")
    SaveInteger(AC, StringHash("遍历单位"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历单位"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历单位"), LoadInteger(AC, StringHash("遍历单位"), StringHash("遍历上限")), 0x6E636170)
    SaveStr(AC, StringHash("遍历名字"), LoadInteger(AC, StringHash("遍历单位"), StringHash("遍历上限")), "远古守护者")
    SaveInteger(AC, StringHash("遍历单位"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历单位"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历单位"), LoadInteger(AC, StringHash("遍历单位"), StringHash("遍历上限")), 0x6E73736E)
    SaveStr(AC, StringHash("遍历名字"), LoadInteger(AC, StringHash("遍历单位"), StringHash("遍历上限")), "守望者")
    SaveInteger(AC, StringHash("遍历单位"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历单位"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历单位"), LoadInteger(AC, StringHash("遍历单位"), StringHash("遍历上限")), 0x6C676D36)
    SaveStr(AC, StringHash("遍历名字"), LoadInteger(AC, StringHash("遍历单位"), StringHash("遍历上限")), "练功单位6")
    SaveInteger(AC, StringHash("遍历单位"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历单位"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历单位"), LoadInteger(AC, StringHash("遍历单位"), StringHash("遍历上限")), 0x6E767231)
    SaveStr(AC, StringHash("遍历名字"), LoadInteger(AC, StringHash("遍历单位"), StringHash("遍历上限")), "暗夜精灵族渔村")
    SaveInteger(AC, StringHash("遍历单位"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历单位"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历单位"), LoadInteger(AC, StringHash("遍历单位"), StringHash("遍历上限")), 0x656D7467)
    SaveStr(AC, StringHash("遍历名字"), LoadInteger(AC, StringHash("遍历单位"), StringHash("遍历上限")), "山岭巨人")
    SaveInteger(AC, StringHash("遍历单位"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历单位"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历单位"), LoadInteger(AC, StringHash("遍历单位"), StringHash("遍历上限")), 0x6C676D35)
    SaveStr(AC, StringHash("遍历名字"), LoadInteger(AC, StringHash("遍历单位"), StringHash("遍历上限")), "练功单位5")
    SaveInteger(AC, StringHash("遍历单位"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历单位"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历单位"), LoadInteger(AC, StringHash("遍历单位"), StringHash("遍历上限")), 0x6E676F62)
    SaveStr(AC, StringHash("遍历名字"), LoadInteger(AC, StringHash("遍历单位"), StringHash("遍历上限")), "魔法宝石塔")
    SaveInteger(AC, StringHash("遍历单位"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历单位"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历单位"), LoadInteger(AC, StringHash("遍历单位"), StringHash("遍历上限")), 0x6E746872)
    SaveStr(AC, StringHash("遍历名字"), LoadInteger(AC, StringHash("遍历单位"), StringHash("遍历上限")), "萨里法斯")
    SaveInteger(AC, StringHash("遍历单位"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历单位"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历单位"), LoadInteger(AC, StringHash("遍历单位"), StringHash("遍历上限")), 0x7A7A3132)
    SaveStr(AC, StringHash("遍历名字"), LoadInteger(AC, StringHash("遍历单位"), StringHash("遍历上限")), "需解锁上级")
    SaveInteger(AC, StringHash("遍历单位"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历单位"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历单位"), LoadInteger(AC, StringHash("遍历单位"), StringHash("遍历上限")), 0x6E776174)
    SaveStr(AC, StringHash("遍历名字"), LoadInteger(AC, StringHash("遍历单位"), StringHash("遍历上限")), "岗哨")
    SaveInteger(AC, StringHash("遍历单位"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历单位"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历单位"), LoadInteger(AC, StringHash("遍历单位"), StringHash("遍历上限")), 0x65746F65)
    SaveStr(AC, StringHash("遍历名字"), LoadInteger(AC, StringHash("遍历单位"), StringHash("遍历上限")), "永恒之树")
    SaveInteger(AC, StringHash("遍历单位"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历单位"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历单位"), LoadInteger(AC, StringHash("遍历单位"), StringHash("遍历上限")), 0x7A7A3134)
    SaveStr(AC, StringHash("遍历名字"), LoadInteger(AC, StringHash("遍历单位"), StringHash("遍历上限")), "需解锁上级")
    SaveInteger(AC, StringHash("遍历单位"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历单位"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历单位"), LoadInteger(AC, StringHash("遍历单位"), StringHash("遍历上限")), 0x65747270)
    SaveStr(AC, StringHash("遍历名字"), LoadInteger(AC, StringHash("遍历单位"), StringHash("遍历上限")), "远古守护者")
    SaveInteger(AC, StringHash("遍历单位"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历单位"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历单位"), LoadInteger(AC, StringHash("遍历单位"), StringHash("遍历上限")), 0x72736D32)
    SaveStr(AC, StringHash("遍历名字"), LoadInteger(AC, StringHash("遍历单位"), StringHash("遍历上限")), "|cff00ff00需要5名以上神族门客|r")
    SaveInteger(AC, StringHash("遍历单位"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历单位"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历单位"), LoadInteger(AC, StringHash("遍历单位"), StringHash("遍历上限")), 0x6E68636E)
    SaveStr(AC, StringHash("遍历名字"), LoadInteger(AC, StringHash("遍历单位"), StringHash("遍历上限")), "半神赛纳留斯之角")
    SaveInteger(AC, StringHash("遍历单位"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历单位"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历单位"), LoadInteger(AC, StringHash("遍历单位"), StringHash("遍历上限")), 0x6E303042)
    SaveStr(AC, StringHash("遍历名字"), LoadInteger(AC, StringHash("遍历单位"), StringHash("遍历上限")), "|cffffff00修为历练|r")
    SaveInteger(AC, StringHash("遍历单位"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历单位"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历单位"), LoadInteger(AC, StringHash("遍历单位"), StringHash("遍历上限")), 0x65646F62)
    SaveStr(AC, StringHash("遍历名字"), LoadInteger(AC, StringHash("遍历单位"), StringHash("遍历上限")), "猎手大厅")
    SaveInteger(AC, StringHash("遍历单位"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历单位"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历单位"), LoadInteger(AC, StringHash("遍历单位"), StringHash("遍历上限")), 0x6E667632)
    SaveStr(AC, StringHash("遍历名字"), LoadInteger(AC, StringHash("遍历单位"), StringHash("遍历上限")), "暗夜精灵族渔村")
    SaveInteger(AC, StringHash("遍历单位"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历单位"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历单位"), LoadInteger(AC, StringHash("遍历单位"), StringHash("遍历上限")), 0x6E667634)
    SaveStr(AC, StringHash("遍历名字"), LoadInteger(AC, StringHash("遍历单位"), StringHash("遍历上限")), "暗夜精灵族渔村")
    SaveInteger(AC, StringHash("遍历单位"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历单位"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历单位"), LoadInteger(AC, StringHash("遍历单位"), StringHash("遍历上限")), 0x656E7368)
    SaveStr(AC, StringHash("遍历名字"), LoadInteger(AC, StringHash("遍历单位"), StringHash("遍历上限")), "娜萨")
    SaveInteger(AC, StringHash("遍历单位"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历单位"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历单位"), LoadInteger(AC, StringHash("遍历单位"), StringHash("遍历上限")), 0x64796232)
    SaveStr(AC, StringHash("遍历名字"), LoadInteger(AC, StringHash("遍历单位"), StringHash("遍历上限")), "|cff00ffff道源本精 提升至10阶|r")
    SaveInteger(AC, StringHash("遍历单位"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历单位"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历单位"), LoadInteger(AC, StringHash("遍历单位"), StringHash("遍历上限")), 0x45646D6D)
    SaveStr(AC, StringHash("遍历名字"), LoadInteger(AC, StringHash("遍历单位"), StringHash("遍历上限")), "恶魔猎手")
    SaveInteger(AC, StringHash("遍历单位"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历单位"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历单位"), LoadInteger(AC, StringHash("遍历单位"), StringHash("遍历上限")), 0x656E6563)
    SaveStr(AC, StringHash("遍历名字"), LoadInteger(AC, StringHash("遍历单位"), StringHash("遍历上限")), "暗夜精灵信使")
    SaveInteger(AC, StringHash("遍历单位"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历单位"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历单位"), LoadInteger(AC, StringHash("遍历单位"), StringHash("遍历上限")), 0x456B6565)
    SaveStr(AC, StringHash("遍历名字"), LoadInteger(AC, StringHash("遍历单位"), StringHash("遍历上限")), "丛林守护者")
    SaveInteger(AC, StringHash("遍历单位"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历单位"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历单位"), LoadInteger(AC, StringHash("遍历单位"), StringHash("遍历上限")), 0x6E303043)
    SaveStr(AC, StringHash("遍历名字"), LoadInteger(AC, StringHash("遍历单位"), StringHash("遍历上限")), "|cffffff00修为历练|r")
    SaveInteger(AC, StringHash("遍历单位"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历单位"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历单位"), LoadInteger(AC, StringHash("遍历单位"), StringHash("遍历上限")), 0x6564746D)
    SaveStr(AC, StringHash("遍历名字"), LoadInteger(AC, StringHash("遍历单位"), StringHash("遍历上限")), "猛禽德鲁伊")
    SaveInteger(AC, StringHash("遍历单位"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历单位"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历单位"), LoadInteger(AC, StringHash("遍历单位"), StringHash("遍历上限")), 0x6E303047)
    SaveStr(AC, StringHash("遍历名字"), LoadInteger(AC, StringHash("遍历单位"), StringHash("遍历上限")), "|cffffff00修为历练|r")
    SaveInteger(AC, StringHash("遍历单位"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历单位"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历单位"), LoadInteger(AC, StringHash("遍历单位"), StringHash("遍历上限")), 0x6E637461)
    SaveStr(AC, StringHash("遍历名字"), LoadInteger(AC, StringHash("遍历单位"), StringHash("遍历上限")), "远古之树")
    SaveInteger(AC, StringHash("遍历单位"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历单位"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历单位"), LoadInteger(AC, StringHash("遍历单位"), StringHash("遍历上限")), 0x65617263)
    SaveStr(AC, StringHash("遍历名字"), LoadInteger(AC, StringHash("遍历单位"), StringHash("遍历上限")), "弓箭手")
    SaveInteger(AC, StringHash("遍历单位"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历单位"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历单位"), LoadInteger(AC, StringHash("遍历单位"), StringHash("遍历上限")), 0x6E627764)
    SaveStr(AC, StringHash("遍历名字"), LoadInteger(AC, StringHash("遍历单位"), StringHash("遍历上限")), "兽穴")
    SaveInteger(AC, StringHash("遍历单位"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历单位"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历单位"), LoadInteger(AC, StringHash("遍历单位"), StringHash("遍历上限")), 0x4569646D)
    SaveStr(AC, StringHash("遍历名字"), LoadInteger(AC, StringHash("遍历单位"), StringHash("遍历上限")), "恶魔猎手")
    SaveInteger(AC, StringHash("遍历单位"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历单位"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历单位"), LoadInteger(AC, StringHash("遍历单位"), StringHash("遍历上限")), 0x65777370)
    SaveStr(AC, StringHash("遍历名字"), LoadInteger(AC, StringHash("遍历单位"), StringHash("遍历上限")), "小精灵")
    SaveInteger(AC, StringHash("遍历单位"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历单位"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历单位"), LoadInteger(AC, StringHash("遍历单位"), StringHash("遍历上限")), 0x65737076)
    SaveStr(AC, StringHash("遍历名字"), LoadInteger(AC, StringHash("遍历单位"), StringHash("遍历上限")), "复仇天神")
    SaveInteger(AC, StringHash("遍历单位"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历单位"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历单位"), LoadInteger(AC, StringHash("遍历单位"), StringHash("遍历上限")), 0x65696C77)
    SaveStr(AC, StringHash("遍历名字"), LoadInteger(AC, StringHash("遍历单位"), StringHash("遍历上限")), "囚车")
    SaveInteger(AC, StringHash("遍历单位"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历单位"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历单位"), LoadInteger(AC, StringHash("遍历单位"), StringHash("遍历上限")), 0x63633033)
    SaveStr(AC, StringHash("遍历名字"), LoadInteger(AC, StringHash("遍历单位"), StringHash("遍历上限")), "|cff00ffff完成上一个故事回忆|r")
    SaveInteger(AC, StringHash("遍历单位"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历单位"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历单位"), LoadInteger(AC, StringHash("遍历单位"), StringHash("遍历上限")), 0x45667572)
    SaveStr(AC, StringHash("遍历名字"), LoadInteger(AC, StringHash("遍历单位"), StringHash("遍历上限")), "丛林守护者")
    SaveInteger(AC, StringHash("遍历单位"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历单位"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历单位"), LoadInteger(AC, StringHash("遍历单位"), StringHash("遍历上限")), 0x6E63746C)
    SaveStr(AC, StringHash("遍历名字"), LoadInteger(AC, StringHash("遍历单位"), StringHash("遍历上限")), "生命之树")
    SaveInteger(AC, StringHash("遍历单位"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历单位"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历单位"), LoadInteger(AC, StringHash("遍历单位"), StringHash("遍历上限")), 0x65746F6C)
    SaveStr(AC, StringHash("遍历名字"), LoadInteger(AC, StringHash("遍历单位"), StringHash("遍历上限")), "生命之树")
    SaveInteger(AC, StringHash("遍历单位"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历单位"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历单位"), LoadInteger(AC, StringHash("遍历单位"), StringHash("遍历上限")), 0x6E303044)
    SaveStr(AC, StringHash("遍历名字"), LoadInteger(AC, StringHash("遍历单位"), StringHash("遍历上限")), "|cffffff00修为历练|r")
    SaveInteger(AC, StringHash("遍历单位"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历单位"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历单位"), LoadInteger(AC, StringHash("遍历单位"), StringHash("遍历上限")), 0x65686970)
    SaveStr(AC, StringHash("遍历名字"), LoadInteger(AC, StringHash("遍历单位"), StringHash("遍历上限")), "角鹰兽")
    SaveInteger(AC, StringHash("遍历单位"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历单位"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历单位"), LoadInteger(AC, StringHash("遍历单位"), StringHash("遍历上限")), 0x45696C6C)
    SaveStr(AC, StringHash("遍历名字"), LoadInteger(AC, StringHash("遍历单位"), StringHash("遍历上限")), "恶魔猎手")
    SaveInteger(AC, StringHash("遍历单位"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历单位"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历单位"), LoadInteger(AC, StringHash("遍历单位"), StringHash("遍历上限")), 0x6E303031)
    SaveStr(AC, StringHash("遍历名字"), LoadInteger(AC, StringHash("遍历单位"), StringHash("遍历上限")), "|cffffff00修为历练|r")
    SaveInteger(AC, StringHash("遍历单位"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历单位"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历单位"), LoadInteger(AC, StringHash("遍历单位"), StringHash("遍历上限")), 0x4565766D)
    SaveStr(AC, StringHash("遍历名字"), LoadInteger(AC, StringHash("遍历单位"), StringHash("遍历上限")), "恶魔猎手")
    SaveInteger(AC, StringHash("遍历单位"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历单位"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历单位"), LoadInteger(AC, StringHash("遍历单位"), StringHash("遍历上限")), 0x65616F6D)
    SaveStr(AC, StringHash("遍历名字"), LoadInteger(AC, StringHash("遍历单位"), StringHash("遍历上限")), "战争古树")
    SaveInteger(AC, StringHash("遍历单位"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历单位"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历单位"), LoadInteger(AC, StringHash("遍历单位"), StringHash("遍历上限")), 0x6576656E)
    SaveStr(AC, StringHash("遍历名字"), LoadInteger(AC, StringHash("遍历单位"), StringHash("遍历上限")), "复仇之魂")
    SaveInteger(AC, StringHash("遍历单位"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历单位"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历单位"), LoadInteger(AC, StringHash("遍历单位"), StringHash("遍历上限")), 0x65627368)
    SaveStr(AC, StringHash("遍历名字"), LoadInteger(AC, StringHash("遍历单位"), StringHash("遍历上限")), "暗夜精灵族战舰")
    SaveInteger(AC, StringHash("遍历单位"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历单位"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历单位"), LoadInteger(AC, StringHash("遍历单位"), StringHash("遍历上限")), 0x7A7A3133)
    SaveStr(AC, StringHash("遍历名字"), LoadInteger(AC, StringHash("遍历单位"), StringHash("遍历上限")), "需解锁上级")
    SaveInteger(AC, StringHash("遍历单位"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历单位"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历单位"), LoadInteger(AC, StringHash("遍历单位"), StringHash("遍历上限")), 0x64796233)
    SaveStr(AC, StringHash("遍历名字"), LoadInteger(AC, StringHash("遍历单位"), StringHash("遍历上限")), "|cff00ffff道源本精 提升至15阶|r")
    SaveInteger(AC, StringHash("遍历单位"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历单位"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历单位"), LoadInteger(AC, StringHash("遍历单位"), StringHash("遍历上限")), 0x6E6F776C)
    SaveStr(AC, StringHash("遍历名字"), LoadInteger(AC, StringHash("遍历单位"), StringHash("遍历上限")), "猫头鹰侦察者")
    SaveInteger(AC, StringHash("遍历单位"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历单位"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历单位"), LoadInteger(AC, StringHash("遍历单位"), StringHash("遍历上限")), 0x456D6E73)
    SaveStr(AC, StringHash("遍历名字"), LoadInteger(AC, StringHash("遍历单位"), StringHash("遍历上限")), "丛林守护者")
    SaveInteger(AC, StringHash("遍历单位"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历单位"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历单位"), LoadInteger(AC, StringHash("遍历单位"), StringHash("遍历上限")), 0x65647279)
    SaveStr(AC, StringHash("遍历名字"), LoadInteger(AC, StringHash("遍历单位"), StringHash("遍历上限")), "树妖")
    SaveInteger(AC, StringHash("遍历单位"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历单位"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历单位"), LoadInteger(AC, StringHash("遍历单位"), StringHash("遍历上限")), 0x65303030)
    SaveStr(AC, StringHash("遍历名字"), LoadInteger(AC, StringHash("遍历单位"), StringHash("遍历上限")), "cfmj")
    SaveInteger(AC, StringHash("遍历单位"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历单位"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历单位"), LoadInteger(AC, StringHash("遍历单位"), StringHash("遍历上限")), 0x63633130)
    SaveStr(AC, StringHash("遍历名字"), LoadInteger(AC, StringHash("遍历单位"), StringHash("遍历上限")), "|cff00ffff完成上一个故事回忆|r")
    SaveInteger(AC, StringHash("遍历单位"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历单位"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历单位"), LoadInteger(AC, StringHash("遍历单位"), StringHash("遍历上限")), 0x63633036)
    SaveStr(AC, StringHash("遍历名字"), LoadInteger(AC, StringHash("遍历单位"), StringHash("遍历上限")), "|cff00ffff完成上一个故事回忆|r")
    SaveInteger(AC, StringHash("遍历单位"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历单位"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历单位"), LoadInteger(AC, StringHash("遍历单位"), StringHash("遍历上限")), 0x65747273)
    SaveStr(AC, StringHash("遍历名字"), LoadInteger(AC, StringHash("遍历单位"), StringHash("遍历上限")), "暗夜精灵族运输船")
    SaveInteger(AC, StringHash("遍历单位"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历单位"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历单位"), LoadInteger(AC, StringHash("遍历单位"), StringHash("遍历上限")), 0x65646F63)
    SaveStr(AC, StringHash("遍历名字"), LoadInteger(AC, StringHash("遍历单位"), StringHash("遍历上限")), "利爪德鲁伊")
    SaveInteger(AC, StringHash("遍历单位"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历单位"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历单位"), LoadInteger(AC, StringHash("遍历单位"), StringHash("遍历上限")), 0x6E667631)
    SaveStr(AC, StringHash("遍历名字"), LoadInteger(AC, StringHash("遍历单位"), StringHash("遍历上限")), "暗夜精灵族渔村")
    SaveInteger(AC, StringHash("遍历单位"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历单位"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历单位"), LoadInteger(AC, StringHash("遍历单位"), StringHash("遍历上限")), 0x6564656E)
    SaveStr(AC, StringHash("遍历名字"), LoadInteger(AC, StringHash("遍历单位"), StringHash("遍历上限")), "奇迹古树")
    SaveInteger(AC, StringHash("遍历单位"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历单位"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历单位"), LoadInteger(AC, StringHash("遍历单位"), StringHash("遍历上限")), 0x4563656E)
    SaveStr(AC, StringHash("遍历名字"), LoadInteger(AC, StringHash("遍历单位"), StringHash("遍历上限")), "半神人")
    SaveInteger(AC, StringHash("遍历单位"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历单位"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历单位"), LoadInteger(AC, StringHash("遍历单位"), StringHash("遍历上限")), 0x65616F77)
    SaveStr(AC, StringHash("遍历名字"), LoadInteger(AC, StringHash("遍历单位"), StringHash("遍历上限")), "风之古树")
    SaveInteger(AC, StringHash("遍历单位"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历单位"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历单位"), LoadInteger(AC, StringHash("遍历单位"), StringHash("遍历上限")), 0x64796234)
    SaveStr(AC, StringHash("遍历名字"), LoadInteger(AC, StringHash("遍历单位"), StringHash("遍历上限")), "|cff00ffff道源本精 提升至20阶|r")
    SaveInteger(AC, StringHash("遍历单位"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历单位"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历单位"), LoadInteger(AC, StringHash("遍历单位"), StringHash("遍历上限")), 0x7A7A3136)
    SaveStr(AC, StringHash("遍历名字"), LoadInteger(AC, StringHash("遍历单位"), StringHash("遍历上限")), "需解锁上级")
    SaveInteger(AC, StringHash("遍历单位"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历单位"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历单位"), LoadInteger(AC, StringHash("遍历单位"), StringHash("遍历上限")), 0x65746F61)
    SaveStr(AC, StringHash("遍历名字"), LoadInteger(AC, StringHash("遍历单位"), StringHash("遍历上限")), "远古之树")
    SaveInteger(AC, StringHash("遍历单位"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历单位"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历单位"), LoadInteger(AC, StringHash("遍历单位"), StringHash("遍历上限")), 0x65616F65)
    SaveStr(AC, StringHash("遍历名字"), LoadInteger(AC, StringHash("遍历单位"), StringHash("遍历上限")), "知识古树")
    SaveInteger(AC, StringHash("遍历单位"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历单位"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历单位"), LoadInteger(AC, StringHash("遍历单位"), StringHash("遍历上限")), 0x65646F74)
    SaveStr(AC, StringHash("遍历名字"), LoadInteger(AC, StringHash("遍历单位"), StringHash("遍历上限")), "猛禽德鲁伊")
    SaveInteger(AC, StringHash("遍历单位"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历单位"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历单位"), LoadInteger(AC, StringHash("遍历单位"), StringHash("遍历上限")), 0x65617465)
    SaveStr(AC, StringHash("遍历名字"), LoadInteger(AC, StringHash("遍历单位"), StringHash("遍历上限")), "长者祭坛")
    SaveInteger(AC, StringHash("遍历单位"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历单位"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历单位"), LoadInteger(AC, StringHash("遍历单位"), StringHash("遍历上限")), 0x656D6F77)
    SaveStr(AC, StringHash("遍历名字"), LoadInteger(AC, StringHash("遍历单位"), StringHash("遍历上限")), "月亮井")
    SaveInteger(AC, StringHash("遍历单位"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历单位"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历单位"), LoadInteger(AC, StringHash("遍历单位"), StringHash("遍历上限")), 0x65303031)
    SaveStr(AC, StringHash("遍历名字"), LoadInteger(AC, StringHash("遍历单位"), StringHash("遍历上限")), "cfmj")
    SaveInteger(AC, StringHash("遍历单位"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历单位"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历单位"), LoadInteger(AC, StringHash("遍历单位"), StringHash("遍历上限")), 0x6573656E)
    SaveStr(AC, StringHash("遍历名字"), LoadInteger(AC, StringHash("遍历单位"), StringHash("遍历上限")), "女猎手")
    SaveInteger(AC, StringHash("遍历单位"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历单位"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历单位"), LoadInteger(AC, StringHash("遍历单位"), StringHash("遍历上限")), 0x65666F6E)
    SaveStr(AC, StringHash("遍历名字"), LoadInteger(AC, StringHash("遍历单位"), StringHash("遍历上限")), "树人")
    SaveInteger(AC, StringHash("遍历单位"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历单位"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历单位"), LoadInteger(AC, StringHash("遍历单位"), StringHash("遍历上限")), 0x7A7A3130)
    SaveStr(AC, StringHash("遍历名字"), LoadInteger(AC, StringHash("遍历单位"), StringHash("遍历上限")), "需解锁上级")
    SaveInteger(AC, StringHash("遍历单位"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历单位"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历单位"), LoadInteger(AC, StringHash("遍历单位"), StringHash("遍历上限")), 0x7A7A3138)
    SaveStr(AC, StringHash("遍历名字"), LoadInteger(AC, StringHash("遍历单位"), StringHash("遍历上限")), "需解锁上级")
    SaveInteger(AC, StringHash("遍历单位"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历单位"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历单位"), LoadInteger(AC, StringHash("遍历单位"), StringHash("遍历上限")), 0x63633031)
    SaveStr(AC, StringHash("遍历名字"), LoadInteger(AC, StringHash("遍历单位"), StringHash("遍历上限")), "|cff00ffff完成上一个故事回忆|r")
    SaveInteger(AC, StringHash("遍历单位"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历单位"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历单位"), LoadInteger(AC, StringHash("遍历单位"), StringHash("遍历上限")), 0x456B6767)
    SaveStr(AC, StringHash("遍历名字"), LoadInteger(AC, StringHash("遍历单位"), StringHash("遍历上限")), "丛林守护者")
    SaveInteger(AC, StringHash("遍历单位"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历单位"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历单位"), LoadInteger(AC, StringHash("遍历单位"), StringHash("遍历上限")), 0x6E303041)
    SaveStr(AC, StringHash("遍历名字"), LoadInteger(AC, StringHash("遍历单位"), StringHash("遍历上限")), "|cffffff00修为历练|r")
    SaveInteger(AC, StringHash("遍历单位"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历单位"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历单位"), LoadInteger(AC, StringHash("遍历单位"), StringHash("遍历上限")), 0x7A7A3131)
    SaveStr(AC, StringHash("遍历名字"), LoadInteger(AC, StringHash("遍历单位"), StringHash("遍历上限")), "需解锁上级")
    SaveInteger(AC, StringHash("遍历单位"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历单位"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历单位"), LoadInteger(AC, StringHash("遍历单位"), StringHash("遍历上限")), 0x6563686D)
    SaveStr(AC, StringHash("遍历名字"), LoadInteger(AC, StringHash("遍历单位"), StringHash("遍历上限")), "奇美拉")
    SaveInteger(AC, StringHash("遍历单位"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历单位"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历单位"), LoadInteger(AC, StringHash("遍历单位"), StringHash("遍历上限")), 0x6E667633)
    SaveStr(AC, StringHash("遍历名字"), LoadInteger(AC, StringHash("遍历单位"), StringHash("遍历上限")), "暗夜精灵族渔村")
    SaveInteger(AC, StringHash("遍历单位"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历单位"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历单位"), LoadInteger(AC, StringHash("遍历单位"), StringHash("遍历上限")), 0x63633039)
    SaveStr(AC, StringHash("遍历名字"), LoadInteger(AC, StringHash("遍历单位"), StringHash("遍历上限")), "|cff00ffff完成上一个故事回忆|r")
    SaveInteger(AC, StringHash("遍历单位"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历单位"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历单位"), LoadInteger(AC, StringHash("遍历单位"), StringHash("遍历上限")), 0x6E6F7732)
    SaveStr(AC, StringHash("遍历名字"), LoadInteger(AC, StringHash("遍历单位"), StringHash("遍历上限")), "猫头鹰侦察者")
    SaveInteger(AC, StringHash("遍历单位"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历单位"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历单位"), LoadInteger(AC, StringHash("遍历单位"), StringHash("遍历上限")), 0x63633037)
    SaveStr(AC, StringHash("遍历名字"), LoadInteger(AC, StringHash("遍历单位"), StringHash("遍历上限")), "|cff00ffff完成上一个故事回忆|r")
    SaveInteger(AC, StringHash("遍历技能"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历技能"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")), 0x53483034)
    SaveStr(AC, StringHash("技能名字"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")), "时间之神(力)")
    SaveInteger(AC, StringHash("遍历技能"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历技能"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")), 0x53483031)
    SaveStr(AC, StringHash("技能名字"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")), "横扫千军(力)")
    SaveInteger(AC, StringHash("遍历技能"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历技能"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")), 0x4166696E)
    SaveStr(AC, StringHash("技能名字"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")), "开火 (暗夜精灵族)")
    SaveInteger(AC, StringHash("遍历技能"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历技能"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")), 0x41456275)
    SaveStr(AC, StringHash("技能名字"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")), "建造 (暗夜精灵族)")
    SaveInteger(AC, StringHash("遍历技能"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历技能"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")), 0x41656174)
    SaveStr(AC, StringHash("技能名字"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")), "吞食树木")
    SaveInteger(AC, StringHash("遍历技能"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历技能"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")), 0x4A4E3233)
    SaveStr(AC, StringHash("技能名字"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")), "|cff00ff00火焰岚山|r")
    SaveInteger(AC, StringHash("遍历技能"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历技能"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")), 0x41776861)
    SaveStr(AC, StringHash("技能名字"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")), "采集")
    SaveInteger(AC, StringHash("遍历技能"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历技能"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")), 0x41747370)
    SaveStr(AC, StringHash("技能名字"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")), "龙卷旋风")
    SaveInteger(AC, StringHash("遍历技能"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历技能"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")), 0x536C6F32)
    SaveStr(AC, StringHash("技能名字"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")), "装载小精灵")
    SaveInteger(AC, StringHash("遍历技能"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历技能"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")), 0x53483231)
    SaveStr(AC, StringHash("技能名字"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")), "穿越者(通)")
    SaveInteger(AC, StringHash("遍历技能"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历技能"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")), 0x41456172)
    SaveStr(AC, StringHash("技能名字"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")), "强击光环")
    SaveInteger(AC, StringHash("遍历技能"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历技能"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")), 0x53483032)
    SaveStr(AC, StringHash("技能名字"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")), "势大力沉(力)")
    SaveInteger(AC, StringHash("遍历技能"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历技能"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")), 0x41457368)
    SaveStr(AC, StringHash("技能名字"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")), "暗影突袭")
    SaveInteger(AC, StringHash("遍历技能"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历技能"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")), 0x416C6974)
    SaveStr(AC, StringHash("技能名字"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")), "闪电攻击")
    SaveInteger(AC, StringHash("遍历技能"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历技能"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")), 0x4A4E3335)
    SaveStr(AC, StringHash("技能名字"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")), "|cff00ff00炎神灭劫剑|r")
    SaveInteger(AC, StringHash("遍历技能"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历技能"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")), 0x41737032)
    SaveStr(AC, StringHash("技能名字"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")), "球体")
    SaveInteger(AC, StringHash("遍历技能"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历技能"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")), 0x53483239)
    SaveStr(AC, StringHash("技能名字"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")), "杀人如麻(通)")
    SaveInteger(AC, StringHash("遍历技能"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历技能"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")), 0x53483138)
    SaveStr(AC, StringHash("技能名字"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")), "茅山大师(智)")
    SaveInteger(AC, StringHash("遍历技能"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历技能"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")), 0x41726F61)
    SaveStr(AC, StringHash("技能名字"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")), "咆哮")
    SaveInteger(AC, StringHash("遍历技能"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历技能"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")), 0x416D676C)
    SaveStr(AC, StringHash("技能名字"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")), "月刃")
    SaveInteger(AC, StringHash("遍历技能"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历技能"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")), 0x53483035)
    SaveStr(AC, StringHash("技能名字"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")), "杀人魔王(力)")
    SaveInteger(AC, StringHash("遍历技能"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历技能"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")), 0x53483037)
    SaveStr(AC, StringHash("技能名字"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")), "返璞归真(力)")
    SaveInteger(AC, StringHash("遍历技能"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历技能"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")), 0x41726F31)
    SaveStr(AC, StringHash("技能名字"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")), "扎根")
    SaveInteger(AC, StringHash("遍历技能"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历技能"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")), 0x41436675)
    SaveStr(AC, StringHash("技能名字"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")), "霜冻护甲")
    SaveInteger(AC, StringHash("遍历技能"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历技能"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")), 0x41456D62)
    SaveStr(AC, StringHash("技能名字"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")), "法力燃烧")
    SaveInteger(AC, StringHash("遍历技能"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历技能"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")), 0x4A4E3239)
    SaveStr(AC, StringHash("技能名字"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")), "|cff00ff00地狱裂痕|r")
    SaveInteger(AC, StringHash("遍历技能"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历技能"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")), 0x4A4E3332)
    SaveStr(AC, StringHash("技能名字"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")), "|cffffff00暗影魔刀|r")
    SaveInteger(AC, StringHash("遍历技能"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历技能"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")), 0x414E7061)
    SaveStr(AC, StringHash("技能名字"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")), "寄生虫")
    SaveInteger(AC, StringHash("遍历技能"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历技能"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")), 0x4145696D)
    SaveStr(AC, StringHash("技能名字"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")), "献祭")
    SaveInteger(AC, StringHash("遍历技能"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历技能"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")), 0x41737035)
    SaveStr(AC, StringHash("技能名字"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")), "球体")
    SaveInteger(AC, StringHash("遍历技能"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历技能"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")), 0x41456572)
    SaveStr(AC, StringHash("技能名字"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")), "纠缠根须")
    SaveInteger(AC, StringHash("遍历技能"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历技能"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")), 0x414E626C)
    SaveStr(AC, StringHash("技能名字"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")), "闪烁")
    SaveInteger(AC, StringHash("遍历技能"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历技能"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")), 0x41486661)
    SaveStr(AC, StringHash("技能名字"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")), "灼热之箭")
    SaveInteger(AC, StringHash("遍历技能"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历技能"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")), 0x4165736E)
    SaveStr(AC, StringHash("技能名字"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")), "哨兵")
    SaveInteger(AC, StringHash("遍历技能"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历技能"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")), 0x41456168)
    SaveStr(AC, StringHash("技能名字"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")), "荆棘光环")
    SaveInteger(AC, StringHash("遍历技能"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历技能"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")), 0x4161736C)
    SaveStr(AC, StringHash("技能名字"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")), "减速光环")
    SaveInteger(AC, StringHash("遍历技能"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历技能"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")), 0x53483134)
    SaveStr(AC, StringHash("技能名字"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")), "数值怪物(敏)")
    SaveInteger(AC, StringHash("遍历技能"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历技能"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")), 0x414E656E)
    SaveStr(AC, StringHash("技能名字"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")), "诱捕")
    SaveInteger(AC, StringHash("遍历技能"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历技能"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")), 0x41656E74)
    SaveStr(AC, StringHash("技能名字"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")), "缠绕金矿")
    SaveInteger(AC, StringHash("遍历技能"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历技能"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")), 0x41656E63)
    SaveStr(AC, StringHash("技能名字"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")), "装载")
    SaveInteger(AC, StringHash("遍历技能"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历技能"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")), 0x4A4E3238)
    SaveStr(AC, StringHash("技能名字"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")), "|cff00ff00幻界冰雨|r")
    SaveInteger(AC, StringHash("遍历技能"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历技能"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")), 0x41457471)
    SaveStr(AC, StringHash("技能名字"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")), "宁静")
    SaveInteger(AC, StringHash("遍历技能"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历技能"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")), 0x53483230)
    SaveStr(AC, StringHash("技能名字"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")), "纵火犯(智)")
    SaveInteger(AC, StringHash("遍历技能"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历技能"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")), 0x53483238)
    SaveStr(AC, StringHash("技能名字"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")), "宝藏男孩(通)")
    SaveInteger(AC, StringHash("遍历技能"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历技能"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")), 0x5373686D)
    SaveStr(AC, StringHash("技能名字"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")), "影遁")
    SaveInteger(AC, StringHash("遍历技能"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历技能"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")), 0x41636F33)
    SaveStr(AC, StringHash("技能名字"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")), "搭载弓箭手")
    SaveInteger(AC, StringHash("遍历技能"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历技能"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")), 0x4173686D)
    SaveStr(AC, StringHash("技能名字"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")), "影遁")
    SaveInteger(AC, StringHash("遍历技能"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历技能"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")), 0x41636F61)
    SaveStr(AC, StringHash("技能名字"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")), "骑乘角鹰兽")
    SaveInteger(AC, StringHash("遍历技能"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历技能"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")), 0x4A4E3334)
    SaveStr(AC, StringHash("技能名字"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")), "|cff00ff00冰之巨人|r")
    SaveInteger(AC, StringHash("遍历技能"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历技能"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")), 0x4173736B)
    SaveStr(AC, StringHash("技能名字"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")), "硬化皮肤")
    SaveInteger(AC, StringHash("遍历技能"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历技能"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")), 0x4172656A)
    SaveStr(AC, StringHash("技能名字"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")), "生命恢复")
    SaveInteger(AC, StringHash("遍历技能"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历技能"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")), 0x41457374)
    SaveStr(AC, StringHash("技能名字"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")), "侦察")
    SaveInteger(AC, StringHash("遍历技能"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历技能"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")), 0x4172736B)
    SaveStr(AC, StringHash("技能名字"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")), "抗性皮肤")
    SaveInteger(AC, StringHash("遍历技能"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历技能"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")), 0x41636F68)
    SaveStr(AC, StringHash("技能名字"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")), "搭载弓箭手")
    SaveInteger(AC, StringHash("遍历技能"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历技能"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")), 0x4173706F)
    SaveStr(AC, StringHash("技能名字"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")), "慢性毒药")
    SaveInteger(AC, StringHash("遍历技能"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历技能"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")), 0x30334A44)
    SaveStr(AC, StringHash("技能名字"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")), "[基地技能]混沌归元")
    SaveInteger(AC, StringHash("遍历技能"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历技能"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")), 0x30324A44)
    SaveStr(AC, StringHash("技能名字"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")), "[基地技能]三花聚顶")
    SaveInteger(AC, StringHash("遍历技能"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历技能"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")), 0x30314A44)
    SaveStr(AC, StringHash("技能名字"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")), "[基地技能]仙魔结界")
    SaveInteger(AC, StringHash("遍历技能"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历技能"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")), 0x4145626C)
    SaveStr(AC, StringHash("技能名字"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")), "闪烁")
    SaveInteger(AC, StringHash("遍历技能"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历技能"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")), 0x4A4E3235)
    SaveStr(AC, StringHash("技能名字"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")), "|cffff6800万雷锁魂|r")
    SaveInteger(AC, StringHash("遍历技能"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历技能"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")), 0x41686E6C)
    SaveStr(AC, StringHash("技能名字"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")), "召唤仪式")
    SaveInteger(AC, StringHash("遍历技能"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历技能"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")), 0x41457376)
    SaveStr(AC, StringHash("技能名字"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")), "复仇之魂")
    SaveInteger(AC, StringHash("遍历技能"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历技能"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")), 0x41457366)
    SaveStr(AC, StringHash("技能名字"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")), "群星坠落")
    SaveInteger(AC, StringHash("遍历技能"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历技能"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")), 0x41746175)
    SaveStr(AC, StringHash("技能名字"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")), "嘲讽")
    SaveInteger(AC, StringHash("遍历技能"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历技能"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")), 0x53483131)
    SaveStr(AC, StringHash("技能名字"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")), "梦幻连击(敏)")
    SaveInteger(AC, StringHash("遍历技能"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历技能"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")), 0x4A4E3331)
    SaveStr(AC, StringHash("技能名字"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")), "|cffff6800雷电麒麟|r")
    SaveInteger(AC, StringHash("遍历技能"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历技能"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")), 0x41456576)
    SaveStr(AC, StringHash("技能名字"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")), "闪避")
    SaveInteger(AC, StringHash("遍历技能"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历技能"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")), 0x41747761)
    SaveStr(AC, StringHash("技能名字"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")), "龙卷风漫步者")
    SaveInteger(AC, StringHash("遍历技能"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历技能"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")), 0x41746F6C)
    SaveStr(AC, StringHash("技能名字"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")), "生命之树升级技能")
    SaveInteger(AC, StringHash("遍历技能"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历技能"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")), 0x41627266)
    SaveStr(AC, StringHash("技能名字"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")), "变熊")
    SaveInteger(AC, StringHash("遍历技能"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历技能"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")), 0x4A4E3333)
    SaveStr(AC, StringHash("技能名字"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")), "|cffffff00大日如来|r")
    SaveInteger(AC, StringHash("遍历技能"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历技能"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")), 0x41656772)
    SaveStr(AC, StringHash("技能名字"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")), "艾鲁尼之优雅")
    SaveInteger(AC, StringHash("遍历技能"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历技能"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")), 0x41726F32)
    SaveStr(AC, StringHash("技能名字"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")), "扎根")
    SaveInteger(AC, StringHash("遍历技能"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历技能"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")), 0x41646563)
    SaveStr(AC, StringHash("技能名字"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")), "卸载")
    SaveInteger(AC, StringHash("遍历技能"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历技能"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")), 0x41657372)
    SaveStr(AC, StringHash("技能名字"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")), "哨兵")
    SaveInteger(AC, StringHash("遍历技能"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历技能"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")), 0x4A4E3237)
    SaveStr(AC, StringHash("技能名字"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")), "|cffffff00莲花封印|r")
    SaveInteger(AC, StringHash("遍历技能"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历技能"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")), 0x41666132)
    SaveStr(AC, StringHash("技能名字"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")), "精灵之火")
    SaveInteger(AC, StringHash("遍历技能"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历技能"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")), 0x41666165)
    SaveStr(AC, StringHash("技能名字"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")), "精灵之火")
    SaveInteger(AC, StringHash("遍历技能"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历技能"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")), 0x41726176)
    SaveStr(AC, StringHash("技能名字"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")), "风暴之鸦")
    SaveInteger(AC, StringHash("遍历技能"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历技能"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")), 0x4A4E3330)
    SaveStr(AC, StringHash("技能名字"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")), "|cff00ff00索命魔刀|r")
    SaveInteger(AC, StringHash("遍历技能"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历技能"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")), 0x41726132)
    SaveStr(AC, StringHash("技能名字"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")), "咆哮")
    SaveInteger(AC, StringHash("遍历技能"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历技能"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")), 0x4164746E)
    SaveStr(AC, StringHash("技能名字"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")), "爆炸")
    SaveInteger(AC, StringHash("遍历技能"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历技能"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")), 0x4165746C)
    SaveStr(AC, StringHash("技能名字"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")), "虚无状态")
    SaveInteger(AC, StringHash("遍历技能"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历技能"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")), 0x416D6274)
    SaveStr(AC, StringHash("技能名字"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")), "补充魔法和生命值")
    SaveInteger(AC, StringHash("遍历技能"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历技能"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")), 0x416E736B)
    SaveStr(AC, StringHash("技能名字"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")), "硬化皮肤")
    SaveInteger(AC, StringHash("遍历技能"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历技能"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")), 0x4145666B)
    SaveStr(AC, StringHash("技能名字"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")), "刀阵旋风")
    SaveInteger(AC, StringHash("遍历技能"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历技能"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")), 0x41707368)
    SaveStr(AC, StringHash("技能名字"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")), "变相移动")
    SaveInteger(AC, StringHash("遍历技能"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历技能"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")), 0x4A4E3338)
    SaveStr(AC, StringHash("技能名字"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")), "|cffffff00灭世魔炎|r")
    SaveInteger(AC, StringHash("遍历技能"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历技能"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")), 0x41756C74)
    SaveStr(AC, StringHash("技能名字"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")), "夜视能力")
    SaveInteger(AC, StringHash("遍历技能"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历技能"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")), 0x416E646D)
    SaveStr(AC, StringHash("技能名字"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")), "驱逐魔法")
    SaveInteger(AC, StringHash("遍历技能"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历技能"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")), 0x41637963)
    SaveStr(AC, StringHash("技能名字"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")), "飓风")
    SaveInteger(AC, StringHash("遍历技能"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历技能"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")), 0x4172656E)
    SaveStr(AC, StringHash("技能名字"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")), "更新")
    SaveInteger(AC, StringHash("遍历技能"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历技能"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")), 0x416D6772)
    SaveStr(AC, StringHash("技能名字"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")), "月刃")
    SaveInteger(AC, StringHash("遍历技能"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历技能"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")), 0x41456D65)
    SaveStr(AC, StringHash("技能名字"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")), "变身")
    SaveInteger(AC, StringHash("遍历技能"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历技能"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")), 0x41696D70)
    SaveStr(AC, StringHash("技能名字"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")), "穿刺剑刃")
    SaveInteger(AC, StringHash("遍历技能"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历技能"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")), 0x416D666C)
    SaveStr(AC, StringHash("技能名字"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")), "魔力之焰")
    SaveInteger(AC, StringHash("遍历技能"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历技能"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")), 0x4A4E3337)
    SaveStr(AC, StringHash("技能名字"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")), "|cffff6800天罚雷珠|r")
    SaveInteger(AC, StringHash("遍历技能"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历技能"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")), 0x41737031)
    SaveStr(AC, StringHash("技能名字"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")), "球体")
    SaveInteger(AC, StringHash("遍历技能"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历技能"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")), 0x41737033)
    SaveStr(AC, StringHash("技能名字"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")), "球体")
    SaveInteger(AC, StringHash("遍历技能"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历技能"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")), 0x4A4E3339)
    SaveStr(AC, StringHash("技能名字"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")), "|cffffff00净世大悲咒|r")
    SaveInteger(AC, StringHash("遍历技能"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历技能"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")), 0x41737036)
    SaveStr(AC, StringHash("技能名字"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")), "球体")
    SaveInteger(AC, StringHash("遍历技能"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历技能"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")), 0x4161646D)
    SaveStr(AC, StringHash("技能名字"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")), "驱逐魔法")
    SaveInteger(AC, StringHash("遍历技能"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历技能"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")), 0x4145666E)
    SaveStr(AC, StringHash("技能名字"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")), "自然之力")
    SaveInteger(AC, StringHash("遍历技能"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历技能"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")), 0x4A4E3336)
    SaveStr(AC, StringHash("技能名字"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")), "|cff00ff00嗜血反击|r")
    SaveInteger(AC, StringHash("遍历技能"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历技能"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")), 0x53483133)
    SaveStr(AC, StringHash("技能名字"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")), "手撕敌人(敏)")
    SaveInteger(AC, StringHash("遍历技能"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历技能"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")), 0x41636E79)
    SaveStr(AC, StringHash("技能名字"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")), "飓风")
    SaveInteger(AC, StringHash("遍历技能"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历技能"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")), 0x41766E67)
    SaveStr(AC, StringHash("技能名字"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")), "复仇之魂")
    SaveInteger(AC, StringHash("遍历技能"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历技能"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")), 0x30344A44)
    SaveStr(AC, StringHash("技能名字"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")), "[基地技能]法相天地")
    SaveInteger(AC, StringHash("遍历技能"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历技能"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")), 0x4165676D)
    SaveStr(AC, StringHash("技能名字"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")), "缠绕金矿技能")
    SaveInteger(AC, StringHash("遍历技能"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历技能"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")), 0x53483036)
    SaveStr(AC, StringHash("技能名字"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")), "钢铁是怎样炼成的(力)")
    SaveInteger(AC, StringHash("遍历技能"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历技能"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")), 0x416D696D)
    SaveStr(AC, StringHash("技能名字"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")), "魔法免疫")
    SaveInteger(AC, StringHash("遍历技能"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历技能"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")), 0x41636F72)
    SaveStr(AC, StringHash("技能名字"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")), "腐蚀喷吐")
    SaveInteger(AC, StringHash("遍历技能"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历技能"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")), 0x4A4E3232)
    SaveStr(AC, StringHash("技能名字"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")), "|cff00ff00玄冰破晓|r")
    SaveInteger(AC, StringHash("遍历技能"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历技能"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")), 0x41677261)
    SaveStr(AC, StringHash("技能名字"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")), "战棍")
    SaveInteger(AC, StringHash("遍历技能"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历技能"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")), 0x41746467)
    SaveStr(AC, StringHash("技能名字"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")), "建筑物破坏光环")
    SaveInteger(AC, StringHash("遍历技能"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历技能"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")), 0x41636F32)
    SaveStr(AC, StringHash("技能名字"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")), "骑乘角鹰兽")
    SaveInteger(AC, StringHash("遍历技能"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历技能"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")), 0x53483033)
    SaveStr(AC, StringHash("技能名字"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")), "奔腾杀气(力)")
    SaveInteger(AC, StringHash("遍历技能"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历技能"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")), 0x53483330)
    SaveStr(AC, StringHash("技能名字"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")), "天子门生(通)")
    SaveInteger(AC, StringHash("遍历技能"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历技能"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")), 0x4A4E3236)
    SaveStr(AC, StringHash("技能名字"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")), "|cffffff00暗影三重奏|r")
    SaveInteger(AC, StringHash("遍历技能"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历技能"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")), 0x53483234)
    SaveStr(AC, StringHash("技能名字"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")), "打宝专家(通)")
    SaveInteger(AC, StringHash("遍历技能"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历技能"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")), 0x53483137)
    SaveStr(AC, StringHash("技能名字"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")), "元素微粒(智)")
    SaveInteger(AC, StringHash("遍历技能"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历技能"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")), 0x4A4E3234)
    SaveStr(AC, StringHash("技能名字"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")), "|cff00ff00暗夜黑龙|r")
    SaveInteger(AC, StringHash("遍历技能"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历技能"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")), 0x41737034)
    SaveStr(AC, StringHash("技能名字"), LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")), "球体")
    SaveInteger(AC, StringHash("遍历物品"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历物品"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), 0x5A313231)
    SaveStr(AC, StringHash("物品名字"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), "仙族头盔(洪荒)")
    SaveInteger(AC, StringHash("遍历物品"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历物品"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), 0x4A503133)
    SaveStr(AC, StringHash("物品名字"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), "|cff00ff00破虚玄冰阵(冰)(SSR)|r")
    SaveInteger(AC, StringHash("遍历物品"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历物品"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), 0x57483034)
    SaveStr(AC, StringHash("物品名字"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), "圣金金箍[SR]")
    SaveInteger(AC, StringHash("遍历物品"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历物品"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), 0x4A503431)
    SaveStr(AC, StringHash("物品名字"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), "|cffffff00灭世魔炎(暗)(SSR)|r")
    SaveInteger(AC, StringHash("遍历物品"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历物品"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), 0x5A313139)
    SaveStr(AC, StringHash("物品名字"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), "灭世(洪荒)")
    SaveInteger(AC, StringHash("遍历物品"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历物品"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), 0x5A313230)
    SaveStr(AC, StringHash("物品名字"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), "威震华夏(洪荒)")
    SaveInteger(AC, StringHash("遍历物品"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历物品"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), 0x5A313335)
    SaveStr(AC, StringHash("物品名字"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), "伟大理想(洪荒)")
    SaveInteger(AC, StringHash("遍历物品"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历物品"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), 0x5A313130)
    SaveStr(AC, StringHash("物品名字"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), "魂玉魔戒(魔器)")
    SaveInteger(AC, StringHash("遍历物品"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历物品"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), 0x5A303537)
    SaveStr(AC, StringHash("物品名字"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), "守护护腰(SS)")
    SaveInteger(AC, StringHash("遍历物品"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历物品"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), 0x57483031)
    SaveStr(AC, StringHash("物品名字"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), "暗黑悟空[SR]")
    SaveInteger(AC, StringHash("遍历物品"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历物品"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), 0x6473756D)
    SaveStr(AC, StringHash("物品名字"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), "召唤钻石")
    SaveInteger(AC, StringHash("遍历物品"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历物品"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), 0x7374656C)
    SaveStr(AC, StringHash("物品名字"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), "传送权杖")
    SaveInteger(AC, StringHash("遍历物品"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历物品"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), 0x4A503139)
    SaveStr(AC, StringHash("物品名字"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), "|cffffff00冰元素魔怪(冰)(成长)|r")
    SaveInteger(AC, StringHash("遍历物品"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历物品"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), 0x5A303737)
    SaveStr(AC, StringHash("物品名字"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), "耀世之靴(Z)")
    SaveInteger(AC, StringHash("遍历物品"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历物品"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), 0x5A303335)
    SaveStr(AC, StringHash("物品名字"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), "英雄战甲(A)")
    SaveInteger(AC, StringHash("遍历物品"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历物品"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), 0x5A303331)
    SaveStr(AC, StringHash("物品名字"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), "战神戒指(A)")
    SaveInteger(AC, StringHash("遍历物品"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历物品"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), 0x4A503239)
    SaveStr(AC, StringHash("物品名字"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), "|cffffff00暗影三重奏(暗)(R)|r")
    SaveInteger(AC, StringHash("遍历物品"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历物品"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), 0x5A313131)
    SaveStr(AC, StringHash("物品名字"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), "黎明破晓(魔器)")
    SaveInteger(AC, StringHash("遍历物品"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历物品"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), 0x5A303039)
    SaveStr(AC, StringHash("物品名字"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), "乾坤笔(D)")
    SaveInteger(AC, StringHash("遍历物品"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历物品"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), 0x6A313163)
    SaveStr(AC, StringHash("物品名字"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), "杀敌数梭哈")
    SaveInteger(AC, StringHash("遍历物品"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历物品"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), 0x4C303131)
    SaveStr(AC, StringHash("物品名字"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), "杀敌效率+10%")
    SaveInteger(AC, StringHash("遍历物品"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历物品"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), 0x5A303939)
    SaveStr(AC, StringHash("物品名字"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), "狂血龙刃(仙器)")
    SaveInteger(AC, StringHash("遍历物品"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历物品"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), 0x5A303239)
    SaveStr(AC, StringHash("物品名字"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), "拓金灵符(B)")
    SaveInteger(AC, StringHash("遍历物品"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历物品"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), 0x5A303139)
    SaveStr(AC, StringHash("物品名字"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), "平底锅(C)")
    SaveInteger(AC, StringHash("遍历物品"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历物品"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), 0x5A303230)
    SaveStr(AC, StringHash("物品名字"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), "粉玫瑰(C)")
    SaveInteger(AC, StringHash("遍历物品"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历物品"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), 0x6A303263)
    SaveStr(AC, StringHash("物品名字"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), "稀有装备抽奖[W]")
    SaveInteger(AC, StringHash("遍历物品"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历物品"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), 0x4A503331)
    SaveStr(AC, StringHash("物品名字"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), "|cff00ff00幻界冰雨(冰)(SR)|r")
    SaveInteger(AC, StringHash("遍历物品"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历物品"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), 0x5A313039)
    SaveStr(AC, StringHash("物品名字"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), "珠玉琉璃(魔器)")
    SaveInteger(AC, StringHash("遍历物品"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历物品"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), 0x62677374)
    SaveStr(AC, StringHash("物品名字"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), "巨人力量腰带+6")
    SaveInteger(AC, StringHash("遍历物品"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历物品"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), 0x6A303163)
    SaveStr(AC, StringHash("物品名字"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), "普通装备抽奖[Q]")
    SaveInteger(AC, StringHash("遍历物品"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历物品"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), 0x5A313333)
    SaveStr(AC, StringHash("物品名字"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), "奔驰G500(洪荒)")
    SaveInteger(AC, StringHash("遍历物品"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历物品"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), 0x4A503337)
    SaveStr(AC, StringHash("物品名字"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), "|cff00ff00冰之巨人(冰)(SSR)|r")
    SaveInteger(AC, StringHash("遍历物品"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历物品"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), 0x424D3032)
    SaveStr(AC, StringHash("物品名字"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), "打通任脉[消耗杀敌数-200]")
    SaveInteger(AC, StringHash("遍历物品"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历物品"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), 0x61666163)
    SaveStr(AC, StringHash("物品名字"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), "阿利亚之笛")
    SaveInteger(AC, StringHash("遍历物品"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历物品"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), 0x4A503230)
    SaveStr(AC, StringHash("物品名字"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), "|cffffff00火元素魔怪(火)(成长)|r")
    SaveInteger(AC, StringHash("遍历物品"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历物品"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), 0x5A303430)
    SaveStr(AC, StringHash("物品名字"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), "野战衣(A)")
    SaveInteger(AC, StringHash("遍历物品"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历物品"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), 0x5A303435)
    SaveStr(AC, StringHash("物品名字"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), "守心冥链(S)")
    SaveInteger(AC, StringHash("遍历物品"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历物品"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), 0x636E6F62)
    SaveStr(AC, StringHash("物品名字"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), "贵族圆环")
    SaveInteger(AC, StringHash("遍历物品"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历物品"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), 0x57483039)
    SaveStr(AC, StringHash("物品名字"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), "新月混元[SSR]")
    SaveInteger(AC, StringHash("遍历物品"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历物品"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), 0x424D3033)
    SaveStr(AC, StringHash("物品名字"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), "打通冲脉[消耗杀敌数-200]")
    SaveInteger(AC, StringHash("遍历物品"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历物品"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), 0x5A303535)
    SaveStr(AC, StringHash("物品名字"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), "守护臂铠(SS)")
    SaveInteger(AC, StringHash("遍历物品"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历物品"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), 0x4A503430)
    SaveStr(AC, StringHash("物品名字"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), "|cffff6800天罚雷珠(雷)(SSR)|r")
    SaveInteger(AC, StringHash("遍历物品"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历物品"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), 0x5A303330)
    SaveStr(AC, StringHash("物品名字"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), "三角裤(B)")
    SaveInteger(AC, StringHash("遍历物品"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历物品"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), 0x4A503237)
    SaveStr(AC, StringHash("物品名字"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), "|cff00ff00暗夜黑龙(魔)(R)|r")
    SaveInteger(AC, StringHash("遍历物品"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历物品"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), 0x4A503330)
    SaveStr(AC, StringHash("物品名字"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), "|cffffff00莲花封印(光)(R)|r")
    SaveInteger(AC, StringHash("遍历物品"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历物品"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), 0x5A303237)
    SaveStr(AC, StringHash("物品名字"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), "死灵护腰(B)")
    SaveInteger(AC, StringHash("遍历物品"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历物品"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), 0x424D3034)
    SaveStr(AC, StringHash("物品名字"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), "打通带脉[消耗杀敌数-200]")
    SaveInteger(AC, StringHash("遍历物品"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历物品"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), 0x57483032)
    SaveStr(AC, StringHash("物品名字"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), "至尊牛魔[SR]")
    SaveInteger(AC, StringHash("遍历物品"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历物品"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), 0x72696E31)
    SaveStr(AC, StringHash("物品名字"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), "智力斗篷 +3")
    SaveInteger(AC, StringHash("遍历物品"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历物品"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), 0x5A313330)
    SaveStr(AC, StringHash("物品名字"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), "放逐之杖(洪荒)")
    SaveInteger(AC, StringHash("遍历物品"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历物品"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), 0x5A313237)
    SaveStr(AC, StringHash("物品名字"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), "末日救赎(洪荒)")
    SaveInteger(AC, StringHash("遍历物品"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历物品"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), 0x5A303130)
    SaveStr(AC, StringHash("物品名字"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), "锄头(D)")
    SaveInteger(AC, StringHash("遍历物品"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历物品"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), 0x5A313235)
    SaveStr(AC, StringHash("物品名字"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), "罚罪护腰(洪荒)")
    SaveInteger(AC, StringHash("遍历物品"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历物品"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), 0x4A503031)
    SaveStr(AC, StringHash("物品名字"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), "|cff00ff00凝冰呼吸(冰)(R)|r")
    SaveInteger(AC, StringHash("遍历物品"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历物品"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), 0x57483136)
    SaveStr(AC, StringHash("物品名字"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), "大闹天宫[uR]")
    SaveInteger(AC, StringHash("遍历物品"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历物品"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), 0x4C303034)
    SaveStr(AC, StringHash("物品名字"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), "兑换水晶100个")
    SaveInteger(AC, StringHash("遍历物品"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历物品"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), 0x73626368)
    SaveStr(AC, StringHash("物品名字"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), "天灾骨钟")
    SaveInteger(AC, StringHash("遍历物品"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历物品"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), 0x5A313034)
    SaveStr(AC, StringHash("物品名字"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), "屠龙之刃(魔器)")
    SaveInteger(AC, StringHash("遍历物品"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历物品"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), 0x5A303833)
    SaveStr(AC, StringHash("物品名字"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), "宿命之光(Z)")
    SaveInteger(AC, StringHash("遍历物品"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历物品"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), 0x5A303033)
    SaveStr(AC, StringHash("物品名字"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), "金戒指(D)")
    SaveInteger(AC, StringHash("遍历物品"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历物品"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), 0x5A313031)
    SaveStr(AC, StringHash("物品名字"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), "魔晶石(仙器)")
    SaveInteger(AC, StringHash("遍历物品"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历物品"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), 0x5A303835)
    SaveStr(AC, StringHash("物品名字"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), "神之徽章(Z)")
    SaveInteger(AC, StringHash("遍历物品"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历物品"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), 0x6A303463)
    SaveStr(AC, StringHash("物品名字"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), "史诗装备抽奖[R]")
    SaveInteger(AC, StringHash("遍历物品"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历物品"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), 0x5A313032)
    SaveStr(AC, StringHash("物品名字"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), "道法禅杖(仙器)")
    SaveInteger(AC, StringHash("遍历物品"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历物品"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), 0x4C303033)
    SaveStr(AC, StringHash("物品名字"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), "兑换金币50000个")
    SaveInteger(AC, StringHash("遍历物品"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历物品"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), 0x5A303630)
    SaveStr(AC, StringHash("物品名字"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), "破灭之剑(SS)")
    SaveInteger(AC, StringHash("遍历物品"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历物品"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), 0x5A303133)
    SaveStr(AC, StringHash("物品名字"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), "宫廷锦衣(C)")
    SaveInteger(AC, StringHash("遍历物品"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历物品"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), 0x4A503235)
    SaveStr(AC, StringHash("物品名字"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), "|cff00ff00玄冰破晓(冰)(R)|r")
    SaveInteger(AC, StringHash("遍历物品"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历物品"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), 0x4C303032)
    SaveStr(AC, StringHash("物品名字"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), "金币怪升级挑战")
    SaveInteger(AC, StringHash("遍历物品"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历物品"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), 0x424D3133)
    SaveStr(AC, StringHash("物品名字"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), "金钱效率[消耗杀敌数-300]")
    SaveInteger(AC, StringHash("遍历物品"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历物品"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), 0x4C303133)
    SaveStr(AC, StringHash("物品名字"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), "伤害加深+5%")
    SaveInteger(AC, StringHash("遍历物品"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历物品"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), 0x57483035)
    SaveStr(AC, StringHash("物品名字"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), "骸骨之光[SR]")
    SaveInteger(AC, StringHash("遍历物品"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历物品"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), 0x57483138)
    SaveStr(AC, StringHash("物品名字"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), "魔域触须[uR]")
    SaveInteger(AC, StringHash("遍历物品"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历物品"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), 0x5A303637)
    SaveStr(AC, StringHash("物品名字"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), "月影项链(SSS)")
    SaveInteger(AC, StringHash("遍历物品"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历物品"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), 0x5A303733)
    SaveStr(AC, StringHash("物品名字"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), "血精石(SSS)")
    SaveInteger(AC, StringHash("遍历物品"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历物品"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), 0x6A313762)
    SaveStr(AC, StringHash("物品名字"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), "冰火二重天")
    SaveInteger(AC, StringHash("遍历物品"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历物品"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), 0x5A303631)
    SaveStr(AC, StringHash("物品名字"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), "4倍瞄准镜(SS)")
    SaveInteger(AC, StringHash("遍历物品"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历物品"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), 0x424D3230)
    SaveStr(AC, StringHash("物品名字"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), "召唤属性[消耗杀敌数-300]")
    SaveInteger(AC, StringHash("遍历物品"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历物品"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), 0x5A303531)
    SaveStr(AC, StringHash("物品名字"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), "神尊护佑(S)")
    SaveInteger(AC, StringHash("遍历物品"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历物品"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), 0x5A303431)
    SaveStr(AC, StringHash("物品名字"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), "摸金符(A)")
    SaveInteger(AC, StringHash("遍历物品"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历物品"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), 0x5A303034)
    SaveStr(AC, StringHash("物品名字"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), "禁军靴(D)")
    SaveInteger(AC, StringHash("遍历物品"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历物品"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), 0x57483037)
    SaveStr(AC, StringHash("物品名字"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), "次元烈斩[SR]")
    SaveInteger(AC, StringHash("遍历物品"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历物品"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), 0x5A313033)
    SaveStr(AC, StringHash("物品名字"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), "救世主战靴(魔器)")
    SaveInteger(AC, StringHash("遍历物品"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历物品"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), 0x5A303731)
    SaveStr(AC, StringHash("物品名字"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), "破灭臂铠(SSS)")
    SaveInteger(AC, StringHash("遍历物品"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历物品"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), 0x57483131)
    SaveStr(AC, StringHash("物品名字"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), "幻影屠魔[SSR]")
    SaveInteger(AC, StringHash("遍历物品"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历物品"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), 0x6A313063)
    SaveStr(AC, StringHash("物品名字"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), "水晶梭哈")
    SaveInteger(AC, StringHash("遍历物品"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历物品"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), 0x424D3139)
    SaveStr(AC, StringHash("物品名字"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), "攻击速度[消耗杀敌数-300]")
    SaveInteger(AC, StringHash("遍历物品"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历物品"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), 0x5A303334)
    SaveStr(AC, StringHash("物品名字"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), "死亡头饰(A)")
    SaveInteger(AC, StringHash("遍历物品"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历物品"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), 0x4A503132)
    SaveStr(AC, StringHash("物品名字"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), "|cffffff00无尽光枪(光)(SR)|r")
    SaveInteger(AC, StringHash("遍历物品"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历物品"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), 0x5A313133)
    SaveStr(AC, StringHash("物品名字"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), "百宝盒(魔器)")
    SaveInteger(AC, StringHash("遍历物品"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历物品"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), 0x424D3130)
    SaveStr(AC, StringHash("物品名字"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), "炼化顶上三花[消耗杀敌数-800]")
    SaveInteger(AC, StringHash("遍历物品"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历物品"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), 0x5A303635)
    SaveStr(AC, StringHash("物品名字"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), "战士铠甲(SSS)")
    SaveInteger(AC, StringHash("遍历物品"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历物品"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), 0x594A584C)
    SaveStr(AC, StringHash("物品名字"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), "一键修炼")
    SaveInteger(AC, StringHash("遍历物品"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历物品"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), 0x4A503334)
    SaveStr(AC, StringHash("物品名字"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), "|cffff6800雷电麒麟(雷)(SR)|r")
    SaveInteger(AC, StringHash("遍历物品"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历物品"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), 0x4A503039)
    SaveStr(AC, StringHash("物品名字"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), "|cff00ff00流心紫炎(魔)(SR)|r")
    SaveInteger(AC, StringHash("遍历物品"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历物品"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), 0x5A303434)
    SaveStr(AC, StringHash("物品名字"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), "守护战靴(S)")
    SaveInteger(AC, StringHash("遍历物品"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历物品"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), 0x6D636F75)
    SaveStr(AC, StringHash("物品名字"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), "勇气勋章")
    SaveInteger(AC, StringHash("遍历物品"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历物品"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), 0x4C303132)
    SaveStr(AC, StringHash("物品名字"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), "暴击几率+3%")
    SaveInteger(AC, StringHash("遍历物品"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历物品"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), 0x57483135)
    SaveStr(AC, StringHash("物品名字"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), "天降魔神[uR]")
    SaveInteger(AC, StringHash("遍历物品"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历物品"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), 0x62737064)
    SaveStr(AC, StringHash("物品名字"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), "速度之靴")
    SaveInteger(AC, StringHash("遍历物品"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历物品"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), 0x5A303032)
    SaveStr(AC, StringHash("物品名字"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), "布衣(D)")
    SaveInteger(AC, StringHash("遍历物品"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历物品"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), 0x72646531)
    SaveStr(AC, StringHash("物品名字"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), "守护指环 +2")
    SaveInteger(AC, StringHash("遍历物品"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历物品"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), 0x5A303132)
    SaveStr(AC, StringHash("物品名字"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), "银指环(C)")
    SaveInteger(AC, StringHash("遍历物品"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历物品"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), 0x57483036)
    SaveStr(AC, StringHash("物品名字"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), "不灭邪刀[SR]")
    SaveInteger(AC, StringHash("遍历物品"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历物品"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), 0x4A503233)
    SaveStr(AC, StringHash("物品名字"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), "|cffffff00暗元素魔怪(暗)(成长)|r")
    SaveInteger(AC, StringHash("遍历物品"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历物品"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), 0x5A303937)
    SaveStr(AC, StringHash("物品名字"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), "幽冥护腰(仙器)")
    SaveInteger(AC, StringHash("遍历物品"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历物品"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), 0x5A303633)
    SaveStr(AC, StringHash("物品名字"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), "元魂魔佩(SS)")
    SaveInteger(AC, StringHash("遍历物品"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历物品"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), 0x616A656E)
    SaveStr(AC, StringHash("物品名字"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), "古之忍耐姜歌")
    SaveInteger(AC, StringHash("遍历物品"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历物品"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), 0x5A303233)
    SaveStr(AC, StringHash("物品名字"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), "死灵战甲(B)")
    SaveInteger(AC, StringHash("遍历物品"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历物品"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), 0x57486631)
    SaveStr(AC, StringHash("物品名字"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), "混元力量[R]")
    SaveInteger(AC, StringHash("遍历物品"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历物品"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), 0x5A303533)
    SaveStr(AC, StringHash("物品名字"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), "荡窟金符(S)")
    SaveInteger(AC, StringHash("遍历物品"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历物品"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), 0x5A303735)
    SaveStr(AC, StringHash("物品名字"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), "守护神剑(SSS)")
    SaveInteger(AC, StringHash("遍历物品"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历物品"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), 0x4A503032)
    SaveStr(AC, StringHash("物品名字"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), "|cff00ff00灰烬之风(火)(R)|r")
    SaveInteger(AC, StringHash("遍历物品"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历物品"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), 0x6576746C)
    SaveStr(AC, StringHash("物品名字"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), "闪避护符")
    SaveInteger(AC, StringHash("遍历物品"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历物品"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), 0x6A313662)
    SaveStr(AC, StringHash("物品名字"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), "佛门受戒")
    SaveInteger(AC, StringHash("遍历物品"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历物品"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), 0x6876616C)
    SaveStr(AC, StringHash("物品名字"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), "英勇面具")
    SaveInteger(AC, StringHash("遍历物品"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历物品"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), 0x5A303031)
    SaveStr(AC, StringHash("物品名字"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), "桃木剑(D)")
    SaveInteger(AC, StringHash("遍历物品"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历物品"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), 0x5A303337)
    SaveStr(AC, StringHash("物品名字"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), "英雄护臂(A)")
    SaveInteger(AC, StringHash("遍历物品"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历物品"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), 0x5A303336)
    SaveStr(AC, StringHash("物品名字"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), "英雄战盔(A)")
    SaveInteger(AC, StringHash("遍历物品"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历物品"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), 0x5A303638)
    SaveStr(AC, StringHash("物品名字"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), "宗门扳指(SSS)")
    SaveInteger(AC, StringHash("遍历物品"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历物品"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), 0x424D3038)
    SaveStr(AC, StringHash("物品名字"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), "打通阳维脉[消耗杀敌数-200]")
    SaveInteger(AC, StringHash("遍历物品"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历物品"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), 0x4C303136)
    SaveStr(AC, StringHash("物品名字"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), "杀敌经验+10%")
    SaveInteger(AC, StringHash("遍历物品"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历物品"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), 0x5A303432)
    SaveStr(AC, StringHash("物品名字"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), "霸王魔戒(S)")
    SaveInteger(AC, StringHash("遍历物品"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历物品"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), 0x70656E72)
    SaveStr(AC, StringHash("物品名字"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), "能量垂饰")
    SaveInteger(AC, StringHash("遍历物品"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历物品"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), 0x5A313236)
    SaveStr(AC, StringHash("物品名字"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), "龙鳞鞋(洪荒)")
    SaveInteger(AC, StringHash("遍历物品"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历物品"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), 0x63697269)
    SaveStr(AC, StringHash("物品名字"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), "法师长袍 +6")
    SaveInteger(AC, StringHash("遍历物品"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历物品"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), 0x5A303136)
    SaveStr(AC, StringHash("物品名字"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), "将军束腰(C)")
    SaveInteger(AC, StringHash("遍历物品"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历物品"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), 0x4A503332)
    SaveStr(AC, StringHash("物品名字"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), "|cff00ff00地狱裂痕(火)(SR)|r")
    SaveInteger(AC, StringHash("遍历物品"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历物品"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), 0x424D3037)
    SaveStr(AC, StringHash("物品名字"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), "打通阴维脉[消耗杀敌数-200]")
    SaveInteger(AC, StringHash("遍历物品"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历物品"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), 0x4C303137)
    SaveStr(AC, StringHash("物品名字"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), "生命恢复+2%")
    SaveInteger(AC, StringHash("遍历物品"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历物品"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), 0x5A303539)
    SaveStr(AC, StringHash("物品名字"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), "守护战甲(SS)")
    SaveInteger(AC, StringHash("遍历物品"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历物品"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), 0x424D3136)
    SaveStr(AC, StringHash("物品名字"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), "生命能力[消耗杀敌数-300]")
    SaveInteger(AC, StringHash("遍历物品"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历物品"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), 0x424D3137)
    SaveStr(AC, StringHash("物品名字"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), "法术加深[消耗杀敌数-300]")
    SaveInteger(AC, StringHash("遍历物品"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历物品"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), 0x5A303137)
    SaveStr(AC, StringHash("物品名字"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), "将军系带(C)")
    SaveInteger(AC, StringHash("遍历物品"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历物品"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), 0x5A313334)
    SaveStr(AC, StringHash("物品名字"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), "氪金尽头(洪荒)")
    SaveInteger(AC, StringHash("遍历物品"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历物品"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), 0x5A303035)
    SaveStr(AC, StringHash("物品名字"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), "博学者项链(D)")
    SaveInteger(AC, StringHash("遍历物品"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历物品"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), 0x4A503137)
    SaveStr(AC, StringHash("物品名字"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), "|cffffff00暗夜天牢(暗)(SSR)|r")
    SaveInteger(AC, StringHash("遍历物品"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历物品"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), 0x72617439)
    SaveStr(AC, StringHash("物品名字"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), "攻击之爪 +9")
    SaveInteger(AC, StringHash("遍历物品"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历物品"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), 0x5A313132)
    SaveStr(AC, StringHash("物品名字"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), "阴阳法器(魔器)")
    SaveInteger(AC, StringHash("遍历物品"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历物品"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), 0x4A503234)
    SaveStr(AC, StringHash("物品名字"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), "|cffffff00光元素魔怪(光)(成长)|r")
    SaveInteger(AC, StringHash("遍历物品"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历物品"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), 0x4A503135)
    SaveStr(AC, StringHash("物品名字"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), "|cff00ff00乾坤挪移(魔)(SSR)|r")
    SaveInteger(AC, StringHash("遍历物品"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历物品"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), 0x6863756E)
    SaveStr(AC, StringHash("物品名字"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), "灵巧头巾")
    SaveInteger(AC, StringHash("遍历物品"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历物品"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), 0x4A503136)
    SaveStr(AC, StringHash("物品名字"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), "|cffff6800雷霆启明(雷)(SSR)|r")
    SaveInteger(AC, StringHash("遍历物品"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历物品"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), 0x6B70696E)
    SaveStr(AC, StringHash("物品名字"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), "卡嘉长萧")
    SaveInteger(AC, StringHash("遍历物品"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历物品"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), 0x5A313138)
    SaveStr(AC, StringHash("物品名字"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), "行军符(洪荒)")
    SaveInteger(AC, StringHash("遍历物品"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历物品"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), 0x6C687374)
    SaveStr(AC, StringHash("物品名字"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), "风暴狮角")
    SaveInteger(AC, StringHash("遍历物品"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历物品"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), 0x424D3035)
    SaveStr(AC, StringHash("物品名字"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), "打通阴跷脉[消耗杀敌数-200]")
    SaveInteger(AC, StringHash("遍历物品"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历物品"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), 0x72646532)
    SaveStr(AC, StringHash("物品名字"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), "守护指环 +3")
    SaveInteger(AC, StringHash("遍历物品"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历物品"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), 0x4A503339)
    SaveStr(AC, StringHash("物品名字"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), "|cff00ff00嗜血反击(魔)(SSR)|r")
    SaveInteger(AC, StringHash("遍历物品"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历物品"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), 0x5A313037)
    SaveStr(AC, StringHash("物品名字"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), "破魔盔(魔器)")
    SaveInteger(AC, StringHash("遍历物品"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历物品"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), 0x7373696C)
    SaveStr(AC, StringHash("物品名字"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), "沉默权杖")
    SaveInteger(AC, StringHash("遍历物品"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历物品"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), 0x5A303639)
    SaveStr(AC, StringHash("物品名字"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), "帝王指环(SSS)")
    SaveInteger(AC, StringHash("遍历物品"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历物品"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), 0x5A303138)
    SaveStr(AC, StringHash("物品名字"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), "大砍刀(C)")
    SaveInteger(AC, StringHash("遍历物品"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历物品"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), 0x424D3036)
    SaveStr(AC, StringHash("物品名字"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), "打通阳跷脉[消耗杀敌数-200]")
    SaveInteger(AC, StringHash("遍历物品"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历物品"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), 0x5A303038)
    SaveStr(AC, StringHash("物品名字"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), "小珍珠(D)")
    SaveInteger(AC, StringHash("遍历物品"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历物品"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), 0x4A503035)
    SaveStr(AC, StringHash("物品名字"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), "|cffffff00暗界引力(暗)(R)|r")
    SaveInteger(AC, StringHash("遍历物品"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历物品"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), 0x6A313462)
    SaveStr(AC, StringHash("物品名字"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), "先天神邸")
    SaveInteger(AC, StringHash("遍历物品"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历物品"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), 0x77617264)
    SaveStr(AC, StringHash("物品名字"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), "战歌之鼓")
    SaveInteger(AC, StringHash("遍历物品"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历物品"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), 0x726C6966)
    SaveStr(AC, StringHash("物品名字"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), "恢复指环")
    SaveInteger(AC, StringHash("遍历物品"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历物品"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), 0x73707368)
    SaveStr(AC, StringHash("物品名字"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), "魔法护盾护身符")
    SaveInteger(AC, StringHash("遍历物品"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历物品"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), 0x5A303538)
    SaveStr(AC, StringHash("物品名字"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), "守护之靴(SS)")
    SaveInteger(AC, StringHash("遍历物品"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历物品"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), 0x4C303138)
    SaveStr(AC, StringHash("物品名字"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), "攻击速度+15%")
    SaveInteger(AC, StringHash("遍历物品"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历物品"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), 0x72737431)
    SaveStr(AC, StringHash("物品名字"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), "食人鬼手套 +3")
    SaveInteger(AC, StringHash("遍历物品"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历物品"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), 0x5A303436)
    SaveStr(AC, StringHash("物品名字"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), "破灭战甲(S)")
    SaveInteger(AC, StringHash("遍历物品"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历物品"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), 0x4A503130)
    SaveStr(AC, StringHash("物品名字"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), "|cffff6800万雷锁魂(雷)(SR)|r")
    SaveInteger(AC, StringHash("遍历物品"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历物品"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), 0x6A303862)
    SaveStr(AC, StringHash("物品名字"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), "父子同心")
    SaveInteger(AC, StringHash("遍历物品"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历物品"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), 0x5A303536)
    SaveStr(AC, StringHash("物品名字"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), "和平征兆(SS)")
    SaveInteger(AC, StringHash("遍历物品"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历物品"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), 0x57483130)
    SaveStr(AC, StringHash("物品名字"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), "万金驱鬼[SSR]")
    SaveInteger(AC, StringHash("遍历物品"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历物品"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), 0x6A303363)
    SaveStr(AC, StringHash("物品名字"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), "高级装备抽奖[E]")
    SaveInteger(AC, StringHash("遍历物品"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历物品"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), 0x5A313232)
    SaveStr(AC, StringHash("物品名字"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), "三清道链(洪荒)")
    SaveInteger(AC, StringHash("遍历物品"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历物品"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), 0x57483038)
    SaveStr(AC, StringHash("物品名字"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), "凤凰涅槃[SR]")
    SaveInteger(AC, StringHash("遍历物品"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历物品"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), 0x7277697A)
    SaveStr(AC, StringHash("物品名字"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), "艺人面罩")
    SaveInteger(AC, StringHash("遍历物品"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历物品"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), 0x6C676468)
    SaveStr(AC, StringHash("物品名字"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), "毁灭之角")
    SaveInteger(AC, StringHash("遍历物品"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历物品"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), 0x6A303762)
    SaveStr(AC, StringHash("物品名字"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), "祸国殃民")
    SaveInteger(AC, StringHash("遍历物品"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历物品"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), 0x72617436)
    SaveStr(AC, StringHash("物品名字"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), "攻击之爪 +6")
    SaveInteger(AC, StringHash("遍历物品"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历物品"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), 0x6763656C)
    SaveStr(AC, StringHash("物品名字"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), "加速手套")
    SaveInteger(AC, StringHash("遍历物品"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历物品"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), 0x4A503238)
    SaveStr(AC, StringHash("物品名字"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), "|cffff6800万雷锁魂(雷)(R)|r")
    SaveInteger(AC, StringHash("遍历物品"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历物品"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), 0x5A303730)
    SaveStr(AC, StringHash("物品名字"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), "战士锦鞋(SSS)")
    SaveInteger(AC, StringHash("遍历物品"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历物品"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), 0x706D6E61)
    SaveStr(AC, StringHash("物品名字"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), "魔法垂饰")
    SaveInteger(AC, StringHash("遍历物品"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历物品"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), 0x62726163)
    SaveStr(AC, StringHash("物品名字"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), "神秘腰带")
    SaveInteger(AC, StringHash("遍历物品"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历物品"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), 0x5A303338)
    SaveStr(AC, StringHash("物品名字"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), "小手枪(A)")
    SaveInteger(AC, StringHash("遍历物品"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历物品"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), 0x5A303931)
    SaveStr(AC, StringHash("物品名字"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), "幽冥战甲(仙器)")
    SaveInteger(AC, StringHash("遍历物品"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历物品"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), 0x5A303830)
    SaveStr(AC, StringHash("物品名字"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), "末日余晖(Z)")
    SaveInteger(AC, StringHash("遍历物品"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历物品"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), 0x6A303963)
    SaveStr(AC, StringHash("物品名字"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), "金钱梭哈")
    SaveInteger(AC, StringHash("遍历物品"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历物品"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), 0x5A303439)
    SaveStr(AC, StringHash("物品名字"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), "AK47(S)")
    SaveInteger(AC, StringHash("遍历物品"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历物品"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), 0x72687468)
    SaveStr(AC, StringHash("物品名字"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), "卡嘉医疗宝石")
    SaveInteger(AC, StringHash("遍历物品"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历物品"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), 0x4C303135)
    SaveStr(AC, StringHash("物品名字"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), "伤害减免+5%")
    SaveInteger(AC, StringHash("遍历物品"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历物品"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), 0x70727674)
    SaveStr(AC, StringHash("物品名字"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), "生命护身符")
    SaveInteger(AC, StringHash("遍历物品"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历物品"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), 0x4A503338)
    SaveStr(AC, StringHash("物品名字"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), "|cff00ff00炎神灭劫剑(火)(SSR)|r")
    SaveInteger(AC, StringHash("遍历物品"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历物品"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), 0x4A503036)
    SaveStr(AC, StringHash("物品名字"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), "|cffffff00圣光洗礼(光)(R)|r")
    SaveInteger(AC, StringHash("遍历物品"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历物品"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), 0x72646533)
    SaveStr(AC, StringHash("物品名字"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), "守护指环 +4")
    SaveInteger(AC, StringHash("遍历物品"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历物品"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), 0x5A303236)
    SaveStr(AC, StringHash("物品名字"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), "死灵护臂(B)")
    SaveInteger(AC, StringHash("遍历物品"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历物品"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), 0x72616731)
    SaveStr(AC, StringHash("物品名字"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), "敏捷便鞋  +3")
    SaveInteger(AC, StringHash("遍历物品"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历物品"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), 0x63727973)
    SaveStr(AC, StringHash("物品名字"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), "水晶球")
    SaveInteger(AC, StringHash("遍历物品"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历物品"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), 0x424D3138)
    SaveStr(AC, StringHash("物品名字"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), "吸血能力[消耗杀敌数-300]")
    SaveInteger(AC, StringHash("遍历物品"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历物品"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), 0x57483134)
    SaveStr(AC, StringHash("物品名字"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), "驱鬼诛魔[SSR]")
    SaveInteger(AC, StringHash("遍历物品"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历物品"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), 0x5A303234)
    SaveStr(AC, StringHash("物品名字"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), "死灵战靴(B)")
    SaveInteger(AC, StringHash("遍历物品"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历物品"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), 0x6A303262)
    SaveStr(AC, StringHash("物品名字"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), "海中高管")
    SaveInteger(AC, StringHash("遍历物品"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历物品"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), 0x5A303734)
    SaveStr(AC, StringHash("物品名字"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), "万金来潮(SSS)")
    SaveInteger(AC, StringHash("遍历物品"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历物品"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), 0x5A303739)
    SaveStr(AC, StringHash("物品名字"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), "耀世头盔(Z)")
    SaveInteger(AC, StringHash("遍历物品"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历物品"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), 0x5A303936)
    SaveStr(AC, StringHash("物品名字"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), "幽冥战戒(仙器)")
    SaveInteger(AC, StringHash("遍历物品"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历物品"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), 0x6A303162)
    SaveStr(AC, StringHash("物品名字"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), "地府上班族")
    SaveInteger(AC, StringHash("遍历物品"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历物品"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), 0x6F646566)
    SaveStr(AC, StringHash("物品名字"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), "黑暗之球")
    SaveInteger(AC, StringHash("遍历物品"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历物品"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), 0x636C666D)
    SaveStr(AC, StringHash("物品名字"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), "火焰风衣")
    SaveInteger(AC, StringHash("遍历物品"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历物品"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), 0x6A313262)
    SaveStr(AC, StringHash("物品名字"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), "雷电交加")
    SaveInteger(AC, StringHash("遍历物品"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历物品"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), 0x5A303932)
    SaveStr(AC, StringHash("物品名字"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), "幽冥战盔(仙器)")
    SaveInteger(AC, StringHash("遍历物品"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历物品"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), 0x5A303838)
    SaveStr(AC, StringHash("物品名字"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), "法力护腰(仙器)")
    SaveInteger(AC, StringHash("遍历物品"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历物品"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), 0x5A303837)
    SaveStr(AC, StringHash("物品名字"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), "法外身(Z)")
    SaveInteger(AC, StringHash("遍历物品"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历物品"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), 0x5A303839)
    SaveStr(AC, StringHash("物品名字"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), "幽冥战靴(仙器)")
    SaveInteger(AC, StringHash("遍历物品"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历物品"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), 0x5A313134)
    SaveStr(AC, StringHash("物品名字"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), "御魔金刚剑(魔器)")
    SaveInteger(AC, StringHash("遍历物品"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历物品"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), 0x5A313135)
    SaveStr(AC, StringHash("物品名字"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), "诸佛殒命(魔器)")
    SaveInteger(AC, StringHash("遍历物品"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历物品"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), 0x5A313233)
    SaveStr(AC, StringHash("物品名字"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), "千军破灭(洪荒)")
    SaveInteger(AC, StringHash("遍历物品"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历物品"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), 0x5A313239)
    SaveStr(AC, StringHash("物品名字"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), "天怒之威(洪荒)")
    SaveInteger(AC, StringHash("遍历物品"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历物品"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), 0x4A503033)
    SaveStr(AC, StringHash("物品名字"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), "|cff00ff00逐梦名刀(魔)(R)|r")
    SaveInteger(AC, StringHash("遍历物品"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历物品"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), 0x5A313331)
    SaveStr(AC, StringHash("物品名字"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), "逆天改命(洪荒)")
    SaveInteger(AC, StringHash("遍历物品"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历物品"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), 0x4C303035)
    SaveStr(AC, StringHash("物品名字"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), "兑换杀敌数500个")
    SaveInteger(AC, StringHash("遍历物品"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历物品"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), 0x5A303632)
    SaveStr(AC, StringHash("物品名字"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), "烈焰磨刀(SS)")
    SaveInteger(AC, StringHash("遍历物品"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历物品"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), 0x57483033)
    SaveStr(AC, StringHash("物品名字"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), "魔血穿刺[SR]")
    SaveInteger(AC, StringHash("遍历物品"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历物品"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), 0x6A313162)
    SaveStr(AC, StringHash("物品名字"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), "主仆同心")
    SaveInteger(AC, StringHash("遍历物品"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历物品"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), 0x5A303235)
    SaveStr(AC, StringHash("物品名字"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), "末日头盔(B)")
    SaveInteger(AC, StringHash("遍历物品"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历物品"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), 0x57483133)
    SaveStr(AC, StringHash("物品名字"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), "凛冬霜降[SSR]")
    SaveInteger(AC, StringHash("遍历物品"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历物品"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), 0x57486634)
    SaveStr(AC, StringHash("物品名字"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), "混元生命[R]")
    SaveInteger(AC, StringHash("遍历物品"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历物品"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), 0x4A503336)
    SaveStr(AC, StringHash("物品名字"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), "|cffffff00大日如来(光)(SR)|r")
    SaveInteger(AC, StringHash("遍历物品"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历物品"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), 0x5A303738)
    SaveStr(AC, StringHash("物品名字"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), "耀世战甲(Z)")
    SaveInteger(AC, StringHash("遍历物品"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历物品"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), 0x4A503232)
    SaveStr(AC, StringHash("物品名字"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), "|cffffff00雷元素魔怪(雷)(成长)|r")
    SaveInteger(AC, StringHash("遍历物品"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历物品"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), 0x5A303532)
    SaveStr(AC, StringHash("物品名字"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), "无双剑(S)")
    SaveInteger(AC, StringHash("遍历物品"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历物品"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), 0x6A303462)
    SaveStr(AC, StringHash("物品名字"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), "位极人臣")
    SaveInteger(AC, StringHash("遍历物品"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历物品"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), 0x4A503034)
    SaveStr(AC, StringHash("物品名字"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), "|cffff6800雷霆碎魂(雷)(R)|r")
    SaveInteger(AC, StringHash("遍历物品"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历物品"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), 0x5A303534)
    SaveStr(AC, StringHash("物品名字"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), "元素之盘(SS)")
    SaveInteger(AC, StringHash("遍历物品"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历物品"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), 0x6A313862)
    SaveStr(AC, StringHash("物品名字"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), "洪荒三圣")
    SaveInteger(AC, StringHash("遍历物品"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历物品"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), 0x5A303930)
    SaveStr(AC, StringHash("物品名字"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), "诛仙剑(仙器)")
    SaveInteger(AC, StringHash("遍历物品"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历物品"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), 0x5A303332)
    SaveStr(AC, StringHash("物品名字"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), "无畏之靴(A)")
    SaveInteger(AC, StringHash("遍历物品"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历物品"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), 0x57483137)
    SaveStr(AC, StringHash("物品名字"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), "百变猴毛[uR]")
    SaveInteger(AC, StringHash("遍历物品"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历物品"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), 0x5A303831)
    SaveStr(AC, StringHash("物品名字"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), "耀世臂铠(Z)")
    SaveInteger(AC, StringHash("遍历物品"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历物品"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), 0x5A303934)
    SaveStr(AC, StringHash("物品名字"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), "破坏之王(仙器)")
    SaveInteger(AC, StringHash("遍历物品"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历物品"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), 0x5A303530)
    SaveStr(AC, StringHash("物品名字"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), "2倍瞄准镜(S)")
    SaveInteger(AC, StringHash("遍历物品"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历物品"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), 0x4A503131)
    SaveStr(AC, StringHash("物品名字"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), "|cffffff00暗影魔灵(暗)(SR)|r")
    SaveInteger(AC, StringHash("遍历物品"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历物品"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), 0x424D3134)
    SaveStr(AC, StringHash("物品名字"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), "经验效率[消耗杀敌数-300]")
    SaveInteger(AC, StringHash("遍历物品"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历物品"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), 0x4A503335)
    SaveStr(AC, StringHash("物品名字"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), "|cffffff00暗影魔刀(暗)(SR)|r")
    SaveInteger(AC, StringHash("遍历物品"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历物品"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), 0x5A303834)
    SaveStr(AC, StringHash("物品名字"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), "南明离火(Z)")
    SaveInteger(AC, StringHash("遍历物品"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历物品"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), 0x4A443031)
    SaveStr(AC, StringHash("物品名字"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), "暂停进攻")
    SaveInteger(AC, StringHash("遍历物品"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历物品"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), 0x4A503236)
    SaveStr(AC, StringHash("物品名字"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), "|cff00ff00火焰岚山(火)(R)|r")
    SaveInteger(AC, StringHash("遍历物品"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历物品"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), 0x57483132)
    SaveStr(AC, StringHash("物品名字"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), "异火天赐[SSR]")
    SaveInteger(AC, StringHash("遍历物品"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历物品"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), 0x5A303036)
    SaveStr(AC, StringHash("物品名字"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), "兽王头套(D)")
    SaveInteger(AC, StringHash("遍历物品"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历物品"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), 0x5A303135)
    SaveStr(AC, StringHash("物品名字"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), "丈八蛇矛(C)")
    SaveInteger(AC, StringHash("遍历物品"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历物品"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), 0x5A303437)
    SaveStr(AC, StringHash("物品名字"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), "破灭头盔(S)")
    SaveInteger(AC, StringHash("遍历物品"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历物品"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), 0x5A303736)
    SaveStr(AC, StringHash("物品名字"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), "陨星破坏(Z)")
    SaveInteger(AC, StringHash("遍历物品"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历物品"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), 0x5A303935)
    SaveStr(AC, StringHash("物品名字"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), "幽冥臂铠(仙器)")
    SaveInteger(AC, StringHash("遍历物品"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历物品"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), 0x5A303933)
    SaveStr(AC, StringHash("物品名字"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), "幽冥项链(仙器)")
    SaveInteger(AC, StringHash("遍历物品"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历物品"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), 0x5A313035)
    SaveStr(AC, StringHash("物品名字"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), "灭魔铠(魔器)")
    SaveInteger(AC, StringHash("遍历物品"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历物品"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), 0x6A313062)
    SaveStr(AC, StringHash("物品名字"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), "天将历劫")
    SaveInteger(AC, StringHash("遍历物品"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历物品"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), 0x4A443033)
    SaveStr(AC, StringHash("物品名字"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), "提前挑战最终BOSS")
    SaveInteger(AC, StringHash("遍历物品"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历物品"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), 0x5A303433)
    SaveStr(AC, StringHash("物品名字"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), "霸王护腰(S)")
    SaveInteger(AC, StringHash("遍历物品"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历物品"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), 0x424D3031)
    SaveStr(AC, StringHash("物品名字"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), "打通督脉[消耗杀敌数-200]")
    SaveInteger(AC, StringHash("遍历物品"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历物品"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), 0x6A303562)
    SaveStr(AC, StringHash("物品名字"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), "惊世大妖")
    SaveInteger(AC, StringHash("遍历物品"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历物品"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), 0x5A303333)
    SaveStr(AC, StringHash("物品名字"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), "流浪挂坠(A)")
    SaveInteger(AC, StringHash("遍历物品"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历物品"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), 0x5A313234)
    SaveStr(AC, StringHash("物品名字"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), "王者之征(洪荒)")
    SaveInteger(AC, StringHash("遍历物品"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历物品"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), 0x5A303732)
    SaveStr(AC, StringHash("物品名字"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), "守卫者之铠(SSS)")
    SaveInteger(AC, StringHash("遍历物品"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历物品"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), 0x5A303131)
    SaveStr(AC, StringHash("物品名字"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), "蓝宝石戒指(C)")
    SaveInteger(AC, StringHash("遍历物品"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历物品"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), 0x6A303662)
    SaveStr(AC, StringHash("物品名字"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), "车迟三兄弟")
    SaveInteger(AC, StringHash("遍历物品"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历物品"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), 0x4A503038)
    SaveStr(AC, StringHash("物品名字"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), "|cff00ff00陨落彗星(火)(SR)|r")
    SaveInteger(AC, StringHash("遍历物品"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历物品"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), 0x4C303139)
    SaveStr(AC, StringHash("物品名字"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), "兑换 纵横杀气")
    SaveInteger(AC, StringHash("遍历物品"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历物品"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), 0x6A313962)
    SaveStr(AC, StringHash("物品名字"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), "天道化身")
    SaveInteger(AC, StringHash("遍历物品"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历物品"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), 0x6A303362)
    SaveStr(AC, StringHash("物品名字"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), "地府公务员")
    SaveInteger(AC, StringHash("遍历物品"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历物品"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), 0x5A303232)
    SaveStr(AC, StringHash("物品名字"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), "亡者项链(B)")
    SaveInteger(AC, StringHash("遍历物品"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历物品"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), 0x5A313238)
    SaveStr(AC, StringHash("物品名字"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), "灵魂霸剑(洪荒)")
    SaveInteger(AC, StringHash("遍历物品"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历物品"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), 0x5A303438)
    SaveStr(AC, StringHash("物品名字"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), "裁决之刃(S)")
    SaveInteger(AC, StringHash("遍历物品"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历物品"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), 0x424D3132)
    SaveStr(AC, StringHash("物品名字"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), "杀敌效率[消耗杀敌数-300]")
    SaveInteger(AC, StringHash("遍历物品"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历物品"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), 0x4A503231)
    SaveStr(AC, StringHash("物品名字"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), "|cffffff00魔元素魔怪(魔)(成长)|r")
    SaveInteger(AC, StringHash("遍历物品"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历物品"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), 0x5A303636)
    SaveStr(AC, StringHash("物品名字"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), "黑铁头盔(SSS)")
    SaveInteger(AC, StringHash("遍历物品"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历物品"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), 0x5A313136)
    SaveStr(AC, StringHash("物品名字"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), "陨星碎魂(魔器)")
    SaveInteger(AC, StringHash("遍历物品"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历物品"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), 0x5A313030)
    SaveStr(AC, StringHash("物品名字"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), "幻化龙源(仙器)")
    SaveInteger(AC, StringHash("遍历物品"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历物品"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), 0x5A303238)
    SaveStr(AC, StringHash("物品名字"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), "比基尼(B)")
    SaveInteger(AC, StringHash("遍历物品"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历物品"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), 0x62656C76)
    SaveStr(AC, StringHash("物品名字"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), "奎尔萨拉斯之靴 +6")
    SaveInteger(AC, StringHash("遍历物品"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历物品"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), 0x6A313362)
    SaveStr(AC, StringHash("物品名字"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), "狮驼岭二魔")
    SaveInteger(AC, StringHash("遍历物品"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历物品"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), 0x57486633)
    SaveStr(AC, StringHash("物品名字"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), "混元智力[R]")
    SaveInteger(AC, StringHash("遍历物品"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历物品"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), 0x5A303634)
    SaveStr(AC, StringHash("物品名字"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), "Groza(SS)")
    SaveInteger(AC, StringHash("遍历物品"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历物品"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), 0x4A503138)
    SaveStr(AC, StringHash("物品名字"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), "|cffffff00金玉蟾蜍(光)(SSR)|r")
    SaveInteger(AC, StringHash("遍历物品"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历物品"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), 0x424D3135)
    SaveStr(AC, StringHash("物品名字"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), "割裂能力[消耗杀敌数-300]")
    SaveInteger(AC, StringHash("遍历物品"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历物品"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), 0x4C303230)
    SaveStr(AC, StringHash("物品名字"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), "兑换 英雄气场")
    SaveInteger(AC, StringHash("遍历物品"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历物品"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), 0x5A313137)
    SaveStr(AC, StringHash("物品名字"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), "血怒意志(魔器)")
    SaveInteger(AC, StringHash("遍历物品"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历物品"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), 0x5A303836)
    SaveStr(AC, StringHash("物品名字"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), "烈焰战盾(Z)")
    SaveInteger(AC, StringHash("遍历物品"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历物品"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), 0x6A303962)
    SaveStr(AC, StringHash("物品名字"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), "三清道童")
    SaveInteger(AC, StringHash("遍历物品"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历物品"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), 0x5A313038)
    SaveStr(AC, StringHash("物品名字"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), "流浪项链(魔器)")
    SaveInteger(AC, StringHash("遍历物品"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历物品"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), 0x4C303134)
    SaveStr(AC, StringHash("物品名字"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), "冷却缩减+3%")
    SaveInteger(AC, StringHash("遍历物品"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历物品"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), 0x6A313562)
    SaveStr(AC, StringHash("物品名字"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), "佛门二圣")
    SaveInteger(AC, StringHash("遍历物品"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历物品"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), 0x424D3039)
    SaveStr(AC, StringHash("物品名字"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), "斩龙台-战魏征[消耗杀敌数-800]")
    SaveInteger(AC, StringHash("遍历物品"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历物品"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), 0x636C7364)
    SaveStr(AC, StringHash("物品名字"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), "影子风衣")
    SaveInteger(AC, StringHash("遍历物品"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历物品"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), 0x57486632)
    SaveStr(AC, StringHash("物品名字"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), "混元敏捷[R]")
    SaveInteger(AC, StringHash("遍历物品"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历物品"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), 0x5A303134)
    SaveStr(AC, StringHash("物品名字"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), "将军头饰(C)")
    SaveInteger(AC, StringHash("遍历物品"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历物品"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), 0x4A443032)
    SaveStr(AC, StringHash("物品名字"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), "强化基地")
    SaveInteger(AC, StringHash("遍历物品"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历物品"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), 0x5A313332)
    SaveStr(AC, StringHash("物品名字"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), "江山画卷(洪荒)")
    SaveInteger(AC, StringHash("遍历物品"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历物品"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), 0x5A303231)
    SaveStr(AC, StringHash("物品名字"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), "亡者图腾(B)")
    SaveInteger(AC, StringHash("遍历物品"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历物品"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), 0x5A303339)
    SaveStr(AC, StringHash("物品名字"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), "瞄准镜(A)")
    SaveInteger(AC, StringHash("遍历物品"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历物品"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), 0x5A313036)
    SaveStr(AC, StringHash("物品名字"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), "招魂幡(魔器)")
    SaveInteger(AC, StringHash("遍历物品"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历物品"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), 0x5A303037)
    SaveStr(AC, StringHash("物品名字"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), "未来护臂(D)")
    SaveInteger(AC, StringHash("遍历物品"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历物品"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), 0x4C303130)
    SaveStr(AC, StringHash("物品名字"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), "金币效率+10%")
    SaveInteger(AC, StringHash("遍历物品"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历物品"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), 0x4A503432)
    SaveStr(AC, StringHash("物品名字"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), "|cffffff00净世大悲咒(光)(SSR)|r")
    SaveInteger(AC, StringHash("遍历物品"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历物品"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), 0x4A503037)
    SaveStr(AC, StringHash("物品名字"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), "|cff00ff00玄天魔冰(冰)(SR)|r")
    SaveInteger(AC, StringHash("遍历物品"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历物品"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), 0x4A443034)
    SaveStr(AC, StringHash("物品名字"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), "无敌30秒")
    SaveInteger(AC, StringHash("遍历物品"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历物品"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), 0x4A503134)
    SaveStr(AC, StringHash("物品名字"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), "|cff00ff00九转火云珠(火)(SSR)|r")
    SaveInteger(AC, StringHash("遍历物品"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历物品"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), 0x72617463)
    SaveStr(AC, StringHash("物品名字"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), "攻击之爪 +12")
    SaveInteger(AC, StringHash("遍历物品"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历物品"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), 0x4A503333)
    SaveStr(AC, StringHash("物品名字"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), "|cff00ff00索命魔刀(魔)(SR)|r")
    SaveInteger(AC, StringHash("遍历物品"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历物品"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), 0x5A303938)
    SaveStr(AC, StringHash("物品名字"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), "斩仙魔刃(仙器)")
    SaveInteger(AC, StringHash("遍历物品"), StringHash("遍历上限"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")) + 1)
    SaveInteger(AC, StringHash("遍历物品"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), 0x5A303832)
    SaveStr(AC, StringHash("物品名字"), LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")), "魔族遗章(Z)")
end

function XYRMax(a, b)
    if (a < b) then
        do
            return b
        end
    else
        do
            return a
        end
    end
end

function ModName(name)
    local i = 1
    if LoadInteger(AC, StringHash(name), StringHash("模型ID")) > 0 then
        do
            return LoadInteger(AC, StringHash(name), StringHash("模型ID"))
        end
    end
    while true do
        if i > LoadInteger(AC, StringHash("遍历单位"), StringHash("遍历上限")) then
            break
        end
        if LoadStr(AC, StringHash("遍历名字"), i) == name then
            SaveInteger(AC, StringHash(name), StringHash("模型ID"), LoadInteger(AC, StringHash("遍历单位"), i))
            do
                return LoadInteger(AC, StringHash("遍历单位"), i)
            end
        end
        i = i + 1
    end
    do
        return 0
    end
end

function SikllName(name)
    local i = 1
    if LoadInteger(AC, StringHash("技能" .. name), StringHash("模型ID")) > 0 then
        do
            return LoadInteger(AC, StringHash("技能" .. name), StringHash("模型ID"))
        end
    end
    while true do
        if i > LoadInteger(AC, StringHash("遍历技能"), StringHash("遍历上限")) then
            break
        end
        if LoadStr(AC, StringHash("技能名字"), i) == name then
            SaveInteger(AC, StringHash("技能" .. name), StringHash("模型ID"), LoadInteger(AC, StringHash("遍历技能"), i))
            do
                return LoadInteger(AC, StringHash("遍历技能"), i)
            end
        end
        i = i + 1
    end
    do
        return 0
    end
end

function ItemName(name)
    local i = 1
    if LoadInteger(AC, StringHash("物品" .. name), StringHash("模型ID")) > 0 then
        do
            return LoadInteger(AC, StringHash("物品" .. name), StringHash("模型ID"))
        end
    end
    while true do
        if i > LoadInteger(AC, StringHash("遍历物品"), StringHash("遍历上限")) then
            break
        end
        if LoadStr(AC, StringHash("物品名字"), i) == name then
            SaveInteger(AC, StringHash("物品" .. name), StringHash("模型ID"), LoadInteger(AC, StringHash("遍历物品"), i))
            do
                return LoadInteger(AC, StringHash("遍历物品"), i)
            end
        end
        i = i + 1
    end
    do
        return 0
    end
end

function UnitAddAbilityLevel(dw, abilityId, level, t)
    UnitAddAbility(dw, abilityId)
    SetUnitAbilityLevel(dw, abilityId, level)
    if t then
        UnitMakeAbilityPermanent(dw, true, abilityId)
    end
end

function UnitAddBuffSystem(dw, dw2, Duration, s, BuffType)
    local mj = CreateUnit(GetOwningPlayer(dw), ModNameSystem__BuffMaJia[1], GetUnitX(dw2), GetUnitY(dw2), bj_UNIT_FACING)
    UnitApplyTimedLife(mj, 0x42487765, 3.00)
    UnitAddAbility(mj, ModNameSystem__BuffSkillId[BuffType])
    if BuffType == 1 then
        IssueTargetOrder(mj, "faeriefire", dw2)
        SetUnitState(dw2, ConvertUnitState(0x20), (GetUnitState(dw2, ConvertUnitState(0x20)) - s))
        if IsUnitInGroup(dw2, ModNameSystem__buffdwz) == false then
            GroupAddUnit(ModNameSystem__buffdwz, dw2)
        end
        SaveReal(AC, GetHandleId(dw2), StringHash("减防持续时间"), LoadReal(AC, GetHandleId(dw2), StringHash("减防持续时间")) + Duration)
        SaveReal(AC, GetHandleId(dw2), StringHash("减防数值"), LoadReal(AC, GetHandleId(dw2), StringHash("减防数值")) + s)
    elseif BuffType == 2 then
        SetUnitAbilityLevel(mj, ModNameSystem__BuffSkillId[BuffType], R2I(XYRMax(1, s / 25)))
        IssueTargetOrder(mj, "slow", dw2)
    elseif BuffType == 3 then
        SetUnitAbilityLevel(mj, ModNameSystem__BuffSkillId[BuffType], R2I(XYRMax(1, s)))
        IssueTargetOrder(mj, "entanglingroots", dw2)
    elseif BuffType == 4 then
        SetUnitAbilityLevel(mj, ModNameSystem__BuffSkillId[BuffType], R2I(XYRMax(1, s * 0.5)))
        IssueTargetOrder(mj, "firebolt", dw2)
    end
    mj = nil
end

function XYIsUnitDead(whichUnit)
    do
        return GetUnitState(whichUnit, UNIT_STATE_LIFE) <= 0.3
    end
end

function BuffGroupD()
    if LoadReal(AC, GetHandleId(GetEnumUnit()), StringHash("减防持续时间")) > 0.00 then
        SaveReal(AC, GetHandleId(GetEnumUnit()), StringHash("减防持续时间"), LoadReal(AC, GetHandleId(GetEnumUnit()), StringHash("减防持续时间")) - 0.02)
        if LoadReal(AC, GetHandleId(GetEnumUnit()), StringHash("减防持续时间")) <= 0.00 then
            SetUnitState(GetEnumUnit(), ConvertUnitState(0x20), GetUnitState(GetEnumUnit(), ConvertUnitState(0x20)) + LoadReal(AC, GetHandleId(GetEnumUnit()), StringHash("减防数值")))
            SaveReal(AC, GetHandleId(GetEnumUnit()), StringHash("减防持续时间"), 0.00)
            SaveReal(AC, GetHandleId(GetEnumUnit()), StringHash("减防数值"), 0.00)
            UnitRemoveAbility(GetEnumUnit(), 0x62666561)
            GroupRemoveUnit(ModNameSystem__buffdwz, GetEnumUnit())
        end
    end
end

function BuffTimerSystem()
    if CountUnitsInGroup(ModNameSystem__buffdwz) > 0 then
        ForGroupBJ(ModNameSystem__buffdwz, BuffGroupD)
    end
end

function ModNameSystem_init()
    local t = CreateTimer()
    ModNameSystem__BuffSkillId[1] = SikllName(ModNameSystem__SkllJianFang)
    ModNameSystem__BuffSkillId[2] = SikllName(ModNameSystem__SkllJianSu)
    ModNameSystem__BuffSkillId[3] = SikllName(ModNameSystem__SkllJingGu)
    ModNameSystem__BuffSkillId[4] = SikllName(ModNameSystem__SkllJiYun)
    ModNameSystem__BuffMaJia[1] = ModName(ModNameSystem__BuffMaJiaName)
    TimerStart(t, 0.02, true, BuffTimerSystem)
end

function NFTSSetUnitLoc(u, b, m, x, y, j, s)
    if b then
        SetUnitX(u, GetUnitX(m) + s * Cos(j * bj_DEGTORAD))
        SetUnitY(u, GetUnitY(m) + s * Sin(j * bj_DEGTORAD))
    else
        SetUnitX(u, x + s * Cos(j * bj_DEGTORAD))
        SetUnitY(u, y + s * Sin(j * bj_DEGTORAD))
    end
end

function qhjyjs1(z1)
    local zheng = __jarray(0)
    zheng[1] = 500
    zheng[2] = 100
    zheng[3] = 500
    zheng[11] = (((z1 + 1) * zheng[2]) + zheng[3])
    zheng[12] = ((((((z1 + 4) * zheng[2]) + (zheng[3] * 2)) * (z1 - 1)) // 2) + zheng[1])
    do
        return zheng[12]
    end
end

function qhjyjs(d)
    local shiz = __jarray(0.0)
    shiz[1] = I2R(GetHeroXP(d))
    shiz[2] = I2R(qhjyjs1(GetHeroLevel(d)))
    shiz[3] = I2R(qhjyjs1((GetHeroLevel(d) - 1)))
    if ((shiz[3] <= 0.00)) then
        shiz[3] = 0.00
    else
    end
    shiz[4] = (((shiz[1] - shiz[3]) / (shiz[2] - shiz[3] + 0.0001)) * 100.00)
    do
        return shiz[4]
    end
end

function SJWEBase__InitRect()
    DestroyTimer(GetExpiredTimer())
    SJWEMinX = GetRectMinX(bj_mapInitialPlayableArea)
    SJWEMaxX = GetRectMaxX(bj_mapInitialPlayableArea)
    SJWEMinY = GetRectMinY(bj_mapInitialPlayableArea)
    SJWEMaxY = GetRectMaxY(bj_mapInitialPlayableArea)
end

function CharAt(str, l__SJWEBase__s)
    local i = 0
    local len = StringLength(l__SJWEBase__s)
    while true do
        if i > StringLength(str) - len then
            break
        end
        if SubString(str, i, i + len) == l__SJWEBase__s then
            do
                return i
            end
        end
        i = i + 1
    end
    do
        return -1
    end
end

function Hex_Str2I(l__SJWEBase__s)
    local i = 0
    local S = ""
    local I = 0
    local d = StringLength(l__SJWEBase__s)
    while true do
        I = I + 1
        S = SubString(l__SJWEBase__s, I - 1, I)
        if S == "A" then
            i = i + R2I(10 * Pow(16, d - I))
        elseif S == "B" then
            i = i + R2I(11 * Pow(16, d - I))
        elseif S == "C" then
            i = i + R2I(12 * Pow(16, d - I))
        elseif S == "D" then
            i = i + R2I(13 * Pow(16, d - I))
        elseif S == "E" then
            i = i + R2I(14 * Pow(16, d - I))
        elseif S == "F" then
            i = i + R2I(15 * Pow(16, d - I))
        else
            i = i + R2I(S2I(S) * Pow(16, d - I))
        end
        if I == d then
            break
        end
    end
    do
        return i
    end
end

function I2Hex_Str(i)
    local ti = i
    local I = 0
    local l__SJWEBase__s = ""
    while true do
        I = i - (i // 16) * 16
        if I < 10 then
            l__SJWEBase__s = I2S(I) .. l__SJWEBase__s
        elseif I == 10 then
            l__SJWEBase__s = "A" .. l__SJWEBase__s
        elseif I == 11 then
            l__SJWEBase__s = "B" .. l__SJWEBase__s
        elseif I == 12 then
            l__SJWEBase__s = "C" .. l__SJWEBase__s
        elseif I == 13 then
            l__SJWEBase__s = "D" .. l__SJWEBase__s
        elseif I == 14 then
            l__SJWEBase__s = "E" .. l__SJWEBase__s
        elseif I == 15 then
            l__SJWEBase__s = "F" .. l__SJWEBase__s
        end
        i = i // 16
        if i == 0 then
            break
        end
    end
    if ti == 0 then
        l__SJWEBase__s = "00"
    elseif (ti <= 15) and (ti > 0) then
        l__SJWEBase__s = "0" .. l__SJWEBase__s
    end
    do
        return l__SJWEBase__s
    end
end

function SetStringColor(a, r, g, b, l__SJWEBase__s)
    l__SJWEBase__s = "|c" .. I2Hex_Str(a) .. I2Hex_Str(r) .. I2Hex_Str(g) .. I2Hex_Str(b) .. l__SJWEBase__s .. "|r"
    do
        return l__SJWEBase__s
    end
end

function InitIndex(whichID)
    SaveInteger(SJWEBase__F, (whichID), 0, 1)
end

function CreateIndex(whichID)
    local i = (LoadInteger(SJWEBase__F, (whichID), 0))
    if (LoadInteger(SJWEBase__P, (whichID), ((LoadInteger(SJWEBase__F, (whichID), 0))))) == 0 then
        SaveInteger(SJWEBase__F, (whichID), 0, ((LoadInteger(SJWEBase__F, (whichID), 0)) + 1))
        SaveInteger(SJWEBase__F, (whichID), 1, LoadInteger(SJWEBase__F, (whichID), 0))
    else
        SaveInteger(SJWEBase__F, (whichID), 0, (-(LoadInteger(SJWEBase__P, (whichID), ((LoadInteger(SJWEBase__F, (whichID), 0)))))))
    end
    SaveBoolean(SJWEBase__P, (whichID), (i), (true))
    do
        return i
    end
end

function GetMaxIndex(whichID)
    do
        return LoadInteger(SJWEBase__F, (whichID), 1) - 1
    end
end

function DestroyIndex(whichID, i)
    if (LoadBoolean(SJWEBase__P, (whichID), (i))) == true then
        SaveInteger(SJWEBase__P, (whichID), (i), (-(LoadInteger(SJWEBase__F, (whichID), 0))))
        SaveInteger(SJWEBase__F, (whichID), 0, (i))
    end
end

function DestroyIndexAll(whichID)
    FlushChildHashtable(SJWEBase__F, whichID)
    FlushChildHashtable(SJWEBase__P, whichID)
end

function quick_sort(left, right)
    local i = left
    local j = right
    local x = SJWEBase__s[(left + right) // 2]
    local t = 0
    while true do
        while true do
            if x <= SJWEBase__s[i] then
                break
            end
            i = i + 1
        end
        while true do
            if x >= SJWEBase__s[j] then
                break
            end
            j = j - 1
        end
        if i <= j then
            t = SJWEBase__s[i]
            SJWEBase__s[i] = SJWEBase__s[j]
            SJWEBase__s[j] = t
            i = i + 1
            j = j - 1
        end
        if i > j then
            break
        end
    end
    if left < j then
        quick_sort(left, j)
    end
    if i < right then
        quick_sort(i, right)
    end
end

function SaveData(index, hartred)
    SJWEBase__s[index] = hartred
end

function LoadData(index)
    do
        return SJWEBase__s[index]
    end
end

function SpaceVectorRAD(x, y, z, dist, xRadians, hRadians)
    SJWEBase__spaceVector_z = dist * Cos(hRadians)
    SJWEBase__spaceVector_x = x + SJWEBase__spaceVector_z * Cos(xRadians)
    SJWEBase__spaceVector_y = y + SJWEBase__spaceVector_z * Sin(xRadians)
    SJWEBase__spaceVector_z = z + dist * Sin(hRadians)
end

function SpaceVectorDEG(x, y, z, dist, xDEG, hDEG)
    xDEG = xDEG * bj_DEGTORAD
    hDEG = hDEG * bj_DEGTORAD
    SJWEBase__spaceVector_z = dist * Cos(hDEG)
    SJWEBase__spaceVector_x = x + SJWEBase__spaceVector_z * Cos(xDEG)
    SJWEBase__spaceVector_y = y + SJWEBase__spaceVector_z * Sin(xDEG)
    SJWEBase__spaceVector_z = z + dist * Sin(hDEG)
end

function GetSpaceVector_x()
    do
        return SJWEBase__spaceVector_x
    end
end

function GetSpaceVector_y()
    do
        return SJWEBase__spaceVector_y
    end
end

function GetSpaceVector_z()
    do
        return SJWEBase__spaceVector_z
    end
end

function Probability(a)
    local b = false
    if (a <= 0.00) then
        b = false
    elseif ((a > 0.00) and (a < 100.00)) then
        if (GetRandomReal(0.00, 100.00) <= a) then
            b = true
        else
            b = false
        end
    elseif (a >= 100.0) then
        b = true
    end
    do
        return b
    end
end

function ReverseBoolean(b)
    do
        return not b
    end
end

function ItemSuperimpositionConditions()
    do
        return ((GetItemType(GetManipulatedItem()) == ITEM_TYPE_CHARGED))
    end
end

function ItemSuperimpositionActions()
    local i = nil
    local U = GetTriggerUnit()
    local it = GetManipulatedItem()
    i = 0
    while true do
        if i > 5 then
            break
        end
        if ((it ~= UnitItemInSlot(U, i)) and (GetItemTypeId(it) == GetItemTypeId(UnitItemInSlot(U, i)))) then
            SetItemCharges(UnitItemInSlot(U, i), (GetItemCharges(UnitItemInSlot(U, i)) + GetItemCharges(it)))
            RemoveItem(it)
        else
        end
        i = i + 1
    end
    U = nil
    it = nil
end

function ItemSuperimposition()
    local tri = CreateTrigger()
    TriggerRegisterAnyUnitEventBJ(tri, EVENT_PLAYER_UNIT_PICKUP_ITEM)
    TriggerAddCondition(tri, Condition(ItemSuperimpositionConditions))
    TriggerAddAction(tri, ItemSuperimpositionActions)
    tri = nil
end

function CreateMultiboardForPlayer(whichplayer, i)
    if i <= 0 then
        i = 0
    elseif i >= 680 then
        i = 680
    end
    if (SJWEBase__lbn[S2I(I2S(GetPlayerId(whichplayer) + 1) .. I2S(i))] == nil) then
        SJWEBase__lbn[S2I(I2S(GetPlayerId(whichplayer) + 1) .. I2S(i))] = CreateMultiboard()
        bj_lastCreatedMultiboard = SJWEBase__lbn[S2I(I2S(GetPlayerId(whichplayer) + 1) .. I2S(i))]
        do
            return SJWEBase__lbn[S2I(I2S(GetPlayerId(whichplayer) + 1) .. I2S(i))]
        end
    else
        do
            return SJWEBase__lbn[S2I(I2S(GetPlayerId(whichplayer) + 1) .. I2S(i))]
        end
    end
end

function DestroyMultiboardForPlayer(whichplayer, i)
    if i <= 0 then
        i = 0
    elseif i >= 680 then
        i = 680
    end
    DestroyMultiboard(SJWEBase__lbn[S2I(I2S(GetPlayerId(whichplayer) + 1) .. I2S(i))])
    SJWEBase__lbn[S2I(I2S(GetPlayerId(whichplayer) + 1) .. I2S(i))] = nil
end

function GetPlayerMultiboard(whichplayer, i)
    if i <= 0 then
        i = 0
    elseif i >= 680 then
        i = 680
    end
    do
        return SJWEBase__lbn[S2I(I2S(GetPlayerId(whichplayer) + 1) .. I2S(i))]
    end
end

function DisplayMultibosrdToPlayer(p, lb, b)
    if GetLocalPlayer() == p then
        MultiboardDisplay(lb, b)
    end
end

function DisplayMultibosrdFoForce(f, lb, b)
    if IsPlayerInForce(GetLocalPlayer(), f) then
        MultiboardDisplay(lb, b)
    end
end

function Print(timeout, l__SJWEBase__s)
    DisplayTimedTextToPlayer(GetLocalPlayer(), 0, 0, timeout, l__SJWEBase__s)
end

function DisplayDamage(whichunit, l__SJWEBase__s, zOffset, size, r, g, b, transparency)
    local tt = nil
    tt = CreateTextTag()
    SetTextTagText(tt, l__SJWEBase__s, size * (0.023 / 10))
    SetTextTagPos(tt, GetUnitX(whichunit), GetUnitY(whichunit), zOffset)
    SetTextTagColor(tt, r, g, b, PercentTo255(100.0 - transparency))
    SetTextTagVelocityBJ(tt, 100.00, GetRandomReal(80.00, 110.00))
    SetTextTagPermanent(tt, false)
    SetTextTagFadepoint(tt, 1.00)
    SetTextTagLifespan(tt, 2.00)
    tt = nil
end

function GetEnterUnit()
    do
        return LoadUnitHandle(DATA, GetHandleId(GetTriggeringTrigger()), StringHash("EnterUnit"))
    end
end

function TriggerRegisterAnyUnitEnterEvent(t)
    SJWEBase__TListEnd = SJWEBase__TListEnd + 1
    SJWEBase__TNextIndex[SJWEBase__TListEnd - 1] = SJWEBase__TListEnd
    SJWEBase__TLastIndex[SJWEBase__TListEnd] = SJWEBase__TListEnd - 1
    SJWEBase__TTriggerList[SJWEBase__TListEnd] = t
end

function UnitEnterEventTriggerListExecute(EnterUnit)
    local index = 0
    index = SJWEBase__TNextIndex[0]
    while true do
        if (index == 0) then
            break
        end
        if (index > SJWEBase__TListEnd) then
            break
        end
        if (IsTriggerEnabled(SJWEBase__TTriggerList[index])) and (TriggerEvaluate(SJWEBase__TTriggerList[index])) then
            SaveUnitHandle(DATA, GetHandleId(SJWEBase__TTriggerList[index]), StringHash("EnterUnit"), EnterUnit)
            TriggerExecute(SJWEBase__TTriggerList[index])
        end
        index = SJWEBase__TNextIndex[index]
    end
end

function DestroyAnyUnitEnterEvent(t)
    local index = 0
    index = SJWEBase__TNextIndex[0]
    while true do
        if (index == 0) then
            break
        end
        if (SJWEBase__TTriggerList[index] == t) then
            break
        end
        index = SJWEBase__TNextIndex[index]
    end
    FlushChildHashtable(DATA, GetHandleId(t))
    if (index > 0) then
        SJWEBase__TNextIndex[SJWEBase__TLastIndex[index]] = SJWEBase__TNextIndex[index]
        SJWEBase__TLastIndex[SJWEBase__TNextIndex[index]] = SJWEBase__TLastIndex[index]
    end
end

function AnyUnitEnterRegionActionA()
    local g = CreateGroup()
    local pick = nil
    GroupEnumUnitsInRect(g, bj_mapInitialPlayableArea, nil)
    while true do
        pick = FirstOfGroup(g)
        if (pick == nil) then
            break
        end
        GroupRemoveUnit(g, pick)
        UnitEnterEventTriggerListExecute(pick)
    end
    DestroyGroup(g)
    g = nil
    pick = nil
end

function AnyUnitEnterRegionActionB()
    UnitEnterEventTriggerListExecute(GetTriggerUnit())
end

function AnyUnitEnterRegion()
    local rectRegion = CreateRegion()
    local tr1 = CreateTrigger()
    local tr2 = CreateTrigger()
    TriggerRegisterTimerEvent(tr1, 0.0, false)
    TriggerAddAction(tr1, AnyUnitEnterRegionActionA)
    RegionAddRect(rectRegion, bj_mapInitialPlayableArea)
    TriggerRegisterEnterRegion(tr2, rectRegion, nil)
    TriggerAddAction(tr2, AnyUnitEnterRegionActionB)
    tr1 = nil
    tr2 = nil
    rectRegion = nil
end

function InitializeSJWE()
    TimerStart(CreateTimer(), 0, false, SJWEBase__InitRect)
    AnyUnitEnterRegion()
end

function XGGeneralBonusSystem__DisplayAllAbilityId()
    local aid = 0
    aid = 0x58476330
    aid = 0x58476331
    aid = 0x58476332
    aid = 0x58476333
    aid = 0x58476334
    aid = 0x58476335
    aid = 0x58476336
    aid = 0x58476337
    aid = 0x58476338
    aid = 0x58476339
    aid = 0x58476361
    aid = 0x58476362
    aid = 0x58476363
    aid = 0x58476364
    aid = 0x58476365
    aid = 0x58476366
    aid = 0x58476367
    aid = 0x58476368
    aid = 0x58476369
    aid = 0x5847636A
    aid = 0x5847636B
    aid = 0x5847636C
    aid = 0x5847636D
    aid = 0x5847636E
    aid = 0x5847636F
    aid = 0x58476370
    aid = 0x58476371
    aid = 0x58476372
    aid = 0x58476373
    aid = 0x58476374
    aid = 0x58476375
    aid = 0x58476430
    aid = 0x58476431
    aid = 0x58476432
    aid = 0x58476433
    aid = 0x58476434
    aid = 0x58476435
    aid = 0x58476436
    aid = 0x58476437
    aid = 0x58476438
    aid = 0x58476439
    aid = 0x58476461
    aid = 0x58476462
    aid = 0x58476463
    aid = 0x58476464
    aid = 0x58476465
    aid = 0x58476466
    aid = 0x58476467
    aid = 0x58476468
    aid = 0x58476469
    aid = 0x5847646A
    aid = 0x5847646B
    aid = 0x5847646C
    aid = 0x5847646D
    aid = 0x5847646E
    aid = 0x5847646F
    aid = 0x58476470
    aid = 0x58476471
    aid = 0x58476472
    aid = 0x58476473
    aid = 0x58476474
    aid = 0x58476475
    aid = 0x58476530
    aid = 0x58476531
    aid = 0x58476532
    aid = 0x58476533
    aid = 0x58476534
    aid = 0x58476535
    aid = 0x58476536
    aid = 0x58476537
    aid = 0x58476538
    aid = 0x58476539
    aid = 0x58476561
    aid = 0x58476562
    aid = 0x58476630
    aid = 0x58476631
    aid = 0x58476632
    aid = 0x58476633
    aid = 0x58476634
    aid = 0x58476635
    aid = 0x58476636
    aid = 0x58476637
    aid = 0x58476638
    aid = 0x58476639
    aid = 0x58476661
    aid = 0x58476662
    aid = 0x58476663
    aid = 0x58476664
    aid = 0x58476665
    aid = 0x58476666
    aid = 0x58476667
    aid = 0x58476668
    aid = 0x58476669
    aid = 0x5847666A
    aid = 0x5847666B
    aid = 0x5847666C
    aid = 0x5847666D
    aid = 0x5847666E
    aid = 0x5847666F
    aid = 0x58476670
    aid = 0x58476671
    aid = 0x58476672
    aid = 0x58476673
    aid = 0x58476674
    aid = 0x58476675
    aid = 0x58476730
    aid = 0x58476731
    aid = 0x58476732
    aid = 0x58476733
    aid = 0x58476734
    aid = 0x58476735
    aid = 0x58476736
    aid = 0x58476737
    aid = 0x58476738
    aid = 0x58476739
    aid = 0x58476761
    aid = 0x58476762
    aid = 0x58476763
    aid = 0x58476764
    aid = 0x58476765
    aid = 0x58476766
    aid = 0x58476767
    aid = 0x58476768
    aid = 0x58476769
    aid = 0x5847676A
    aid = 0x5847676B
    aid = 0x5847676C
    aid = 0x5847676D
    aid = 0x5847676E
    aid = 0x5847676F
    aid = 0x58476770
    aid = 0x58476771
    aid = 0x58476772
    aid = 0x58476773
    aid = 0x58476774
    aid = 0x58476775
    aid = 0x58476830
    aid = 0x58476831
    aid = 0x58476832
    aid = 0x58476833
    aid = 0x58476834
    aid = 0x58476835
    aid = 0x58476836
    aid = 0x58476837
    aid = 0x58476838
    aid = 0x58476839
    aid = 0x58476861
    aid = 0x58476862
    aid = 0x58476863
    aid = 0x58476864
    aid = 0x58476865
    aid = 0x58476866
    aid = 0x58476867
    aid = 0x58476868
    aid = 0x58476869
    aid = 0x5847686A
    aid = 0x5847686B
    aid = 0x5847686C
    aid = 0x5847686D
    aid = 0x5847686E
    aid = 0x5847686F
    aid = 0x58476870
    aid = 0x58476871
    aid = 0x58476872
    aid = 0x58476873
    aid = 0x58476874
    aid = 0x58476875
    aid = 0x58476930
    aid = 0x58476931
    aid = 0x58476932
    aid = 0x58476933
    aid = 0x58476934
    aid = 0x58476935
    aid = 0x58476936
    aid = 0x58476937
    aid = 0x58476938
    aid = 0x58476939
    aid = 0x58476961
    aid = 0x58476962
    aid = 0x58476963
    aid = 0x58476964
    aid = 0x58476965
    aid = 0x58476966
    aid = 0x58476967
    aid = 0x58476968
    aid = 0x58476969
    aid = 0x5847696A
    aid = 0x5847696B
    aid = 0x5847696C
    aid = 0x5847696D
    aid = 0x5847696E
    aid = 0x5847696F
    aid = 0x58476970
    aid = 0x58476971
    aid = 0x58476972
    aid = 0x58476973
    aid = 0x58476974
    aid = 0x58476975
    aid = 0x58476A30
    aid = 0x58476A31
    aid = 0x58476A32
    aid = 0x58476A33
    aid = 0x58476A34
    aid = 0x58476A35
    aid = 0x58476A36
    aid = 0x58476A37
    aid = 0x58476A38
    aid = 0x58476A39
    aid = 0x58476A61
    aid = 0x58476A62
    aid = 0x58476A63
    aid = 0x58476A64
    aid = 0x58476A65
    aid = 0x58476A66
    aid = 0x58476A67
    aid = 0x58476A68
    aid = 0x58476A69
    aid = 0x58476A6A
    aid = 0x58476A6B
    aid = 0x58476A6C
    aid = 0x58476A6D
    aid = 0x58476A6E
    aid = 0x58476A6F
    aid = 0x58476A70
    aid = 0x58476A71
    aid = 0x58476A72
    aid = 0x58476A73
    aid = 0x58476A74
    aid = 0x58476A75
    aid = 0x58476130
    aid = 0x58476131
    aid = 0x58476132
    aid = 0x58476133
    aid = 0x58476134
    aid = 0x58476135
    aid = 0x58476136
    aid = 0x58476137
    aid = 0x58476138
    aid = 0x58476139
    aid = 0x58476161
    aid = 0x58476162
    aid = 0x58476163
    aid = 0x58476164
    aid = 0x58476165
    aid = 0x58476166
    aid = 0x58476167
    aid = 0x58476168
    aid = 0x58476169
    aid = 0x5847616A
    aid = 0x5847616B
    aid = 0x5847616C
    aid = 0x5847616D
    aid = 0x5847616E
    aid = 0x5847616F
    aid = 0x58476170
    aid = 0x58476171
    aid = 0x58476172
    aid = 0x58476173
    aid = 0x58476174
    aid = 0x58476175
    aid = 0x58476230
    aid = 0x58476231
    aid = 0x58476232
    aid = 0x58476233
    aid = 0x58476234
    aid = 0x58476235
    aid = 0x58476236
    aid = 0x58476237
    aid = 0x58476238
    aid = 0x58476239
    aid = 0x58476261
    aid = 0x58476262
    aid = 0x58476263
    aid = 0x58476264
    aid = 0x58476265
    aid = 0x58476266
    aid = 0x58476267
    aid = 0x58476268
    aid = 0x58476269
    aid = 0x5847626A
    aid = 0x5847626B
    aid = 0x5847626C
    aid = 0x5847626D
    aid = 0x5847626E
    aid = 0x5847626F
    aid = 0x58476270
    aid = 0x58476271
    aid = 0x58476272
    aid = 0x58476273
    aid = 0x58476274
    aid = 0x58476275
end

function XG_UnitGetBonus(u, bonusType)
    do
        return LoadInteger(XGGeneralBonusSystem__htb, GetHandleId(u), bonusType)
    end
end

function XGGeneralBonusSystem__SetUnitState(u, x, n)
    local num = n
    local v = 0
    local aid = nil
    local state = nil
    local i = 1
    if x == 1 then
        state = UNIT_STATE_MAX_LIFE
        SaveInteger(XGGeneralBonusSystem__htb, GetHandleId(u), StringHash("生命值2"), LoadInteger(XGGeneralBonusSystem__htb, GetHandleId(u), StringHash("生命值2")) + n)
    elseif x == 2 then
        state = UNIT_STATE_MAX_MANA
        SaveInteger(XGGeneralBonusSystem__htb, GetHandleId(u), StringHash("魔法值2"), LoadInteger(XGGeneralBonusSystem__htb, GetHandleId(u), StringHash("生命值2")) + n)
    else
        do
            return false
        end
    end
    if num > 0 then
        v = 3
    elseif num < 0 then
        v = 2
        num = -num
    else
        do
            return false
        end
    end
    while true do
        if num == 0 then
            SaveInteger(XGGeneralBonusSystem__htb, GetHandleId(u), x, num)
            if n == 0 then
                SaveBoolean(XGGeneralBonusSystem__htb, GetHandleId(u), 0, false)
            end
            if true then
                break
            end
        elseif num > 0 then
            aid = XGGeneralBonusSystem__ABILITY_COUNT[x] + 1 - i
            if num < XGGeneralBonusSystem__PowersOf2[aid] then
                i = i + 1
            else
                num = num - XGGeneralBonusSystem__PowersOf2[aid]
                aid = XGGeneralBonusSystem__BonusAbilitys[aid]
                UnitAddAbility(u, aid)
                SetUnitAbilityLevel(u, aid, v)
                UnitRemoveAbility(u, aid)
            end
        else
            aid = XGGeneralBonusSystem__ABILITY_COUNT[x] + 1 - i
            if -num < XGGeneralBonusSystem__PowersOf2[aid] then
                i = i + 1
            else
                num = num + XGGeneralBonusSystem__PowersOf2[aid]
                aid = XGGeneralBonusSystem__BonusAbilitys[aid]
                UnitAddAbility(u, aid)
                SetUnitAbilityLevel(u, aid, v)
                UnitRemoveAbility(u, aid)
            end
        end
    end
    do
        return true
    end
end

function XGGeneralBonusSystem__UnitClearBonus(u, y)
    local i = XGGeneralBonusSystem__ABILITY_COUNT[y]
    while true do
        if i <= XGGeneralBonusSystem__ABILITY_COUNT[y - 1] then
            break
        end
        UnitRemoveAbility(u, XGGeneralBonusSystem__BonusAbilitys[i])
        i = i - 1
    end
    SaveInteger(XGGeneralBonusSystem__htb, GetHandleId(u), y, 0)
    SaveBoolean(XGGeneralBonusSystem__htb, GetHandleId(u), 0, false)
end

function XG_UnitSetBonus(u, bonusType, mod, ammount)
    local i = nil
    if bonusType > 10 or bonusType < 1 then
        do
            return false
        end
    end
    if mod == 0 then
        if bonusType == 1 or bonusType == 2 then
            if bonusType == 1 then
                ammount = LoadInteger(XGGeneralBonusSystem__htb, GetHandleId(u), StringHash("生命值2"))
            else
                ammount = LoadInteger(XGGeneralBonusSystem__htb, GetHandleId(u), StringHash("魔法值2"))
            end
            do
                return XGGeneralBonusSystem__SetUnitState(u, bonusType, -ammount)
            end
        else
            SaveInteger(XGGeneralBonusSystem__htb, GetHandleId(u), bonusType, ammount)
        end
    elseif mod == -1 then
        SaveInteger(XGGeneralBonusSystem__htb, GetHandleId(u), bonusType, LoadInteger(XGGeneralBonusSystem__htb, GetHandleId(u), bonusType) - ammount)
    else
        SaveInteger(XGGeneralBonusSystem__htb, GetHandleId(u), bonusType, LoadInteger(XGGeneralBonusSystem__htb, GetHandleId(u), bonusType) + ammount)
    end
    ammount = LoadInteger(XGGeneralBonusSystem__htb, GetHandleId(u), bonusType)
    if bonusType == 1 or bonusType == 2 then
        do
            return XGGeneralBonusSystem__SetUnitState(u, bonusType, ammount)
        end
    end
    if ammount == 0 then
        XGGeneralBonusSystem__UnitClearBonus(u, bonusType)
        do
            return false
        end
    end
    if ammount < XGGeneralBonusSystem__MinBonus[bonusType] or ammount > XGGeneralBonusSystem__MaxBonus[bonusType] then
        do
            return false
        end
    end
    if ammount < 0 then
        ammount = XGGeneralBonusSystem__MaxBonus[bonusType] + ammount + 1
        UnitAddAbility(u, XGGeneralBonusSystem__BonusAbilitys[XGGeneralBonusSystem__ABILITY_COUNT[bonusType]])
        UnitMakeAbilityPermanent(u, true, XGGeneralBonusSystem__BonusAbilitys[XGGeneralBonusSystem__ABILITY_COUNT[bonusType]])
    else
        UnitRemoveAbility(u, XGGeneralBonusSystem__BonusAbilitys[XGGeneralBonusSystem__ABILITY_COUNT[bonusType]])
    end
    i = XGGeneralBonusSystem__ABILITY_COUNT[bonusType] - 1
    while true do
        if i <= XGGeneralBonusSystem__ABILITY_COUNT[bonusType - 1] then
            break
        end
        if ammount >= XGGeneralBonusSystem__PowersOf2[i] then
            UnitAddAbility(u, XGGeneralBonusSystem__BonusAbilitys[i])
            UnitMakeAbilityPermanent(u, true, XGGeneralBonusSystem__BonusAbilitys[i])
            ammount = ammount - XGGeneralBonusSystem__PowersOf2[i]
        else
            UnitRemoveAbility(u, XGGeneralBonusSystem__BonusAbilitys[i])
        end
        i = i - 1
    end
    if not LoadBoolean(XGGeneralBonusSystem__htb, GetHandleId(u), 0) then
        SaveBoolean(XGGeneralBonusSystem__htb, GetHandleId(u), 0, true)
    end
    do
        return true
    end
end

function XGGeneralBonusSystem__Initialize()
    local i = 1
    local u = nil
    local n = 1
    local add = 1
    local c = __jarray(0)
    local max = 31
    while true do
        c[i] = 0x30 - 1 + i
        i = i + 1
        if i > 10 then
            break
        end
    end
    i = 1
    while true do
        c[i + 10] = 0x61 - 1 + i
        i = i + 1
        if i > 26 then
            break
        end
    end
    XGGeneralBonusSystem__ABILITY_NUM[1] = max
    XGGeneralBonusSystem__ABILITY_NUM[2] = max
    XGGeneralBonusSystem__ABILITY_NUM[3] = max
    XGGeneralBonusSystem__ABILITY_NUM[4] = max
    XGGeneralBonusSystem__ABILITY_NUM[5] = max
    XGGeneralBonusSystem__ABILITY_NUM[6] = max
    XGGeneralBonusSystem__ABILITY_NUM[7] = 12
    XGGeneralBonusSystem__ABILITY_NUM[8] = max
    XGGeneralBonusSystem__ABILITY_NUM[9] = max
    XGGeneralBonusSystem__ABILITY_NUM[10] = max
    XGGeneralBonusSystem__ABILITY_COUNT[0] = 0
    XGGeneralBonusSystem__ABILITY_COUNT[1] = max
    XGGeneralBonusSystem__ABILITY_COUNT[2] = max * 2
    XGGeneralBonusSystem__ABILITY_COUNT[3] = max * 3
    XGGeneralBonusSystem__ABILITY_COUNT[4] = max * 4
    XGGeneralBonusSystem__ABILITY_COUNT[5] = max * 5
    XGGeneralBonusSystem__ABILITY_COUNT[6] = max * 6
    XGGeneralBonusSystem__ABILITY_COUNT[7] = max * 6 + 12
    XGGeneralBonusSystem__ABILITY_COUNT[8] = XGGeneralBonusSystem__ABILITY_COUNT[7] + XGGeneralBonusSystem__ABILITY_NUM[8]
    XGGeneralBonusSystem__ABILITY_COUNT[9] = XGGeneralBonusSystem__ABILITY_COUNT[8] + XGGeneralBonusSystem__ABILITY_NUM[9]
    XGGeneralBonusSystem__ABILITY_COUNT[10] = XGGeneralBonusSystem__ABILITY_COUNT[9] + XGGeneralBonusSystem__ABILITY_NUM[10]
    i = 1
    while true do
        XGGeneralBonusSystem__BonusAbilitys[i + max * 0] = 0x58476130 - 0x30 + c[i]
        XGGeneralBonusSystem__BonusAbilitys[i + max * 1] = 0x58476230 - 0x30 + c[i]
        XGGeneralBonusSystem__BonusAbilitys[i + max * 2] = 0x58476430 - 0x30 + c[i]
        XGGeneralBonusSystem__BonusAbilitys[i + max * 3] = 0x58476330 - 0x30 + c[i]
        XGGeneralBonusSystem__BonusAbilitys[i + max * 4] = 0x58476630 - 0x30 + c[i]
        XGGeneralBonusSystem__BonusAbilitys[i + max * 5] = 0x58476730 - 0x30 + c[i]
        XGGeneralBonusSystem__BonusAbilitys[i + XGGeneralBonusSystem__ABILITY_COUNT[7]] = 0x58476830 - 0x30 + c[i]
        XGGeneralBonusSystem__BonusAbilitys[i + XGGeneralBonusSystem__ABILITY_COUNT[8]] = 0x58476930 - 0x30 + c[i]
        XGGeneralBonusSystem__BonusAbilitys[i + XGGeneralBonusSystem__ABILITY_COUNT[9]] = 0x58476A30 - 0x30 + c[i]
        i = i + 1
        if i > max then
            break
        end
    end
    i = 1
    while true do
        XGGeneralBonusSystem__BonusAbilitys[i + max * 6 + 12 * 0] = 0x58476530 - 0x30 + c[i]
        i = i + 1
        if i > 12 then
            break
        end
    end
    while true do
        i = 1
        XGGeneralBonusSystem__PowersOf2[add] = 1
        while true do
            XGGeneralBonusSystem__PowersOf2[add + 1] = XGGeneralBonusSystem__PowersOf2[add] * 2
            add = add + 1
            i = i + 1
            if i >= XGGeneralBonusSystem__ABILITY_NUM[n] then
                break
            end
        end
        XGGeneralBonusSystem__MaxBonus[n] = XGGeneralBonusSystem__PowersOf2[add] - 1
        XGGeneralBonusSystem__MinBonus[n] = -XGGeneralBonusSystem__PowersOf2[add]
        add = add + 1
        n = n + 1
        if n > 10 then
            break
        end
    end
    u = CreateUnit(Player(15), 0x68706561, 0, 0, 0)
    i = 0
    while true do
        if i == XGGeneralBonusSystem__ABILITY_COUNT[7] then
            break
        end
        UnitAddAbility(u, XGGeneralBonusSystem__BonusAbilitys[i])
        i = i + 1
    end
    RemoveUnit(u)
    u = nil
end

function GetLastAbilityCastingUnit()
    do
        return bj_lastAbilityCastingUnit
    end
end

function GetLastAbilityTargetUnit()
    do
        return bj_lastAbilityTargetUnit
    end
end

function InitializeYD()
    YDHT = InitHashtable()
    yd_MapMinX = GetCameraBoundMinX() - GetCameraMargin(CAMERA_MARGIN_LEFT)
    yd_MapMinY = GetCameraBoundMinY() - GetCameraMargin(CAMERA_MARGIN_BOTTOM)
    yd_MapMaxX = GetCameraBoundMaxX() + GetCameraMargin(CAMERA_MARGIN_RIGHT)
    yd_MapMaxY = GetCameraBoundMaxY() + GetCameraMargin(CAMERA_MARGIN_TOP)
    YDWEBase__yd_PlayerColor[0] = "|cFFFF0303"
    YDWEBase__yd_PlayerColor[1] = "|cFF0042FF"
    YDWEBase__yd_PlayerColor[2] = "|cFF1CE6B9"
    YDWEBase__yd_PlayerColor[3] = "|cFF540081"
    YDWEBase__yd_PlayerColor[4] = "|cFFFFFC01"
    YDWEBase__yd_PlayerColor[5] = "|cFFFE8A0E"
    YDWEBase__yd_PlayerColor[6] = "|cFF20C000"
    YDWEBase__yd_PlayerColor[7] = "|cFFE55BB0"
    YDWEBase__yd_PlayerColor[8] = "|cFF959697"
    YDWEBase__yd_PlayerColor[9] = "|cFF7EBFF1"
    YDWEBase__yd_PlayerColor[10] = "|cFF106246"
    YDWEBase__yd_PlayerColor[11] = "|cFF4E2A04"
    YDWEBase__yd_PlayerColor[12] = "|cFF282828"
    YDWEBase__yd_PlayerColor[13] = "|cFF282828"
    YDWEBase__yd_PlayerColor[14] = "|cFF282828"
    YDWEBase__yd_PlayerColor[15] = "|cFF282828"
    YDWEVersion_Init()
end

function GetLastMovedItemInItemSlot()
    do
        return bj_lastMovedItemInItemSlot
    end
end

function AddTrigger(T)
    local index = CreateIndex(GetHandleId(SJTimersystem__Timer))
    SaveTriggerHandle(DATA, StringHash("TimerTriggerList"), index, T)
    SaveInteger(DATA, StringHash("TriggerListIndex"), GetHandleId(T), index)
end

function RemoveTrigger(T)
    local index = LoadInteger(DATA, StringHash("TriggerListIndex"), GetHandleId(T))
    DestroyIndex(GetHandleId(SJTimersystem__Timer), index)
    SaveTriggerHandle(DATA, StringHash("TimerTriggerList"), index, nil)
end

function RunTrigger()
    local MaxIndex = (LoadInteger(SJWEBase__F, ((GetHandleId(SJTimersystem__Timer))), 1) - 1)
    local index = 0
    SJTimersystem__TimerRun = true
    index = 0
    while true do
        if index > MaxIndex then
            break
        end
        if (LoadTriggerHandle(DATA, StringHash("TimerTriggerList"), index) ~= nil) then
            if TriggerEvaluate(LoadTriggerHandle(DATA, StringHash("TimerTriggerList"), index)) then
                TriggerExecute(LoadTriggerHandle(DATA, StringHash("TimerTriggerList"), index))
            end
        end
        index = index + 1
    end
end

function TimerRunTrigger()
    if (SJTimersystem__TimerRun == false) then
        TimerStart(SJTimersystem__Timer, 0.01, true, RunTrigger)
    end
end

function Pause()
    PauseTimer(SJTimersystem__Timer)
    SJTimersystem__TimerRun = false
end

function TimerRunBoolean()
    do
        return SJTimersystem__TimerRun
    end
end

function ZBTZ__YDWEIsEventPhysicalDamage()
    do
        return 0 ~= EXGetEventDamageData(ZBTZ__EVENT_DAMAGE_DATA_IS_PHYSICAL)
    end
end

function ZBTZ__YDWEIsEventAttackDamage()
    do
        return 0 ~= EXGetEventDamageData(ZBTZ__EVENT_DAMAGE_DATA_IS_ATTACK)
    end
end

function ZBTZ__YDWEIsEventRangedDamage()
    do
        return 0 ~= EXGetEventDamageData(ZBTZ__EVENT_DAMAGE_DATA_IS_RANGED)
    end
end

function ZBTZ__YDWEIsEventDamageType(damageType)
    do
        return damageType == ConvertDamageType(EXGetEventDamageData(ZBTZ__EVENT_DAMAGE_DATA_DAMAGE_TYPE))
    end
end

function ZBTZ__YDWEIsEventWeaponType(weaponType)
    do
        return weaponType == ConvertWeaponType(EXGetEventDamageData(ZBTZ__EVENT_DAMAGE_DATA_WEAPON_TYPE))
    end
end

function ZBTZ__YDWEIsEventAttackType(attackType)
    do
        return attackType == ConvertAttackType(EXGetEventDamageData(ZBTZ__EVENT_DAMAGE_DATA_ATTACK_TYPE))
    end
end

function ZBTZ__YDWESetEventDamage(amount)
    do
        return EXSetEventDamage(amount)
    end
end

function GetAddFLTXTargetUnit()
    do
        return XY_AddFLTXTargetUnit
    end
end

function XY_AddFLTXSystemTriggerAction(hero)
    local i = 0
    while true do
        if i >= ZBTZ__AddFLTXEventNumber then
            break
        end
        XY_AddFLTXTargetUnit = hero
        if ZBTZ__AddFLTXEventQueue[i] ~= nil and TriggerEvaluate(ZBTZ__AddFLTXEventQueue[i]) and IsTriggerEnabled(ZBTZ__AddFLTXEventQueue[i]) then
            TriggerExecute(ZBTZ__AddFLTXEventQueue[i])
        end
        i = i + 1
    end
end

function XY_AddFLTXSystem(trg)
    ZBTZ__AddFLTXEventQueue[ZBTZ__AddFLTXEventNumber] = trg
    ZBTZ__AddFLTXEventNumber = ZBTZ__AddFLTXEventNumber + 1
end

function GetAddGJTXMuBiaoUnit()
    do
        return XY_AddGJTXTargetUnitB
    end
end

function GetAddGJTXargetUnit()
    do
        return XY_AddGJTXTargetUnitA
    end
end

function XY_AddGJTXSystemTriggerAction(hero, dw)
    local i = 0
    while true do
        if i >= ZBTZ__AddGJTXventNumber then
            break
        end
        XY_AddGJTXTargetUnitA = hero
        XY_AddGJTXTargetUnitB = dw
        if ZBTZ__AddGJTXventQueue[i] ~= nil and TriggerEvaluate(ZBTZ__AddGJTXventQueue[i]) and IsTriggerEnabled(ZBTZ__AddGJTXventQueue[i]) then
            TriggerExecute(ZBTZ__AddGJTXventQueue[i])
        end
        i = i + 1
    end
end

function XY_AddGJTXSystem(trg)
    ZBTZ__AddGJTXventQueue[ZBTZ__AddGJTXventNumber] = trg
    ZBTZ__AddGJTXventNumber = ZBTZ__AddGJTXventNumber + 1
end

function XY_unitSetStantReal(dw, bonusType, mod, s)
    local j = 44
    local i = 0
    local t = false
    if mod == -1 then
        s = s * -1
    end
    if mod == 0 then
        SaveReal(ZBTZ__TZHT, GetHandleId(dw), bonusType, s)
    else
        SaveReal(ZBTZ__TZHT, GetHandleId(dw), bonusType, LoadReal(ZBTZ__TZHT, GetHandleId(dw), bonusType) + s)
    end
    if bonusType >= 44 and bonusType <= 50 then
        if IsUnitInGroup(dw, ZBTZ__heroSXG) == true then
            while true do
                if j > 50 then
                    break
                end
                i = LoadReal(ZBTZ__TZHT, GetHandleId(dw), j)
                if i > 0 then
                    j = 50
                    t = true
                end
                j = j + 1
            end
            if t == false then
                GroupRemoveUnit(ZBTZ__heroSXG, dw)
            end
        elseif LoadReal(ZBTZ__TZHT, GetHandleId(dw), bonusType) > 0.00 then
            GroupAddUnit(ZBTZ__heroSXG, dw)
        end
    end
end

function XY_unitTxAttack(dw, cs, shz, tx, pointUnit, t)
    if (cs == 0) then
        SaveReal(ZBTZ__TZHT, GetHandleId(dw), ZBTZ__GJTX, 0.00)
        SaveReal(ZBTZ__TZHT, GetHandleId(dw), StringHash("特效伤害"), 0.00)
        SaveStr(ZBTZ__TZHT, GetHandleId(dw), StringHash("特效路径"), "")
        SaveStr(ZBTZ__TZHT, GetHandleId(dw), StringHash("特效附着点"), "")
        SaveBoolean(ZBTZ__TZHT, GetHandleId(dw), StringHash("范围伤害开关"), false)
    else
        SaveReal(ZBTZ__TZHT, GetHandleId(dw), ZBTZ__GJTX, cs)
        SaveReal(ZBTZ__TZHT, GetHandleId(dw), StringHash("特效伤害"), shz)
        SaveStr(ZBTZ__TZHT, GetHandleId(dw), StringHash("特效路径"), tx)
        SaveStr(ZBTZ__TZHT, GetHandleId(dw), StringHash("特效附着点"), pointUnit)
        SaveBoolean(ZBTZ__TZHT, GetHandleId(dw), StringHash("范围伤害开关"), t)
    end
end

function XY_unitSetStantSD(dw, mod, mod2, s)
    local i = 0
    local j = 34
    local t = false
    if mod2 == -1 then
        s = -s
    end
    if mod2 == 0 then
        SaveReal(ZBTZ__TZHT, GetHandleId(dw), mod, s)
    else
        SaveReal(ZBTZ__TZHT, GetHandleId(dw), mod, LoadReal(ZBTZ__TZHT, GetHandleId(dw), mod) + s)
    end
    if mod >= 34 and mod <= 40 then
        if IsUnitInGroup(dw, ZBTZ__heroSXG) == true then
            while true do
                if j > 50 then
                    break
                end
                i = LoadReal(ZBTZ__TZHT, GetHandleId(dw), j)
                if i > 0 then
                    j = 50
                    t = true
                end
                j = j + 1
            end
            if t == false then
                GroupRemoveUnit(ZBTZ__heroSXG, dw)
            end
        elseif LoadReal(ZBTZ__TZHT, GetHandleId(dw), mod) > 0.00 then
            GroupAddUnit(ZBTZ__heroSXG, dw)
        end
    end
end

function XY_unitSetStantQT(dw, mod, mod2, s)
    if mod2 == -1 then
        s = s * -1
    end
    if mod2 == 0 then
        SaveReal(ZBTZ__TZHT, GetHandleId(dw), mod, s)
    else
        SaveReal(ZBTZ__TZHT, GetHandleId(dw), mod, LoadReal(ZBTZ__TZHT, GetHandleId(dw), mod) + s)
    end
end

function XY_unitCallCustomSx(dw, mod)
    do
        return LoadReal(ZBTZ__TZHT, GetHandleId(dw), mod)
    end
end

function XY_unitCallCustomSxB(dw, mod)
    do
        return LoadReal(ZBTZ__TZHT, GetHandleId(dw), mod)
    end
end

function XY_UnitStantTypeInt(t)
    SaveBoolean(ZBTZ__TZHT, StringHash("加成方式"), 1, t)
end

function UnitStantGJSX(dw, i)
    local sxz = R2I(LoadReal(ZBTZ__TZHT, GetHandleId(dw), i))
    local rsx = LoadReal(ZBTZ__TZHT, GetHandleId(dw), i)
    if LoadBoolean(ZBTZ__TZHT, StringHash("加成方式"), 1) then
        if LoadInteger(ZBTZ__TZHT, i, StringHash("绑定属性")) == 11 then
            SetHeroStr(dw, GetHeroStr(dw, false) + sxz, false)
            SetHeroAgi(dw, GetHeroAgi(dw, false) + sxz, false)
            SetHeroInt(dw, GetHeroInt(dw, false) + sxz, false)
        elseif LoadInteger(ZBTZ__TZHT, i, StringHash("绑定属性")) < 11 then
            if LoadInteger(ZBTZ__TZHT, i, StringHash("绑定属性")) == 3 then
                SetUnitState(dw, ConvertUnitState(0x12), (GetUnitState(dw, ConvertUnitState(0x12)) + rsx))
            elseif LoadInteger(ZBTZ__TZHT, i, StringHash("绑定属性")) == 4 then
                SetUnitState(dw, ConvertUnitState(0x20), (GetUnitState(dw, ConvertUnitState(0x20)) + rsx))
            elseif LoadInteger(ZBTZ__TZHT, i, StringHash("绑定属性")) == 1 then
                SetUnitState(dw, UNIT_STATE_MAX_LIFE, (GetUnitState(dw, UNIT_STATE_MAX_LIFE) + rsx))
            elseif LoadInteger(ZBTZ__TZHT, i, StringHash("绑定属性")) == 8 then
                SetHeroStr(dw, GetHeroStr(dw, false) + sxz, false)
            elseif LoadInteger(ZBTZ__TZHT, i, StringHash("绑定属性")) == 9 then
                SetHeroAgi(dw, GetHeroAgi(dw, false) + sxz, false)
            elseif LoadInteger(ZBTZ__TZHT, i, StringHash("绑定属性")) == 10 then
                SetHeroInt(dw, GetHeroInt(dw, false) + sxz, false)
            end
        end
    else
        if LoadInteger(ZBTZ__TZHT, i, StringHash("绑定属性")) == 11 then
            XG_UnitSetBonus(dw, 8, 1, R2I(LoadReal(ZBTZ__TZHT, GetHandleId(dw), i)))
            XG_UnitSetBonus(dw, 9, 1, R2I(LoadReal(ZBTZ__TZHT, GetHandleId(dw), i)))
            XG_UnitSetBonus(dw, 10, 1, R2I(LoadReal(ZBTZ__TZHT, GetHandleId(dw), i)))
        elseif LoadInteger(ZBTZ__TZHT, i, StringHash("绑定属性")) < 11 then
            XG_UnitSetBonus(dw, LoadInteger(ZBTZ__TZHT, i, StringHash("绑定属性")), 1, R2I(LoadReal(ZBTZ__TZHT, GetHandleId(dw), i)))
        end
    end
end

function XY_UnitSetBonus_WB(u, bonusType, mod, ammount)
    local hp = GetUnitLifePercent(u)
    if LoadBoolean(ZBTZ__TZHT, StringHash("加成方式"), 1) then
        if bonusType == 1 then
            SetUnitState(u, UNIT_STATE_MAX_LIFE, (GetUnitState(u, UNIT_STATE_MAX_LIFE) + I2R(ammount * mod)))
        elseif bonusType == 2 then
            SetUnitState(u, UNIT_STATE_MAX_MANA, (GetUnitState(u, UNIT_STATE_MAX_MANA) + I2R(ammount * mod)))
        elseif bonusType == 3 then
            SetUnitState(u, ConvertUnitState(0x12), (GetUnitState(u, ConvertUnitState(0x12)) + I2R(ammount * mod)))
        elseif bonusType == 4 then
            SetUnitState(u, ConvertUnitState(0x20), (GetUnitState(u, ConvertUnitState(0x20)) + I2R(ammount * mod)))
        elseif bonusType == 5 or bonusType == 6 then
            XG_UnitSetBonus(u, bonusType, mod, ammount)
        elseif bonusType == 7 then
            SetUnitState(u, ConvertUnitState(0x51), (GetUnitState(u, ConvertUnitState(0x51)) + I2R(ammount * mod) * 0.01))
        elseif bonusType == 8 then
            SetHeroStr(u, GetHeroStr(u, false) + ammount * mod, false)
        elseif bonusType == 9 then
            SetHeroAgi(u, GetHeroAgi(u, false) + ammount * mod, false)
        elseif bonusType == 10 then
            SetHeroInt(u, GetHeroInt(u, false) + ammount * mod, false)
        end
        SetUnitLifePercentBJ(u, hp)
    else
        XG_UnitSetBonus(u, bonusType, mod, ammount)
    end
end

function TextTagSpeed2VelocityA(speed)
    do
        return speed * 0.071 / 128
    end
end

function XYSetTextTagVelocityBJ(tt, speed, angle)
    local vel = (((speed) * 1.0) * 0.071 / 128)
    local xvel = vel * Cos(angle * bj_DEGTORAD)
    local yvel = vel * Sin(angle * bj_DEGTORAD)
    SetTextTagVelocity(tt, xvel, yvel)
end

function XYTextTagSize2Height(size)
    do
        return size * 0.023 / 10
    end
end

function XYSetTextTagTextBJ(tt, s, size)
    local textHeight = (((size) * 1.0) * 0.023 / 10)
    SetTextTagText(tt, s, textHeight)
end

function TXSC_on()
    local t = GetExpiredTimer()
    DestroyEffect(LoadEffectHandle(ZBTZ__TZHT, GetHandleId(t), 1))
    FlushChildHashtable(ZBTZ__TZHT, GetHandleId(t))
    DestroyTimer(t)
    t = nil
end

function TXSC(tx, sj)
    local t = CreateTimer()
    TimerStart(t, sj, false, TXSC_on)
    SaveEffectHandle(ZBTZ__TZHT, GetHandleId(t), 1, tx)
    t = nil
end

function modfontZt(dw, qb, wb, shtype)
    local i = 1
    local xh = nil
    local x = GetUnitX(dw)
    local y = GetUnitY(dw)
    local zfc = nil
    local wbcd = StringLength(wb)
    if qb == "物暴" then
        TXSC(AddSpecialEffect(ZBTZ__WLSHZT[10], x - 80, y + 50), 1.00)
    elseif qb == "法暴" then
        TXSC(AddSpecialEffect(ZBTZ__FSSHZT[10], x - 80, y + 50), 1.00)
    end
    while true do
        if i > wbcd then
            break
        end
        zfc = SubStringBJ(wb, i, i)
        if ZBTZ__SHWZindent > 0 then
            if wbcd >= 4 + ZBTZ__SHWZindent and i > wbcd - 4 then
                if shtype == false then
                    TXSC(AddSpecialEffect(ZBTZ__WLSHZT[11], x + 33 * I2R(i) - 50, y + 50), 1.00)
                else
                    TXSC(AddSpecialEffect(ZBTZ__FSSHZT[11], x + 33 * I2R(i) - 50, y + 50), 1.00)
                end
                i = wbcd + 1
            else
                if shtype == false then
                    TXSC(AddSpecialEffect(ZBTZ__WLSHZT[S2I(zfc)], x + 33 * I2R(i) - 50, y + 50), 1.00)
                else
                    TXSC(AddSpecialEffect(ZBTZ__FSSHZT[S2I(zfc)], x + 33 * I2R(i) - 50, y + 50), 1.00)
                end
            end
        else
            if shtype == false then
                TXSC(AddSpecialEffect(ZBTZ__WLSHZT[S2I(zfc)], x + 33 * I2R(i) - 50, y + 50), 1.00)
            else
                TXSC(AddSpecialEffect(ZBTZ__FSSHZT[S2I(zfc)], x + 33 * I2R(i) - 50, y + 50), 1.00)
            end
        end
        i = i + 1
    end
end

function MianyiSH(dw)
    local xh = nil
    local x = GetUnitX(dw)
    local y = GetUnitY(dw)
    local zfc = nil
    TXSC(AddSpecialEffect(ZBTZ__WLSHZT[13], x, y), 1.00)
end

function PFWZDZ()
    local t = GetExpiredTimer()
    local pf = LoadTextTagHandle(ZBTZ__TZHT, GetHandleId(t), StringHash("漂浮"))
    local wb = LoadStr(ZBTZ__TZHT, GetHandleId(t), StringHash("内容"))
    SaveInteger(ZBTZ__TZHT, GetHandleId(t), GetHandleId(pf), LoadInteger(ZBTZ__TZHT, GetHandleId(t), GetHandleId(pf)) + 1)
    if (LoadInteger(ZBTZ__TZHT, GetHandleId(t), GetHandleId(pf)) <= 6) then
        XYSetTextTagTextBJ(pf, wb, 11.00 + I2R(LoadInteger(ZBTZ__TZHT, GetHandleId(t), GetHandleId(pf)) * 2))
    else
        XYSetTextTagTextBJ(pf, wb, 31.00 - I2R(LoadInteger(ZBTZ__TZHT, GetHandleId(t), GetHandleId(pf)) * 2))
    end
    if (LoadInteger(ZBTZ__TZHT, GetHandleId(t), GetHandleId(pf)) >= 15) then
        FlushChildHashtable(ZBTZ__TZHT, GetHandleId(t))
        DestroyTextTag(pf)
        DestroyTimer(t)
    end
    t = nil
    pf = nil
    wb = nil
end

function PFZQ()
    local t = GetExpiredTimer()
    SaveBoolean(ZBTZ__TZHT, StringHash("伤害文字周期T"), LoadInteger(ZBTZ__TZHT, GetHandleId(t), 1), true)
    FlushChildHashtable(ZBTZ__TZHT, GetHandleId(t))
    DestroyTimer(t)
    t = nil
end

function PFWZ(dw, dw2, qb, wb, hong, lv, lan, shtype)
    local sy = GetPlayerId(GetOwningPlayer(dw))
    local t = nil
    if ZBTZ__SHXS[sy] then
        if ZBTZ__SHXSZQB[sy] + ZBTZ__SHXSZQ[sy] <= I2R(ZBTZ__QJSJ) then
            ZBTZ__SHXSZQB[sy] = ZBTZ__QJSJ
            if ZBTZ__SHXSZT[sy] then
                if qb == "免疫" then
                    MianyiSH(dw)
                else
                    modfontZt(dw2, qb, wb, shtype)
                end
            end
        end
    end
    t = nil
end

function ZLPFWZ(dw, dw2, qb, wb, hong, lv, lan, shtype)
    local t = nil
    local sy = GetPlayerId(GetOwningPlayer(dw))
    if ZBTZ__SHXS[sy] == true then
        if ZBTZ__SHWZindent > 0 and StringLength(wb) >= 4 + ZBTZ__SHWZindent then
            wb = SubStringBJ(wb, 1, StringLength(wb) - 4) .. "万"
        end
        t = CreateTimer()
        CreateTextTagUnitBJ(wb, dw2, -75.00, 10.00, hong, lv, lan, 0)
        SetTextTagFadepoint(GetLastCreatedTextTag(), 0.00)
        XYSetTextTagVelocityBJ(GetLastCreatedTextTag(), 150.00, 90.00)
        SetTextTagPermanent(GetLastCreatedTextTag(), false)
        SaveTextTagHandle(ZBTZ__TZHT, GetHandleId(t), StringHash("漂浮"), GetLastCreatedTextTag())
        SaveStr(ZBTZ__TZHT, GetHandleId(t), StringHash("内容"), wb)
        TimerStart(t, 0.05, true, PFWZDZ)
    end
    t = nil
end

function XY_PFWZkey(wj, t, xscycle, modfont)
    ZBTZ__SHXS[GetPlayerId(wj)] = t
    ZBTZ__SHXSZQ[GetPlayerId(wj)] = xscycle
    ZBTZ__SHXSZT[GetPlayerId(wj)] = modfont
    ZBTZ__SHXSZQB[GetPlayerId(wj)] = ZBTZ__QJSJ
end

function XY_PFWZindent(ws)
    ZBTZ__SHWZindent = ws
end

function FL(dw, dw2, shz)
    local g = CreateGroup()
    local u = nil
    GroupEnumUnitsInRange(g, GetUnitX(dw2), GetUnitY(dw2), 350, nil)
    while true do
        u = FirstOfGroup(g)
        if u == nil then
            break
        end
        GroupRemoveUnit(g, u)
        if (IsUnitType(u, UNIT_TYPE_STRUCTURE) == false) and (u ~= dw2) and (IsUnitAliveBJ(u) == true) and (IsUnitEnemy(u, GetOwningPlayer(dw)) == true) then
            UnitDamageTarget(dw, u, shz, false, false, ATTACK_TYPE_HERO, DAMAGE_TYPE_ENHANCED, WEAPON_TYPE_WHOKNOWS)
        end
    end
    DestroyGroup(g)
    u = nil
    dw = nil
    dw2 = nil
end

function TXSH(dw, dw2)
    local g = CreateGroup()
    local u = nil
    local shz = LoadReal(ZBTZ__TZHT, GetHandleId(dw), StringHash("特效伤害"))
    if LoadStr(ZBTZ__TZHT, GetHandleId(dw), StringHash("特效路径")) ~= "" and LoadStr(ZBTZ__TZHT, GetHandleId(dw), StringHash("特效附着点")) ~= "" then
        DestroyEffectBJ(AddSpecialEffectTarget(LoadStr(ZBTZ__TZHT, GetHandleId(dw), StringHash("特效路径")), dw, LoadStr(ZBTZ__TZHT, GetHandleId(dw), StringHash("特效附着点"))))
    end
    if LoadBoolean(ZBTZ__TZHT, GetHandleId(dw), StringHash("范围伤害开关")) == true then
        GroupEnumUnitsInRange(g, GetUnitX(dw2), GetUnitY(dw2), 350, nil)
        while true do
            u = FirstOfGroup(g)
            if u == nil then
                break
            end
            GroupRemoveUnit(g, u)
            if (IsUnitType(u, UNIT_TYPE_STRUCTURE) == false) and (IsUnitAliveBJ(u) == true) and (IsUnitEnemy(u, GetOwningPlayer(dw)) == true) then
                UnitDamageTarget(dw, u, shz, false, false, ATTACK_TYPE_HERO, DAMAGE_TYPE_ENHANCED, WEAPON_TYPE_WHOKNOWS)
            end
        end
    else
        UnitDamageTarget(dw, dw2, shz, false, false, ATTACK_TYPE_HERO, DAMAGE_TYPE_ENHANCED, WEAPON_TYPE_WHOKNOWS)
    end
    XY_AddGJTXSystemTriggerAction(dw, dw2)
    DestroyGroup(g)
    u = nil
end

function Damage_Deal_Code_on()
    do
        return ((GetEventDamage() >= 1.2))
    end
end

function Damage_Deal_Code()
    local dw = GetEventDamageSource()
    local dw2 = GetTriggerUnit()
    local shz = GetEventDamage()
    local lv = 100.00
    local lan = 100.00
    local hong = 100.00
    local hj = GetUnitState(dw2, ConvertUnitState(0x20))
    local s = 0.00
    local s2 = 0.00
    local hx = 0.00
    local i = 1
    local wb = ""
    local zfc = ""
    local shtype = false
    if ((0 ~= EXGetEventDamageData(ZBTZ__EVENT_DAMAGE_DATA_IS_ATTACK)) == true) then
        if (LoadReal(ZBTZ__TZHT, GetHandleId(dw2), ZBTZ__SHGD)) ~= 0.00 then
            shz = shz * (1 - LoadReal(ZBTZ__TZHT, GetHandleId(dw2), ZBTZ__SHGD))
            if shz <= 0 then
                wb = "免疫"
            end
        end
        if (((WEAPON_TYPE_WHOKNOWS) == ConvertWeaponType(EXGetEventDamageData(ZBTZ__EVENT_DAMAGE_DATA_WEAPON_TYPE))) == false) then
            if LoadReal(ZBTZ__TZHT, GetHandleId(dw2), ZBTZ__SBJL) > 0.00 and (GetRandomReal(0.00, 1.00) <= LoadReal(ZBTZ__TZHT, GetHandleId(dw), ZBTZ__SBJL)) then
                shz = 0
                wb = "Miss"
            else
                if (LoadReal(ZBTZ__TZHT, GetHandleId(dw), ZBTZ__WLCT) > 0.00) then
                    if (hj >= 0.00) then
                        s = 1 - ((hj * 0.01) / (1 + (hj * 0.01)))
                    elseif (hj >= -20.00) then
                        s = (2.00 - Pow(0.94, hj))
                    else
                        s = 1.71
                    end
                    hj = GetUnitState(dw2, ConvertUnitState(0x20)) * (1 - LoadReal(ZBTZ__TZHT, GetHandleId(dw), ZBTZ__WLCT))
                    if (hj >= 0.00) then
                        s2 = 1 - ((hj * 0.01) / (1 + hj * 0.01))
                    elseif (hj >= -20.00) then
                        s2 = 2.00 - Pow(0.94, hj)
                    else
                        s2 = 1.71
                    end
                    shz = (shz / s) * s2
                end
                if (LoadReal(ZBTZ__TZHT, GetHandleId(dw), ZBTZ__SHDD) > 0.00) then
                    shz = shz - LoadReal(ZBTZ__TZHT, GetHandleId(dw), ZBTZ__SHDD)
                end
                if (LoadReal(ZBTZ__TZHT, GetHandleId(dw), ZBTZ__WLXX) > 0.00) then
                    hx = hx + shz * LoadReal(ZBTZ__TZHT, GetHandleId(dw), ZBTZ__WLXX)
                end
                if (LoadReal(ZBTZ__TZHT, GetHandleId(dw), ZBTZ__FLJV) > 0.00) then
                    if (GetRandomReal(0.00, 1.00) <= LoadReal(ZBTZ__TZHT, GetHandleId(dw), ZBTZ__FLJV)) then
                        FL(dw, dw2, shz * (1 + LoadReal(ZBTZ__TZHT, GetHandleId(dw), ZBTZ__FLJC)))
                    end
                end
                if (LoadReal(ZBTZ__TZHT, GetHandleId(dw), ZBTZ__GJTX) > 0.00) and (LoadReal(ZBTZ__TZHT, GetHandleId(dw), StringHash("特效伤害"))) > 0.00 then
                    SaveInteger(ZBTZ__TZHT, GetHandleId(dw), StringHash("特效次数"), LoadInteger(ZBTZ__TZHT, GetHandleId(dw), StringHash("特效次数")) + 1)
                    if (LoadInteger(ZBTZ__TZHT, GetHandleId(dw), StringHash("特效次数")) >= R2I(LoadReal(ZBTZ__TZHT, GetHandleId(dw), ZBTZ__GJTX))) then
                        SaveInteger(ZBTZ__TZHT, GetHandleId(dw), StringHash("特效次数"), 0)
                        TXSH(dw, dw2)
                    end
                end
                if (LoadReal(ZBTZ__TZHT, GetHandleId(dw), ZBTZ__GJHX)) ~= 0.00 then
                    hx = hx + LoadReal(ZBTZ__TZHT, GetHandleId(dw), ZBTZ__GJHX)
                end
                i = 27
                while true do
                    if i > 33 then
                        break
                    end
                    if (LoadReal(ZBTZ__TZHT, GetHandleId(dw), i) > 0) then
                        UnitStantGJSX(dw, i)
                    end
                    i = i + 1
                end
            end
        end
    end
    if ((((ATTACK_TYPE_HERO) == ConvertAttackType(EXGetEventDamageData(ZBTZ__EVENT_DAMAGE_DATA_ATTACK_TYPE))) == true)) then
        shtype = false
        if (LoadReal(ZBTZ__TZHT, GetHandleId(dw), ZBTZ__WLBJ) > 0.00 and GetRandomReal(0.00, 1.00) <= LoadReal(ZBTZ__TZHT, GetHandleId(dw), ZBTZ__WLBJ)) then
            shz = shz * (1 + LoadReal(ZBTZ__TZHT, GetHandleId(dw), ZBTZ__WLBJSH))
            hong = 100.00
            lv = 0.00
            lan = 0.00
            wb = "物暴"
        end
        if (LoadReal(ZBTZ__TZHT, GetHandleId(dw), ZBTZ__WLSHZF) ~= 0.00) then
            shz = shz * (1 + LoadReal(ZBTZ__TZHT, GetHandleId(dw), ZBTZ__WLSHZF))
        end
        if (LoadReal(ZBTZ__TZHT, GetHandleId(dw2), ZBTZ__WLJS) ~= 0.00) then
            shz = shz * (1 - LoadReal(ZBTZ__TZHT, GetHandleId(dw2), ZBTZ__WLJS) + LoadReal(ZBTZ__TZHT, GetHandleId(dw2), ZBTZ__WLCT))
        end
    end
    if ((((ATTACK_TYPE_NORMAL) == ConvertAttackType(EXGetEventDamageData(ZBTZ__EVENT_DAMAGE_DATA_ATTACK_TYPE))) == true) or (((ATTACK_TYPE_MAGIC) == ConvertAttackType(EXGetEventDamageData(ZBTZ__EVENT_DAMAGE_DATA_ATTACK_TYPE))) == true)) then
        shtype = true
        shz = shz * (1 + LoadReal(ZBTZ__TZHT, GetHandleId(dw), ZBTZ__FSSHZF))
        if (LoadReal(ZBTZ__TZHT, GetHandleId(dw), ZBTZ__FSBJ) > 0.00 and GetRandomReal(0.00, 1) <= LoadReal(ZBTZ__TZHT, GetHandleId(dw), ZBTZ__FSBJ)) then
            shz = shz * (1 + LoadReal(ZBTZ__TZHT, GetHandleId(dw), ZBTZ__FSBJSH))
            wb = "法暴"
        end
        if (LoadReal(ZBTZ__TZHT, GetHandleId(dw2), ZBTZ__FSJS) ~= 0) then
            shz = shz * (1 - LoadReal(ZBTZ__TZHT, GetHandleId(dw2), ZBTZ__FSJS) + LoadReal(ZBTZ__TZHT, GetHandleId(dw2), ZBTZ__FSCT))
        end
        if (LoadReal(ZBTZ__TZHT, GetHandleId(dw), ZBTZ__FSXX) ~= 0) then
            hx = hx + shz * LoadReal(ZBTZ__TZHT, GetHandleId(dw), ZBTZ__FSXX)
        end
    end
    if (LoadReal(ZBTZ__TZHT, GetHandleId(dw), ZBTZ__SHJC) ~= 0.00) then
        shz = shz * (1 + LoadReal(ZBTZ__TZHT, GetHandleId(dw), ZBTZ__SHJC))
    end
    if (LoadReal(ZBTZ__TZHT, GetHandleId(dw), ZBTZ__ZLJC) ~= 0.00) then
        hx = hx * (1 + LoadReal(ZBTZ__TZHT, GetHandleId(dw), ZBTZ__ZLJC))
    end
    if (hx ~= 0) then
        SetUnitState(dw, UNIT_STATE_LIFE, GetUnitState(dw, UNIT_STATE_LIFE) + hx)
        if ZBTZ__SHXS[GetPlayerId(GetOwningPlayer(dw))] == true then
            ZLPFWZ(dw, dw, "治疗", I2S(R2I(hx)), 31, 100, 5.5, false)
        end
    end
    if (shz <= 1) then
        shz = 0
    else
        zfc = I2S(R2I(shz))
    end
    EXSetEventDamage(((shz) * 1.0))
    if ZBTZ__SHXS[GetPlayerId(GetOwningPlayer(dw))] == true then
        if wb == "免疫" or shz == 0 then
            PFWZ(dw2, dw, "免疫", "0", hong, lv, lan, shtype)
        else
            PFWZ(dw, dw2, wb, zfc, hong, lv, lan, shtype)
        end
    end
    dw = nil
    dw2 = nil
end

function XY_killUnitJsx()
    local dw = GetKillingUnit()
    local i = 20
    while true do
        if i > 26 then
            break
        end
        if (LoadReal(ZBTZ__TZHT, GetHandleId(dw), i) > 0) then
            UnitStantGJSX(dw, i)
        end
        i = i + 1
    end
    dw = nil
end

function XY_MMJSX_code()
    local i = 34
    local z4 = nil
    local z2 = nil
    local z3 = nil
    local s3 = nil
    local s = nil
    if GetUnitState(GetEnumUnit(), UNIT_STATE_LIFE) > 0.50 then
        while true do
            if i > 40 then
                break
            end
            if (LoadReal(ZBTZ__TZHT, GetHandleId(GetEnumUnit()), i) > 0.00) then
                UnitStantGJSX(GetEnumUnit(), i)
            end
            i = i + 1
        end
        i = 44
        while true do
            if i > 46 then
                break
            end
            if (LoadReal(ZBTZ__TZHT, GetHandleId(GetEnumUnit()), i) ~= 0.00) then
                s = LoadReal(ZBTZ__TZHT, GetHandleId(GetEnumUnit()), i)
                z3 = LoadInteger(ZBTZ__TZHT, GetHandleId(GetEnumUnit()), i + 100)
                if i == 44 then
                    z4 = R2I(I2R((GetHeroStr(GetEnumUnit(), true) - z3)) * s)
                elseif i == 45 then
                    z4 = R2I(I2R((GetHeroAgi(GetEnumUnit(), true) - z3)) * s)
                elseif i == 46 then
                    z4 = R2I(I2R((GetHeroInt(GetEnumUnit(), true) - z3)) * s)
                end
                z2 = z4 - z3
                if z2 ~= 0 then
                    SaveInteger(ZBTZ__TZHT, GetHandleId(GetEnumUnit()), i + 100, z4)
                    XY_UnitSetBonus_WB(GetEnumUnit(), i - 36, 1, z2)
                end
            end
            i = i + 1
        end
        i = 47
        s = LoadReal(ZBTZ__TZHT, GetHandleId(GetEnumUnit()), i)
        z3 = LoadInteger(ZBTZ__TZHT, GetHandleId(GetEnumUnit()), i + 100)
        if s ~= 0 or z3 ~= 0 then
            s3 = (GetUnitState(GetEnumUnit(), UNIT_STATE_MAX_LIFE) - I2R(z3)) * s
            SaveInteger(ZBTZ__TZHT, GetHandleId(GetEnumUnit()), i + 100, R2I(s3))
            XY_UnitSetBonus_WB(GetEnumUnit(), 1, 1, R2I(s3) - z3)
        end
        s = LoadReal(ZBTZ__TZHT, GetHandleId(GetEnumUnit()), 49)
        z3 = LoadInteger(ZBTZ__TZHT, GetHandleId(GetEnumUnit()), 49 + 100)
        if s ~= 0 or z3 ~= 0 then
            s3 = (GetUnitState(GetEnumUnit(), ConvertUnitState(0x12)) - I2R(z3)) * s
            SaveInteger(ZBTZ__TZHT, GetHandleId(GetEnumUnit()), 49 + 100, R2I(s3))
            XY_UnitSetBonus_WB(GetEnumUnit(), 3, 1, R2I(s3) - z3)
        end
        s = LoadReal(ZBTZ__TZHT, GetHandleId(GetEnumUnit()), 50)
        z3 = LoadInteger(ZBTZ__TZHT, GetHandleId(GetEnumUnit()), 50 + 100)
        if s ~= 0 or z3 ~= 0 then
            s3 = (GetUnitState(GetEnumUnit(), ConvertUnitState(0x20)) - I2R(z3)) * s
            SaveInteger(ZBTZ__TZHT, GetHandleId(GetEnumUnit()), 50 + 100, R2I(s3))
            XY_UnitSetBonus_WB(GetEnumUnit(), 4, 1, R2I(s3) - z3)
        end
    end
end

function XY_MMJSX()
    ZBTZ__QJSJ = ZBTZ__QJSJ + 1
    if (CountUnitsInGroup(ZBTZ__heroSXG) > 0) then
        ForGroupBJ(ZBTZ__heroSXG, XY_MMJSX_code)
    end
    DestroyTrigger(GetTriggeringTrigger())
end

function ZBTZ__ZFCJM(wb)
    local i = StringLength(wb)
    local j = StringHash(wb)
    local k = StringLength(I2S(j))
    local v = 0
    local x = 1
    local f = ""
    local f2 = ""
    if wb == "" then
        do
            return ""
        end
    end
    while true do
        if x > k then
            break
        end
        v = S2I(SubString(I2S(j), x, x))
        f = f .. SubString(ZBTZ__MiMa, v, v)
    end
    x = 1
    while true do
        if x > StringLength(f) then
            break
        end
        f2 = f2 .. SubString(f, StringLength(f) - x + 1, StringLength(f) - x + 1)
    end
    do
        return f2
    end
end

function XY_Initialize()
    local t = CreateTimer()
    local i = 0
    ZBTZ__XYDamSystem = CreateTrigger()
    YDWESyStemAnyUnitDamagedRegistTrigger(ZBTZ__XYDamSystem)
    TriggerAddCondition(ZBTZ__XYDamSystem, Condition(Damage_Deal_Code_on))
    TriggerAddAction(ZBTZ__XYDamSystem, Damage_Deal_Code)
    ZBTZ__XYDamSystem = nil
    ZBTZ__XYDamSystem = CreateTrigger()
    TriggerRegisterAnyUnitEventBJ(ZBTZ__XYDamSystem, EVENT_PLAYER_UNIT_DEATH)
    TriggerAddAction(ZBTZ__XYDamSystem, XY_killUnitJsx)
    ZBTZ__XYDamSystem = nil
    TimerStart(t, 1, true, XY_MMJSX)
    t = nil
    SaveInteger(ZBTZ__TZHT, ZBTZ__SDGJ, StringHash("绑定属性"), 3)
    SaveInteger(ZBTZ__TZHT, ZBTZ__SDFY, StringHash("绑定属性"), 4)
    SaveInteger(ZBTZ__TZHT, ZBTZ__SDSM, StringHash("绑定属性"), 1)
    SaveInteger(ZBTZ__TZHT, ZBTZ__SDQSX, StringHash("绑定属性"), 11)
    SaveInteger(ZBTZ__TZHT, ZBTZ__SDLL, StringHash("绑定属性"), 8)
    SaveInteger(ZBTZ__TZHT, ZBTZ__SDMJ, StringHash("绑定属性"), 9)
    SaveInteger(ZBTZ__TZHT, ZBTZ__SDZL, StringHash("绑定属性"), 10)
    SaveInteger(ZBTZ__TZHT, ZBTZ__GJGJ, StringHash("绑定属性"), 3)
    SaveInteger(ZBTZ__TZHT, ZBTZ__GJFY, StringHash("绑定属性"), 4)
    SaveInteger(ZBTZ__TZHT, ZBTZ__GJSM, StringHash("绑定属性"), 1)
    SaveInteger(ZBTZ__TZHT, ZBTZ__GJQSX, StringHash("绑定属性"), 11)
    SaveInteger(ZBTZ__TZHT, ZBTZ__GJLL, StringHash("绑定属性"), 8)
    SaveInteger(ZBTZ__TZHT, ZBTZ__GJMJ, StringHash("绑定属性"), 9)
    SaveInteger(ZBTZ__TZHT, ZBTZ__GJZL, StringHash("绑定属性"), 10)
    SaveInteger(ZBTZ__TZHT, ZBTZ__MMGJ, StringHash("绑定属性"), 3)
    SaveInteger(ZBTZ__TZHT, ZBTZ__MMFY, StringHash("绑定属性"), 4)
    SaveInteger(ZBTZ__TZHT, ZBTZ__MMSM, StringHash("绑定属性"), 1)
    SaveInteger(ZBTZ__TZHT, ZBTZ__MMQSX, StringHash("绑定属性"), 11)
    SaveInteger(ZBTZ__TZHT, ZBTZ__MMLL, StringHash("绑定属性"), 8)
    SaveInteger(ZBTZ__TZHT, ZBTZ__MMMJ, StringHash("绑定属性"), 9)
    SaveInteger(ZBTZ__TZHT, ZBTZ__MMZL, StringHash("绑定属性"), 10)
    SaveInteger(ZBTZ__TZHT, ZBTZ__LLBFB, StringHash("绑定属性"), 12)
    SaveInteger(ZBTZ__TZHT, ZBTZ__MJBFB, StringHash("绑定属性"), 13)
    SaveInteger(ZBTZ__TZHT, ZBTZ__ZLBFB, StringHash("绑定属性"), 14)
    SaveInteger(ZBTZ__TZHT, ZBTZ__SMBFB, StringHash("绑定属性"), 15)
    SaveBoolean(ZBTZ__TZHT, StringHash("加成方式"), 1, false)
    while true do
        if i > 9 then
            break
        end
        ZBTZ__WLSHZT[i] = "war3mapImported\\Dawn_" .. I2S(i) .. ".mdl"
        ZBTZ__FSSHZT[i] = "war3mapImported\\Mawn_" .. I2S(i) .. ".mdl"
        i = i + 1
    end
    ZBTZ__WLSHZT[10] = "war3mapImported\\Dawn_BJ.mdl"
    ZBTZ__FSSHZT[10] = "war3mapImported\\Mawn_FBJ.mdl"
    ZBTZ__WLSHZT[11] = "war3mapImported\\Dawn_W.mdl"
    ZBTZ__FSSHZT[11] = "war3mapImported\\Mawn_W.mdl"
    ZBTZ__WLSHZT[12] = "war3mapImported\\Dawn_FL.mdl"
    ZBTZ__WLSHZT[13] = "war3mapImported\\Dawn_MY.mdl"
end

function JK_001(X1, Y1, X2, Y2)
    do
        return SquareRoot(Pow((X2 - X1), 2.00) + Pow((Y2 - Y1), 2.00))
    end
end

function JK_002(X1, Y1, X2, Y2)
    do
        return Atan2(Y2 - Y1, X2 - X1) * bj_RADTODEG
    end
end

function JK_X(R, x1)
    local Rran = GetRandomReal(0, R)
    do
        return (Cos(GetRandomReal(0, 360)) * Rran + x1)
    end
end

function JK_Y(R, y1)
    local Rran = GetRandomReal(0, R)
    do
        return (Sin(GetRandomReal(0, 360)) * Rran + y1)
    end
end

function JK_Round(R, x1, y1)
    local Rran = GetRandomReal(0, R)
    local X = Cos(GetRandomReal(0, 360)) * Rran + x1
    local Y = Sin(GetRandomReal(0, 360)) * Rran + y1
    do
        return Location(X, Y)
    end
end

function JK_Skill(WHO, ABI, LV, JUDE)
    if (LV > 0) then
        UnitAddAbility(WHO, ABI)
        SetUnitAbilityLevel(WHO, ABI, LV)
        UnitMakeAbilityPermanent(WHO, JUDE, ABI)
    else
        UnitRemoveAbility(WHO, ABI)
    end
end

function JK_CameraUse(WP, LDx, LDy, RUx, RUy)
    if (GetLocalPlayer() == WP) then
        SetCameraBounds(LDx, LDy, LDx, RUy, RUx, LDy, RUx, RUy)
    end
end

function JK_CameraControl(PL, CamFie, CON, REAL, S, Rmax, Rmin, STR)
    local A = GetCameraField(CamFie)
    if (CON == bj_MODIFYMETHOD_ADD) then
        A = A + REAL
    elseif (CON == bj_MODIFYMETHOD_SUB) then
        A = A - REAL
    elseif (CON == bj_MODIFYMETHOD_SET) then
    end
    if (A >= Rmin) and (A <= Rmax) and (GetLocalPlayer() == PL) then
        SetCameraField(CamFie, A, S)
    else
        DisplayTextToPlayer(PL, 0, 0, STR)
    end
end

function JK_CameraTranslation(PL, X, Y, S)
    if (PL == GetLocalPlayer()) then
        PanCameraToTimed(X, Y, S)
    end
end

function JK_AddItem(IT)
    local LOOP = 0
    local a = GetItemCharges(GetManipulatedItem())
    local b = 0
    if ((GetItemType(GetManipulatedItem()) == IT)) then
        while true do
            if LOOP == 6 then
                break
            end
            if (GetManipulatedItem() ~= UnitItemInSlot(GetManipulatingUnit(), LOOP)) and (GetItemTypeId(GetManipulatedItem()) == GetItemTypeId(UnitItemInSlot(GetManipulatingUnit(), LOOP))) and (GetItemCharges(GetManipulatedItem()) > 0) then
                b = GetItemCharges(UnitItemInSlot(GetManipulatingUnit(), LOOP))
                SetItemCharges(UnitItemInSlot(GetManipulatingUnit(), LOOP), (a + b))
                RemoveItem(GetManipulatedItem())
            end
            LOOP = LOOP + 1
        end
    end
end

function JK_LvLimitItem(LV, STR, MODE)
    local i = 0
    local X = GetUnitX(GetManipulatingUnit())
    local Y = GetUnitY(GetManipulatingUnit())
    local PL = GetOwningPlayer(GetManipulatingUnit())
    if (GetItemLevel(GetManipulatedItem()) == LV) then
        while true do
            if i > 5 then
                break
            end
            if (LV == GetItemLevel(UnitItemInSlot(GetManipulatingUnit(), i))) and (GetManipulatedItem() ~= UnitItemInSlot(GetManipulatingUnit(), i)) then
                if (MODE == 0) then
                    CreateItem(GetItemTypeId(GetManipulatedItem()), X, Y)
                    RemoveItem(GetManipulatedItem())
                elseif (MODE == 1) then
                    UnitDropItemPoint(GetManipulatingUnit(), GetManipulatedItem(), X, Y)
                elseif (MODE == 2) then
                    SetItemPosition(GetManipulatedItem(), X, Y)
                end
                DisplayTextToPlayer(PL, 0.00, 0.00, STR)
            end
            i = i + 1
        end
    end
    PL = nil
end

function JK_TypeLimitItem(TYPE, STR, MODE)
    local i = 0
    local X = GetUnitX(GetManipulatingUnit())
    local Y = GetUnitY(GetManipulatingUnit())
    local PL = GetOwningPlayer(GetManipulatingUnit())
    if (GetItemTypeId(GetManipulatedItem()) == TYPE) then
        while true do
            if i > 5 then
                break
            end
            if (TYPE == GetItemTypeId(UnitItemInSlot(GetManipulatingUnit(), i))) and (GetManipulatedItem() ~= UnitItemInSlot(GetManipulatingUnit(), i)) then
                if (MODE == 0) then
                    CreateItem(TYPE, X, Y)
                    RemoveItem(GetManipulatedItem())
                elseif (MODE == 1) then
                    UnitDropItemPoint(GetManipulatingUnit(), GetManipulatedItem(), X, Y)
                elseif (MODE == 2) then
                    SetItemPosition(GetManipulatedItem(), X, Y)
                end
                DisplayTextToPlayer(PL, 0, 0, STR)
            end
            i = i + 1
        end
    end
    PL = nil
end

function JK_HeroResurrectionB()
    local T = GetExpiredTimer()
    local TD = LoadTimerDialogHandle(JK_HT, GetHandleId(T), 20)
    local X = LoadReal(JK_HT, GetHandleId(T), 1)
    local Y = LoadReal(JK_HT, GetHandleId(T), 2)
    local HERO = LoadUnitHandle(JK_HT, GetHandleId(T), 10)
    local BL = LoadBoolean(JK_HT, GetHandleId(T), 11)
    ReviveHero(HERO, X, Y, true)
    if (BL == true) then
        if (GetOwningPlayer(HERO) == GetLocalPlayer()) then
            PanCameraToTimed(X, Y, 0.50)
        end
    end
    FlushChildHashtable(JK_HT, GetHandleId(T))
    DestroyTimerDialog(TD)
    DestroyTimer(T)
    T = nil
    TD = nil
    HERO = nil
end

function JK_HeroResurrectionA()
    local T = CreateTimer()
    local TD = CreateTimerDialog(T)
    local SJ = LoadReal(JK_HT, GetHandleId(GetTriggeringTrigger()), 0)
    local X = LoadReal(JK_HT, GetHandleId(GetTriggeringTrigger()), 1)
    local Y = LoadReal(JK_HT, GetHandleId(GetTriggeringTrigger()), 2)
    local HERO = LoadUnitHandle(JK_HT, GetHandleId(GetTriggeringTrigger()), 10)
    local BL = LoadBoolean(JK_HT, GetHandleId(GetTriggeringTrigger()), 11)
    SaveReal(JK_HT, GetHandleId(T), 1, X)
    SaveReal(JK_HT, GetHandleId(T), 2, Y)
    SaveUnitHandle(JK_HT, GetHandleId(T), 10, HERO)
    SaveBoolean(JK_HT, GetHandleId(T), 11, BL)
    SaveTimerDialogHandle(JK_HT, GetHandleId(T), 20, TD)
    TimerDialogDisplay(TD, true)
    TimerDialogSetTitle(TD, GetPlayerName(GetOwningPlayer(HERO)) .. "复活：")
    TimerStart(T, SJ, false, JK_HeroResurrectionB)
    T = nil
    TD = nil
    HERO = nil
end

function JK_HeroResurrection(HERO, SJ, X, Y, BL)
    local TRI = CreateTrigger()
    TriggerRegisterUnitEvent(TRI, HERO, EVENT_UNIT_DEATH)
    TriggerAddAction(TRI, JK_HeroResurrectionA)
    SaveReal(JK_HT, GetHandleId(TRI), 0, SJ)
    SaveReal(JK_HT, GetHandleId(TRI), 1, X)
    SaveReal(JK_HT, GetHandleId(TRI), 2, Y)
    SaveUnitHandle(JK_HT, GetHandleId(TRI), 10, HERO)
    SaveBoolean(JK_HT, GetHandleId(TRI), 11, BL)
    TRI = nil
end

function JK_GetSW(HERO, BL, BLstr, BLagi, BLint)
    local SW = 0
    if (BLstr == true) then
        SW = SW + GetHeroStr(HERO, BL)
    end
    if (BLagi == true) then
        SW = SW + GetHeroAgi(HERO, BL)
    end
    if (BLint == true) then
        SW = SW + GetHeroInt(HERO, BL)
    end
    do
        return SW
    end
end

function JK_SetSw(HERO, BLstr, BLagi, BLint, MM, VL, BL)
    local STR = GetHeroStr(HERO, false)
    local AGI = GetHeroAgi(HERO, false)
    local INT = GetHeroInt(HERO, false)
    if (MM == bj_MODIFYMETHOD_ADD) then
        if (BLstr == true) then
            STR = STR + VL
        end
        if (BLagi == true) then
            AGI = AGI + VL
        end
        if (BLint == true) then
            INT = INT + VL
        end
    elseif (MM == bj_MODIFYMETHOD_SUB) then
        if (BLstr == true) then
            STR = STR - VL
        end
        if (BLagi == true) then
            AGI = AGI - VL
        end
        if (BLint == true) then
            INT = INT - VL
        end
    elseif (MM == bj_MODIFYMETHOD_SET) then
    end
    SetHeroStr(HERO, STR, BL)
    SetHeroAgi(HERO, AGI, BL)
    SetHeroInt(HERO, INT, BL)
end

function JK_RouDam(U, R, X, Y, DAM, SP, AT, RE, ATTYPE, DAMTYPE, WEATYPE)
    local a = nil
    local b = nil
    a = CreateGroup()
    GroupEnumUnitsInRange(a, X, Y, R, nil)
    while true do
        b = FirstOfGroup(a)
        if b == nil then
            break
        end
        GroupRemoveUnit(a, b)
        if (IsUnitEnemy(b, GetOwningPlayer(U)) == true) and (UnitAlive(b) == true) then
            UnitDamageTarget(U, b, DAM, AT, RE, ATTYPE, DAMTYPE, WEATYPE)
            DestroyEffect(AddSpecialEffect(SP, GetUnitX(b), GetUnitY(b)))
        end
    end
    DestroyGroup(a)
    a = nil
    b = nil
end

function JK_RouDam2(U, R, X, Y, DAM, SJ, SP, AT, RE, ATTYPE, DAMTYPE, WEATYPE)
    local a = nil
    local b = nil
    a = CreateGroup()
    GroupEnumUnitsInRange(a, X, Y, R, nil)
    while true do
        b = FirstOfGroup(a)
        if b == nil then
            break
        end
        GroupRemoveUnit(a, b)
        if (IsUnitEnemy(b, GetOwningPlayer(U)) == true) and (UnitAlive(b) == true) then
            UnitDamageTarget(U, b, DAM, AT, RE, ATTYPE, DAMTYPE, WEATYPE)
            YDWETimerDestroyEffect(SJ, AddSpecialEffect(SP, GetUnitX(b), GetUnitY(b)))
        end
    end
    DestroyGroup(a)
    a = nil
    b = nil
end

function JK_RandomUnitInRange(X, Y, R, F)
    local G = CreateGroup()
    local U = nil
    GroupEnumUnitsInRange(G, X, Y, R, F)
    U = GroupPickRandomUnit(G)
    DestroyGroup(G)
    G = nil
    do
        return U
    end
    U = nil
end

function JK_CreatUnitAtRectXY(ID, LOOP, U, X1, Y1, X2, Y2, FACE)
    local Xran = nil
    local Yran = nil
    local xh = 0
    while true do
        if xh == LOOP then
            break
        end
        xh = xh + 1
        if (X1 < X2) then
            Xran = GetRandomReal(X1, X2)
        else
            Xran = GetRandomReal(X2, X1)
        end
        if (Y1 < Y2) then
            Yran = GetRandomReal(Y1, Y2)
        else
            Yran = GetRandomReal(Y2, Y1)
        end
        CreateUnit(ID, U, Xran, Yran, FACE)
    end
end

function JK_CreatUnitAtRound(ID, LOOP, U, X, Y, R, D, FACE)
    local Rran = nil
    local Dran = nil
    local Xran = nil
    local Yran = nil
    local xh = 0
    while true do
        if xh == LOOP then
            break
        end
        xh = xh + 1
        Rran = GetRandomReal(0.00, R)
        Dran = GetRandomReal(0.00, D)
        Xran = Cos(Dran) * Rran + X
        Yran = Sin(Dran) * Rran + Y
        CreateUnit(ID, U, Xran, Yran, FACE)
    end
end

function JK_CreatUnitAtRect(ID, LOOP, U, QY, FACE)
    local Xran = nil
    local Yran = nil
    local Xmin = GetRectMinX(QY)
    local Xmax = GetRectMaxX(QY)
    local Ymin = GetRectMinY(QY)
    local Ymax = GetRectMaxY(QY)
    local xh = 0
    while true do
        if xh == LOOP then
            break
        end
        xh = xh + 1
        Xran = GetRandomReal(Xmin, Xmax)
        Yran = GetRandomReal(Ymin, Ymax)
        CreateUnit(ID, U, Xran, Yran, FACE)
    end
end

function JK_CreatBossAtRect(DEATH, COUNT, ID, LOOP, U, RECT, FACE, STR)
    local i = LoadInteger(JK_HT, GetHandleId(RECT), DEATH)
    if (GetUnitTypeId(GetDyingUnit()) == DEATH) then
        i = i + 1
        if i >= COUNT then
            SaveInteger(JK_HT, GetHandleId(RECT), DEATH, 0)
            JK_CreatUnitAtRect(ID, LOOP, U, RECT, FACE)
            DisplayTextToPlayer(GetOwningPlayer(GetKillingUnit()), 0.00, 0.00, STR)
        else
            SaveInteger(JK_HT, GetHandleId(RECT), DEATH, i)
        end
    end
end

function JK_CreatBossAtXY(DEATH, COUNT, ID, U, X, Y, FACE, STR)
    local i = LoadInteger(JK_HT, DEATH, 10000)
    if (GetUnitTypeId(GetDyingUnit()) == DEATH) then
        i = i + 1
        if i >= COUNT then
            SaveInteger(JK_HT, DEATH, 10000, 0)
            CreateUnit(ID, U, X, Y, FACE)
            DisplayTextToPlayer(GetOwningPlayer(GetKillingUnit()), 0.00, 0.00, STR)
        else
            SaveInteger(JK_HT, DEATH, 10000, i)
        end
    end
end

function JK_TreasureDrop(DEATH, ITEM, I1, I2)
    if (GetUnitTypeId(GetTriggerUnit()) == DEATH) and (I1 >= GetRandomInt(1, I2)) then
        CreateItem(ITEM, GetUnitX(GetTriggerUnit()), GetUnitY(GetTriggerUnit()))
    end
end

function JK_UnitTranslation_Timer()
    local T = GetExpiredTimer()
    local EF = LoadEffectHandle(JK_HT, GetHandleId(T), 0)
    DestroyEffect(EF)
    FlushChildHashtable(JK_HT, GetHandleId(T))
    DestroyTimer(T)
    T = nil
    EF = nil
end

function JK_UnitTranslationA(ITEM, U, X, Y, EF, SJ, S, BL)
    local T = CreateTimer()
    if (GetItemTypeId(GetManipulatedItem()) == ITEM) and (GetManipulatingUnit() == U) then
        SetUnitPosition(U, X, Y)
        TimerStart(T, SJ, false, JK_UnitTranslation_Timer)
        SaveEffectHandle(JK_HT, GetHandleId(T), 0, EF)
        DisplayTextToPlayer(GetOwningPlayer(U), 0.00, 0.00, S)
        if (BL == true) then
            if (GetOwningPlayer(U) == GetLocalPlayer()) then
                PanCameraToTimed(X, Y, 0.2)
            end
        end
    end
    T = nil
end

function JK_UnitTranslationB(U, X, Y, EF, SJ, S, BL)
    local T = CreateTimer()
    SetUnitPosition(U, X, Y)
    TimerStart(T, SJ, false, JK_UnitTranslation_Timer)
    SaveEffectHandle(JK_HT, GetHandleId(T), 0, EF)
    DisplayTextToPlayer(GetOwningPlayer(U), 0.00, 0.00, S)
    if (BL == true) then
        if (GetOwningPlayer(U) == GetLocalPlayer()) then
            PanCameraToTimed(X, Y, 0.2)
        end
    end
    T = nil
end

function JK_Timer02()
    local A = GetHandleId(GetExpiredTimer())
    local TD = LoadTimerDialogHandle(JK_HT, A, 0)
    DestroyTimerDialog(TD)
    FlushChildHashtable(JK_HT, A)
    DestroyTimer(GetExpiredTimer())
    TD = nil
end

function JK_Timer01(TIM, S, BL, T, STR)
    local A = nil
    local TD = nil
    TIM = CreateTimer()
    TD = CreateTimerDialog(TIM)
    TimerStart(TIM, S, BL, T)
    A = GetHandleId(TIM)
    SaveTimerDialogHandle(JK_HT, A, 0, TD)
    TimerDialogSetTitle(TD, STR)
    TimerDialogDisplay(TD, true)
    if (BL == false) then
        JK_Timer02()
    end
    TIM = nil
    TD = nil
end

function JK_TextTag(X1, Y1, Z1, BL, STR, SIZE, X2, Y2, S1, S2)
    local NEW = CreateTextTag()
    SetTextTagPos(NEW, X1, Y1, Z1)
    SetTextTagPermanent(NEW, BL)
    SetTextTagVisibility(NEW, true)
    SetTextTagText(NEW, STR, SIZE)
    SetTextTagVelocity(NEW, X2, Y2)
    SetTextTagFadepoint(NEW, S1)
    SetTextTagLifespan(NEW, S2)
    NEW = nil
end

function JK_SectorCoordinates(Xr, Yr, X, Y, R, D1, D2)
    local DIS = SquareRoot(Pow((Xr - X), 2.00) + Pow((Yr - Y), 2.00))
    local Djud = Atan((Yr - Y) / (Xr - X))
    if (R <= DIS) then
        if (D1 < 0.00) then
            while true do
                D1 = D1 + 360.00
                if D1 > 0.00 then
                    break
                end
            end
        end
        if (D2 < 0.00) then
            while true do
                D2 = D2 + 360.00
                if D2 > 0.00 then
                    break
                end
            end
        end
        if (D1 < D2) and (Djud >= D1) and (Djud <= D2) then
            do
                return true
            end
        elseif (D1 > D2) and (Djud <= D1) and (Djud >= D2) then
            do
                return true
            end
        else
            do
                return false
            end
        end
    else
        do
            return false
        end
    end
end

function JK_SectorGroup(X, Y, R, D1, D2, filter)
    local G = CreateGroup()
    local U = nil
    local DIS = nil
    local Djud = nil
    GroupEnumUnitsInRange(G, X, Y, R, filter)
    while true do
        U = FirstOfGroup(G)
        if U == nil then
            break
        end
        if (JK_SectorCoordinates(GetUnitX(U), GetUnitY(U), X, Y, R, D1, D2) == true) then
        else
            GroupRemoveUnit(G, U)
        end
    end
    U = nil
    do
        return G
    end
end

function JK_ClearTextMessages(PL)
    if (PL == GetLocalPlayer()) then
        ClearTextMessages()
    end
end

function JK_ClearTextMessagesA(PL, TEXTS, T)
    if (PL == GetLocalPlayer()) then
        ClearTextMessages()
    end
    DisplayTimedTextToPlayer(PL, 0, 0, T, TEXTS)
end

function JK_RestrainTimer()
    local T = GetExpiredTimer()
    local Index = GetHandleId(T)
    local U = LoadUnitHandle(JK_HT, Index, 0)
    local EF = LoadEffectHandle(JK_HT, Index, 1)
    PauseUnit(U, false)
    FlushChildHashtable(JK_HT, Index)
    DestroyEffect(EF)
    DestroyTimer(T)
    T = nil
    U = nil
    EF = nil
end

function JK_Restrain(U, SJ, EF)
    local T = CreateTimer()
    local Index = GetHandleId(T)
    PauseUnit(U, true)
    SaveUnitHandle(JK_HT, Index, 0, U)
    SaveEffectHandle(JK_HT, Index, 1, EF)
    TimerStart(T, SJ, false, JK_RestrainTimer)
    T = nil
end

function JK_SX_Change(U, WUS, Model, Value)
    local X = GetUnitState(U, WUS)
    if (Model == 1) then
        X = X + Value
    elseif (Model == 2) then
        X = X - Value
    elseif (Model == 3) then
        X = X * Value
    elseif (Model == 4) then
        X = X / Value
    end
    SetUnitState(U, WUS, X)
end
end
