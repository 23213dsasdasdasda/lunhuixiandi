-- Converted from 342.w3x map/map/war3map.j.
-- Standard Blizzard helper functions.
return function(_ENV)
function BJDebugMsg(msg)
    local i = 0
    while true do
        DisplayTimedTextToPlayer(Player(i), 0, 0, 60, msg)
        i = i + 1
        if i == bj_MAX_PLAYERS then
            break
        end
    end
end

function RMinBJ(a, b)
    if (a < b) then
        do
            return a
        end
    else
        do
            return b
        end
    end
end

function RMaxBJ(a, b)
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

function RAbsBJ(a)
    if (a >= 0) then
        do
            return a
        end
    else
        do
            return -a
        end
    end
end

function RSignBJ(a)
    if (a >= 0.0) then
        do
            return 1.0
        end
    else
        do
            return -1.0
        end
    end
end

function IMinBJ(a, b)
    if (a < b) then
        do
            return a
        end
    else
        do
            return b
        end
    end
end

function IMaxBJ(a, b)
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

function IAbsBJ(a)
    if (a >= 0) then
        do
            return a
        end
    else
        do
            return -a
        end
    end
end

function ISignBJ(a)
    if (a >= 0) then
        do
            return 1
        end
    else
        do
            return -1
        end
    end
end

function SinBJ(degrees)
    do
        return Sin(degrees * bj_DEGTORAD)
    end
end

function CosBJ(degrees)
    do
        return Cos(degrees * bj_DEGTORAD)
    end
end

function TanBJ(degrees)
    do
        return Tan(degrees * bj_DEGTORAD)
    end
end

function AsinBJ(degrees)
    do
        return Asin(degrees) * bj_RADTODEG
    end
end

function AcosBJ(degrees)
    do
        return Acos(degrees) * bj_RADTODEG
    end
end

function AtanBJ(degrees)
    do
        return Atan(degrees) * bj_RADTODEG
    end
end

function Atan2BJ(y, x)
    do
        return Atan2(y, x) * bj_RADTODEG
    end
end

function AngleBetweenPoints(locA, locB)
    do
        return bj_RADTODEG * Atan2(GetLocationY(locB) - GetLocationY(locA), GetLocationX(locB) - GetLocationX(locA))
    end
end

function DistanceBetweenPoints(locA, locB)
    local dx = GetLocationX(locB) - GetLocationX(locA)
    local dy = GetLocationY(locB) - GetLocationY(locA)
    do
        return SquareRoot(dx * dx + dy * dy)
    end
end

function PolarProjectionBJ(source, dist, angle)
    local x = GetLocationX(source) + dist * Cos(angle * bj_DEGTORAD)
    local y = GetLocationY(source) + dist * Sin(angle * bj_DEGTORAD)
    do
        return Location(x, y)
    end
end

function GetRandomDirectionDeg()
    do
        return GetRandomReal(0, 360)
    end
end

function GetRandomPercentageBJ()
    do
        return GetRandomReal(0, 100)
    end
end

function GetRandomLocInRect(whichRect)
    do
        return Location(GetRandomReal(GetRectMinX(whichRect), GetRectMaxX(whichRect)), GetRandomReal(GetRectMinY(whichRect), GetRectMaxY(whichRect)))
    end
end

function ModuloInteger(dividend, divisor)
    local modulus = dividend - (dividend // divisor) * divisor
    if (modulus < 0) then
        modulus = modulus + divisor
    end
    do
        return modulus
    end
end

function ModuloReal(dividend, divisor)
    local modulus = dividend - I2R(R2I(dividend / divisor)) * divisor
    if (modulus < 0) then
        modulus = modulus + divisor
    end
    do
        return modulus
    end
end

function OffsetLocation(loc, dx, dy)
    do
        return Location(GetLocationX(loc) + dx, GetLocationY(loc) + dy)
    end
end

function OffsetRectBJ(r, dx, dy)
    do
        return Rect(GetRectMinX(r) + dx, GetRectMinY(r) + dy, GetRectMaxX(r) + dx, GetRectMaxY(r) + dy)
    end
end

function RectFromCenterSizeBJ(center, width, height)
    local x = GetLocationX(center)
    local y = GetLocationY(center)
    do
        return Rect(x - width * 0.5, y - height * 0.5, x + width * 0.5, y + height * 0.5)
    end
end

function RectContainsCoords(r, x, y)
    do
        return (GetRectMinX(r) <= x) and (x <= GetRectMaxX(r)) and (GetRectMinY(r) <= y) and (y <= GetRectMaxY(r))
    end
end

function RectContainsLoc(r, loc)
    do
        return RectContainsCoords(r, GetLocationX(loc), GetLocationY(loc))
    end
end

function RectContainsUnit(r, whichUnit)
    do
        return RectContainsCoords(r, GetUnitX(whichUnit), GetUnitY(whichUnit))
    end
end

function RectContainsItem(whichItem, r)
    if (whichItem == nil) then
        do
            return false
        end
    end
    if (IsItemOwned(whichItem)) then
        do
            return false
        end
    end
    do
        return RectContainsCoords(r, GetItemX(whichItem), GetItemY(whichItem))
    end
end

function ConditionalTriggerExecute(trig)
    if TriggerEvaluate(trig) then
        TriggerExecute(trig)
    end
end

function TriggerExecuteBJ(trig, checkConditions)
    if checkConditions then
        if not (TriggerEvaluate(trig)) then
            do
                return false
            end
        end
    end
    TriggerExecute(trig)
    do
        return true
    end
end

function PostTriggerExecuteBJ(trig, checkConditions)
    if checkConditions then
        if not (TriggerEvaluate(trig)) then
            do
                return false
            end
        end
    end
    TriggerRegisterTimerEvent(trig, 0, false)
    do
        return true
    end
end

function QueuedTriggerCheck()
    local s = "TrigQueue Check "
    local i = nil
    i = 0
    while true do
        if i >= bj_queuedExecTotal then
            break
        end
        s = s .. "q[" .. I2S(i) .. "]="
        if (bj_queuedExecTriggers[i] == nil) then
            s = s .. "null "
        else
            s = s .. "x "
        end
        i = i + 1
    end
    s = s .. "(" .. I2S(bj_queuedExecTotal) .. " total)"
    DisplayTimedTextToPlayer(GetLocalPlayer(), 0, 0, 600, s)
end

function QueuedTriggerGetIndex(trig)
    local index = 0
    while true do
        if index >= bj_queuedExecTotal then
            break
        end
        if (bj_queuedExecTriggers[index] == trig) then
            do
                return index
            end
        end
        index = index + 1
    end
    do
        return -1
    end
end

function QueuedTriggerRemoveByIndex(trigIndex)
    local index = nil
    if (trigIndex >= bj_queuedExecTotal) then
        do
            return false
        end
    end
    bj_queuedExecTotal = bj_queuedExecTotal - 1
    index = trigIndex
    while true do
        if index >= bj_queuedExecTotal then
            break
        end
        bj_queuedExecTriggers[index] = bj_queuedExecTriggers[index + 1]
        bj_queuedExecUseConds[index] = bj_queuedExecUseConds[index + 1]
        index = index + 1
    end
    do
        return true
    end
end

function QueuedTriggerAttemptExec()
    while true do
        if bj_queuedExecTotal == 0 then
            break
        end
        if TriggerExecuteBJ(bj_queuedExecTriggers[0], bj_queuedExecUseConds[0]) then
            TimerStart(bj_queuedExecTimeoutTimer, bj_QUEUED_TRIGGER_TIMEOUT, false, nil)
            do
                return true
            end
        end
        QueuedTriggerRemoveByIndex(0)
    end
    do
        return false
    end
end

function QueuedTriggerAddBJ(trig, checkConditions)
    if (bj_queuedExecTotal >= bj_MAX_QUEUED_TRIGGERS) then
        do
            return false
        end
    end
    bj_queuedExecTriggers[bj_queuedExecTotal] = trig
    bj_queuedExecUseConds[bj_queuedExecTotal] = checkConditions
    bj_queuedExecTotal = bj_queuedExecTotal + 1
    if (bj_queuedExecTotal == 1) then
        QueuedTriggerAttemptExec()
    end
    do
        return true
    end
end

function QueuedTriggerRemoveBJ(trig)
    local index = nil
    local trigIndex = nil
    local trigExecuted = nil
    trigIndex = QueuedTriggerGetIndex(trig)
    if (trigIndex == -1) then
        do
            return
        end
    end
    QueuedTriggerRemoveByIndex(trigIndex)
    if (trigIndex == 0) then
        PauseTimer(bj_queuedExecTimeoutTimer)
        QueuedTriggerAttemptExec()
    end
end

function QueuedTriggerDoneBJ()
    local index = nil
    if (bj_queuedExecTotal <= 0) then
        do
            return
        end
    end
    QueuedTriggerRemoveByIndex(0)
    PauseTimer(bj_queuedExecTimeoutTimer)
    QueuedTriggerAttemptExec()
end

function QueuedTriggerClearBJ()
    PauseTimer(bj_queuedExecTimeoutTimer)
    bj_queuedExecTotal = 0
end

function QueuedTriggerClearInactiveBJ()
    bj_queuedExecTotal = IMinBJ(bj_queuedExecTotal, 1)
end

function QueuedTriggerCountBJ()
    do
        return bj_queuedExecTotal
    end
end

function IsTriggerQueueEmptyBJ()
    do
        return bj_queuedExecTotal <= 0
    end
end

function IsTriggerQueuedBJ(trig)
    do
        return QueuedTriggerGetIndex(trig) ~= -1
    end
end

function GetForLoopIndexA()
    do
        return bj_forLoopAIndex
    end
end

function SetForLoopIndexA(newIndex)
    bj_forLoopAIndex = newIndex
end

function GetForLoopIndexB()
    do
        return bj_forLoopBIndex
    end
end

function SetForLoopIndexB(newIndex)
    bj_forLoopBIndex = newIndex
end

function PolledWait(duration)
    local t = nil
    local timeRemaining = nil
    if (duration > 0) then
        t = CreateTimer()
        TimerStart(t, duration, false, nil)
        while true do
            timeRemaining = TimerGetRemaining(t)
            if timeRemaining <= 0 then
                break
            end
            if (timeRemaining > bj_POLLED_WAIT_SKIP_THRESHOLD) then
                TriggerSleepAction(0.1 * timeRemaining)
            else
                TriggerSleepAction(bj_POLLED_WAIT_INTERVAL)
            end
        end
        DestroyTimer(t)
    end
end

function IntegerTertiaryOp(flag, valueA, valueB)
    if flag then
        do
            return valueA
        end
    else
        do
            return valueB
        end
    end
end

function DoNothing()
end

function CommentString(commentString)
end

function StringIdentity(theString)
    do
        return GetLocalizedString(theString)
    end
end

function GetBooleanAnd(valueA, valueB)
    do
        return valueA and valueB
    end
end

function GetBooleanOr(valueA, valueB)
    do
        return valueA or valueB
    end
end

function PercentToInt(percentage, max)
    local result = R2I(percentage * I2R(max) * 0.01)
    if (result < 0) then
        result = 0
    elseif (result > max) then
        result = max
    end
    do
        return result
    end
end

function PercentTo255(percentage)
    do
        return PercentToInt(percentage, 255)
    end
end

function GetTimeOfDay()
    do
        return GetFloatGameState(GAME_STATE_TIME_OF_DAY)
    end
end

function SetTimeOfDay(whatTime)
    SetFloatGameState(GAME_STATE_TIME_OF_DAY, whatTime)
end

function SetTimeOfDayScalePercentBJ(scalePercent)
    SetTimeOfDayScale(scalePercent * 0.01)
end

function GetTimeOfDayScalePercentBJ()
    do
        return GetTimeOfDayScale() * 100
    end
end

function PlaySound(soundName)
    local soundHandle = CreateSound(soundName, false, false, true, 12700, 12700, "")
    StartSound(soundHandle)
    KillSoundWhenDone(soundHandle)
end

function CompareLocationsBJ(A, B)
    do
        return GetLocationX(A) == GetLocationX(B) and GetLocationY(A) == GetLocationY(B)
    end
end

function CompareRectsBJ(A, B)
    do
        return GetRectMinX(A) == GetRectMinX(B) and GetRectMinY(A) == GetRectMinY(B) and GetRectMaxX(A) == GetRectMaxX(B) and GetRectMaxY(A) == GetRectMaxY(B)
    end
end

function GetRectFromCircleBJ(center, radius)
    local centerX = GetLocationX(center)
    local centerY = GetLocationY(center)
    do
        return Rect(centerX - radius, centerY - radius, centerX + radius, centerY + radius)
    end
end

function GetCurrentCameraSetup()
    local theCam = CreateCameraSetup()
    local duration = 0
    CameraSetupSetField(theCam, CAMERA_FIELD_TARGET_DISTANCE, GetCameraField(CAMERA_FIELD_TARGET_DISTANCE), duration)
    CameraSetupSetField(theCam, CAMERA_FIELD_FARZ, GetCameraField(CAMERA_FIELD_FARZ), duration)
    CameraSetupSetField(theCam, CAMERA_FIELD_ZOFFSET, GetCameraField(CAMERA_FIELD_ZOFFSET), duration)
    CameraSetupSetField(theCam, CAMERA_FIELD_ANGLE_OF_ATTACK, bj_RADTODEG * GetCameraField(CAMERA_FIELD_ANGLE_OF_ATTACK), duration)
    CameraSetupSetField(theCam, CAMERA_FIELD_FIELD_OF_VIEW, bj_RADTODEG * GetCameraField(CAMERA_FIELD_FIELD_OF_VIEW), duration)
    CameraSetupSetField(theCam, CAMERA_FIELD_ROLL, bj_RADTODEG * GetCameraField(CAMERA_FIELD_ROLL), duration)
    CameraSetupSetField(theCam, CAMERA_FIELD_ROTATION, bj_RADTODEG * GetCameraField(CAMERA_FIELD_ROTATION), duration)
    CameraSetupSetDestPosition(theCam, GetCameraTargetPositionX(), GetCameraTargetPositionY(), duration)
    do
        return theCam
    end
end

function CameraSetupApplyForPlayer(doPan, whichSetup, whichPlayer, duration)
    if (GetLocalPlayer() == whichPlayer) then
        CameraSetupApplyForceDuration(whichSetup, doPan, duration)
    end
end

function CameraSetupGetFieldSwap(whichField, whichSetup)
    do
        return CameraSetupGetField(whichSetup, whichField)
    end
end

function SetCameraFieldForPlayer(whichPlayer, whichField, value, duration)
    if (GetLocalPlayer() == whichPlayer) then
        SetCameraField(whichField, value, duration)
    end
end

function SetCameraTargetControllerNoZForPlayer(whichPlayer, whichUnit, xoffset, yoffset, inheritOrientation)
    if (GetLocalPlayer() == whichPlayer) then
        SetCameraTargetController(whichUnit, xoffset, yoffset, inheritOrientation)
    end
end

function SetCameraPositionForPlayer(whichPlayer, x, y)
    if (GetLocalPlayer() == whichPlayer) then
        SetCameraPosition(x, y)
    end
end

function SetCameraPositionLocForPlayer(whichPlayer, loc)
    if (GetLocalPlayer() == whichPlayer) then
        SetCameraPosition(GetLocationX(loc), GetLocationY(loc))
    end
end

function RotateCameraAroundLocBJ(degrees, loc, whichPlayer, duration)
    if (GetLocalPlayer() == whichPlayer) then
        SetCameraRotateMode(GetLocationX(loc), GetLocationY(loc), bj_DEGTORAD * degrees, duration)
    end
end

function PanCameraToForPlayer(whichPlayer, x, y)
    if (GetLocalPlayer() == whichPlayer) then
        PanCameraTo(x, y)
    end
end

function PanCameraToLocForPlayer(whichPlayer, loc)
    if (GetLocalPlayer() == whichPlayer) then
        PanCameraTo(GetLocationX(loc), GetLocationY(loc))
    end
end

function PanCameraToTimedForPlayer(whichPlayer, x, y, duration)
    if (GetLocalPlayer() == whichPlayer) then
        PanCameraToTimed(x, y, duration)
    end
end

function PanCameraToTimedLocForPlayer(whichPlayer, loc, duration)
    if (GetLocalPlayer() == whichPlayer) then
        PanCameraToTimed(GetLocationX(loc), GetLocationY(loc), duration)
    end
end

function PanCameraToTimedLocWithZForPlayer(whichPlayer, loc, zOffset, duration)
    if (GetLocalPlayer() == whichPlayer) then
        PanCameraToTimedWithZ(GetLocationX(loc), GetLocationY(loc), zOffset, duration)
    end
end

function SmartCameraPanBJ(whichPlayer, loc, duration)
    local dist = nil
    if (GetLocalPlayer() == whichPlayer) then
        dist = DistanceBetweenPoints(loc, GetCameraTargetPositionLoc())
        if (dist >= bj_SMARTPAN_TRESHOLD_SNAP) then
            PanCameraToTimed(GetLocationX(loc), GetLocationY(loc), 0)
        elseif (dist >= bj_SMARTPAN_TRESHOLD_PAN) then
            PanCameraToTimed(GetLocationX(loc), GetLocationY(loc), duration)
        else
        end
    end
end

function SetCinematicCameraForPlayer(whichPlayer, cameraModelFile)
    if (GetLocalPlayer() == whichPlayer) then
        SetCinematicCamera(cameraModelFile)
    end
end

function ResetToGameCameraForPlayer(whichPlayer, duration)
    if (GetLocalPlayer() == whichPlayer) then
        ResetToGameCamera(duration)
    end
end

function CameraSetSourceNoiseForPlayer(whichPlayer, magnitude, velocity)
    if (GetLocalPlayer() == whichPlayer) then
        CameraSetSourceNoise(magnitude, velocity)
    end
end

function CameraSetTargetNoiseForPlayer(whichPlayer, magnitude, velocity)
    if (GetLocalPlayer() == whichPlayer) then
        CameraSetTargetNoise(magnitude, velocity)
    end
end

function CameraSetEQNoiseForPlayer(whichPlayer, magnitude)
    local richter = magnitude
    if (richter > 5.0) then
        richter = 5.0
    end
    if (richter < 2.0) then
        richter = 2.0
    end
    if (GetLocalPlayer() == whichPlayer) then
        CameraSetTargetNoiseEx(magnitude * 2.0, magnitude * Pow(10, richter), true)
        CameraSetSourceNoiseEx(magnitude * 2.0, magnitude * Pow(10, richter), true)
    end
end

function CameraClearNoiseForPlayer(whichPlayer)
    if (GetLocalPlayer() == whichPlayer) then
        CameraSetSourceNoise(0, 0)
        CameraSetTargetNoise(0, 0)
    end
end

function GetCurrentCameraBoundsMapRectBJ()
    do
        return Rect(GetCameraBoundMinX(), GetCameraBoundMinY(), GetCameraBoundMaxX(), GetCameraBoundMaxY())
    end
end

function GetCameraBoundsMapRect()
    do
        return bj_mapInitialCameraBounds
    end
end

function GetPlayableMapRect()
    do
        return bj_mapInitialPlayableArea
    end
end

function GetEntireMapRect()
    do
        return GetWorldBounds()
    end
end

function SetCameraBoundsToRect(r)
    local minX = GetRectMinX(r)
    local minY = GetRectMinY(r)
    local maxX = GetRectMaxX(r)
    local maxY = GetRectMaxY(r)
    SetCameraBounds(minX, minY, minX, maxY, maxX, maxY, maxX, minY)
end

function SetCameraBoundsToRectForPlayerBJ(whichPlayer, r)
    if (GetLocalPlayer() == whichPlayer) then
        SetCameraBoundsToRect(r)
    end
end

function AdjustCameraBoundsBJ(adjustMethod, dxWest, dxEast, dyNorth, dySouth)
    local minX = 0
    local minY = 0
    local maxX = 0
    local maxY = 0
    local scale = 0
    if (adjustMethod == bj_CAMERABOUNDS_ADJUST_ADD) then
        scale = 1
    elseif (adjustMethod == bj_CAMERABOUNDS_ADJUST_SUB) then
        scale = -1
    else
        do
            return
        end
    end
    minX = GetCameraBoundMinX() - scale * dxWest
    maxX = GetCameraBoundMaxX() + scale * dxEast
    minY = GetCameraBoundMinY() - scale * dySouth
    maxY = GetCameraBoundMaxY() + scale * dyNorth
    if (maxX < minX) then
        minX = (minX + maxX) * 0.5
        maxX = minX
    end
    if (maxY < minY) then
        minY = (minY + maxY) * 0.5
        maxY = minY
    end
    SetCameraBounds(minX, minY, minX, maxY, maxX, maxY, maxX, minY)
end

function AdjustCameraBoundsForPlayerBJ(adjustMethod, whichPlayer, dxWest, dxEast, dyNorth, dySouth)
    if (GetLocalPlayer() == whichPlayer) then
        AdjustCameraBoundsBJ(adjustMethod, dxWest, dxEast, dyNorth, dySouth)
    end
end

function SetCameraQuickPositionForPlayer(whichPlayer, x, y)
    if (GetLocalPlayer() == whichPlayer) then
        SetCameraQuickPosition(x, y)
    end
end

function SetCameraQuickPositionLocForPlayer(whichPlayer, loc)
    if (GetLocalPlayer() == whichPlayer) then
        SetCameraQuickPosition(GetLocationX(loc), GetLocationY(loc))
    end
end

function SetCameraQuickPositionLoc(loc)
    SetCameraQuickPosition(GetLocationX(loc), GetLocationY(loc))
end

function StopCameraForPlayerBJ(whichPlayer)
    if (GetLocalPlayer() == whichPlayer) then
        StopCamera()
    end
end

function SetCameraOrientControllerForPlayerBJ(whichPlayer, whichUnit, xoffset, yoffset)
    if (GetLocalPlayer() == whichPlayer) then
        SetCameraOrientController(whichUnit, xoffset, yoffset)
    end
end

function CameraSetSmoothingFactorBJ(factor)
    CameraSetSmoothingFactor(factor)
end

function CameraResetSmoothingFactorBJ()
    CameraSetSmoothingFactor(0)
end

function DisplayTextToForce(toForce, message)
    if (IsPlayerInForce(GetLocalPlayer(), toForce)) then
        DisplayTextToPlayer(GetLocalPlayer(), 0, 0, message)
    end
end

function DisplayTimedTextToForce(toForce, duration, message)
    if (IsPlayerInForce(GetLocalPlayer(), toForce)) then
        DisplayTimedTextToPlayer(GetLocalPlayer(), 0, 0, duration, message)
    end
end

function ClearTextMessagesBJ(toForce)
    if (IsPlayerInForce(GetLocalPlayer(), toForce)) then
        ClearTextMessages()
    end
end

function SubStringBJ(source, start, finish)
    do
        return SubString(source, start - 1, finish)
    end
end

function GetHandleIdBJ(h)
    do
        return GetHandleId(h)
    end
end

function StringHashBJ(s)
    do
        return StringHash(s)
    end
end

function TriggerRegisterTimerEventPeriodic(trig, timeout)
    do
        return TriggerRegisterTimerEvent(trig, timeout, true)
    end
end

function TriggerRegisterTimerEventSingle(trig, timeout)
    do
        return TriggerRegisterTimerEvent(trig, timeout, false)
    end
end

function TriggerRegisterTimerExpireEventBJ(trig, t)
    do
        return TriggerRegisterTimerExpireEvent(trig, t)
    end
end

function TriggerRegisterPlayerUnitEventSimple(trig, whichPlayer, whichEvent)
    do
        return TriggerRegisterPlayerUnitEvent(trig, whichPlayer, whichEvent, nil)
    end
end

function TriggerRegisterAnyUnitEventBJ(trig, whichEvent)
    local index = nil
    index = 0
    while true do
        TriggerRegisterPlayerUnitEvent(trig, Player(index), whichEvent, nil)
        index = index + 1
        if index == bj_MAX_PLAYER_SLOTS then
            break
        end
    end
end

function TriggerRegisterPlayerSelectionEventBJ(trig, whichPlayer, selected)
    if selected then
        do
            return TriggerRegisterPlayerUnitEvent(trig, whichPlayer, EVENT_PLAYER_UNIT_SELECTED, nil)
        end
    else
        do
            return TriggerRegisterPlayerUnitEvent(trig, whichPlayer, EVENT_PLAYER_UNIT_DESELECTED, nil)
        end
    end
end

function TriggerRegisterPlayerKeyEventBJ(trig, whichPlayer, keType, keKey)
    if (keType == bj_KEYEVENTTYPE_DEPRESS) then
        if (keKey == bj_KEYEVENTKEY_LEFT) then
            do
                return TriggerRegisterPlayerEvent(trig, whichPlayer, EVENT_PLAYER_ARROW_LEFT_DOWN)
            end
        elseif (keKey == bj_KEYEVENTKEY_RIGHT) then
            do
                return TriggerRegisterPlayerEvent(trig, whichPlayer, EVENT_PLAYER_ARROW_RIGHT_DOWN)
            end
        elseif (keKey == bj_KEYEVENTKEY_DOWN) then
            do
                return TriggerRegisterPlayerEvent(trig, whichPlayer, EVENT_PLAYER_ARROW_DOWN_DOWN)
            end
        elseif (keKey == bj_KEYEVENTKEY_UP) then
            do
                return TriggerRegisterPlayerEvent(trig, whichPlayer, EVENT_PLAYER_ARROW_UP_DOWN)
            end
        else
            do
                return nil
            end
        end
    elseif (keType == bj_KEYEVENTTYPE_RELEASE) then
        if (keKey == bj_KEYEVENTKEY_LEFT) then
            do
                return TriggerRegisterPlayerEvent(trig, whichPlayer, EVENT_PLAYER_ARROW_LEFT_UP)
            end
        elseif (keKey == bj_KEYEVENTKEY_RIGHT) then
            do
                return TriggerRegisterPlayerEvent(trig, whichPlayer, EVENT_PLAYER_ARROW_RIGHT_UP)
            end
        elseif (keKey == bj_KEYEVENTKEY_DOWN) then
            do
                return TriggerRegisterPlayerEvent(trig, whichPlayer, EVENT_PLAYER_ARROW_DOWN_UP)
            end
        elseif (keKey == bj_KEYEVENTKEY_UP) then
            do
                return TriggerRegisterPlayerEvent(trig, whichPlayer, EVENT_PLAYER_ARROW_UP_UP)
            end
        else
            do
                return nil
            end
        end
    else
        do
            return nil
        end
    end
end

function TriggerRegisterPlayerEventVictory(trig, whichPlayer)
    do
        return TriggerRegisterPlayerEvent(trig, whichPlayer, EVENT_PLAYER_VICTORY)
    end
end

function TriggerRegisterPlayerEventDefeat(trig, whichPlayer)
    do
        return TriggerRegisterPlayerEvent(trig, whichPlayer, EVENT_PLAYER_DEFEAT)
    end
end

function TriggerRegisterPlayerEventLeave(trig, whichPlayer)
    do
        return TriggerRegisterPlayerEvent(trig, whichPlayer, EVENT_PLAYER_LEAVE)
    end
end

function TriggerRegisterPlayerEventAllianceChanged(trig, whichPlayer)
    do
        return TriggerRegisterPlayerEvent(trig, whichPlayer, EVENT_PLAYER_ALLIANCE_CHANGED)
    end
end

function TriggerRegisterPlayerEventEndCinematic(trig, whichPlayer)
    do
        return TriggerRegisterPlayerEvent(trig, whichPlayer, EVENT_PLAYER_END_CINEMATIC)
    end
end

function TriggerRegisterGameStateEventTimeOfDay(trig, opcode, limitval)
    do
        return TriggerRegisterGameStateEvent(trig, GAME_STATE_TIME_OF_DAY, opcode, limitval)
    end
end

function TriggerRegisterEnterRegionSimple(trig, whichRegion)
    do
        return TriggerRegisterEnterRegion(trig, whichRegion, nil)
    end
end

function TriggerRegisterLeaveRegionSimple(trig, whichRegion)
    do
        return TriggerRegisterLeaveRegion(trig, whichRegion, nil)
    end
end

function TriggerRegisterEnterRectSimple(trig, r)
    local rectRegion = CreateRegion()
    RegionAddRect(rectRegion, r)
    do
        return TriggerRegisterEnterRegion(trig, rectRegion, nil)
    end
end

function TriggerRegisterLeaveRectSimple(trig, r)
    local rectRegion = CreateRegion()
    RegionAddRect(rectRegion, r)
    do
        return TriggerRegisterLeaveRegion(trig, rectRegion, nil)
    end
end

function TriggerRegisterDistanceBetweenUnits(trig, whichUnit, condition, range)
    do
        return TriggerRegisterUnitInRange(trig, whichUnit, range, condition)
    end
end

function TriggerRegisterUnitInRangeSimple(trig, range, whichUnit)
    do
        return TriggerRegisterUnitInRange(trig, whichUnit, range, nil)
    end
end

function TriggerRegisterUnitLifeEvent(trig, whichUnit, opcode, limitval)
    do
        return TriggerRegisterUnitStateEvent(trig, whichUnit, UNIT_STATE_LIFE, opcode, limitval)
    end
end

function TriggerRegisterUnitManaEvent(trig, whichUnit, opcode, limitval)
    do
        return TriggerRegisterUnitStateEvent(trig, whichUnit, UNIT_STATE_MANA, opcode, limitval)
    end
end

function TriggerRegisterDialogEventBJ(trig, whichDialog)
    do
        return TriggerRegisterDialogEvent(trig, whichDialog)
    end
end

function TriggerRegisterShowSkillEventBJ(trig)
    do
        return TriggerRegisterGameEvent(trig, EVENT_GAME_SHOW_SKILL)
    end
end

function TriggerRegisterBuildSubmenuEventBJ(trig)
    do
        return TriggerRegisterGameEvent(trig, EVENT_GAME_BUILD_SUBMENU)
    end
end

function TriggerRegisterGameLoadedEventBJ(trig)
    do
        return TriggerRegisterGameEvent(trig, EVENT_GAME_LOADED)
    end
end

function TriggerRegisterGameSavedEventBJ(trig)
    do
        return TriggerRegisterGameEvent(trig, EVENT_GAME_SAVE)
    end
end

function RegisterDestDeathInRegionEnum()
    bj_destInRegionDiesCount = bj_destInRegionDiesCount + 1
    if (bj_destInRegionDiesCount <= bj_MAX_DEST_IN_REGION_EVENTS) then
        TriggerRegisterDeathEvent(bj_destInRegionDiesTrig, GetEnumDestructable())
    end
end

function TriggerRegisterDestDeathInRegionEvent(trig, r)
    bj_destInRegionDiesTrig = trig
    bj_destInRegionDiesCount = 0
    EnumDestructablesInRect(r, nil, RegisterDestDeathInRegionEnum)
end

function AddWeatherEffectSaveLast(where, effectID)
    bj_lastCreatedWeatherEffect = AddWeatherEffect(where, effectID)
    do
        return bj_lastCreatedWeatherEffect
    end
end

function GetLastCreatedWeatherEffect()
    do
        return bj_lastCreatedWeatherEffect
    end
end

function RemoveWeatherEffectBJ(whichWeatherEffect)
    RemoveWeatherEffect(whichWeatherEffect)
end

function TerrainDeformationCraterBJ(duration, permanent, where, radius, depth)
    bj_lastCreatedTerrainDeformation = TerrainDeformCrater(GetLocationX(where), GetLocationY(where), radius, depth, R2I(duration * 1000), permanent)
    do
        return bj_lastCreatedTerrainDeformation
    end
end

function TerrainDeformationRippleBJ(duration, limitNeg, where, startRadius, endRadius, depth, wavePeriod, waveWidth)
    local spaceWave = nil
    local timeWave = nil
    local radiusRatio = nil
    if (endRadius <= 0 or waveWidth <= 0 or wavePeriod <= 0) then
        do
            return nil
        end
    end
    timeWave = 2.0 * duration / wavePeriod
    spaceWave = 2.0 * endRadius / waveWidth
    radiusRatio = startRadius / endRadius
    bj_lastCreatedTerrainDeformation = TerrainDeformRipple(GetLocationX(where), GetLocationY(where), endRadius, depth, R2I(duration * 1000), 1, spaceWave, timeWave, radiusRatio, limitNeg)
    do
        return bj_lastCreatedTerrainDeformation
    end
end

function TerrainDeformationWaveBJ(duration, source, target, radius, depth, trailDelay)
    local distance = nil
    local dirX = nil
    local dirY = nil
    local speed = nil
    distance = DistanceBetweenPoints(source, target)
    if (distance == 0 or duration <= 0) then
        do
            return nil
        end
    end
    dirX = (GetLocationX(target) - GetLocationX(source)) / distance
    dirY = (GetLocationY(target) - GetLocationY(source)) / distance
    speed = distance / duration
    bj_lastCreatedTerrainDeformation = TerrainDeformWave(GetLocationX(source), GetLocationY(source), dirX, dirY, distance, speed, radius, depth, R2I(trailDelay * 1000), 1)
    do
        return bj_lastCreatedTerrainDeformation
    end
end

function TerrainDeformationRandomBJ(duration, where, radius, minDelta, maxDelta, updateInterval)
    bj_lastCreatedTerrainDeformation = TerrainDeformRandom(GetLocationX(where), GetLocationY(where), radius, minDelta, maxDelta, R2I(duration * 1000), R2I(updateInterval * 1000))
    do
        return bj_lastCreatedTerrainDeformation
    end
end

function TerrainDeformationStopBJ(deformation, duration)
    TerrainDeformStop(deformation, R2I(duration * 1000))
end

function GetLastCreatedTerrainDeformation()
    do
        return bj_lastCreatedTerrainDeformation
    end
end

function AddLightningLoc(codeName, where1, where2)
    bj_lastCreatedLightning = AddLightningEx(codeName, true, GetLocationX(where1), GetLocationY(where1), GetLocationZ(where1), GetLocationX(where2), GetLocationY(where2), GetLocationZ(where2))
    do
        return bj_lastCreatedLightning
    end
end

function DestroyLightningBJ(whichBolt)
    do
        return DestroyLightning(whichBolt)
    end
end

function MoveLightningLoc(whichBolt, where1, where2)
    do
        return MoveLightningEx(whichBolt, true, GetLocationX(where1), GetLocationY(where1), GetLocationZ(where1), GetLocationX(where2), GetLocationY(where2), GetLocationZ(where2))
    end
end

function GetLightningColorABJ(whichBolt)
    do
        return GetLightningColorA(whichBolt)
    end
end

function GetLightningColorRBJ(whichBolt)
    do
        return GetLightningColorR(whichBolt)
    end
end

function GetLightningColorGBJ(whichBolt)
    do
        return GetLightningColorG(whichBolt)
    end
end

function GetLightningColorBBJ(whichBolt)
    do
        return GetLightningColorB(whichBolt)
    end
end

function SetLightningColorBJ(whichBolt, r, g, b, a)
    do
        return SetLightningColor(whichBolt, r, g, b, a)
    end
end

function GetLastCreatedLightningBJ()
    do
        return bj_lastCreatedLightning
    end
end

function GetAbilityEffectBJ(abilcode, t, index)
    do
        return GetAbilityEffectById(abilcode, t, index)
    end
end

function GetAbilitySoundBJ(abilcode, t)
    do
        return GetAbilitySoundById(abilcode, t)
    end
end

function GetTerrainCliffLevelBJ(where)
    do
        return GetTerrainCliffLevel(GetLocationX(where), GetLocationY(where))
    end
end

function GetTerrainTypeBJ(where)
    do
        return GetTerrainType(GetLocationX(where), GetLocationY(where))
    end
end

function GetTerrainVarianceBJ(where)
    do
        return GetTerrainVariance(GetLocationX(where), GetLocationY(where))
    end
end

function SetTerrainTypeBJ(where, terrainType, variation, area, shape)
    SetTerrainType(GetLocationX(where), GetLocationY(where), terrainType, variation, area, shape)
end

function IsTerrainPathableBJ(where, t)
    do
        return IsTerrainPathable(GetLocationX(where), GetLocationY(where), t)
    end
end

function SetTerrainPathableBJ(where, t, flag)
    SetTerrainPathable(GetLocationX(where), GetLocationY(where), t, flag)
end

function SetWaterBaseColorBJ(red, green, blue, transparency)
    SetWaterBaseColor(PercentTo255(red), PercentTo255(green), PercentTo255(blue), PercentTo255(100.0 - transparency))
end

function CreateFogModifierRectSimple(whichPlayer, whichFogState, r, afterUnits)
    bj_lastCreatedFogModifier = CreateFogModifierRect(whichPlayer, whichFogState, r, true, afterUnits)
    do
        return bj_lastCreatedFogModifier
    end
end

function CreateFogModifierRadiusLocSimple(whichPlayer, whichFogState, center, radius, afterUnits)
    bj_lastCreatedFogModifier = CreateFogModifierRadiusLoc(whichPlayer, whichFogState, center, radius, true, afterUnits)
    do
        return bj_lastCreatedFogModifier
    end
end

function CreateFogModifierRectBJ(enabled, whichPlayer, whichFogState, r)
    bj_lastCreatedFogModifier = CreateFogModifierRect(whichPlayer, whichFogState, r, true, false)
    if enabled then
        FogModifierStart(bj_lastCreatedFogModifier)
    end
    do
        return bj_lastCreatedFogModifier
    end
end

function CreateFogModifierRadiusLocBJ(enabled, whichPlayer, whichFogState, center, radius)
    bj_lastCreatedFogModifier = CreateFogModifierRadiusLoc(whichPlayer, whichFogState, center, radius, true, false)
    if enabled then
        FogModifierStart(bj_lastCreatedFogModifier)
    end
    do
        return bj_lastCreatedFogModifier
    end
end

function GetLastCreatedFogModifier()
    do
        return bj_lastCreatedFogModifier
    end
end

function FogEnableOn()
    FogEnable(true)
end

function FogEnableOff()
    FogEnable(false)
end

function FogMaskEnableOn()
    FogMaskEnable(true)
end

function FogMaskEnableOff()
    FogMaskEnable(false)
end

function UseTimeOfDayBJ(flag)
    SuspendTimeOfDay(not flag)
end

function SetTerrainFogExBJ(style, zstart, zend, density, red, green, blue)
    SetTerrainFogEx(style, zstart, zend, density, red * 0.01, green * 0.01, blue * 0.01)
end

function ResetTerrainFogBJ()
    ResetTerrainFog()
end

function SetDoodadAnimationBJ(animName, doodadID, radius, center)
    SetDoodadAnimation(GetLocationX(center), GetLocationY(center), radius, doodadID, false, animName, false)
end

function SetDoodadAnimationRectBJ(animName, doodadID, r)
    SetDoodadAnimationRect(r, doodadID, animName, false)
end

function AddUnitAnimationPropertiesBJ(add, animProperties, whichUnit)
    AddUnitAnimationProperties(whichUnit, animProperties, add)
end

function CreateImageBJ(file, size, where, zOffset, imageType)
    bj_lastCreatedImage = CreateImage(file, size, size, size, GetLocationX(where), GetLocationY(where), zOffset, 0, 0, 0, imageType)
    do
        return bj_lastCreatedImage
    end
end

function ShowImageBJ(flag, whichImage)
    ShowImage(whichImage, flag)
end

function SetImagePositionBJ(whichImage, where, zOffset)
    SetImagePosition(whichImage, GetLocationX(where), GetLocationY(where), zOffset)
end

function SetImageColorBJ(whichImage, red, green, blue, alpha)
    SetImageColor(whichImage, PercentTo255(red), PercentTo255(green), PercentTo255(blue), PercentTo255(100.0 - alpha))
end

function GetLastCreatedImage()
    do
        return bj_lastCreatedImage
    end
end

function CreateUbersplatBJ(where, name, red, green, blue, alpha, forcePaused, noBirthTime)
    bj_lastCreatedUbersplat = CreateUbersplat(GetLocationX(where), GetLocationY(where), name, PercentTo255(red), PercentTo255(green), PercentTo255(blue), PercentTo255(100.0 - alpha), forcePaused, noBirthTime)
    do
        return bj_lastCreatedUbersplat
    end
end

function ShowUbersplatBJ(flag, whichSplat)
    ShowUbersplat(whichSplat, flag)
end

function GetLastCreatedUbersplat()
    do
        return bj_lastCreatedUbersplat
    end
end

function PlaySoundBJ(soundHandle)
    bj_lastPlayedSound = soundHandle
    if (soundHandle ~= nil) then
        StartSound(soundHandle)
    end
end

function StopSoundBJ(soundHandle, fadeOut)
    StopSound(soundHandle, false, fadeOut)
end

function SetSoundVolumeBJ(soundHandle, volumePercent)
    SetSoundVolume(soundHandle, PercentToInt(volumePercent, 127))
end

function SetSoundOffsetBJ(newOffset, soundHandle)
    SetSoundPlayPosition(soundHandle, R2I(newOffset * 1000))
end

function SetSoundDistanceCutoffBJ(soundHandle, cutoff)
    SetSoundDistanceCutoff(soundHandle, cutoff)
end

function SetSoundPitchBJ(soundHandle, pitch)
    SetSoundPitch(soundHandle, pitch)
end

function SetSoundPositionLocBJ(soundHandle, loc, z)
    SetSoundPosition(soundHandle, GetLocationX(loc), GetLocationY(loc), z)
end

function AttachSoundToUnitBJ(soundHandle, whichUnit)
    AttachSoundToUnit(soundHandle, whichUnit)
end

function SetSoundConeAnglesBJ(soundHandle, inside, outside, outsideVolumePercent)
    SetSoundConeAngles(soundHandle, inside, outside, PercentToInt(outsideVolumePercent, 127))
end

function KillSoundWhenDoneBJ(soundHandle)
    KillSoundWhenDone(soundHandle)
end

function PlaySoundAtPointBJ(soundHandle, volumePercent, loc, z)
    SetSoundPositionLocBJ(soundHandle, loc, z)
    SetSoundVolumeBJ(soundHandle, volumePercent)
    PlaySoundBJ(soundHandle)
end

function PlaySoundOnUnitBJ(soundHandle, volumePercent, whichUnit)
    AttachSoundToUnitBJ(soundHandle, whichUnit)
    SetSoundVolumeBJ(soundHandle, volumePercent)
    PlaySoundBJ(soundHandle)
end

function PlaySoundFromOffsetBJ(soundHandle, volumePercent, startingOffset)
    SetSoundVolumeBJ(soundHandle, volumePercent)
    PlaySoundBJ(soundHandle)
    SetSoundOffsetBJ(startingOffset, soundHandle)
end

function PlayMusicBJ(musicFileName)
    bj_lastPlayedMusic = musicFileName
    PlayMusic(musicFileName)
end

function PlayMusicExBJ(musicFileName, startingOffset, fadeInTime)
    bj_lastPlayedMusic = musicFileName
    PlayMusicEx(musicFileName, R2I(startingOffset * 1000), R2I(fadeInTime * 1000))
end

function SetMusicOffsetBJ(newOffset)
    SetMusicPlayPosition(R2I(newOffset * 1000))
end

function PlayThematicMusicBJ(musicName)
    PlayThematicMusic(musicName)
end

function PlayThematicMusicExBJ(musicName, startingOffset)
    PlayThematicMusicEx(musicName, R2I(startingOffset * 1000))
end

function SetThematicMusicOffsetBJ(newOffset)
    SetThematicMusicPlayPosition(R2I(newOffset * 1000))
end

function EndThematicMusicBJ()
    EndThematicMusic()
end

function StopMusicBJ(fadeOut)
    StopMusic(fadeOut)
end

function ResumeMusicBJ()
    ResumeMusic()
end

function SetMusicVolumeBJ(volumePercent)
    SetMusicVolume(PercentToInt(volumePercent, 127))
end

function GetSoundDurationBJ(soundHandle)
    if (soundHandle == nil) then
        do
            return bj_NOTHING_SOUND_DURATION
        end
    else
        do
            return I2R(GetSoundDuration(soundHandle)) * 0.001
        end
    end
end

function GetSoundFileDurationBJ(musicFileName)
    do
        return I2R(GetSoundFileDuration(musicFileName)) * 0.001
    end
end

function GetLastPlayedSound()
    do
        return bj_lastPlayedSound
    end
end

function GetLastPlayedMusic()
    do
        return bj_lastPlayedMusic
    end
end

function VolumeGroupSetVolumeBJ(vgroup, percent)
    VolumeGroupSetVolume(vgroup, percent * 0.01)
end

function SetCineModeVolumeGroupsImmediateBJ()
    VolumeGroupSetVolume(SOUND_VOLUMEGROUP_UNITMOVEMENT, bj_CINEMODE_VOLUME_UNITMOVEMENT)
    VolumeGroupSetVolume(SOUND_VOLUMEGROUP_UNITSOUNDS, bj_CINEMODE_VOLUME_UNITSOUNDS)
    VolumeGroupSetVolume(SOUND_VOLUMEGROUP_COMBAT, bj_CINEMODE_VOLUME_COMBAT)
    VolumeGroupSetVolume(SOUND_VOLUMEGROUP_SPELLS, bj_CINEMODE_VOLUME_SPELLS)
    VolumeGroupSetVolume(SOUND_VOLUMEGROUP_UI, bj_CINEMODE_VOLUME_UI)
    VolumeGroupSetVolume(SOUND_VOLUMEGROUP_MUSIC, bj_CINEMODE_VOLUME_MUSIC)
    VolumeGroupSetVolume(SOUND_VOLUMEGROUP_AMBIENTSOUNDS, bj_CINEMODE_VOLUME_AMBIENTSOUNDS)
    VolumeGroupSetVolume(SOUND_VOLUMEGROUP_FIRE, bj_CINEMODE_VOLUME_FIRE)
end

function SetCineModeVolumeGroupsBJ()
    if bj_gameStarted then
        SetCineModeVolumeGroupsImmediateBJ()
    else
        TimerStart(bj_volumeGroupsTimer, bj_GAME_STARTED_THRESHOLD, false, SetCineModeVolumeGroupsImmediateBJ)
    end
end

function SetSpeechVolumeGroupsImmediateBJ()
    VolumeGroupSetVolume(SOUND_VOLUMEGROUP_UNITMOVEMENT, bj_SPEECH_VOLUME_UNITMOVEMENT)
    VolumeGroupSetVolume(SOUND_VOLUMEGROUP_UNITSOUNDS, bj_SPEECH_VOLUME_UNITSOUNDS)
    VolumeGroupSetVolume(SOUND_VOLUMEGROUP_COMBAT, bj_SPEECH_VOLUME_COMBAT)
    VolumeGroupSetVolume(SOUND_VOLUMEGROUP_SPELLS, bj_SPEECH_VOLUME_SPELLS)
    VolumeGroupSetVolume(SOUND_VOLUMEGROUP_UI, bj_SPEECH_VOLUME_UI)
    VolumeGroupSetVolume(SOUND_VOLUMEGROUP_MUSIC, bj_SPEECH_VOLUME_MUSIC)
    VolumeGroupSetVolume(SOUND_VOLUMEGROUP_AMBIENTSOUNDS, bj_SPEECH_VOLUME_AMBIENTSOUNDS)
    VolumeGroupSetVolume(SOUND_VOLUMEGROUP_FIRE, bj_SPEECH_VOLUME_FIRE)
end

function SetSpeechVolumeGroupsBJ()
    if bj_gameStarted then
        SetSpeechVolumeGroupsImmediateBJ()
    else
        TimerStart(bj_volumeGroupsTimer, bj_GAME_STARTED_THRESHOLD, false, SetSpeechVolumeGroupsImmediateBJ)
    end
end

function VolumeGroupResetImmediateBJ()
    VolumeGroupReset()
end

function VolumeGroupResetBJ()
    if bj_gameStarted then
        VolumeGroupResetImmediateBJ()
    else
        TimerStart(bj_volumeGroupsTimer, bj_GAME_STARTED_THRESHOLD, false, VolumeGroupResetImmediateBJ)
    end
end

function GetSoundIsPlayingBJ(soundHandle)
    do
        return GetSoundIsLoading(soundHandle) or GetSoundIsPlaying(soundHandle)
    end
end

function WaitForSoundBJ(soundHandle, offset)
    TriggerWaitForSound(soundHandle, offset)
end

function SetMapMusicIndexedBJ(musicName, index)
    SetMapMusic(musicName, false, index)
end

function SetMapMusicRandomBJ(musicName)
    SetMapMusic(musicName, true, 0)
end

function ClearMapMusicBJ()
    ClearMapMusic()
end

function SetStackedSoundBJ(add, soundHandle, r)
    local width = GetRectMaxX(r) - GetRectMinX(r)
    local height = GetRectMaxY(r) - GetRectMinY(r)
    SetSoundPosition(soundHandle, GetRectCenterX(r), GetRectCenterY(r), 0)
    if add then
        RegisterStackedSound(soundHandle, true, width, height)
    else
        UnregisterStackedSound(soundHandle, true, width, height)
    end
end

function StartSoundForPlayerBJ(whichPlayer, soundHandle)
    if (whichPlayer == GetLocalPlayer()) then
        StartSound(soundHandle)
    end
end

function VolumeGroupSetVolumeForPlayerBJ(whichPlayer, vgroup, scale)
    if (GetLocalPlayer() == whichPlayer) then
        VolumeGroupSetVolume(vgroup, scale)
    end
end

function EnableDawnDusk(flag)
    bj_useDawnDuskSounds = flag
end

function IsDawnDuskEnabled()
    do
        return bj_useDawnDuskSounds
    end
end

function SetAmbientDaySound(inLabel)
    local ToD = nil
    if (bj_dayAmbientSound ~= nil) then
        StopSound(bj_dayAmbientSound, true, true)
    end
    bj_dayAmbientSound = CreateMIDISound(inLabel, 20, 20)
    ToD = GetTimeOfDay()
    if (ToD >= bj_TOD_DAWN and ToD < bj_TOD_DUSK) then
        StartSound(bj_dayAmbientSound)
    end
end

function SetAmbientNightSound(inLabel)
    local ToD = nil
    if (bj_nightAmbientSound ~= nil) then
        StopSound(bj_nightAmbientSound, true, true)
    end
    bj_nightAmbientSound = CreateMIDISound(inLabel, 20, 20)
    ToD = GetTimeOfDay()
    if (ToD < bj_TOD_DAWN or ToD >= bj_TOD_DUSK) then
        StartSound(bj_nightAmbientSound)
    end
end

function AddSpecialEffectLocBJ(where, modelName)
    bj_lastCreatedEffect = AddSpecialEffectLoc(modelName, where)
    do
        return bj_lastCreatedEffect
    end
end

function AddSpecialEffectTargetUnitBJ(attachPointName, targetWidget, modelName)
    bj_lastCreatedEffect = AddSpecialEffectTarget(modelName, targetWidget, attachPointName)
    do
        return bj_lastCreatedEffect
    end
end

function DestroyEffectBJ(whichEffect)
    DestroyEffect(whichEffect)
end

function GetLastCreatedEffectBJ()
    do
        return bj_lastCreatedEffect
    end
end

function GetItemLoc(whichItem)
    do
        return Location(GetItemX(whichItem), GetItemY(whichItem))
    end
end

function GetItemLifeBJ(whichWidget)
    do
        return GetWidgetLife(whichWidget)
    end
end

function SetItemLifeBJ(whichWidget, life)
    SetWidgetLife(whichWidget, life)
end

function AddHeroXPSwapped(xpToAdd, whichHero, showEyeCandy)
    AddHeroXP(whichHero, xpToAdd, showEyeCandy)
end

function SetHeroLevelBJ(whichHero, newLevel, showEyeCandy)
    local oldLevel = GetHeroLevel(whichHero)
    if (newLevel > oldLevel) then
        SetHeroLevel(whichHero, newLevel, showEyeCandy)
    elseif (newLevel < oldLevel) then
        UnitStripHeroLevel(whichHero, oldLevel - newLevel)
    else
    end
end

function DecUnitAbilityLevelSwapped(abilcode, whichUnit)
    do
        return DecUnitAbilityLevel(whichUnit, abilcode)
    end
end

function IncUnitAbilityLevelSwapped(abilcode, whichUnit)
    do
        return IncUnitAbilityLevel(whichUnit, abilcode)
    end
end

function SetUnitAbilityLevelSwapped(abilcode, whichUnit, level)
    do
        return SetUnitAbilityLevel(whichUnit, abilcode, level)
    end
end

function GetUnitAbilityLevelSwapped(abilcode, whichUnit)
    do
        return GetUnitAbilityLevel(whichUnit, abilcode)
    end
end

function UnitHasBuffBJ(whichUnit, buffcode)
    do
        return (GetUnitAbilityLevel(whichUnit, buffcode) > 0)
    end
end

function UnitRemoveBuffBJ(buffcode, whichUnit)
    do
        return UnitRemoveAbility(whichUnit, buffcode)
    end
end

function UnitAddItemSwapped(whichItem, whichHero)
    do
        return UnitAddItem(whichHero, whichItem)
    end
end

function UnitAddItemByIdSwapped(itemId, whichHero)
    bj_lastCreatedItem = CreateItem(itemId, GetUnitX(whichHero), GetUnitY(whichHero))
    UnitAddItem(whichHero, bj_lastCreatedItem)
    do
        return bj_lastCreatedItem
    end
end

function UnitRemoveItemSwapped(whichItem, whichHero)
    bj_lastRemovedItem = whichItem
    UnitRemoveItem(whichHero, whichItem)
end

function UnitRemoveItemFromSlotSwapped(itemSlot, whichHero)
    bj_lastRemovedItem = UnitRemoveItemFromSlot(whichHero, itemSlot - 1)
    do
        return bj_lastRemovedItem
    end
end

function CreateItemLoc(itemId, loc)
    bj_lastCreatedItem = CreateItem(itemId, GetLocationX(loc), GetLocationY(loc))
    do
        return bj_lastCreatedItem
    end
end

function GetLastCreatedItem()
    do
        return bj_lastCreatedItem
    end
end

function GetLastRemovedItem()
    do
        return bj_lastRemovedItem
    end
end

function SetItemPositionLoc(whichItem, loc)
    SetItemPosition(whichItem, GetLocationX(loc), GetLocationY(loc))
end

function GetLearnedSkillBJ()
    do
        return GetLearnedSkill()
    end
end

function SuspendHeroXPBJ(flag, whichHero)
    SuspendHeroXP(whichHero, not flag)
end

function SetPlayerHandicapXPBJ(whichPlayer, handicapPercent)
    SetPlayerHandicapXP(whichPlayer, handicapPercent * 0.01)
end

function GetPlayerHandicapXPBJ(whichPlayer)
    do
        return GetPlayerHandicapXP(whichPlayer) * 100
    end
end

function SetPlayerHandicapBJ(whichPlayer, handicapPercent)
    SetPlayerHandicap(whichPlayer, handicapPercent * 0.01)
end

function GetPlayerHandicapBJ(whichPlayer)
    do
        return GetPlayerHandicap(whichPlayer) * 100
    end
end

function GetHeroStatBJ(whichStat, whichHero, includeBonuses)
    if (whichStat == bj_HEROSTAT_STR) then
        do
            return GetHeroStr(whichHero, includeBonuses)
        end
    elseif (whichStat == bj_HEROSTAT_AGI) then
        do
            return GetHeroAgi(whichHero, includeBonuses)
        end
    elseif (whichStat == bj_HEROSTAT_INT) then
        do
            return GetHeroInt(whichHero, includeBonuses)
        end
    else
        do
            return 0
        end
    end
end

function SetHeroStat(whichHero, whichStat, value)
    if (value <= 0) then
        do
            return
        end
    end
    if (whichStat == bj_HEROSTAT_STR) then
        SetHeroStr(whichHero, value, true)
    elseif (whichStat == bj_HEROSTAT_AGI) then
        SetHeroAgi(whichHero, value, true)
    elseif (whichStat == bj_HEROSTAT_INT) then
        SetHeroInt(whichHero, value, true)
    else
    end
end

function ModifyHeroStat(whichStat, whichHero, modifyMethod, value)
    if (modifyMethod == bj_MODIFYMETHOD_ADD) then
        SetHeroStat(whichHero, whichStat, GetHeroStatBJ(whichStat, whichHero, false) + value)
    elseif (modifyMethod == bj_MODIFYMETHOD_SUB) then
        SetHeroStat(whichHero, whichStat, GetHeroStatBJ(whichStat, whichHero, false) - value)
    elseif (modifyMethod == bj_MODIFYMETHOD_SET) then
        SetHeroStat(whichHero, whichStat, value)
    else
    end
end

function ModifyHeroSkillPoints(whichHero, modifyMethod, value)
    if (modifyMethod == bj_MODIFYMETHOD_ADD) then
        do
            return UnitModifySkillPoints(whichHero, value)
        end
    elseif (modifyMethod == bj_MODIFYMETHOD_SUB) then
        do
            return UnitModifySkillPoints(whichHero, -value)
        end
    elseif (modifyMethod == bj_MODIFYMETHOD_SET) then
        do
            return UnitModifySkillPoints(whichHero, value - GetHeroSkillPoints(whichHero))
        end
    else
        do
            return false
        end
    end
end

function UnitDropItemPointBJ(whichUnit, whichItem, x, y)
    do
        return UnitDropItemPoint(whichUnit, whichItem, x, y)
    end
end

function UnitDropItemPointLoc(whichUnit, whichItem, loc)
    do
        return UnitDropItemPoint(whichUnit, whichItem, GetLocationX(loc), GetLocationY(loc))
    end
end

function UnitDropItemSlotBJ(whichUnit, whichItem, slot)
    do
        return UnitDropItemSlot(whichUnit, whichItem, slot - 1)
    end
end

function UnitDropItemTargetBJ(whichUnit, whichItem, target)
    do
        return UnitDropItemTarget(whichUnit, whichItem, target)
    end
end

function UnitUseItemDestructable(whichUnit, whichItem, target)
    do
        return UnitUseItemTarget(whichUnit, whichItem, target)
    end
end

function UnitUseItemPointLoc(whichUnit, whichItem, loc)
    do
        return UnitUseItemPoint(whichUnit, whichItem, GetLocationX(loc), GetLocationY(loc))
    end
end

function UnitItemInSlotBJ(whichUnit, itemSlot)
    do
        return UnitItemInSlot(whichUnit, itemSlot - 1)
    end
end

function GetInventoryIndexOfItemTypeBJ(whichUnit, itemId)
    local index = nil
    local indexItem = nil
    index = 0
    while true do
        indexItem = UnitItemInSlot(whichUnit, index)
        if (indexItem ~= nil) and (GetItemTypeId(indexItem) == itemId) then
            do
                return index + 1
            end
        end
        index = index + 1
        if index >= bj_MAX_INVENTORY then
            break
        end
    end
    do
        return 0
    end
end

function GetItemOfTypeFromUnitBJ(whichUnit, itemId)
    local index = GetInventoryIndexOfItemTypeBJ(whichUnit, itemId)
    if (index == 0) then
        do
            return nil
        end
    else
        do
            return UnitItemInSlot(whichUnit, index - 1)
        end
    end
end

function UnitHasItemOfTypeBJ(whichUnit, itemId)
    do
        return GetInventoryIndexOfItemTypeBJ(whichUnit, itemId) > 0
    end
end

function UnitInventoryCount(whichUnit)
    local index = 0
    local count = 0
    while true do
        if (UnitItemInSlot(whichUnit, index) ~= nil) then
            count = count + 1
        end
        index = index + 1
        if index >= bj_MAX_INVENTORY then
            break
        end
    end
    do
        return count
    end
end

function UnitInventorySizeBJ(whichUnit)
    do
        return UnitInventorySize(whichUnit)
    end
end

function SetItemInvulnerableBJ(whichItem, flag)
    SetItemInvulnerable(whichItem, flag)
end

function SetItemDropOnDeathBJ(whichItem, flag)
    SetItemDropOnDeath(whichItem, flag)
end

function SetItemDroppableBJ(whichItem, flag)
    SetItemDroppable(whichItem, flag)
end

function SetItemPlayerBJ(whichItem, whichPlayer, changeColor)
    SetItemPlayer(whichItem, whichPlayer, changeColor)
end

function SetItemVisibleBJ(show, whichItem)
    SetItemVisible(whichItem, show)
end

function IsItemHiddenBJ(whichItem)
    do
        return not IsItemVisible(whichItem)
    end
end

function ChooseRandomItemBJ(level)
    do
        return ChooseRandomItem(level)
    end
end

function ChooseRandomItemExBJ(level, whichType)
    do
        return ChooseRandomItemEx(whichType, level)
    end
end

function ChooseRandomNPBuildingBJ()
    do
        return ChooseRandomNPBuilding()
    end
end

function ChooseRandomCreepBJ(level)
    do
        return ChooseRandomCreep(level)
    end
end

function EnumItemsInRectBJ(r, actionFunc)
    EnumItemsInRect(r, nil, actionFunc)
end

function RandomItemInRectBJEnum()
    bj_itemRandomConsidered = bj_itemRandomConsidered + 1
    if (GetRandomInt(1, bj_itemRandomConsidered) == 1) then
        bj_itemRandomCurrentPick = GetEnumItem()
    end
end

function RandomItemInRectBJ(r, filter)
    bj_itemRandomConsidered = 0
    bj_itemRandomCurrentPick = nil
    EnumItemsInRect(r, filter, RandomItemInRectBJEnum)
    DestroyBoolExpr(filter)
    do
        return bj_itemRandomCurrentPick
    end
end

function RandomItemInRectSimpleBJ(r)
    do
        return RandomItemInRectBJ(r, nil)
    end
end

function CheckItemStatus(whichItem, status)
    if (status == bj_ITEM_STATUS_HIDDEN) then
        do
            return not IsItemVisible(whichItem)
        end
    elseif (status == bj_ITEM_STATUS_OWNED) then
        do
            return IsItemOwned(whichItem)
        end
    elseif (status == bj_ITEM_STATUS_INVULNERABLE) then
        do
            return IsItemInvulnerable(whichItem)
        end
    elseif (status == bj_ITEM_STATUS_POWERUP) then
        do
            return IsItemPowerup(whichItem)
        end
    elseif (status == bj_ITEM_STATUS_SELLABLE) then
        do
            return IsItemSellable(whichItem)
        end
    elseif (status == bj_ITEM_STATUS_PAWNABLE) then
        do
            return IsItemPawnable(whichItem)
        end
    else
        do
            return false
        end
    end
end

function CheckItemcodeStatus(itemId, status)
    if (status == bj_ITEMCODE_STATUS_POWERUP) then
        do
            return IsItemIdPowerup(itemId)
        end
    elseif (status == bj_ITEMCODE_STATUS_SELLABLE) then
        do
            return IsItemIdSellable(itemId)
        end
    elseif (status == bj_ITEMCODE_STATUS_PAWNABLE) then
        do
            return IsItemIdPawnable(itemId)
        end
    else
        do
            return false
        end
    end
end

function UnitId2OrderIdBJ(unitId)
    do
        return unitId
    end
end

function String2UnitIdBJ(unitIdString)
    do
        return UnitId(unitIdString)
    end
end

function UnitId2StringBJ(unitId)
    local unitString = UnitId2String(unitId)
    if (unitString ~= nil) then
        do
            return unitString
        end
    end
    do
        return ""
    end
end

function String2OrderIdBJ(orderIdString)
    local orderId = nil
    orderId = OrderId(orderIdString)
    if (orderId ~= 0) then
        do
            return orderId
        end
    end
    orderId = UnitId(orderIdString)
    if (orderId ~= 0) then
        do
            return orderId
        end
    end
    do
        return 0
    end
end

function OrderId2StringBJ(orderId)
    local orderString = nil
    orderString = OrderId2String(orderId)
    if (orderString ~= nil) then
        do
            return orderString
        end
    end
    orderString = UnitId2String(orderId)
    if (orderString ~= nil) then
        do
            return orderString
        end
    end
    do
        return ""
    end
end

function GetIssuedOrderIdBJ()
    do
        return GetIssuedOrderId()
    end
end

function GetKillingUnitBJ()
    do
        return GetKillingUnit()
    end
end

function CreateUnitAtLocSaveLast(id, unitid, loc, face)
    if (unitid == FourCC("ugol")) then
        bj_lastCreatedUnit = CreateBlightedGoldmine(id, GetLocationX(loc), GetLocationY(loc), face)
    else
        bj_lastCreatedUnit = CreateUnitAtLoc(id, unitid, loc, face)
    end
    do
        return bj_lastCreatedUnit
    end
end

function GetLastCreatedUnit()
    do
        return bj_lastCreatedUnit
    end
end

function CreateNUnitsAtLoc(count, unitId, whichPlayer, loc, face)
    GroupClear(bj_lastCreatedGroup)
    while true do
        count = count - 1
        if count < 0 then
            break
        end
        CreateUnitAtLocSaveLast(whichPlayer, unitId, loc, face)
        GroupAddUnit(bj_lastCreatedGroup, bj_lastCreatedUnit)
    end
    do
        return bj_lastCreatedGroup
    end
end

function CreateNUnitsAtLocFacingLocBJ(count, unitId, whichPlayer, loc, lookAt)
    do
        return CreateNUnitsAtLoc(count, unitId, whichPlayer, loc, AngleBetweenPoints(loc, lookAt))
    end
end

function GetLastCreatedGroupEnum()
    GroupAddUnit(bj_groupLastCreatedDest, GetEnumUnit())
end

function GetLastCreatedGroup()
    bj_groupLastCreatedDest = CreateGroup()
    ForGroup(bj_lastCreatedGroup, GetLastCreatedGroupEnum)
    do
        return bj_groupLastCreatedDest
    end
end

function CreateCorpseLocBJ(unitid, whichPlayer, loc)
    bj_lastCreatedUnit = CreateCorpse(whichPlayer, unitid, GetLocationX(loc), GetLocationY(loc), GetRandomReal(0, 360))
    do
        return bj_lastCreatedUnit
    end
end

function UnitSuspendDecayBJ(suspend, whichUnit)
    UnitSuspendDecay(whichUnit, suspend)
end

function DelayedSuspendDecayStopAnimEnum()
    local enumUnit = GetEnumUnit()
    if (GetUnitState(enumUnit, UNIT_STATE_LIFE) <= 0) then
        SetUnitTimeScale(enumUnit, 0.0001)
    end
end

function DelayedSuspendDecayBoneEnum()
    local enumUnit = GetEnumUnit()
    if (GetUnitState(enumUnit, UNIT_STATE_LIFE) <= 0) then
        UnitSuspendDecay(enumUnit, true)
        SetUnitTimeScale(enumUnit, 0.0001)
    end
end

function DelayedSuspendDecayFleshEnum()
    local enumUnit = GetEnumUnit()
    if (GetUnitState(enumUnit, UNIT_STATE_LIFE) <= 0) then
        UnitSuspendDecay(enumUnit, true)
        SetUnitTimeScale(enumUnit, 10.0)
        SetUnitAnimation(enumUnit, "decay flesh")
    end
end

function DelayedSuspendDecay()
    local boneGroup = nil
    local fleshGroup = nil
    boneGroup = bj_suspendDecayBoneGroup
    fleshGroup = bj_suspendDecayFleshGroup
    bj_suspendDecayBoneGroup = CreateGroup()
    bj_suspendDecayFleshGroup = CreateGroup()
    ForGroup(fleshGroup, DelayedSuspendDecayStopAnimEnum)
    ForGroup(boneGroup, DelayedSuspendDecayStopAnimEnum)
    TriggerSleepAction(bj_CORPSE_MAX_DEATH_TIME)
    ForGroup(fleshGroup, DelayedSuspendDecayFleshEnum)
    ForGroup(boneGroup, DelayedSuspendDecayBoneEnum)
    TriggerSleepAction(0.05)
    ForGroup(fleshGroup, DelayedSuspendDecayStopAnimEnum)
    DestroyGroup(boneGroup)
    DestroyGroup(fleshGroup)
end

function DelayedSuspendDecayCreate()
    bj_delayedSuspendDecayTrig = CreateTrigger()
    TriggerRegisterTimerExpireEvent(bj_delayedSuspendDecayTrig, bj_delayedSuspendDecayTimer)
    TriggerAddAction(bj_delayedSuspendDecayTrig, DelayedSuspendDecay)
end

function CreatePermanentCorpseLocBJ(style, unitid, whichPlayer, loc, facing)
    bj_lastCreatedUnit = CreateCorpse(whichPlayer, unitid, GetLocationX(loc), GetLocationY(loc), facing)
    SetUnitBlendTime(bj_lastCreatedUnit, 0)
    if (style == bj_CORPSETYPE_FLESH) then
        SetUnitAnimation(bj_lastCreatedUnit, "decay flesh")
        GroupAddUnit(bj_suspendDecayFleshGroup, bj_lastCreatedUnit)
    elseif (style == bj_CORPSETYPE_BONE) then
        SetUnitAnimation(bj_lastCreatedUnit, "decay bone")
        GroupAddUnit(bj_suspendDecayBoneGroup, bj_lastCreatedUnit)
    else
        SetUnitAnimation(bj_lastCreatedUnit, "decay bone")
        GroupAddUnit(bj_suspendDecayBoneGroup, bj_lastCreatedUnit)
    end
    TimerStart(bj_delayedSuspendDecayTimer, 0.05, false, nil)
    do
        return bj_lastCreatedUnit
    end
end

function GetUnitStateSwap(whichState, whichUnit)
    do
        return GetUnitState(whichUnit, whichState)
    end
end

function GetUnitStatePercent(whichUnit, whichState, whichMaxState)
    local value = GetUnitState(whichUnit, whichState)
    local maxValue = GetUnitState(whichUnit, whichMaxState)
    if (whichUnit == nil) or (maxValue == 0) then
        do
            return 0.0
        end
    end
    do
        return value / maxValue * 100.0
    end
end

function GetUnitLifePercent(whichUnit)
    do
        return GetUnitStatePercent(whichUnit, UNIT_STATE_LIFE, UNIT_STATE_MAX_LIFE)
    end
end

function GetUnitManaPercent(whichUnit)
    do
        return GetUnitStatePercent(whichUnit, UNIT_STATE_MANA, UNIT_STATE_MAX_MANA)
    end
end

function SelectUnitSingle(whichUnit)
    ClearSelection()
    SelectUnit(whichUnit, true)
end

function SelectGroupBJEnum()
    SelectUnit(GetEnumUnit(), true)
end

function SelectGroupBJ(g)
    ClearSelection()
    ForGroup(g, SelectGroupBJEnum)
end

function SelectUnitAdd(whichUnit)
    SelectUnit(whichUnit, true)
end

function SelectUnitRemove(whichUnit)
    SelectUnit(whichUnit, false)
end

function ClearSelectionForPlayer(whichPlayer)
    if (GetLocalPlayer() == whichPlayer) then
        ClearSelection()
    end
end

function SelectUnitForPlayerSingle(whichUnit, whichPlayer)
    if (GetLocalPlayer() == whichPlayer) then
        ClearSelection()
        SelectUnit(whichUnit, true)
    end
end

function SelectGroupForPlayerBJ(g, whichPlayer)
    if (GetLocalPlayer() == whichPlayer) then
        ClearSelection()
        ForGroup(g, SelectGroupBJEnum)
    end
end

function SelectUnitAddForPlayer(whichUnit, whichPlayer)
    if (GetLocalPlayer() == whichPlayer) then
        SelectUnit(whichUnit, true)
    end
end

function SelectUnitRemoveForPlayer(whichUnit, whichPlayer)
    if (GetLocalPlayer() == whichPlayer) then
        SelectUnit(whichUnit, false)
    end
end

function SetUnitLifeBJ(whichUnit, newValue)
    SetUnitState(whichUnit, UNIT_STATE_LIFE, RMaxBJ(0, newValue))
end

function SetUnitManaBJ(whichUnit, newValue)
    SetUnitState(whichUnit, UNIT_STATE_MANA, RMaxBJ(0, newValue))
end

function SetUnitLifePercentBJ(whichUnit, percent)
    SetUnitState(whichUnit, UNIT_STATE_LIFE, GetUnitState(whichUnit, UNIT_STATE_MAX_LIFE) * RMaxBJ(0, percent) * 0.01)
end

function SetUnitManaPercentBJ(whichUnit, percent)
    SetUnitState(whichUnit, UNIT_STATE_MANA, GetUnitState(whichUnit, UNIT_STATE_MAX_MANA) * RMaxBJ(0, percent) * 0.01)
end

function IsUnitDeadBJ(whichUnit)
    do
        return GetUnitState(whichUnit, UNIT_STATE_LIFE) <= 0
    end
end

function IsUnitAliveBJ(whichUnit)
    do
        return not IsUnitDeadBJ(whichUnit)
    end
end

function IsUnitGroupDeadBJEnum()
    if not IsUnitDeadBJ(GetEnumUnit()) then
        bj_isUnitGroupDeadResult = false
    end
end

function IsUnitGroupDeadBJ(g)
    local wantDestroy = bj_wantDestroyGroup
    bj_wantDestroyGroup = false
    bj_isUnitGroupDeadResult = true
    ForGroup(g, IsUnitGroupDeadBJEnum)
    if (wantDestroy) then
        DestroyGroup(g)
    end
    do
        return bj_isUnitGroupDeadResult
    end
end

function IsUnitGroupEmptyBJEnum()
    bj_isUnitGroupEmptyResult = false
end

function IsUnitGroupEmptyBJ(g)
    local wantDestroy = bj_wantDestroyGroup
    bj_wantDestroyGroup = false
    bj_isUnitGroupEmptyResult = true
    ForGroup(g, IsUnitGroupEmptyBJEnum)
    if (wantDestroy) then
        DestroyGroup(g)
    end
    do
        return bj_isUnitGroupEmptyResult
    end
end

function IsUnitGroupInRectBJEnum()
    if not RectContainsUnit(bj_isUnitGroupInRectRect, GetEnumUnit()) then
        bj_isUnitGroupInRectResult = false
    end
end

function IsUnitGroupInRectBJ(g, r)
    bj_isUnitGroupInRectResult = true
    bj_isUnitGroupInRectRect = r
    ForGroup(g, IsUnitGroupInRectBJEnum)
    do
        return bj_isUnitGroupInRectResult
    end
end

function IsUnitHiddenBJ(whichUnit)
    do
        return IsUnitHidden(whichUnit)
    end
end

function ShowUnitHide(whichUnit)
    ShowUnit(whichUnit, false)
end

function ShowUnitShow(whichUnit)
    if (IsUnitType(whichUnit, UNIT_TYPE_HERO) and IsUnitDeadBJ(whichUnit)) then
        do
            return
        end
    end
    ShowUnit(whichUnit, true)
end

function IssueHauntOrderAtLocBJFilter()
    do
        return GetUnitTypeId(GetFilterUnit()) == FourCC("ngol")
    end
end

function IssueHauntOrderAtLocBJ(whichPeon, loc)
    local g = nil
    local goldMine = nil
    g = CreateGroup()
    GroupEnumUnitsInRangeOfLoc(g, loc, 2 * bj_CELLWIDTH, filterIssueHauntOrderAtLocBJ)
    goldMine = FirstOfGroup(g)
    DestroyGroup(g)
    if (goldMine == nil) then
        do
            return false
        end
    end
    do
        return IssueTargetOrderById(whichPeon, FourCC("ugol"), goldMine)
    end
end

function IssueBuildOrderByIdLocBJ(whichPeon, unitId, loc)
    if (unitId == FourCC("ugol")) then
        do
            return IssueHauntOrderAtLocBJ(whichPeon, loc)
        end
    else
        do
            return IssueBuildOrderById(whichPeon, unitId, GetLocationX(loc), GetLocationY(loc))
        end
    end
end

function IssueTrainOrderByIdBJ(whichUnit, unitId)
    do
        return IssueImmediateOrderById(whichUnit, unitId)
    end
end

function GroupTrainOrderByIdBJ(g, unitId)
    do
        return GroupImmediateOrderById(g, unitId)
    end
end

function IssueUpgradeOrderByIdBJ(whichUnit, techId)
    do
        return IssueImmediateOrderById(whichUnit, techId)
    end
end

function GetAttackedUnitBJ()
    do
        return GetTriggerUnit()
    end
end

function SetUnitFlyHeightBJ(whichUnit, newHeight, rate)
    SetUnitFlyHeight(whichUnit, newHeight, rate)
end

function SetUnitTurnSpeedBJ(whichUnit, turnSpeed)
    SetUnitTurnSpeed(whichUnit, turnSpeed)
end

function SetUnitPropWindowBJ(whichUnit, propWindow)
    local angle = propWindow
    if (angle <= 0) then
        angle = 1
    elseif (angle >= 360) then
        angle = 359
    end
    angle = angle * bj_DEGTORAD
    SetUnitPropWindow(whichUnit, angle)
end

function GetUnitPropWindowBJ(whichUnit)
    do
        return GetUnitPropWindow(whichUnit) * bj_RADTODEG
    end
end

function GetUnitDefaultPropWindowBJ(whichUnit)
    do
        return GetUnitDefaultPropWindow(whichUnit)
    end
end

function SetUnitBlendTimeBJ(whichUnit, blendTime)
    SetUnitBlendTime(whichUnit, blendTime)
end

function SetUnitAcquireRangeBJ(whichUnit, acquireRange)
    SetUnitAcquireRange(whichUnit, acquireRange)
end

function UnitSetCanSleepBJ(whichUnit, canSleep)
    UnitAddSleep(whichUnit, canSleep)
end

function UnitCanSleepBJ(whichUnit)
    do
        return UnitCanSleep(whichUnit)
    end
end

function UnitWakeUpBJ(whichUnit)
    UnitWakeUp(whichUnit)
end

function UnitIsSleepingBJ(whichUnit)
    do
        return UnitIsSleeping(whichUnit)
    end
end

function WakePlayerUnitsEnum()
    UnitWakeUp(GetEnumUnit())
end

function WakePlayerUnits(whichPlayer)
    local g = CreateGroup()
    GroupEnumUnitsOfPlayer(g, whichPlayer, nil)
    ForGroup(g, WakePlayerUnitsEnum)
    DestroyGroup(g)
end

function EnableCreepSleepBJ(enable)
    SetPlayerState(Player(PLAYER_NEUTRAL_AGGRESSIVE), PLAYER_STATE_NO_CREEP_SLEEP, IntegerTertiaryOp(enable, 0, 1))
    if (not enable) then
        WakePlayerUnits(Player(PLAYER_NEUTRAL_AGGRESSIVE))
    end
end

function UnitGenerateAlarms(whichUnit, generate)
    do
        return UnitIgnoreAlarm(whichUnit, not generate)
    end
end

function DoesUnitGenerateAlarms(whichUnit)
    do
        return not UnitIgnoreAlarmToggled(whichUnit)
    end
end

function PauseAllUnitsBJEnum()
    PauseUnit(GetEnumUnit(), bj_pauseAllUnitsFlag)
end

function PauseAllUnitsBJ(pause)
    local index = nil
    local indexPlayer = nil
    local g = nil
    bj_pauseAllUnitsFlag = pause
    g = CreateGroup()
    index = 0
    while true do
        indexPlayer = Player(index)
        if (GetPlayerController(indexPlayer) == MAP_CONTROL_COMPUTER) then
            PauseCompAI(indexPlayer, pause)
        end
        GroupEnumUnitsOfPlayer(g, indexPlayer, nil)
        ForGroup(g, PauseAllUnitsBJEnum)
        GroupClear(g)
        index = index + 1
        if index == bj_MAX_PLAYER_SLOTS then
            break
        end
    end
    DestroyGroup(g)
end

function PauseUnitBJ(pause, whichUnit)
    PauseUnit(whichUnit, pause)
end

function IsUnitPausedBJ(whichUnit)
    do
        return IsUnitPaused(whichUnit)
    end
end

function UnitPauseTimedLifeBJ(flag, whichUnit)
    UnitPauseTimedLife(whichUnit, flag)
end

function UnitApplyTimedLifeBJ(duration, buffId, whichUnit)
    UnitApplyTimedLife(whichUnit, buffId, duration)
end

function UnitShareVisionBJ(share, whichUnit, whichPlayer)
    UnitShareVision(whichUnit, whichPlayer, share)
end

function UnitRemoveBuffsBJ(buffType, whichUnit)
    if (buffType == bj_REMOVEBUFFS_POSITIVE) then
        UnitRemoveBuffs(whichUnit, true, false)
    elseif (buffType == bj_REMOVEBUFFS_NEGATIVE) then
        UnitRemoveBuffs(whichUnit, false, true)
    elseif (buffType == bj_REMOVEBUFFS_ALL) then
        UnitRemoveBuffs(whichUnit, true, true)
    elseif (buffType == bj_REMOVEBUFFS_NONTLIFE) then
        UnitRemoveBuffsEx(whichUnit, true, true, false, false, false, true, false)
    else
    end
end

function UnitRemoveBuffsExBJ(polarity, resist, whichUnit, bTLife, bAura)
    local bPos = (polarity == bj_BUFF_POLARITY_EITHER) or (polarity == bj_BUFF_POLARITY_POSITIVE)
    local bNeg = (polarity == bj_BUFF_POLARITY_EITHER) or (polarity == bj_BUFF_POLARITY_NEGATIVE)
    local bMagic = (resist == bj_BUFF_RESIST_BOTH) or (resist == bj_BUFF_RESIST_MAGIC)
    local bPhys = (resist == bj_BUFF_RESIST_BOTH) or (resist == bj_BUFF_RESIST_PHYSICAL)
    UnitRemoveBuffsEx(whichUnit, bPos, bNeg, bMagic, bPhys, bTLife, bAura, false)
end

function UnitCountBuffsExBJ(polarity, resist, whichUnit, bTLife, bAura)
    local bPos = (polarity == bj_BUFF_POLARITY_EITHER) or (polarity == bj_BUFF_POLARITY_POSITIVE)
    local bNeg = (polarity == bj_BUFF_POLARITY_EITHER) or (polarity == bj_BUFF_POLARITY_NEGATIVE)
    local bMagic = (resist == bj_BUFF_RESIST_BOTH) or (resist == bj_BUFF_RESIST_MAGIC)
    local bPhys = (resist == bj_BUFF_RESIST_BOTH) or (resist == bj_BUFF_RESIST_PHYSICAL)
    do
        return UnitCountBuffsEx(whichUnit, bPos, bNeg, bMagic, bPhys, bTLife, bAura, false)
    end
end

function UnitRemoveAbilityBJ(abilityId, whichUnit)
    do
        return UnitRemoveAbility(whichUnit, abilityId)
    end
end

function UnitAddAbilityBJ(abilityId, whichUnit)
    do
        return UnitAddAbility(whichUnit, abilityId)
    end
end

function UnitRemoveTypeBJ(whichType, whichUnit)
    do
        return UnitRemoveType(whichUnit, whichType)
    end
end

function UnitAddTypeBJ(whichType, whichUnit)
    do
        return UnitAddType(whichUnit, whichType)
    end
end

function UnitMakeAbilityPermanentBJ(permanent, abilityId, whichUnit)
    do
        return UnitMakeAbilityPermanent(whichUnit, permanent, abilityId)
    end
end

function SetUnitExplodedBJ(whichUnit, exploded)
    SetUnitExploded(whichUnit, exploded)
end

function ExplodeUnitBJ(whichUnit)
    SetUnitExploded(whichUnit, true)
    KillUnit(whichUnit)
end

function GetTransportUnitBJ()
    do
        return GetTransportUnit()
    end
end

function GetLoadedUnitBJ()
    do
        return GetLoadedUnit()
    end
end

function IsUnitInTransportBJ(whichUnit, whichTransport)
    do
        return IsUnitInTransport(whichUnit, whichTransport)
    end
end

function IsUnitLoadedBJ(whichUnit)
    do
        return IsUnitLoaded(whichUnit)
    end
end

function IsUnitIllusionBJ(whichUnit)
    do
        return IsUnitIllusion(whichUnit)
    end
end

function ReplaceUnitBJ(whichUnit, newUnitId, unitStateMethod)
    local oldUnit = whichUnit
    local newUnit = nil
    local wasHidden = nil
    local index = nil
    local indexItem = nil
    local oldRatio = nil
    if (oldUnit == nil) then
        bj_lastReplacedUnit = oldUnit
        do
            return oldUnit
        end
    end
    wasHidden = IsUnitHidden(oldUnit)
    ShowUnit(oldUnit, false)
    if (newUnitId == FourCC("ugol")) then
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
    do
        return newUnit
    end
end

function GetLastReplacedUnitBJ()
    do
        return bj_lastReplacedUnit
    end
end

function SetUnitPositionLocFacingBJ(whichUnit, loc, facing)
    SetUnitPositionLoc(whichUnit, loc)
    SetUnitFacing(whichUnit, facing)
end

function SetUnitPositionLocFacingLocBJ(whichUnit, loc, lookAt)
    SetUnitPositionLoc(whichUnit, loc)
    SetUnitFacing(whichUnit, AngleBetweenPoints(loc, lookAt))
end

function AddItemToStockBJ(itemId, whichUnit, currentStock, stockMax)
    AddItemToStock(whichUnit, itemId, currentStock, stockMax)
end

function AddUnitToStockBJ(unitId, whichUnit, currentStock, stockMax)
    AddUnitToStock(whichUnit, unitId, currentStock, stockMax)
end

function RemoveItemFromStockBJ(itemId, whichUnit)
    RemoveItemFromStock(whichUnit, itemId)
end

function RemoveUnitFromStockBJ(unitId, whichUnit)
    RemoveUnitFromStock(whichUnit, unitId)
end

function SetUnitUseFoodBJ(enable, whichUnit)
    SetUnitUseFood(whichUnit, enable)
end

function UnitDamagePointLoc(whichUnit, delay, radius, loc, amount, whichAttack, whichDamage)
    do
        return UnitDamagePoint(whichUnit, delay, radius, GetLocationX(loc), GetLocationY(loc), amount, true, false, whichAttack, whichDamage, WEAPON_TYPE_WHOKNOWS)
    end
end

function UnitDamageTargetBJ(whichUnit, target, amount, whichAttack, whichDamage)
    do
        return UnitDamageTarget(whichUnit, target, amount, true, false, whichAttack, whichDamage, WEAPON_TYPE_WHOKNOWS)
    end
end

function CreateDestructableLoc(objectid, loc, facing, scale, variation)
    bj_lastCreatedDestructable = CreateDestructable(objectid, GetLocationX(loc), GetLocationY(loc), facing, scale, variation)
    do
        return bj_lastCreatedDestructable
    end
end

function CreateDeadDestructableLocBJ(objectid, loc, facing, scale, variation)
    bj_lastCreatedDestructable = CreateDeadDestructable(objectid, GetLocationX(loc), GetLocationY(loc), facing, scale, variation)
    do
        return bj_lastCreatedDestructable
    end
end

function GetLastCreatedDestructable()
    do
        return bj_lastCreatedDestructable
    end
end

function ShowDestructableBJ(flag, d)
    ShowDestructable(d, flag)
end

function SetDestructableInvulnerableBJ(d, flag)
    SetDestructableInvulnerable(d, flag)
end

function IsDestructableInvulnerableBJ(d)
    do
        return IsDestructableInvulnerable(d)
    end
end

function GetDestructableLoc(whichDestructable)
    do
        return Location(GetDestructableX(whichDestructable), GetDestructableY(whichDestructable))
    end
end

function EnumDestructablesInRectAll(r, actionFunc)
    EnumDestructablesInRect(r, nil, actionFunc)
end

function EnumDestructablesInCircleBJFilter()
    local destLoc = GetDestructableLoc(GetFilterDestructable())
    local result = nil
    result = DistanceBetweenPoints(destLoc, bj_enumDestructableCenter) <= bj_enumDestructableRadius
    RemoveLocation(destLoc)
    do
        return result
    end
end

function IsDestructableDeadBJ(d)
    do
        return GetDestructableLife(d) <= 0
    end
end

function IsDestructableAliveBJ(d)
    do
        return not IsDestructableDeadBJ(d)
    end
end

function RandomDestructableInRectBJEnum()
    bj_destRandomConsidered = bj_destRandomConsidered + 1
    if (GetRandomInt(1, bj_destRandomConsidered) == 1) then
        bj_destRandomCurrentPick = GetEnumDestructable()
    end
end

function RandomDestructableInRectBJ(r, filter)
    bj_destRandomConsidered = 0
    bj_destRandomCurrentPick = nil
    EnumDestructablesInRect(r, filter, RandomDestructableInRectBJEnum)
    DestroyBoolExpr(filter)
    do
        return bj_destRandomCurrentPick
    end
end

function RandomDestructableInRectSimpleBJ(r)
    do
        return RandomDestructableInRectBJ(r, nil)
    end
end

function EnumDestructablesInCircleBJ(radius, loc, actionFunc)
    local r = nil
    if (radius >= 0) then
        bj_enumDestructableCenter = loc
        bj_enumDestructableRadius = radius
        r = GetRectFromCircleBJ(loc, radius)
        EnumDestructablesInRect(r, filterEnumDestructablesInCircleBJ, actionFunc)
        RemoveRect(r)
    end
end

function SetDestructableLifePercentBJ(d, percent)
    SetDestructableLife(d, GetDestructableMaxLife(d) * percent * 0.01)
end

function SetDestructableMaxLifeBJ(d, max)
    SetDestructableMaxLife(d, max)
end

function ModifyGateBJ(gateOperation, d)
    if (gateOperation == bj_GATEOPERATION_CLOSE) then
        if (GetDestructableLife(d) <= 0) then
            DestructableRestoreLife(d, GetDestructableMaxLife(d), true)
        end
        SetDestructableAnimation(d, "stand")
    elseif (gateOperation == bj_GATEOPERATION_OPEN) then
        if (GetDestructableLife(d) > 0) then
            KillDestructable(d)
        end
        SetDestructableAnimation(d, "death alternate")
    elseif (gateOperation == bj_GATEOPERATION_DESTROY) then
        if (GetDestructableLife(d) > 0) then
            KillDestructable(d)
        end
        SetDestructableAnimation(d, "death")
    else
    end
end

function GetElevatorHeight(d)
    local height = nil
    height = 1 + R2I(GetDestructableOccluderHeight(d) / bj_CLIFFHEIGHT)
    if (height < 1) or (height > 3) then
        height = 1
    end
    do
        return height
    end
end

function ChangeElevatorHeight(d, newHeight)
    local oldHeight = nil
    newHeight = IMaxBJ(1, newHeight)
    newHeight = IMinBJ(3, newHeight)
    oldHeight = GetElevatorHeight(d)
    SetDestructableOccluderHeight(d, bj_CLIFFHEIGHT * (newHeight - 1))
    if (newHeight == 1) then
        if (oldHeight == 2) then
            SetDestructableAnimation(d, "birth")
            QueueDestructableAnimation(d, "stand")
        elseif (oldHeight == 3) then
            SetDestructableAnimation(d, "birth third")
            QueueDestructableAnimation(d, "stand")
        else
            SetDestructableAnimation(d, "stand")
        end
    elseif (newHeight == 2) then
        if (oldHeight == 1) then
            SetDestructableAnimation(d, "death")
            QueueDestructableAnimation(d, "stand second")
        elseif (oldHeight == 3) then
            SetDestructableAnimation(d, "birth second")
            QueueDestructableAnimation(d, "stand second")
        else
            SetDestructableAnimation(d, "stand second")
        end
    elseif (newHeight == 3) then
        if (oldHeight == 1) then
            SetDestructableAnimation(d, "death third")
            QueueDestructableAnimation(d, "stand third")
        elseif (oldHeight == 2) then
            SetDestructableAnimation(d, "death second")
            QueueDestructableAnimation(d, "stand third")
        else
            SetDestructableAnimation(d, "stand third")
        end
    else
    end
end

function NudgeUnitsInRectEnum()
    local nudgee = GetEnumUnit()
    SetUnitPosition(nudgee, GetUnitX(nudgee), GetUnitY(nudgee))
end

function NudgeItemsInRectEnum()
    local nudgee = GetEnumItem()
    SetItemPosition(nudgee, GetItemX(nudgee), GetItemY(nudgee))
end

function NudgeObjectsInRect(nudgeArea)
    local g = nil
    g = CreateGroup()
    GroupEnumUnitsInRect(g, nudgeArea, nil)
    ForGroup(g, NudgeUnitsInRectEnum)
    DestroyGroup(g)
    EnumItemsInRect(nudgeArea, nil, NudgeItemsInRectEnum)
end

function NearbyElevatorExistsEnum()
    local d = GetEnumDestructable()
    local dType = GetDestructableTypeId(d)
    if (dType == bj_ELEVATOR_CODE01) or (dType == bj_ELEVATOR_CODE02) then
        bj_elevatorNeighbor = d
    end
end

function NearbyElevatorExists(x, y)
    local findThreshold = 32
    local r = nil
    r = Rect(x - findThreshold, y - findThreshold, x + findThreshold, y + findThreshold)
    bj_elevatorNeighbor = nil
    EnumDestructablesInRect(r, nil, NearbyElevatorExistsEnum)
    RemoveRect(r)
    do
        return bj_elevatorNeighbor ~= nil
    end
end

function FindElevatorWallBlockerEnum()
    bj_elevatorWallBlocker = GetEnumDestructable()
end

function ChangeElevatorWallBlocker(x, y, facing, open)
    local blocker = nil
    local findThreshold = 32
    local nudgeLength = 4.25 * bj_CELLWIDTH
    local nudgeWidth = 1.25 * bj_CELLWIDTH
    local r = nil
    r = Rect(x - findThreshold, y - findThreshold, x + findThreshold, y + findThreshold)
    bj_elevatorWallBlocker = nil
    EnumDestructablesInRect(r, nil, FindElevatorWallBlockerEnum)
    RemoveRect(r)
    blocker = bj_elevatorWallBlocker
    if (blocker == nil) then
        blocker = CreateDeadDestructable(bj_ELEVATOR_BLOCKER_CODE, x, y, facing, 1, 0)
    elseif (GetDestructableTypeId(blocker) ~= bj_ELEVATOR_BLOCKER_CODE) then
        do
            return
        end
    end
    if (open) then
        if (GetDestructableLife(blocker) > 0) then
            KillDestructable(blocker)
        end
    else
        if (GetDestructableLife(blocker) <= 0) then
            DestructableRestoreLife(blocker, GetDestructableMaxLife(blocker), false)
        end
        if (facing == 0) then
            r = Rect(x - nudgeWidth / 2, y - nudgeLength / 2, x + nudgeWidth / 2, y + nudgeLength / 2)
            NudgeObjectsInRect(r)
            RemoveRect(r)
        elseif (facing == 90) then
            r = Rect(x - nudgeLength / 2, y - nudgeWidth / 2, x + nudgeLength / 2, y + nudgeWidth / 2)
            NudgeObjectsInRect(r)
            RemoveRect(r)
        else
        end
    end
end

function ChangeElevatorWalls(open, walls, d)
    local x = GetDestructableX(d)
    local y = GetDestructableY(d)
    local distToBlocker = 192
    local distToNeighbor = 256
    if (walls == bj_ELEVATOR_WALL_TYPE_ALL) or (walls == bj_ELEVATOR_WALL_TYPE_EAST) then
        if (not NearbyElevatorExists(x + distToNeighbor, y)) then
            ChangeElevatorWallBlocker(x + distToBlocker, y, 0, open)
        end
    end
    if (walls == bj_ELEVATOR_WALL_TYPE_ALL) or (walls == bj_ELEVATOR_WALL_TYPE_NORTH) then
        if (not NearbyElevatorExists(x, y + distToNeighbor)) then
            ChangeElevatorWallBlocker(x, y + distToBlocker, 90, open)
        end
    end
    if (walls == bj_ELEVATOR_WALL_TYPE_ALL) or (walls == bj_ELEVATOR_WALL_TYPE_SOUTH) then
        if (not NearbyElevatorExists(x, y - distToNeighbor)) then
            ChangeElevatorWallBlocker(x, y - distToBlocker, 90, open)
        end
    end
    if (walls == bj_ELEVATOR_WALL_TYPE_ALL) or (walls == bj_ELEVATOR_WALL_TYPE_WEST) then
        if (not NearbyElevatorExists(x - distToNeighbor, y)) then
            ChangeElevatorWallBlocker(x - distToBlocker, y, 0, open)
        end
    end
end

function WaygateActivateBJ(activate, waygate)
    WaygateActivate(waygate, activate)
end

function WaygateIsActiveBJ(waygate)
    do
        return WaygateIsActive(waygate)
    end
end

function WaygateSetDestinationLocBJ(waygate, loc)
    WaygateSetDestination(waygate, GetLocationX(loc), GetLocationY(loc))
end

function WaygateGetDestinationLocBJ(waygate)
    do
        return Location(WaygateGetDestinationX(waygate), WaygateGetDestinationY(waygate))
    end
end

function UnitSetUsesAltIconBJ(flag, whichUnit)
    UnitSetUsesAltIcon(whichUnit, flag)
end

function ForceUIKeyBJ(whichPlayer, key)
    if (GetLocalPlayer() == whichPlayer) then
        ForceUIKey(key)
    end
end

function ForceUICancelBJ(whichPlayer)
    if (GetLocalPlayer() == whichPlayer) then
        ForceUICancel()
    end
end

function ForGroupBJ(whichGroup, callback)
    local wantDestroy = bj_wantDestroyGroup
    bj_wantDestroyGroup = false
    ForGroup(whichGroup, callback)
    if (wantDestroy) then
        DestroyGroup(whichGroup)
    end
end

function GroupAddUnitSimple(whichUnit, whichGroup)
    GroupAddUnit(whichGroup, whichUnit)
end

function GroupRemoveUnitSimple(whichUnit, whichGroup)
    GroupRemoveUnit(whichGroup, whichUnit)
end

function GroupAddGroupEnum()
    GroupAddUnit(bj_groupAddGroupDest, GetEnumUnit())
end

function GroupAddGroup(sourceGroup, destGroup)
    local wantDestroy = bj_wantDestroyGroup
    bj_wantDestroyGroup = false
    bj_groupAddGroupDest = destGroup
    ForGroup(sourceGroup, GroupAddGroupEnum)
    if (wantDestroy) then
        DestroyGroup(sourceGroup)
    end
end

function GroupRemoveGroupEnum()
    GroupRemoveUnit(bj_groupRemoveGroupDest, GetEnumUnit())
end

function GroupRemoveGroup(sourceGroup, destGroup)
    local wantDestroy = bj_wantDestroyGroup
    bj_wantDestroyGroup = false
    bj_groupRemoveGroupDest = destGroup
    ForGroup(sourceGroup, GroupRemoveGroupEnum)
    if (wantDestroy) then
        DestroyGroup(sourceGroup)
    end
end

function ForceAddPlayerSimple(whichPlayer, whichForce)
    ForceAddPlayer(whichForce, whichPlayer)
end

function ForceRemovePlayerSimple(whichPlayer, whichForce)
    ForceRemovePlayer(whichForce, whichPlayer)
end

function GroupPickRandomUnitEnum()
    bj_groupRandomConsidered = bj_groupRandomConsidered + 1
    if (GetRandomInt(1, bj_groupRandomConsidered) == 1) then
        bj_groupRandomCurrentPick = GetEnumUnit()
    end
end

function GroupPickRandomUnit(whichGroup)
    local wantDestroy = bj_wantDestroyGroup
    bj_wantDestroyGroup = false
    bj_groupRandomConsidered = 0
    bj_groupRandomCurrentPick = nil
    ForGroup(whichGroup, GroupPickRandomUnitEnum)
    if (wantDestroy) then
        DestroyGroup(whichGroup)
    end
    do
        return bj_groupRandomCurrentPick
    end
end

function ForcePickRandomPlayerEnum()
    bj_forceRandomConsidered = bj_forceRandomConsidered + 1
    if (GetRandomInt(1, bj_forceRandomConsidered) == 1) then
        bj_forceRandomCurrentPick = GetEnumPlayer()
    end
end

function ForcePickRandomPlayer(whichForce)
    bj_forceRandomConsidered = 0
    bj_forceRandomCurrentPick = nil
    ForForce(whichForce, ForcePickRandomPlayerEnum)
    do
        return bj_forceRandomCurrentPick
    end
end

function EnumUnitsSelected(whichPlayer, enumFilter, enumAction)
    local g = CreateGroup()
    SyncSelections()
    GroupEnumUnitsSelected(g, whichPlayer, enumFilter)
    DestroyBoolExpr(enumFilter)
    ForGroup(g, enumAction)
    DestroyGroup(g)
end

function GetUnitsInRectMatching(r, filter)
    local g = CreateGroup()
    GroupEnumUnitsInRect(g, r, filter)
    DestroyBoolExpr(filter)
    do
        return g
    end
end

function GetUnitsInRectAll(r)
    do
        return GetUnitsInRectMatching(r, nil)
    end
end

function GetUnitsInRectOfPlayerFilter()
    do
        return GetOwningPlayer(GetFilterUnit()) == bj_groupEnumOwningPlayer
    end
end

function GetUnitsInRectOfPlayer(r, whichPlayer)
    local g = CreateGroup()
    bj_groupEnumOwningPlayer = whichPlayer
    GroupEnumUnitsInRect(g, r, filterGetUnitsInRectOfPlayer)
    do
        return g
    end
end

function GetUnitsInRangeOfLocMatching(radius, whichLocation, filter)
    local g = CreateGroup()
    GroupEnumUnitsInRangeOfLoc(g, whichLocation, radius, filter)
    DestroyBoolExpr(filter)
    do
        return g
    end
end

function GetUnitsInRangeOfLocAll(radius, whichLocation)
    do
        return GetUnitsInRangeOfLocMatching(radius, whichLocation, nil)
    end
end

function GetUnitsOfTypeIdAllFilter()
    do
        return GetUnitTypeId(GetFilterUnit()) == bj_groupEnumTypeId
    end
end

function GetUnitsOfTypeIdAll(unitid)
    local result = CreateGroup()
    local g = CreateGroup()
    local index = nil
    index = 0
    while true do
        bj_groupEnumTypeId = unitid
        GroupClear(g)
        GroupEnumUnitsOfPlayer(g, Player(index), filterGetUnitsOfTypeIdAll)
        GroupAddGroup(g, result)
        index = index + 1
        if index == bj_MAX_PLAYER_SLOTS then
            break
        end
    end
    DestroyGroup(g)
    do
        return result
    end
end

function GetUnitsOfPlayerMatching(whichPlayer, filter)
    local g = CreateGroup()
    GroupEnumUnitsOfPlayer(g, whichPlayer, filter)
    DestroyBoolExpr(filter)
    do
        return g
    end
end

function GetUnitsOfPlayerAll(whichPlayer)
    do
        return GetUnitsOfPlayerMatching(whichPlayer, nil)
    end
end

function GetUnitsOfPlayerAndTypeIdFilter()
    do
        return GetUnitTypeId(GetFilterUnit()) == bj_groupEnumTypeId
    end
end

function GetUnitsOfPlayerAndTypeId(whichPlayer, unitid)
    local g = CreateGroup()
    bj_groupEnumTypeId = unitid
    GroupEnumUnitsOfPlayer(g, whichPlayer, filterGetUnitsOfPlayerAndTypeId)
    do
        return g
    end
end

function GetUnitsSelectedAll(whichPlayer)
    local g = CreateGroup()
    SyncSelections()
    GroupEnumUnitsSelected(g, whichPlayer, nil)
    do
        return g
    end
end

function GetForceOfPlayer(whichPlayer)
    local f = CreateForce()
    ForceAddPlayer(f, whichPlayer)
    do
        return f
    end
end

function GetPlayersAll()
    do
        return bj_FORCE_ALL_PLAYERS
    end
end

function GetPlayersByMapControl(whichControl)
    local f = CreateForce()
    local playerIndex = nil
    local indexPlayer = nil
    playerIndex = 0
    while true do
        indexPlayer = Player(playerIndex)
        if GetPlayerController(indexPlayer) == whichControl then
            ForceAddPlayer(f, indexPlayer)
        end
        playerIndex = playerIndex + 1
        if playerIndex == bj_MAX_PLAYER_SLOTS then
            break
        end
    end
    do
        return f
    end
end

function GetPlayersAllies(whichPlayer)
    local f = CreateForce()
    ForceEnumAllies(f, whichPlayer, nil)
    do
        return f
    end
end

function GetPlayersEnemies(whichPlayer)
    local f = CreateForce()
    ForceEnumEnemies(f, whichPlayer, nil)
    do
        return f
    end
end

function GetPlayersMatching(filter)
    local f = CreateForce()
    ForceEnumPlayers(f, filter)
    DestroyBoolExpr(filter)
    do
        return f
    end
end

function CountUnitsInGroupEnum()
    bj_groupCountUnits = bj_groupCountUnits + 1
end

function CountUnitsInGroup(g)
    local wantDestroy = bj_wantDestroyGroup
    bj_wantDestroyGroup = false
    bj_groupCountUnits = 0
    ForGroup(g, CountUnitsInGroupEnum)
    if (wantDestroy) then
        DestroyGroup(g)
    end
    do
        return bj_groupCountUnits
    end
end

function CountPlayersInForceEnum()
    bj_forceCountPlayers = bj_forceCountPlayers + 1
end

function CountPlayersInForceBJ(f)
    bj_forceCountPlayers = 0
    ForForce(f, CountPlayersInForceEnum)
    do
        return bj_forceCountPlayers
    end
end

function GetRandomSubGroupEnum()
    if (bj_randomSubGroupWant > 0) then
        if (bj_randomSubGroupWant >= bj_randomSubGroupTotal) or (GetRandomReal(0, 1) < bj_randomSubGroupChance) then
            GroupAddUnit(bj_randomSubGroupGroup, GetEnumUnit())
            bj_randomSubGroupWant = bj_randomSubGroupWant - 1
        end
    end
    bj_randomSubGroupTotal = bj_randomSubGroupTotal - 1
end

function GetRandomSubGroup(count, sourceGroup)
    local g = CreateGroup()
    bj_randomSubGroupGroup = g
    bj_randomSubGroupWant = count
    bj_randomSubGroupTotal = CountUnitsInGroup(sourceGroup)
    if (bj_randomSubGroupWant <= 0 or bj_randomSubGroupTotal <= 0) then
        do
            return g
        end
    end
    bj_randomSubGroupChance = I2R(bj_randomSubGroupWant) / I2R(bj_randomSubGroupTotal)
    ForGroup(sourceGroup, GetRandomSubGroupEnum)
    do
        return g
    end
end

function LivingPlayerUnitsOfTypeIdFilter()
    local filterUnit = GetFilterUnit()
    do
        return IsUnitAliveBJ(filterUnit) and GetUnitTypeId(filterUnit) == bj_livingPlayerUnitsTypeId
    end
end

function CountLivingPlayerUnitsOfTypeId(unitId, whichPlayer)
    local g = nil
    local matchedCount = nil
    g = CreateGroup()
    bj_livingPlayerUnitsTypeId = unitId
    GroupEnumUnitsOfPlayer(g, whichPlayer, filterLivingPlayerUnitsOfTypeId)
    matchedCount = CountUnitsInGroup(g)
    DestroyGroup(g)
    do
        return matchedCount
    end
end

function ResetUnitAnimation(whichUnit)
    SetUnitAnimation(whichUnit, "stand")
end

function SetUnitTimeScalePercent(whichUnit, percentScale)
    SetUnitTimeScale(whichUnit, percentScale * 0.01)
end

function SetUnitScalePercent(whichUnit, percentScaleX, percentScaleY, percentScaleZ)
    SetUnitScale(whichUnit, percentScaleX * 0.01, percentScaleY * 0.01, percentScaleZ * 0.01)
end

function SetUnitVertexColorBJ(whichUnit, red, green, blue, transparency)
    SetUnitVertexColor(whichUnit, PercentTo255(red), PercentTo255(green), PercentTo255(blue), PercentTo255(100.0 - transparency))
end

function UnitAddIndicatorBJ(whichUnit, red, green, blue, transparency)
    AddIndicator(whichUnit, PercentTo255(red), PercentTo255(green), PercentTo255(blue), PercentTo255(100.0 - transparency))
end

function DestructableAddIndicatorBJ(whichDestructable, red, green, blue, transparency)
    AddIndicator(whichDestructable, PercentTo255(red), PercentTo255(green), PercentTo255(blue), PercentTo255(100.0 - transparency))
end

function ItemAddIndicatorBJ(whichItem, red, green, blue, transparency)
    AddIndicator(whichItem, PercentTo255(red), PercentTo255(green), PercentTo255(blue), PercentTo255(100.0 - transparency))
end

function SetUnitFacingToFaceLocTimed(whichUnit, target, duration)
    local unitLoc = GetUnitLoc(whichUnit)
    SetUnitFacingTimed(whichUnit, AngleBetweenPoints(unitLoc, target), duration)
    RemoveLocation(unitLoc)
end

function SetUnitFacingToFaceUnitTimed(whichUnit, target, duration)
    local unitLoc = GetUnitLoc(target)
    SetUnitFacingToFaceLocTimed(whichUnit, unitLoc, duration)
    RemoveLocation(unitLoc)
end

function QueueUnitAnimationBJ(whichUnit, whichAnimation)
    QueueUnitAnimation(whichUnit, whichAnimation)
end

function SetDestructableAnimationBJ(d, whichAnimation)
    SetDestructableAnimation(d, whichAnimation)
end

function QueueDestructableAnimationBJ(d, whichAnimation)
    QueueDestructableAnimation(d, whichAnimation)
end

function SetDestAnimationSpeedPercent(d, percentScale)
    SetDestructableAnimationSpeed(d, percentScale * 0.01)
end

function DialogDisplayBJ(flag, whichDialog, whichPlayer)
    DialogDisplay(whichPlayer, whichDialog, flag)
end

function DialogSetMessageBJ(whichDialog, message)
    DialogSetMessage(whichDialog, message)
end

function DialogAddButtonBJ(whichDialog, buttonText)
    bj_lastCreatedButton = DialogAddButton(whichDialog, buttonText, 0)
    do
        return bj_lastCreatedButton
    end
end

function DialogAddButtonWithHotkeyBJ(whichDialog, buttonText, hotkey)
    bj_lastCreatedButton = DialogAddButton(whichDialog, buttonText, hotkey)
    do
        return bj_lastCreatedButton
    end
end

function DialogClearBJ(whichDialog)
    DialogClear(whichDialog)
end

function GetLastCreatedButtonBJ()
    do
        return bj_lastCreatedButton
    end
end

function GetClickedButtonBJ()
    do
        return GetClickedButton()
    end
end

function GetClickedDialogBJ()
    do
        return GetClickedDialog()
    end
end

function SetPlayerAllianceBJ(sourcePlayer, whichAllianceSetting, value, otherPlayer)
    if (sourcePlayer == otherPlayer) then
        do
            return
        end
    end
    SetPlayerAlliance(sourcePlayer, otherPlayer, whichAllianceSetting, value)
end

function SetPlayerAllianceStateAllyBJ(sourcePlayer, otherPlayer, flag)
    SetPlayerAlliance(sourcePlayer, otherPlayer, ALLIANCE_PASSIVE, flag)
    SetPlayerAlliance(sourcePlayer, otherPlayer, ALLIANCE_HELP_REQUEST, flag)
    SetPlayerAlliance(sourcePlayer, otherPlayer, ALLIANCE_HELP_RESPONSE, flag)
    SetPlayerAlliance(sourcePlayer, otherPlayer, ALLIANCE_SHARED_XP, flag)
    SetPlayerAlliance(sourcePlayer, otherPlayer, ALLIANCE_SHARED_SPELLS, flag)
end

function SetPlayerAllianceStateVisionBJ(sourcePlayer, otherPlayer, flag)
    SetPlayerAlliance(sourcePlayer, otherPlayer, ALLIANCE_SHARED_VISION, flag)
end

function SetPlayerAllianceStateControlBJ(sourcePlayer, otherPlayer, flag)
    SetPlayerAlliance(sourcePlayer, otherPlayer, ALLIANCE_SHARED_CONTROL, flag)
end

function SetPlayerAllianceStateFullControlBJ(sourcePlayer, otherPlayer, flag)
    SetPlayerAlliance(sourcePlayer, otherPlayer, ALLIANCE_SHARED_ADVANCED_CONTROL, flag)
end

function SetPlayerAllianceStateBJ(sourcePlayer, otherPlayer, allianceState)
    if (sourcePlayer == otherPlayer) then
        do
            return
        end
    end
    if allianceState == bj_ALLIANCE_UNALLIED then
        SetPlayerAllianceStateAllyBJ(sourcePlayer, otherPlayer, false)
        SetPlayerAllianceStateVisionBJ(sourcePlayer, otherPlayer, false)
        SetPlayerAllianceStateControlBJ(sourcePlayer, otherPlayer, false)
        SetPlayerAllianceStateFullControlBJ(sourcePlayer, otherPlayer, false)
    elseif allianceState == bj_ALLIANCE_UNALLIED_VISION then
        SetPlayerAllianceStateAllyBJ(sourcePlayer, otherPlayer, false)
        SetPlayerAllianceStateVisionBJ(sourcePlayer, otherPlayer, true)
        SetPlayerAllianceStateControlBJ(sourcePlayer, otherPlayer, false)
        SetPlayerAllianceStateFullControlBJ(sourcePlayer, otherPlayer, false)
    elseif allianceState == bj_ALLIANCE_ALLIED then
        SetPlayerAllianceStateAllyBJ(sourcePlayer, otherPlayer, true)
        SetPlayerAllianceStateVisionBJ(sourcePlayer, otherPlayer, false)
        SetPlayerAllianceStateControlBJ(sourcePlayer, otherPlayer, false)
        SetPlayerAllianceStateFullControlBJ(sourcePlayer, otherPlayer, false)
    elseif allianceState == bj_ALLIANCE_ALLIED_VISION then
        SetPlayerAllianceStateAllyBJ(sourcePlayer, otherPlayer, true)
        SetPlayerAllianceStateVisionBJ(sourcePlayer, otherPlayer, true)
        SetPlayerAllianceStateControlBJ(sourcePlayer, otherPlayer, false)
        SetPlayerAllianceStateFullControlBJ(sourcePlayer, otherPlayer, false)
    elseif allianceState == bj_ALLIANCE_ALLIED_UNITS then
        SetPlayerAllianceStateAllyBJ(sourcePlayer, otherPlayer, true)
        SetPlayerAllianceStateVisionBJ(sourcePlayer, otherPlayer, true)
        SetPlayerAllianceStateControlBJ(sourcePlayer, otherPlayer, true)
        SetPlayerAllianceStateFullControlBJ(sourcePlayer, otherPlayer, false)
    elseif allianceState == bj_ALLIANCE_ALLIED_ADVUNITS then
        SetPlayerAllianceStateAllyBJ(sourcePlayer, otherPlayer, true)
        SetPlayerAllianceStateVisionBJ(sourcePlayer, otherPlayer, true)
        SetPlayerAllianceStateControlBJ(sourcePlayer, otherPlayer, true)
        SetPlayerAllianceStateFullControlBJ(sourcePlayer, otherPlayer, true)
    elseif allianceState == bj_ALLIANCE_NEUTRAL then
        SetPlayerAllianceStateAllyBJ(sourcePlayer, otherPlayer, false)
        SetPlayerAllianceStateVisionBJ(sourcePlayer, otherPlayer, false)
        SetPlayerAllianceStateControlBJ(sourcePlayer, otherPlayer, false)
        SetPlayerAllianceStateFullControlBJ(sourcePlayer, otherPlayer, false)
        SetPlayerAlliance(sourcePlayer, otherPlayer, ALLIANCE_PASSIVE, true)
    elseif allianceState == bj_ALLIANCE_NEUTRAL_VISION then
        SetPlayerAllianceStateAllyBJ(sourcePlayer, otherPlayer, false)
        SetPlayerAllianceStateVisionBJ(sourcePlayer, otherPlayer, true)
        SetPlayerAllianceStateControlBJ(sourcePlayer, otherPlayer, false)
        SetPlayerAllianceStateFullControlBJ(sourcePlayer, otherPlayer, false)
        SetPlayerAlliance(sourcePlayer, otherPlayer, ALLIANCE_PASSIVE, true)
    else
    end
end

function SetForceAllianceStateBJ(sourceForce, targetForce, allianceState)
    local sourceIndex = nil
    local targetIndex = nil
    sourceIndex = 0
    while true do
        if (sourceForce == bj_FORCE_ALL_PLAYERS or IsPlayerInForce(Player(sourceIndex), sourceForce)) then
            targetIndex = 0
            while true do
                if (targetForce == bj_FORCE_ALL_PLAYERS or IsPlayerInForce(Player(targetIndex), targetForce)) then
                    SetPlayerAllianceStateBJ(Player(sourceIndex), Player(targetIndex), allianceState)
                end
                targetIndex = targetIndex + 1
                if targetIndex == bj_MAX_PLAYER_SLOTS then
                    break
                end
            end
        end
        sourceIndex = sourceIndex + 1
        if sourceIndex == bj_MAX_PLAYER_SLOTS then
            break
        end
    end
end

function PlayersAreCoAllied(playerA, playerB)
    if (playerA == playerB) then
        do
            return true
        end
    end
    if GetPlayerAlliance(playerA, playerB, ALLIANCE_PASSIVE) then
        if GetPlayerAlliance(playerB, playerA, ALLIANCE_PASSIVE) then
            do
                return true
            end
        end
    end
    do
        return false
    end
end

function ShareEverythingWithTeamAI(whichPlayer)
    local playerIndex = nil
    local indexPlayer = nil
    playerIndex = 0
    while true do
        indexPlayer = Player(playerIndex)
        if (PlayersAreCoAllied(whichPlayer, indexPlayer) and whichPlayer ~= indexPlayer) then
            if (GetPlayerController(indexPlayer) == MAP_CONTROL_COMPUTER) then
                SetPlayerAlliance(whichPlayer, indexPlayer, ALLIANCE_SHARED_VISION, true)
                SetPlayerAlliance(whichPlayer, indexPlayer, ALLIANCE_SHARED_CONTROL, true)
                SetPlayerAlliance(whichPlayer, indexPlayer, ALLIANCE_SHARED_ADVANCED_CONTROL, true)
            end
        end
        playerIndex = playerIndex + 1
        if playerIndex == bj_MAX_PLAYERS then
            break
        end
    end
end

function ShareEverythingWithTeam(whichPlayer)
    local playerIndex = nil
    local indexPlayer = nil
    playerIndex = 0
    while true do
        indexPlayer = Player(playerIndex)
        if (PlayersAreCoAllied(whichPlayer, indexPlayer) and whichPlayer ~= indexPlayer) then
            SetPlayerAlliance(whichPlayer, indexPlayer, ALLIANCE_SHARED_VISION, true)
            SetPlayerAlliance(whichPlayer, indexPlayer, ALLIANCE_SHARED_CONTROL, true)
            SetPlayerAlliance(indexPlayer, whichPlayer, ALLIANCE_SHARED_CONTROL, true)
            SetPlayerAlliance(whichPlayer, indexPlayer, ALLIANCE_SHARED_ADVANCED_CONTROL, true)
        end
        playerIndex = playerIndex + 1
        if playerIndex == bj_MAX_PLAYERS then
            break
        end
    end
end

function ConfigureNeutralVictim()
    local index = nil
    local indexPlayer = nil
    local neutralVictim = Player(bj_PLAYER_NEUTRAL_VICTIM)
    index = 0
    while true do
        indexPlayer = Player(index)
        SetPlayerAlliance(neutralVictim, indexPlayer, ALLIANCE_PASSIVE, true)
        SetPlayerAlliance(indexPlayer, neutralVictim, ALLIANCE_PASSIVE, false)
        index = index + 1
        if index == bj_MAX_PLAYERS then
            break
        end
    end
    indexPlayer = Player(PLAYER_NEUTRAL_AGGRESSIVE)
    SetPlayerAlliance(neutralVictim, indexPlayer, ALLIANCE_PASSIVE, true)
    SetPlayerAlliance(indexPlayer, neutralVictim, ALLIANCE_PASSIVE, true)
    SetPlayerState(neutralVictim, PLAYER_STATE_GIVES_BOUNTY, 0)
end

function MakeUnitsPassiveForPlayerEnum()
    SetUnitOwner(GetEnumUnit(), Player(bj_PLAYER_NEUTRAL_VICTIM), false)
end

function MakeUnitsPassiveForPlayer(whichPlayer)
    local playerUnits = CreateGroup()
    CachePlayerHeroData(whichPlayer)
    GroupEnumUnitsOfPlayer(playerUnits, whichPlayer, nil)
    ForGroup(playerUnits, MakeUnitsPassiveForPlayerEnum)
    DestroyGroup(playerUnits)
end

function MakeUnitsPassiveForTeam(whichPlayer)
    local playerIndex = nil
    local indexPlayer = nil
    playerIndex = 0
    while true do
        indexPlayer = Player(playerIndex)
        if PlayersAreCoAllied(whichPlayer, indexPlayer) then
            MakeUnitsPassiveForPlayer(indexPlayer)
        end
        playerIndex = playerIndex + 1
        if playerIndex == bj_MAX_PLAYERS then
            break
        end
    end
end

function AllowVictoryDefeat(gameResult)
    if (gameResult == PLAYER_GAME_RESULT_VICTORY) then
        do
            return not IsNoVictoryCheat()
        end
    end
    if (gameResult == PLAYER_GAME_RESULT_DEFEAT) then
        do
            return not IsNoDefeatCheat()
        end
    end
    if (gameResult == PLAYER_GAME_RESULT_NEUTRAL) then
        do
            return (not IsNoVictoryCheat()) and (not IsNoDefeatCheat())
        end
    end
    do
        return true
    end
end

function EndGameBJ()
    EndGame(true)
end

function MeleeVictoryDialogBJ(whichPlayer, leftGame)
    local t = CreateTrigger()
    local d = DialogCreate()
    local formatString = nil
    if (leftGame) then
        formatString = GetLocalizedString("PLAYER_LEFT_GAME")
    else
        formatString = GetLocalizedString("PLAYER_VICTORIOUS")
    end
    DisplayTimedTextFromPlayer(whichPlayer, 0, 0, 60, formatString)
    DialogSetMessage(d, GetLocalizedString("GAMEOVER_VICTORY_MSG"))
    DialogAddButton(d, GetLocalizedString("GAMEOVER_CONTINUE_GAME"), GetLocalizedHotkey("GAMEOVER_CONTINUE_GAME"))
    t = CreateTrigger()
    TriggerRegisterDialogButtonEvent(t, DialogAddQuitButton(d, true, GetLocalizedString("GAMEOVER_QUIT_GAME"), GetLocalizedHotkey("GAMEOVER_QUIT_GAME")))
    DialogDisplay(whichPlayer, d, true)
    StartSoundForPlayerBJ(whichPlayer, bj_victoryDialogSound)
end

function MeleeDefeatDialogBJ(whichPlayer, leftGame)
    local t = CreateTrigger()
    local d = DialogCreate()
    local formatString = nil
    if (leftGame) then
        formatString = GetLocalizedString("PLAYER_LEFT_GAME")
    else
        formatString = GetLocalizedString("PLAYER_DEFEATED")
    end
    DisplayTimedTextFromPlayer(whichPlayer, 0, 0, 60, formatString)
    DialogSetMessage(d, GetLocalizedString("GAMEOVER_DEFEAT_MSG"))
    if (not bj_meleeGameOver and IsMapFlagSet(MAP_OBSERVERS_ON_DEATH)) then
        DialogAddButton(d, GetLocalizedString("GAMEOVER_CONTINUE_OBSERVING"), GetLocalizedHotkey("GAMEOVER_CONTINUE_OBSERVING"))
    end
    t = CreateTrigger()
    TriggerRegisterDialogButtonEvent(t, DialogAddQuitButton(d, true, GetLocalizedString("GAMEOVER_QUIT_GAME"), GetLocalizedHotkey("GAMEOVER_QUIT_GAME")))
    DialogDisplay(whichPlayer, d, true)
    StartSoundForPlayerBJ(whichPlayer, bj_defeatDialogSound)
end

function GameOverDialogBJ(whichPlayer, leftGame)
    local t = CreateTrigger()
    local d = DialogCreate()
    local s = nil
    DisplayTimedTextFromPlayer(whichPlayer, 0, 0, 60, GetLocalizedString("PLAYER_LEFT_GAME"))
    if (GetIntegerGameState(GAME_STATE_DISCONNECTED) ~= 0) then
        s = GetLocalizedString("GAMEOVER_DISCONNECTED")
    else
        s = GetLocalizedString("GAMEOVER_GAME_OVER")
    end
    DialogSetMessage(d, s)
    t = CreateTrigger()
    TriggerRegisterDialogButtonEvent(t, DialogAddQuitButton(d, true, GetLocalizedString("GAMEOVER_OK"), GetLocalizedHotkey("GAMEOVER_OK")))
    DialogDisplay(whichPlayer, d, true)
    StartSoundForPlayerBJ(whichPlayer, bj_defeatDialogSound)
end

function RemovePlayerPreserveUnitsBJ(whichPlayer, gameResult, leftGame)
    if AllowVictoryDefeat(gameResult) then
        RemovePlayer(whichPlayer, gameResult)
        if (gameResult == PLAYER_GAME_RESULT_VICTORY) then
            MeleeVictoryDialogBJ(whichPlayer, leftGame)
            do
                return
            end
        elseif (gameResult == PLAYER_GAME_RESULT_DEFEAT) then
            MeleeDefeatDialogBJ(whichPlayer, leftGame)
        else
            GameOverDialogBJ(whichPlayer, leftGame)
        end
    end
end

function CustomVictoryOkBJ()
    if bj_isSinglePlayer then
        PauseGame(false)
        SetGameDifficulty(GetDefaultDifficulty())
    end
    if (bj_changeLevelMapName == nil) then
        EndGame(bj_changeLevelShowScores)
    else
        ChangeLevel(bj_changeLevelMapName, bj_changeLevelShowScores)
    end
end

function CustomVictoryQuitBJ()
    if bj_isSinglePlayer then
        PauseGame(false)
        SetGameDifficulty(GetDefaultDifficulty())
    end
    EndGame(bj_changeLevelShowScores)
end

function CustomVictoryDialogBJ(whichPlayer)
    local t = CreateTrigger()
    local d = DialogCreate()
    DialogSetMessage(d, GetLocalizedString("GAMEOVER_VICTORY_MSG"))
    t = CreateTrigger()
    TriggerRegisterDialogButtonEvent(t, DialogAddButton(d, GetLocalizedString("GAMEOVER_CONTINUE"), GetLocalizedHotkey("GAMEOVER_CONTINUE")))
    TriggerAddAction(t, CustomVictoryOkBJ)
    t = CreateTrigger()
    TriggerRegisterDialogButtonEvent(t, DialogAddButton(d, GetLocalizedString("GAMEOVER_QUIT_MISSION"), GetLocalizedHotkey("GAMEOVER_QUIT_MISSION")))
    TriggerAddAction(t, CustomVictoryQuitBJ)
    if (GetLocalPlayer() == whichPlayer) then
        EnableUserControl(true)
        if bj_isSinglePlayer then
            PauseGame(true)
        end
        EnableUserUI(false)
    end
    DialogDisplay(whichPlayer, d, true)
    VolumeGroupSetVolumeForPlayerBJ(whichPlayer, SOUND_VOLUMEGROUP_UI, 1.0)
    StartSoundForPlayerBJ(whichPlayer, bj_victoryDialogSound)
end

function CustomVictorySkipBJ(whichPlayer)
    if (GetLocalPlayer() == whichPlayer) then
        if bj_isSinglePlayer then
            SetGameDifficulty(GetDefaultDifficulty())
        end
        if (bj_changeLevelMapName == nil) then
            EndGame(bj_changeLevelShowScores)
        else
            ChangeLevel(bj_changeLevelMapName, bj_changeLevelShowScores)
        end
    end
end

function CustomVictoryBJ(whichPlayer, showDialog, showScores)
    if AllowVictoryDefeat(PLAYER_GAME_RESULT_VICTORY) then
        RemovePlayer(whichPlayer, PLAYER_GAME_RESULT_VICTORY)
        if not bj_isSinglePlayer then
            DisplayTimedTextFromPlayer(whichPlayer, 0, 0, 60, GetLocalizedString("PLAYER_VICTORIOUS"))
        end
        if (GetPlayerController(whichPlayer) == MAP_CONTROL_USER) then
            bj_changeLevelShowScores = showScores
            if showDialog then
                CustomVictoryDialogBJ(whichPlayer)
            else
                CustomVictorySkipBJ(whichPlayer)
            end
        end
    end
end

function CustomDefeatRestartBJ()
    PauseGame(false)
    RestartGame(true)
end

function CustomDefeatReduceDifficultyBJ()
    local diff = GetGameDifficulty()
    PauseGame(false)
    if (diff == MAP_DIFFICULTY_EASY) then
    elseif (diff == MAP_DIFFICULTY_NORMAL) then
        SetGameDifficulty(MAP_DIFFICULTY_EASY)
    elseif (diff == MAP_DIFFICULTY_HARD) then
        SetGameDifficulty(MAP_DIFFICULTY_NORMAL)
    else
    end
    RestartGame(true)
end

function CustomDefeatLoadBJ()
    PauseGame(false)
    DisplayLoadDialog()
end

function CustomDefeatQuitBJ()
    if bj_isSinglePlayer then
        PauseGame(false)
    end
    SetGameDifficulty(GetDefaultDifficulty())
    EndGame(true)
end

function CustomDefeatDialogBJ(whichPlayer, message)
    local t = CreateTrigger()
    local d = DialogCreate()
    DialogSetMessage(d, message)
    if bj_isSinglePlayer then
        t = CreateTrigger()
        TriggerRegisterDialogButtonEvent(t, DialogAddButton(d, GetLocalizedString("GAMEOVER_RESTART"), GetLocalizedHotkey("GAMEOVER_RESTART")))
        TriggerAddAction(t, CustomDefeatRestartBJ)
        if (GetGameDifficulty() ~= MAP_DIFFICULTY_EASY) then
            t = CreateTrigger()
            TriggerRegisterDialogButtonEvent(t, DialogAddButton(d, GetLocalizedString("GAMEOVER_REDUCE_DIFFICULTY"), GetLocalizedHotkey("GAMEOVER_REDUCE_DIFFICULTY")))
            TriggerAddAction(t, CustomDefeatReduceDifficultyBJ)
        end
        t = CreateTrigger()
        TriggerRegisterDialogButtonEvent(t, DialogAddButton(d, GetLocalizedString("GAMEOVER_LOAD"), GetLocalizedHotkey("GAMEOVER_LOAD")))
        TriggerAddAction(t, CustomDefeatLoadBJ)
    end
    t = CreateTrigger()
    TriggerRegisterDialogButtonEvent(t, DialogAddButton(d, GetLocalizedString("GAMEOVER_QUIT_MISSION"), GetLocalizedHotkey("GAMEOVER_QUIT_MISSION")))
    TriggerAddAction(t, CustomDefeatQuitBJ)
    if (GetLocalPlayer() == whichPlayer) then
        EnableUserControl(true)
        if bj_isSinglePlayer then
            PauseGame(true)
        end
        EnableUserUI(false)
    end
    DialogDisplay(whichPlayer, d, true)
    VolumeGroupSetVolumeForPlayerBJ(whichPlayer, SOUND_VOLUMEGROUP_UI, 1.0)
    StartSoundForPlayerBJ(whichPlayer, bj_defeatDialogSound)
end

function CustomDefeatBJ(whichPlayer, message)
    if AllowVictoryDefeat(PLAYER_GAME_RESULT_DEFEAT) then
        RemovePlayer(whichPlayer, PLAYER_GAME_RESULT_DEFEAT)
        if not bj_isSinglePlayer then
            DisplayTimedTextFromPlayer(whichPlayer, 0, 0, 60, GetLocalizedString("PLAYER_DEFEATED"))
        end
        if (GetPlayerController(whichPlayer) == MAP_CONTROL_USER) then
            CustomDefeatDialogBJ(whichPlayer, message)
        end
    end
end

function SetNextLevelBJ(nextLevel)
    if (nextLevel == "") then
        bj_changeLevelMapName = nil
    else
        bj_changeLevelMapName = nextLevel
    end
end

function SetPlayerOnScoreScreenBJ(flag, whichPlayer)
    SetPlayerOnScoreScreen(whichPlayer, flag)
end

function CreateQuestBJ(questType, title, description, iconPath)
    local required = (questType == bj_QUESTTYPE_REQ_DISCOVERED) or (questType == bj_QUESTTYPE_REQ_UNDISCOVERED)
    local discovered = (questType == bj_QUESTTYPE_REQ_DISCOVERED) or (questType == bj_QUESTTYPE_OPT_DISCOVERED)
    bj_lastCreatedQuest = CreateQuest()
    QuestSetTitle(bj_lastCreatedQuest, title)
    QuestSetDescription(bj_lastCreatedQuest, description)
    QuestSetIconPath(bj_lastCreatedQuest, iconPath)
    QuestSetRequired(bj_lastCreatedQuest, required)
    QuestSetDiscovered(bj_lastCreatedQuest, discovered)
    QuestSetCompleted(bj_lastCreatedQuest, false)
    do
        return bj_lastCreatedQuest
    end
end

function DestroyQuestBJ(whichQuest)
    DestroyQuest(whichQuest)
end

function QuestSetEnabledBJ(enabled, whichQuest)
    QuestSetEnabled(whichQuest, enabled)
end

function QuestSetTitleBJ(whichQuest, title)
    QuestSetTitle(whichQuest, title)
end

function QuestSetDescriptionBJ(whichQuest, description)
    QuestSetDescription(whichQuest, description)
end

function QuestSetCompletedBJ(whichQuest, completed)
    QuestSetCompleted(whichQuest, completed)
end

function QuestSetFailedBJ(whichQuest, failed)
    QuestSetFailed(whichQuest, failed)
end

function QuestSetDiscoveredBJ(whichQuest, discovered)
    QuestSetDiscovered(whichQuest, discovered)
end

function GetLastCreatedQuestBJ()
    do
        return bj_lastCreatedQuest
    end
end

function CreateQuestItemBJ(whichQuest, description)
    bj_lastCreatedQuestItem = QuestCreateItem(whichQuest)
    QuestItemSetDescription(bj_lastCreatedQuestItem, description)
    QuestItemSetCompleted(bj_lastCreatedQuestItem, false)
    do
        return bj_lastCreatedQuestItem
    end
end

function QuestItemSetDescriptionBJ(whichQuestItem, description)
    QuestItemSetDescription(whichQuestItem, description)
end

function QuestItemSetCompletedBJ(whichQuestItem, completed)
    QuestItemSetCompleted(whichQuestItem, completed)
end

function GetLastCreatedQuestItemBJ()
    do
        return bj_lastCreatedQuestItem
    end
end

function CreateDefeatConditionBJ(description)
    bj_lastCreatedDefeatCondition = CreateDefeatCondition()
    DefeatConditionSetDescription(bj_lastCreatedDefeatCondition, description)
    do
        return bj_lastCreatedDefeatCondition
    end
end

function DestroyDefeatConditionBJ(whichCondition)
    DestroyDefeatCondition(whichCondition)
end

function DefeatConditionSetDescriptionBJ(whichCondition, description)
    DefeatConditionSetDescription(whichCondition, description)
end

function GetLastCreatedDefeatConditionBJ()
    do
        return bj_lastCreatedDefeatCondition
    end
end

function FlashQuestDialogButtonBJ()
    FlashQuestDialogButton()
end

function QuestMessageBJ(f, messageType, message)
    if (IsPlayerInForce(GetLocalPlayer(), f)) then
        if (messageType == bj_QUESTMESSAGE_DISCOVERED) then
            DisplayTimedTextToPlayer(GetLocalPlayer(), 0, 0, bj_TEXT_DELAY_QUEST, " ")
            DisplayTimedTextToPlayer(GetLocalPlayer(), 0, 0, bj_TEXT_DELAY_QUEST, message)
            StartSound(bj_questDiscoveredSound)
            FlashQuestDialogButton()
        elseif (messageType == bj_QUESTMESSAGE_UPDATED) then
            DisplayTimedTextToPlayer(GetLocalPlayer(), 0, 0, bj_TEXT_DELAY_QUESTUPDATE, " ")
            DisplayTimedTextToPlayer(GetLocalPlayer(), 0, 0, bj_TEXT_DELAY_QUESTUPDATE, message)
            StartSound(bj_questUpdatedSound)
            FlashQuestDialogButton()
        elseif (messageType == bj_QUESTMESSAGE_COMPLETED) then
            DisplayTimedTextToPlayer(GetLocalPlayer(), 0, 0, bj_TEXT_DELAY_QUESTDONE, " ")
            DisplayTimedTextToPlayer(GetLocalPlayer(), 0, 0, bj_TEXT_DELAY_QUESTDONE, message)
            StartSound(bj_questCompletedSound)
            FlashQuestDialogButton()
        elseif (messageType == bj_QUESTMESSAGE_FAILED) then
            DisplayTimedTextToPlayer(GetLocalPlayer(), 0, 0, bj_TEXT_DELAY_QUESTFAILED, " ")
            DisplayTimedTextToPlayer(GetLocalPlayer(), 0, 0, bj_TEXT_DELAY_QUESTFAILED, message)
            StartSound(bj_questFailedSound)
            FlashQuestDialogButton()
        elseif (messageType == bj_QUESTMESSAGE_REQUIREMENT) then
            DisplayTimedTextToPlayer(GetLocalPlayer(), 0, 0, bj_TEXT_DELAY_QUESTREQUIREMENT, message)
        elseif (messageType == bj_QUESTMESSAGE_MISSIONFAILED) then
            DisplayTimedTextToPlayer(GetLocalPlayer(), 0, 0, bj_TEXT_DELAY_MISSIONFAILED, " ")
            DisplayTimedTextToPlayer(GetLocalPlayer(), 0, 0, bj_TEXT_DELAY_MISSIONFAILED, message)
            StartSound(bj_questFailedSound)
        elseif (messageType == bj_QUESTMESSAGE_HINT) then
            DisplayTimedTextToPlayer(GetLocalPlayer(), 0, 0, bj_TEXT_DELAY_HINT, " ")
            DisplayTimedTextToPlayer(GetLocalPlayer(), 0, 0, bj_TEXT_DELAY_HINT, message)
            StartSound(bj_questHintSound)
        elseif (messageType == bj_QUESTMESSAGE_ALWAYSHINT) then
            DisplayTimedTextToPlayer(GetLocalPlayer(), 0, 0, bj_TEXT_DELAY_ALWAYSHINT, " ")
            DisplayTimedTextToPlayer(GetLocalPlayer(), 0, 0, bj_TEXT_DELAY_ALWAYSHINT, message)
            StartSound(bj_questHintSound)
        elseif (messageType == bj_QUESTMESSAGE_SECRET) then
            DisplayTimedTextToPlayer(GetLocalPlayer(), 0, 0, bj_TEXT_DELAY_SECRET, " ")
            DisplayTimedTextToPlayer(GetLocalPlayer(), 0, 0, bj_TEXT_DELAY_SECRET, message)
            StartSound(bj_questSecretSound)
        elseif (messageType == bj_QUESTMESSAGE_UNITACQUIRED) then
            DisplayTimedTextToPlayer(GetLocalPlayer(), 0, 0, bj_TEXT_DELAY_UNITACQUIRED, " ")
            DisplayTimedTextToPlayer(GetLocalPlayer(), 0, 0, bj_TEXT_DELAY_UNITACQUIRED, message)
            StartSound(bj_questHintSound)
        elseif (messageType == bj_QUESTMESSAGE_UNITAVAILABLE) then
            DisplayTimedTextToPlayer(GetLocalPlayer(), 0, 0, bj_TEXT_DELAY_UNITAVAILABLE, " ")
            DisplayTimedTextToPlayer(GetLocalPlayer(), 0, 0, bj_TEXT_DELAY_UNITAVAILABLE, message)
            StartSound(bj_questHintSound)
        elseif (messageType == bj_QUESTMESSAGE_ITEMACQUIRED) then
            DisplayTimedTextToPlayer(GetLocalPlayer(), 0, 0, bj_TEXT_DELAY_ITEMACQUIRED, " ")
            DisplayTimedTextToPlayer(GetLocalPlayer(), 0, 0, bj_TEXT_DELAY_ITEMACQUIRED, message)
            StartSound(bj_questItemAcquiredSound)
        elseif (messageType == bj_QUESTMESSAGE_WARNING) then
            DisplayTimedTextToPlayer(GetLocalPlayer(), 0, 0, bj_TEXT_DELAY_WARNING, " ")
            DisplayTimedTextToPlayer(GetLocalPlayer(), 0, 0, bj_TEXT_DELAY_WARNING, message)
            StartSound(bj_questWarningSound)
        else
        end
    end
end

function StartTimerBJ(t, periodic, timeout)
    bj_lastStartedTimer = t
    TimerStart(t, timeout, periodic, nil)
    do
        return bj_lastStartedTimer
    end
end

function CreateTimerBJ(periodic, timeout)
    bj_lastStartedTimer = CreateTimer()
    TimerStart(bj_lastStartedTimer, timeout, periodic, nil)
    do
        return bj_lastStartedTimer
    end
end

function DestroyTimerBJ(whichTimer)
    DestroyTimer(whichTimer)
end

function PauseTimerBJ(pause, whichTimer)
    if pause then
        PauseTimer(whichTimer)
    else
        ResumeTimer(whichTimer)
    end
end

function GetLastCreatedTimerBJ()
    do
        return bj_lastStartedTimer
    end
end

function CreateTimerDialogBJ(t, title)
    bj_lastCreatedTimerDialog = CreateTimerDialog(t)
    TimerDialogSetTitle(bj_lastCreatedTimerDialog, title)
    TimerDialogDisplay(bj_lastCreatedTimerDialog, true)
    do
        return bj_lastCreatedTimerDialog
    end
end

function DestroyTimerDialogBJ(td)
    DestroyTimerDialog(td)
end

function TimerDialogSetTitleBJ(td, title)
    TimerDialogSetTitle(td, title)
end

function TimerDialogSetTitleColorBJ(td, red, green, blue, transparency)
    TimerDialogSetTitleColor(td, PercentTo255(red), PercentTo255(green), PercentTo255(blue), PercentTo255(100.0 - transparency))
end

function TimerDialogSetTimeColorBJ(td, red, green, blue, transparency)
    TimerDialogSetTimeColor(td, PercentTo255(red), PercentTo255(green), PercentTo255(blue), PercentTo255(100.0 - transparency))
end

function TimerDialogSetSpeedBJ(td, speedMultFactor)
    TimerDialogSetSpeed(td, speedMultFactor)
end

function TimerDialogDisplayForPlayerBJ(show, td, whichPlayer)
    if (GetLocalPlayer() == whichPlayer) then
        TimerDialogDisplay(td, show)
    end
end

function TimerDialogDisplayBJ(show, td)
    TimerDialogDisplay(td, show)
end

function GetLastCreatedTimerDialogBJ()
    do
        return bj_lastCreatedTimerDialog
    end
end

function LeaderboardResizeBJ(lb)
    local size = LeaderboardGetItemCount(lb)
    if (LeaderboardGetLabelText(lb) == "") then
        size = size - 1
    end
    LeaderboardSetSizeByItemCount(lb, size)
end

function LeaderboardSetPlayerItemValueBJ(whichPlayer, lb, val)
    LeaderboardSetItemValue(lb, LeaderboardGetPlayerIndex(lb, whichPlayer), val)
end

function LeaderboardSetPlayerItemLabelBJ(whichPlayer, lb, val)
    LeaderboardSetItemLabel(lb, LeaderboardGetPlayerIndex(lb, whichPlayer), val)
end

function LeaderboardSetPlayerItemStyleBJ(whichPlayer, lb, showLabel, showValue, showIcon)
    LeaderboardSetItemStyle(lb, LeaderboardGetPlayerIndex(lb, whichPlayer), showLabel, showValue, showIcon)
end

function LeaderboardSetPlayerItemLabelColorBJ(whichPlayer, lb, red, green, blue, transparency)
    LeaderboardSetItemLabelColor(lb, LeaderboardGetPlayerIndex(lb, whichPlayer), PercentTo255(red), PercentTo255(green), PercentTo255(blue), PercentTo255(100.0 - transparency))
end

function LeaderboardSetPlayerItemValueColorBJ(whichPlayer, lb, red, green, blue, transparency)
    LeaderboardSetItemValueColor(lb, LeaderboardGetPlayerIndex(lb, whichPlayer), PercentTo255(red), PercentTo255(green), PercentTo255(blue), PercentTo255(100.0 - transparency))
end

function LeaderboardSetLabelColorBJ(lb, red, green, blue, transparency)
    LeaderboardSetLabelColor(lb, PercentTo255(red), PercentTo255(green), PercentTo255(blue), PercentTo255(100.0 - transparency))
end

function LeaderboardSetValueColorBJ(lb, red, green, blue, transparency)
    LeaderboardSetValueColor(lb, PercentTo255(red), PercentTo255(green), PercentTo255(blue), PercentTo255(100.0 - transparency))
end

function LeaderboardSetLabelBJ(lb, label)
    LeaderboardSetLabel(lb, label)
    LeaderboardResizeBJ(lb)
end

function LeaderboardSetStyleBJ(lb, showLabel, showNames, showValues, showIcons)
    LeaderboardSetStyle(lb, showLabel, showNames, showValues, showIcons)
end

function LeaderboardGetItemCountBJ(lb)
    do
        return LeaderboardGetItemCount(lb)
    end
end

function LeaderboardHasPlayerItemBJ(lb, whichPlayer)
    do
        return LeaderboardHasPlayerItem(lb, whichPlayer)
    end
end

function ForceSetLeaderboardBJ(lb, toForce)
    local index = nil
    local indexPlayer = nil
    index = 0
    while true do
        indexPlayer = Player(index)
        if IsPlayerInForce(indexPlayer, toForce) then
            PlayerSetLeaderboard(indexPlayer, lb)
        end
        index = index + 1
        if index == bj_MAX_PLAYERS then
            break
        end
    end
end

function CreateLeaderboardBJ(toForce, label)
    bj_lastCreatedLeaderboard = CreateLeaderboard()
    LeaderboardSetLabel(bj_lastCreatedLeaderboard, label)
    ForceSetLeaderboardBJ(bj_lastCreatedLeaderboard, toForce)
    LeaderboardDisplay(bj_lastCreatedLeaderboard, true)
    do
        return bj_lastCreatedLeaderboard
    end
end

function DestroyLeaderboardBJ(lb)
    DestroyLeaderboard(lb)
end

function LeaderboardDisplayBJ(show, lb)
    LeaderboardDisplay(lb, show)
end

function LeaderboardAddItemBJ(whichPlayer, lb, label, value)
    if (LeaderboardHasPlayerItem(lb, whichPlayer)) then
        LeaderboardRemovePlayerItem(lb, whichPlayer)
    end
    LeaderboardAddItem(lb, label, value, whichPlayer)
    LeaderboardResizeBJ(lb)
end

function LeaderboardRemovePlayerItemBJ(whichPlayer, lb)
    LeaderboardRemovePlayerItem(lb, whichPlayer)
    LeaderboardResizeBJ(lb)
end

function LeaderboardSortItemsBJ(lb, sortType, ascending)
    if (sortType == bj_SORTTYPE_SORTBYVALUE) then
        LeaderboardSortItemsByValue(lb, ascending)
    elseif (sortType == bj_SORTTYPE_SORTBYPLAYER) then
        LeaderboardSortItemsByPlayer(lb, ascending)
    elseif (sortType == bj_SORTTYPE_SORTBYLABEL) then
        LeaderboardSortItemsByLabel(lb, ascending)
    else
    end
end

function LeaderboardSortItemsByPlayerBJ(lb, ascending)
    LeaderboardSortItemsByPlayer(lb, ascending)
end

function LeaderboardSortItemsByLabelBJ(lb, ascending)
    LeaderboardSortItemsByLabel(lb, ascending)
end

function LeaderboardGetPlayerIndexBJ(whichPlayer, lb)
    do
        return LeaderboardGetPlayerIndex(lb, whichPlayer) + 1
    end
end

function LeaderboardGetIndexedPlayerBJ(position, lb)
    local index = nil
    local indexPlayer = nil
    index = 0
    while true do
        indexPlayer = Player(index)
        if (LeaderboardGetPlayerIndex(lb, indexPlayer) == position - 1) then
            do
                return indexPlayer
            end
        end
        index = index + 1
        if index == bj_MAX_PLAYERS then
            break
        end
    end
    do
        return Player(PLAYER_NEUTRAL_PASSIVE)
    end
end

function PlayerGetLeaderboardBJ(whichPlayer)
    do
        return PlayerGetLeaderboard(whichPlayer)
    end
end

function GetLastCreatedLeaderboard()
    do
        return bj_lastCreatedLeaderboard
    end
end

function CreateMultiboardBJ(cols, rows, title)
    bj_lastCreatedMultiboard = CreateMultiboard()
    MultiboardSetRowCount(bj_lastCreatedMultiboard, rows)
    MultiboardSetColumnCount(bj_lastCreatedMultiboard, cols)
    MultiboardSetTitleText(bj_lastCreatedMultiboard, title)
    MultiboardDisplay(bj_lastCreatedMultiboard, true)
    do
        return bj_lastCreatedMultiboard
    end
end

function DestroyMultiboardBJ(mb)
    DestroyMultiboard(mb)
end

function GetLastCreatedMultiboard()
    do
        return bj_lastCreatedMultiboard
    end
end

function MultiboardDisplayBJ(show, mb)
    MultiboardDisplay(mb, show)
end

function MultiboardMinimizeBJ(minimize, mb)
    MultiboardMinimize(mb, minimize)
end

function MultiboardSetTitleTextColorBJ(mb, red, green, blue, transparency)
    MultiboardSetTitleTextColor(mb, PercentTo255(red), PercentTo255(green), PercentTo255(blue), PercentTo255(100.0 - transparency))
end

function MultiboardAllowDisplayBJ(flag)
    MultiboardSuppressDisplay(not flag)
end

function MultiboardSetItemStyleBJ(mb, col, row, showValue, showIcon)
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
end

function MultiboardSetItemValueBJ(mb, col, row, val)
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
end

function MultiboardSetItemColorBJ(mb, col, row, red, green, blue, transparency)
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
                    MultiboardSetItemValueColor(mbitem, PercentTo255(red), PercentTo255(green), PercentTo255(blue), PercentTo255(100.0 - transparency))
                    MultiboardReleaseItem(mbitem)
                end
            end
        end
    end
end

function MultiboardSetItemWidthBJ(mb, col, row, width)
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
end

function MultiboardSetItemIconBJ(mb, col, row, iconFileName)
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
                    MultiboardSetItemIcon(mbitem, iconFileName)
                    MultiboardReleaseItem(mbitem)
                end
            end
        end
    end
end

function TextTagSize2Height(size)
    do
        return size * 0.023 / 10
    end
end

function TextTagSpeed2Velocity(speed)
    do
        return speed * 0.071 / 128
    end
end

function SetTextTagColorBJ(tt, red, green, blue, transparency)
    SetTextTagColor(tt, PercentTo255(red), PercentTo255(green), PercentTo255(blue), PercentTo255(100.0 - transparency))
end

function SetTextTagVelocityBJ(tt, speed, angle)
    local vel = TextTagSpeed2Velocity(speed)
    local xvel = vel * Cos(angle * bj_DEGTORAD)
    local yvel = vel * Sin(angle * bj_DEGTORAD)
    SetTextTagVelocity(tt, xvel, yvel)
end

function SetTextTagTextBJ(tt, s, size)
    local textHeight = TextTagSize2Height(size)
    SetTextTagText(tt, s, textHeight)
end

function SetTextTagPosBJ(tt, loc, zOffset)
    SetTextTagPos(tt, GetLocationX(loc), GetLocationY(loc), zOffset)
end

function SetTextTagPosUnitBJ(tt, whichUnit, zOffset)
    SetTextTagPosUnit(tt, whichUnit, zOffset)
end

function SetTextTagSuspendedBJ(tt, flag)
    SetTextTagSuspended(tt, flag)
end

function SetTextTagPermanentBJ(tt, flag)
    SetTextTagPermanent(tt, flag)
end

function SetTextTagAgeBJ(tt, age)
    SetTextTagAge(tt, age)
end

function SetTextTagLifespanBJ(tt, lifespan)
    SetTextTagLifespan(tt, lifespan)
end

function SetTextTagFadepointBJ(tt, fadepoint)
    SetTextTagFadepoint(tt, fadepoint)
end

function CreateTextTagLocBJ(s, loc, zOffset, size, red, green, blue, transparency)
    bj_lastCreatedTextTag = CreateTextTag()
    SetTextTagTextBJ(bj_lastCreatedTextTag, s, size)
    SetTextTagPosBJ(bj_lastCreatedTextTag, loc, zOffset)
    SetTextTagColorBJ(bj_lastCreatedTextTag, red, green, blue, transparency)
    do
        return bj_lastCreatedTextTag
    end
end

function CreateTextTagUnitBJ(s, whichUnit, zOffset, size, red, green, blue, transparency)
    bj_lastCreatedTextTag = CreateTextTag()
    SetTextTagTextBJ(bj_lastCreatedTextTag, s, size)
    SetTextTagPosUnitBJ(bj_lastCreatedTextTag, whichUnit, zOffset)
    SetTextTagColorBJ(bj_lastCreatedTextTag, red, green, blue, transparency)
    do
        return bj_lastCreatedTextTag
    end
end

function DestroyTextTagBJ(tt)
    DestroyTextTag(tt)
end

function ShowTextTagForceBJ(show, tt, whichForce)
    if (IsPlayerInForce(GetLocalPlayer(), whichForce)) then
        SetTextTagVisibility(tt, show)
    end
end

function GetLastCreatedTextTag()
    do
        return bj_lastCreatedTextTag
    end
end

function PauseGameOn()
    PauseGame(true)
end

function PauseGameOff()
    PauseGame(false)
end

function SetUserControlForceOn(whichForce)
    if (IsPlayerInForce(GetLocalPlayer(), whichForce)) then
        EnableUserControl(true)
    end
end

function SetUserControlForceOff(whichForce)
    if (IsPlayerInForce(GetLocalPlayer(), whichForce)) then
        EnableUserControl(false)
    end
end

function ShowInterfaceForceOn(whichForce, fadeDuration)
    if (IsPlayerInForce(GetLocalPlayer(), whichForce)) then
        ShowInterface(true, fadeDuration)
    end
end

function ShowInterfaceForceOff(whichForce, fadeDuration)
    if (IsPlayerInForce(GetLocalPlayer(), whichForce)) then
        ShowInterface(false, fadeDuration)
    end
end

function PingMinimapForForce(whichForce, x, y, duration)
    if (IsPlayerInForce(GetLocalPlayer(), whichForce)) then
        PingMinimap(x, y, duration)
    end
end

function PingMinimapLocForForce(whichForce, loc, duration)
    PingMinimapForForce(whichForce, GetLocationX(loc), GetLocationY(loc), duration)
end

function PingMinimapForPlayer(whichPlayer, x, y, duration)
    if (GetLocalPlayer() == whichPlayer) then
        PingMinimap(x, y, duration)
    end
end

function PingMinimapLocForPlayer(whichPlayer, loc, duration)
    PingMinimapForPlayer(whichPlayer, GetLocationX(loc), GetLocationY(loc), duration)
end

function PingMinimapForForceEx(whichForce, x, y, duration, style, red, green, blue)
    local red255 = PercentTo255(red)
    local green255 = PercentTo255(green)
    local blue255 = PercentTo255(blue)
    if (IsPlayerInForce(GetLocalPlayer(), whichForce)) then
        if (red255 == 255) and (green255 == 0) and (blue255 == 0) then
            red255 = 254
        end
        if (style == bj_MINIMAPPINGSTYLE_SIMPLE) then
            PingMinimapEx(x, y, duration, red255, green255, blue255, false)
        elseif (style == bj_MINIMAPPINGSTYLE_FLASHY) then
            PingMinimapEx(x, y, duration, red255, green255, blue255, true)
        elseif (style == bj_MINIMAPPINGSTYLE_ATTACK) then
            PingMinimapEx(x, y, duration, 255, 0, 0, false)
        else
        end
    end
end

function PingMinimapLocForForceEx(whichForce, loc, duration, style, red, green, blue)
    PingMinimapForForceEx(whichForce, GetLocationX(loc), GetLocationY(loc), duration, style, red, green, blue)
end

function EnableWorldFogBoundaryBJ(enable, f)
    if (IsPlayerInForce(GetLocalPlayer(), f)) then
        EnableWorldFogBoundary(enable)
    end
end

function EnableOcclusionBJ(enable, f)
    if (IsPlayerInForce(GetLocalPlayer(), f)) then
        EnableOcclusion(enable)
    end
end

function CancelCineSceneBJ()
    StopSoundBJ(bj_cineSceneLastSound, true)
    EndCinematicScene()
end

function TryInitCinematicBehaviorBJ()
    local index = nil
    if (bj_cineSceneBeingSkipped == nil) then
        bj_cineSceneBeingSkipped = CreateTrigger()
        index = 0
        while true do
            TriggerRegisterPlayerEvent(bj_cineSceneBeingSkipped, Player(index), EVENT_PLAYER_END_CINEMATIC)
            index = index + 1
            if index == bj_MAX_PLAYERS then
                break
            end
        end
        TriggerAddAction(bj_cineSceneBeingSkipped, CancelCineSceneBJ)
    end
end

function SetCinematicSceneBJ(soundHandle, portraitUnitId, color, speakerTitle, text, sceneDuration, voiceoverDuration)
    bj_cineSceneLastSound = soundHandle
    PlaySoundBJ(soundHandle)
    SetCinematicScene(portraitUnitId, color, speakerTitle, text, sceneDuration, voiceoverDuration)
end

function GetTransmissionDuration(soundHandle, timeType, timeVal)
    local duration = nil
    if (timeType == bj_TIMETYPE_ADD) then
        duration = GetSoundDurationBJ(soundHandle) + timeVal
    elseif (timeType == bj_TIMETYPE_SET) then
        duration = timeVal
    elseif (timeType == bj_TIMETYPE_SUB) then
        duration = GetSoundDurationBJ(soundHandle) - timeVal
    else
        duration = GetSoundDurationBJ(soundHandle)
    end
    if (duration < 0) then
        duration = 0
    end
    do
        return duration
    end
end

function WaitTransmissionDuration(soundHandle, timeType, timeVal)
    if (timeType == bj_TIMETYPE_SET) then
        TriggerSleepAction(timeVal)
    elseif (soundHandle == nil) then
        TriggerSleepAction(bj_NOTHING_SOUND_DURATION)
    elseif (timeType == bj_TIMETYPE_SUB) then
        WaitForSoundBJ(soundHandle, timeVal)
    elseif (timeType == bj_TIMETYPE_ADD) then
        WaitForSoundBJ(soundHandle, 0)
        TriggerSleepAction(timeVal)
    else
    end
end

function DoTransmissionBasicsXYBJ(unitId, color, x, y, soundHandle, unitName, message, duration)
    SetCinematicSceneBJ(soundHandle, unitId, color, unitName, message, duration + bj_TRANSMISSION_PORT_HANGTIME, duration)
    if (unitId ~= 0) then
        PingMinimap(x, y, bj_TRANSMISSION_PING_TIME)
    end
end

function TransmissionFromUnitWithNameBJ(toForce, whichUnit, unitName, soundHandle, message, timeType, timeVal, wait)
    TryInitCinematicBehaviorBJ()
    timeVal = RMaxBJ(timeVal, 0)
    bj_lastTransmissionDuration = GetTransmissionDuration(soundHandle, timeType, timeVal)
    bj_lastPlayedSound = soundHandle
    if (IsPlayerInForce(GetLocalPlayer(), toForce)) then
        if (whichUnit == nil) then
            DoTransmissionBasicsXYBJ(0, PLAYER_COLOR_RED, 0, 0, soundHandle, unitName, message, bj_lastTransmissionDuration)
        else
            DoTransmissionBasicsXYBJ(GetUnitTypeId(whichUnit), GetPlayerColor(GetOwningPlayer(whichUnit)), GetUnitX(whichUnit), GetUnitY(whichUnit), soundHandle, unitName, message, bj_lastTransmissionDuration)
            if (not IsUnitHidden(whichUnit)) then
                UnitAddIndicator(whichUnit, bj_TRANSMISSION_IND_RED, bj_TRANSMISSION_IND_BLUE, bj_TRANSMISSION_IND_GREEN, bj_TRANSMISSION_IND_ALPHA)
            end
        end
    end
    if wait and (bj_lastTransmissionDuration > 0) then
        WaitTransmissionDuration(soundHandle, timeType, timeVal)
    end
end

function TransmissionFromUnitTypeWithNameBJ(toForce, fromPlayer, unitId, unitName, loc, soundHandle, message, timeType, timeVal, wait)
    TryInitCinematicBehaviorBJ()
    timeVal = RMaxBJ(timeVal, 0)
    bj_lastTransmissionDuration = GetTransmissionDuration(soundHandle, timeType, timeVal)
    bj_lastPlayedSound = soundHandle
    if (IsPlayerInForce(GetLocalPlayer(), toForce)) then
        DoTransmissionBasicsXYBJ(unitId, GetPlayerColor(fromPlayer), GetLocationX(loc), GetLocationY(loc), soundHandle, unitName, message, bj_lastTransmissionDuration)
    end
    if wait and (bj_lastTransmissionDuration > 0) then
        WaitTransmissionDuration(soundHandle, timeType, timeVal)
    end
end

function GetLastTransmissionDurationBJ()
    do
        return bj_lastTransmissionDuration
    end
end

function ForceCinematicSubtitlesBJ(flag)
    ForceCinematicSubtitles(flag)
end

function CinematicModeExBJ(cineMode, forForce, interfaceFadeTime)
    if (not bj_gameStarted) then
        interfaceFadeTime = 0
    end
    if (cineMode) then
        if (not bj_cineModeAlreadyIn) then
            bj_cineModeAlreadyIn = true
            bj_cineModePriorSpeed = GetGameSpeed()
            bj_cineModePriorFogSetting = IsFogEnabled()
            bj_cineModePriorMaskSetting = IsFogMaskEnabled()
            bj_cineModePriorDawnDusk = IsDawnDuskEnabled()
            bj_cineModeSavedSeed = GetRandomInt(0, 1000000)
        end
        if (IsPlayerInForce(GetLocalPlayer(), forForce)) then
            ClearTextMessages()
            ShowInterface(false, interfaceFadeTime)
            EnableUserControl(false)
            EnableOcclusion(false)
            SetCineModeVolumeGroupsBJ()
        end
        SetGameSpeed(bj_CINEMODE_GAMESPEED)
        SetMapFlag(MAP_LOCK_SPEED, true)
        FogMaskEnable(false)
        FogEnable(false)
        EnableWorldFogBoundary(false)
        EnableDawnDusk(false)
        SetRandomSeed(0)
    else
        bj_cineModeAlreadyIn = false
        if (IsPlayerInForce(GetLocalPlayer(), forForce)) then
            ShowInterface(true, interfaceFadeTime)
            EnableUserControl(true)
            EnableOcclusion(true)
            VolumeGroupReset()
            EndThematicMusic()
            CameraResetSmoothingFactorBJ()
        end
        SetMapFlag(MAP_LOCK_SPEED, false)
        SetGameSpeed(bj_cineModePriorSpeed)
        FogMaskEnable(bj_cineModePriorMaskSetting)
        FogEnable(bj_cineModePriorFogSetting)
        EnableWorldFogBoundary(true)
        EnableDawnDusk(bj_cineModePriorDawnDusk)
        SetRandomSeed(bj_cineModeSavedSeed)
    end
end

function CinematicModeBJ(cineMode, forForce)
    CinematicModeExBJ(cineMode, forForce, bj_CINEMODE_INTERFACEFADE)
end

function DisplayCineFilterBJ(flag)
    DisplayCineFilter(flag)
end

function CinematicFadeCommonBJ(red, green, blue, duration, tex, startTrans, endTrans)
    if (duration == 0) then
        startTrans = endTrans
    end
    EnableUserUI(false)
    SetCineFilterTexture(tex)
    SetCineFilterBlendMode(BLEND_MODE_BLEND)
    SetCineFilterTexMapFlags(TEXMAP_FLAG_NONE)
    SetCineFilterStartUV(0, 0, 1, 1)
    SetCineFilterEndUV(0, 0, 1, 1)
    SetCineFilterStartColor(PercentTo255(red), PercentTo255(green), PercentTo255(blue), PercentTo255(100 - startTrans))
    SetCineFilterEndColor(PercentTo255(red), PercentTo255(green), PercentTo255(blue), PercentTo255(100 - endTrans))
    SetCineFilterDuration(duration)
    DisplayCineFilter(true)
end

function FinishCinematicFadeBJ()
    DestroyTimer(bj_cineFadeFinishTimer)
    bj_cineFadeFinishTimer = nil
    DisplayCineFilter(false)
    EnableUserUI(true)
end

function FinishCinematicFadeAfterBJ(duration)
    bj_cineFadeFinishTimer = CreateTimer()
    TimerStart(bj_cineFadeFinishTimer, duration, false, FinishCinematicFadeBJ)
end

function ContinueCinematicFadeBJ()
    DestroyTimer(bj_cineFadeContinueTimer)
    bj_cineFadeContinueTimer = nil
    CinematicFadeCommonBJ(bj_cineFadeContinueRed, bj_cineFadeContinueGreen, bj_cineFadeContinueBlue, bj_cineFadeContinueDuration, bj_cineFadeContinueTex, bj_cineFadeContinueTrans, 100)
end

function ContinueCinematicFadeAfterBJ(duration, red, green, blue, trans, tex)
    bj_cineFadeContinueRed = red
    bj_cineFadeContinueGreen = green
    bj_cineFadeContinueBlue = blue
    bj_cineFadeContinueTrans = trans
    bj_cineFadeContinueDuration = duration
    bj_cineFadeContinueTex = tex
    bj_cineFadeContinueTimer = CreateTimer()
    TimerStart(bj_cineFadeContinueTimer, duration, false, ContinueCinematicFadeBJ)
end

function AbortCinematicFadeBJ()
    if (bj_cineFadeContinueTimer ~= nil) then
        DestroyTimer(bj_cineFadeContinueTimer)
    end
    if (bj_cineFadeFinishTimer ~= nil) then
        DestroyTimer(bj_cineFadeFinishTimer)
    end
end

function CinematicFadeBJ(fadetype, duration, tex, red, green, blue, trans)
    if (fadetype == bj_CINEFADETYPE_FADEOUT) then
        AbortCinematicFadeBJ()
        CinematicFadeCommonBJ(red, green, blue, duration, tex, 100, trans)
    elseif (fadetype == bj_CINEFADETYPE_FADEIN) then
        AbortCinematicFadeBJ()
        CinematicFadeCommonBJ(red, green, blue, duration, tex, trans, 100)
        FinishCinematicFadeAfterBJ(duration)
    elseif (fadetype == bj_CINEFADETYPE_FADEOUTIN) then
        if (duration > 0) then
            AbortCinematicFadeBJ()
            CinematicFadeCommonBJ(red, green, blue, duration * 0.5, tex, 100, trans)
            ContinueCinematicFadeAfterBJ(duration * 0.5, red, green, blue, trans, tex)
            FinishCinematicFadeAfterBJ(duration)
        end
    else
    end
end

function CinematicFilterGenericBJ(duration, bmode, tex, red0, green0, blue0, trans0, red1, green1, blue1, trans1)
    AbortCinematicFadeBJ()
    SetCineFilterTexture(tex)
    SetCineFilterBlendMode(bmode)
    SetCineFilterTexMapFlags(TEXMAP_FLAG_NONE)
    SetCineFilterStartUV(0, 0, 1, 1)
    SetCineFilterEndUV(0, 0, 1, 1)
    SetCineFilterStartColor(PercentTo255(red0), PercentTo255(green0), PercentTo255(blue0), PercentTo255(100 - trans0))
    SetCineFilterEndColor(PercentTo255(red1), PercentTo255(green1), PercentTo255(blue1), PercentTo255(100 - trans1))
    SetCineFilterDuration(duration)
    DisplayCineFilter(true)
end

function RescueUnitBJ(whichUnit, rescuer, changeColor)
    if IsUnitDeadBJ(whichUnit) or (GetOwningPlayer(whichUnit) == rescuer) then
        do
            return
        end
    end
    StartSound(bj_rescueSound)
    SetUnitOwner(whichUnit, rescuer, changeColor)
    UnitAddIndicator(whichUnit, 0, 255, 0, 255)
    PingMinimapForPlayer(rescuer, GetUnitX(whichUnit), GetUnitY(whichUnit), bj_RESCUE_PING_TIME)
end

function TriggerActionUnitRescuedBJ()
    local theUnit = GetTriggerUnit()
    if IsUnitType(theUnit, UNIT_TYPE_STRUCTURE) then
        RescueUnitBJ(theUnit, GetOwningPlayer(GetRescuer()), bj_rescueChangeColorBldg)
    else
        RescueUnitBJ(theUnit, GetOwningPlayer(GetRescuer()), bj_rescueChangeColorUnit)
    end
end

function TryInitRescuableTriggersBJ()
    local index = nil
    if (bj_rescueUnitBehavior == nil) then
        bj_rescueUnitBehavior = CreateTrigger()
        index = 0
        while true do
            TriggerRegisterPlayerUnitEvent(bj_rescueUnitBehavior, Player(index), EVENT_PLAYER_UNIT_RESCUED, nil)
            index = index + 1
            if index == bj_MAX_PLAYER_SLOTS then
                break
            end
        end
        TriggerAddAction(bj_rescueUnitBehavior, TriggerActionUnitRescuedBJ)
    end
end

function SetRescueUnitColorChangeBJ(changeColor)
    bj_rescueChangeColorUnit = changeColor
end

function SetRescueBuildingColorChangeBJ(changeColor)
    bj_rescueChangeColorBldg = changeColor
end

function MakeUnitRescuableToForceBJEnum()
    TryInitRescuableTriggersBJ()
    SetUnitRescuable(bj_makeUnitRescuableUnit, GetEnumPlayer(), bj_makeUnitRescuableFlag)
end

function MakeUnitRescuableToForceBJ(whichUnit, isRescuable, whichForce)
    bj_makeUnitRescuableUnit = whichUnit
    bj_makeUnitRescuableFlag = isRescuable
    ForForce(whichForce, MakeUnitRescuableToForceBJEnum)
end

function InitRescuableBehaviorBJ()
    local index = nil
    index = 0
    while true do
        if (GetPlayerController(Player(index)) == MAP_CONTROL_RESCUABLE) then
            TryInitRescuableTriggersBJ()
            do
                return
            end
        end
        index = index + 1
        if index == bj_MAX_PLAYERS then
            break
        end
    end
end

function SetPlayerTechResearchedSwap(techid, levels, whichPlayer)
    SetPlayerTechResearched(whichPlayer, techid, levels)
end

function SetPlayerTechMaxAllowedSwap(techid, maximum, whichPlayer)
    SetPlayerTechMaxAllowed(whichPlayer, techid, maximum)
end

function SetPlayerMaxHeroesAllowed(maximum, whichPlayer)
    SetPlayerTechMaxAllowed(whichPlayer, FourCC("HERO"), maximum)
end

function GetPlayerTechCountSimple(techid, whichPlayer)
    do
        return GetPlayerTechCount(whichPlayer, techid, true)
    end
end

function GetPlayerTechMaxAllowedSwap(techid, whichPlayer)
    do
        return GetPlayerTechMaxAllowed(whichPlayer, techid)
    end
end

function SetPlayerAbilityAvailableBJ(avail, abilid, whichPlayer)
    SetPlayerAbilityAvailable(whichPlayer, abilid, avail)
end

function SetCampaignMenuRaceBJ(campaignNumber)
    if (campaignNumber == bj_CAMPAIGN_INDEX_T) then
        SetCampaignMenuRace(RACE_OTHER)
    elseif (campaignNumber == bj_CAMPAIGN_INDEX_H) then
        SetCampaignMenuRace(RACE_HUMAN)
    elseif (campaignNumber == bj_CAMPAIGN_INDEX_U) then
        SetCampaignMenuRace(RACE_UNDEAD)
    elseif (campaignNumber == bj_CAMPAIGN_INDEX_O) then
        SetCampaignMenuRace(RACE_ORC)
    elseif (campaignNumber == bj_CAMPAIGN_INDEX_N) then
        SetCampaignMenuRace(RACE_NIGHTELF)
    elseif (campaignNumber == bj_CAMPAIGN_INDEX_XN) then
        SetCampaignMenuRaceEx(bj_CAMPAIGN_OFFSET_XN)
    elseif (campaignNumber == bj_CAMPAIGN_INDEX_XH) then
        SetCampaignMenuRaceEx(bj_CAMPAIGN_OFFSET_XH)
    elseif (campaignNumber == bj_CAMPAIGN_INDEX_XU) then
        SetCampaignMenuRaceEx(bj_CAMPAIGN_OFFSET_XU)
    elseif (campaignNumber == bj_CAMPAIGN_INDEX_XO) then
        SetCampaignMenuRaceEx(bj_CAMPAIGN_OFFSET_XO)
    else
    end
end

function SetMissionAvailableBJ(available, missionIndex)
    local campaignNumber = missionIndex // 1000
    local missionNumber = missionIndex - campaignNumber * 1000
    SetMissionAvailable(campaignNumber, missionNumber, available)
end

function SetCampaignAvailableBJ(available, campaignNumber)
    local campaignOffset = nil
    if (campaignNumber == bj_CAMPAIGN_INDEX_H) then
        SetTutorialCleared(true)
    end
    if (campaignNumber == bj_CAMPAIGN_INDEX_XN) then
        campaignOffset = bj_CAMPAIGN_OFFSET_XN
    elseif (campaignNumber == bj_CAMPAIGN_INDEX_XH) then
        campaignOffset = bj_CAMPAIGN_OFFSET_XH
    elseif (campaignNumber == bj_CAMPAIGN_INDEX_XU) then
        campaignOffset = bj_CAMPAIGN_OFFSET_XU
    elseif (campaignNumber == bj_CAMPAIGN_INDEX_XO) then
        campaignOffset = bj_CAMPAIGN_OFFSET_XO
    else
        campaignOffset = campaignNumber
    end
    SetCampaignAvailable(campaignOffset, available)
    SetCampaignMenuRaceBJ(campaignNumber)
    ForceCampaignSelectScreen()
end

function SetCinematicAvailableBJ(available, cinematicIndex)
    if (cinematicIndex == bj_CINEMATICINDEX_TOP) then
        SetOpCinematicAvailable(bj_CAMPAIGN_INDEX_T, available)
        PlayCinematic("TutorialOp")
    elseif (cinematicIndex == bj_CINEMATICINDEX_HOP) then
        SetOpCinematicAvailable(bj_CAMPAIGN_INDEX_H, available)
        PlayCinematic("HumanOp")
    elseif (cinematicIndex == bj_CINEMATICINDEX_HED) then
        SetEdCinematicAvailable(bj_CAMPAIGN_INDEX_H, available)
        PlayCinematic("HumanEd")
    elseif (cinematicIndex == bj_CINEMATICINDEX_OOP) then
        SetOpCinematicAvailable(bj_CAMPAIGN_INDEX_O, available)
        PlayCinematic("OrcOp")
    elseif (cinematicIndex == bj_CINEMATICINDEX_OED) then
        SetEdCinematicAvailable(bj_CAMPAIGN_INDEX_O, available)
        PlayCinematic("OrcEd")
    elseif (cinematicIndex == bj_CINEMATICINDEX_UOP) then
        SetEdCinematicAvailable(bj_CAMPAIGN_INDEX_U, available)
        PlayCinematic("UndeadOp")
    elseif (cinematicIndex == bj_CINEMATICINDEX_UED) then
        SetEdCinematicAvailable(bj_CAMPAIGN_INDEX_U, available)
        PlayCinematic("UndeadEd")
    elseif (cinematicIndex == bj_CINEMATICINDEX_NOP) then
        SetEdCinematicAvailable(bj_CAMPAIGN_INDEX_N, available)
        PlayCinematic("NightElfOp")
    elseif (cinematicIndex == bj_CINEMATICINDEX_NED) then
        SetEdCinematicAvailable(bj_CAMPAIGN_INDEX_N, available)
        PlayCinematic("NightElfEd")
    elseif (cinematicIndex == bj_CINEMATICINDEX_XOP) then
        SetOpCinematicAvailable(bj_CAMPAIGN_OFFSET_XN, available)
        PlayCinematic("IntroX")
    elseif (cinematicIndex == bj_CINEMATICINDEX_XED) then
        SetEdCinematicAvailable(bj_CAMPAIGN_OFFSET_XU, available)
        PlayCinematic("OutroX")
    else
    end
end

function InitGameCacheBJ(campaignFile)
    bj_lastCreatedGameCache = InitGameCache(campaignFile)
    do
        return bj_lastCreatedGameCache
    end
end

function SaveGameCacheBJ(cache)
    do
        return SaveGameCache(cache)
    end
end

function GetLastCreatedGameCacheBJ()
    do
        return bj_lastCreatedGameCache
    end
end

function InitHashtableBJ()
    bj_lastCreatedHashtable = InitHashtable()
    do
        return bj_lastCreatedHashtable
    end
end

function GetLastCreatedHashtableBJ()
    do
        return bj_lastCreatedHashtable
    end
end

function StoreRealBJ(value, key, missionKey, cache)
    StoreReal(cache, missionKey, key, value)
end

function StoreIntegerBJ(value, key, missionKey, cache)
    StoreInteger(cache, missionKey, key, value)
end

function StoreBooleanBJ(value, key, missionKey, cache)
    StoreBoolean(cache, missionKey, key, value)
end

function StoreStringBJ(value, key, missionKey, cache)
    do
        return StoreString(cache, missionKey, key, value)
    end
end

function StoreUnitBJ(whichUnit, key, missionKey, cache)
    do
        return StoreUnit(cache, missionKey, key, whichUnit)
    end
end

function SaveRealBJ(value, key, missionKey, table)
    SaveReal(table, missionKey, key, value)
end

function SaveIntegerBJ(value, key, missionKey, table)
    SaveInteger(table, missionKey, key, value)
end

function SaveBooleanBJ(value, key, missionKey, table)
    SaveBoolean(table, missionKey, key, value)
end

function SaveStringBJ(value, key, missionKey, table)
    do
        return SaveStr(table, missionKey, key, value)
    end
end

function SavePlayerHandleBJ(whichPlayer, key, missionKey, table)
    do
        return SavePlayerHandle(table, missionKey, key, whichPlayer)
    end
end

function SaveWidgetHandleBJ(whichWidget, key, missionKey, table)
    do
        return SaveWidgetHandle(table, missionKey, key, whichWidget)
    end
end

function SaveDestructableHandleBJ(whichDestructable, key, missionKey, table)
    do
        return SaveDestructableHandle(table, missionKey, key, whichDestructable)
    end
end

function SaveItemHandleBJ(whichItem, key, missionKey, table)
    do
        return SaveItemHandle(table, missionKey, key, whichItem)
    end
end

function SaveUnitHandleBJ(whichUnit, key, missionKey, table)
    do
        return SaveUnitHandle(table, missionKey, key, whichUnit)
    end
end

function SaveAbilityHandleBJ(whichAbility, key, missionKey, table)
    do
        return SaveAbilityHandle(table, missionKey, key, whichAbility)
    end
end

function SaveTimerHandleBJ(whichTimer, key, missionKey, table)
    do
        return SaveTimerHandle(table, missionKey, key, whichTimer)
    end
end

function SaveTriggerHandleBJ(whichTrigger, key, missionKey, table)
    do
        return SaveTriggerHandle(table, missionKey, key, whichTrigger)
    end
end

function SaveTriggerConditionHandleBJ(whichTriggercondition, key, missionKey, table)
    do
        return SaveTriggerConditionHandle(table, missionKey, key, whichTriggercondition)
    end
end

function SaveTriggerActionHandleBJ(whichTriggeraction, key, missionKey, table)
    do
        return SaveTriggerActionHandle(table, missionKey, key, whichTriggeraction)
    end
end

function SaveTriggerEventHandleBJ(whichEvent, key, missionKey, table)
    do
        return SaveTriggerEventHandle(table, missionKey, key, whichEvent)
    end
end

function SaveForceHandleBJ(whichForce, key, missionKey, table)
    do
        return SaveForceHandle(table, missionKey, key, whichForce)
    end
end

function SaveGroupHandleBJ(whichGroup, key, missionKey, table)
    do
        return SaveGroupHandle(table, missionKey, key, whichGroup)
    end
end

function SaveLocationHandleBJ(whichLocation, key, missionKey, table)
    do
        return SaveLocationHandle(table, missionKey, key, whichLocation)
    end
end

function SaveRectHandleBJ(whichRect, key, missionKey, table)
    do
        return SaveRectHandle(table, missionKey, key, whichRect)
    end
end

function SaveBooleanExprHandleBJ(whichBoolexpr, key, missionKey, table)
    do
        return SaveBooleanExprHandle(table, missionKey, key, whichBoolexpr)
    end
end

function SaveSoundHandleBJ(whichSound, key, missionKey, table)
    do
        return SaveSoundHandle(table, missionKey, key, whichSound)
    end
end

function SaveEffectHandleBJ(whichEffect, key, missionKey, table)
    do
        return SaveEffectHandle(table, missionKey, key, whichEffect)
    end
end

function SaveUnitPoolHandleBJ(whichUnitpool, key, missionKey, table)
    do
        return SaveUnitPoolHandle(table, missionKey, key, whichUnitpool)
    end
end

function SaveItemPoolHandleBJ(whichItempool, key, missionKey, table)
    do
        return SaveItemPoolHandle(table, missionKey, key, whichItempool)
    end
end

function SaveQuestHandleBJ(whichQuest, key, missionKey, table)
    do
        return SaveQuestHandle(table, missionKey, key, whichQuest)
    end
end

function SaveQuestItemHandleBJ(whichQuestitem, key, missionKey, table)
    do
        return SaveQuestItemHandle(table, missionKey, key, whichQuestitem)
    end
end

function SaveDefeatConditionHandleBJ(whichDefeatcondition, key, missionKey, table)
    do
        return SaveDefeatConditionHandle(table, missionKey, key, whichDefeatcondition)
    end
end

function SaveTimerDialogHandleBJ(whichTimerdialog, key, missionKey, table)
    do
        return SaveTimerDialogHandle(table, missionKey, key, whichTimerdialog)
    end
end

function SaveLeaderboardHandleBJ(whichLeaderboard, key, missionKey, table)
    do
        return SaveLeaderboardHandle(table, missionKey, key, whichLeaderboard)
    end
end

function SaveMultiboardHandleBJ(whichMultiboard, key, missionKey, table)
    do
        return SaveMultiboardHandle(table, missionKey, key, whichMultiboard)
    end
end

function SaveMultiboardItemHandleBJ(whichMultiboarditem, key, missionKey, table)
    do
        return SaveMultiboardItemHandle(table, missionKey, key, whichMultiboarditem)
    end
end

function SaveTrackableHandleBJ(whichTrackable, key, missionKey, table)
    do
        return SaveTrackableHandle(table, missionKey, key, whichTrackable)
    end
end

function SaveDialogHandleBJ(whichDialog, key, missionKey, table)
    do
        return SaveDialogHandle(table, missionKey, key, whichDialog)
    end
end

function SaveButtonHandleBJ(whichButton, key, missionKey, table)
    do
        return SaveButtonHandle(table, missionKey, key, whichButton)
    end
end

function SaveTextTagHandleBJ(whichTexttag, key, missionKey, table)
    do
        return SaveTextTagHandle(table, missionKey, key, whichTexttag)
    end
end

function SaveLightningHandleBJ(whichLightning, key, missionKey, table)
    do
        return SaveLightningHandle(table, missionKey, key, whichLightning)
    end
end

function SaveImageHandleBJ(whichImage, key, missionKey, table)
    do
        return SaveImageHandle(table, missionKey, key, whichImage)
    end
end

function SaveUbersplatHandleBJ(whichUbersplat, key, missionKey, table)
    do
        return SaveUbersplatHandle(table, missionKey, key, whichUbersplat)
    end
end

function SaveRegionHandleBJ(whichRegion, key, missionKey, table)
    do
        return SaveRegionHandle(table, missionKey, key, whichRegion)
    end
end

function SaveFogStateHandleBJ(whichFogState, key, missionKey, table)
    do
        return SaveFogStateHandle(table, missionKey, key, whichFogState)
    end
end

function SaveFogModifierHandleBJ(whichFogModifier, key, missionKey, table)
    do
        return SaveFogModifierHandle(table, missionKey, key, whichFogModifier)
    end
end

function SaveAgentHandleBJ(whichAgent, key, missionKey, table)
    do
        return SaveAgentHandle(table, missionKey, key, whichAgent)
    end
end

function SaveHashtableHandleBJ(whichHashtable, key, missionKey, table)
    do
        return SaveHashtableHandle(table, missionKey, key, whichHashtable)
    end
end

function GetStoredRealBJ(key, missionKey, cache)
    do
        return GetStoredReal(cache, missionKey, key)
    end
end

function GetStoredIntegerBJ(key, missionKey, cache)
    do
        return GetStoredInteger(cache, missionKey, key)
    end
end

function GetStoredBooleanBJ(key, missionKey, cache)
    do
        return GetStoredBoolean(cache, missionKey, key)
    end
end

function GetStoredStringBJ(key, missionKey, cache)
    local s = nil
    s = GetStoredString(cache, missionKey, key)
    if (s == nil) then
        do
            return ""
        end
    else
        do
            return s
        end
    end
end

function LoadRealBJ(key, missionKey, table)
    do
        return LoadReal(table, missionKey, key)
    end
end

function LoadIntegerBJ(key, missionKey, table)
    do
        return LoadInteger(table, missionKey, key)
    end
end

function LoadBooleanBJ(key, missionKey, table)
    do
        return LoadBoolean(table, missionKey, key)
    end
end

function LoadStringBJ(key, missionKey, table)
    local s = nil
    s = LoadStr(table, missionKey, key)
    if (s == nil) then
        do
            return ""
        end
    else
        do
            return s
        end
    end
end

function LoadPlayerHandleBJ(key, missionKey, table)
    do
        return LoadPlayerHandle(table, missionKey, key)
    end
end

function LoadWidgetHandleBJ(key, missionKey, table)
    do
        return LoadWidgetHandle(table, missionKey, key)
    end
end

function LoadDestructableHandleBJ(key, missionKey, table)
    do
        return LoadDestructableHandle(table, missionKey, key)
    end
end

function LoadItemHandleBJ(key, missionKey, table)
    do
        return LoadItemHandle(table, missionKey, key)
    end
end

function LoadUnitHandleBJ(key, missionKey, table)
    do
        return LoadUnitHandle(table, missionKey, key)
    end
end

function LoadAbilityHandleBJ(key, missionKey, table)
    do
        return LoadAbilityHandle(table, missionKey, key)
    end
end

function LoadTimerHandleBJ(key, missionKey, table)
    do
        return LoadTimerHandle(table, missionKey, key)
    end
end

function LoadTriggerHandleBJ(key, missionKey, table)
    do
        return LoadTriggerHandle(table, missionKey, key)
    end
end

function LoadTriggerConditionHandleBJ(key, missionKey, table)
    do
        return LoadTriggerConditionHandle(table, missionKey, key)
    end
end

function LoadTriggerActionHandleBJ(key, missionKey, table)
    do
        return LoadTriggerActionHandle(table, missionKey, key)
    end
end

function LoadTriggerEventHandleBJ(key, missionKey, table)
    do
        return LoadTriggerEventHandle(table, missionKey, key)
    end
end

function LoadForceHandleBJ(key, missionKey, table)
    do
        return LoadForceHandle(table, missionKey, key)
    end
end

function LoadGroupHandleBJ(key, missionKey, table)
    do
        return LoadGroupHandle(table, missionKey, key)
    end
end

function LoadLocationHandleBJ(key, missionKey, table)
    do
        return LoadLocationHandle(table, missionKey, key)
    end
end

function LoadRectHandleBJ(key, missionKey, table)
    do
        return LoadRectHandle(table, missionKey, key)
    end
end

function LoadBooleanExprHandleBJ(key, missionKey, table)
    do
        return LoadBooleanExprHandle(table, missionKey, key)
    end
end

function LoadSoundHandleBJ(key, missionKey, table)
    do
        return LoadSoundHandle(table, missionKey, key)
    end
end

function LoadEffectHandleBJ(key, missionKey, table)
    do
        return LoadEffectHandle(table, missionKey, key)
    end
end

function LoadUnitPoolHandleBJ(key, missionKey, table)
    do
        return LoadUnitPoolHandle(table, missionKey, key)
    end
end

function LoadItemPoolHandleBJ(key, missionKey, table)
    do
        return LoadItemPoolHandle(table, missionKey, key)
    end
end

function LoadQuestHandleBJ(key, missionKey, table)
    do
        return LoadQuestHandle(table, missionKey, key)
    end
end

function LoadQuestItemHandleBJ(key, missionKey, table)
    do
        return LoadQuestItemHandle(table, missionKey, key)
    end
end

function LoadDefeatConditionHandleBJ(key, missionKey, table)
    do
        return LoadDefeatConditionHandle(table, missionKey, key)
    end
end

function LoadTimerDialogHandleBJ(key, missionKey, table)
    do
        return LoadTimerDialogHandle(table, missionKey, key)
    end
end

function LoadLeaderboardHandleBJ(key, missionKey, table)
    do
        return LoadLeaderboardHandle(table, missionKey, key)
    end
end

function LoadMultiboardHandleBJ(key, missionKey, table)
    do
        return LoadMultiboardHandle(table, missionKey, key)
    end
end

function LoadMultiboardItemHandleBJ(key, missionKey, table)
    do
        return LoadMultiboardItemHandle(table, missionKey, key)
    end
end

function LoadTrackableHandleBJ(key, missionKey, table)
    do
        return LoadTrackableHandle(table, missionKey, key)
    end
end

function LoadDialogHandleBJ(key, missionKey, table)
    do
        return LoadDialogHandle(table, missionKey, key)
    end
end

function LoadButtonHandleBJ(key, missionKey, table)
    do
        return LoadButtonHandle(table, missionKey, key)
    end
end

function LoadTextTagHandleBJ(key, missionKey, table)
    do
        return LoadTextTagHandle(table, missionKey, key)
    end
end

function LoadLightningHandleBJ(key, missionKey, table)
    do
        return LoadLightningHandle(table, missionKey, key)
    end
end

function LoadImageHandleBJ(key, missionKey, table)
    do
        return LoadImageHandle(table, missionKey, key)
    end
end

function LoadUbersplatHandleBJ(key, missionKey, table)
    do
        return LoadUbersplatHandle(table, missionKey, key)
    end
end

function LoadRegionHandleBJ(key, missionKey, table)
    do
        return LoadRegionHandle(table, missionKey, key)
    end
end

function LoadFogStateHandleBJ(key, missionKey, table)
    do
        return LoadFogStateHandle(table, missionKey, key)
    end
end

function LoadFogModifierHandleBJ(key, missionKey, table)
    do
        return LoadFogModifierHandle(table, missionKey, key)
    end
end

function LoadHashtableHandleBJ(key, missionKey, table)
    do
        return LoadHashtableHandle(table, missionKey, key)
    end
end

function RestoreUnitLocFacingAngleBJ(key, missionKey, cache, forWhichPlayer, loc, facing)
    bj_lastLoadedUnit = RestoreUnit(cache, missionKey, key, forWhichPlayer, GetLocationX(loc), GetLocationY(loc), facing)
    do
        return bj_lastLoadedUnit
    end
end

function RestoreUnitLocFacingPointBJ(key, missionKey, cache, forWhichPlayer, loc, lookAt)
    do
        return RestoreUnitLocFacingAngleBJ(key, missionKey, cache, forWhichPlayer, loc, AngleBetweenPoints(loc, lookAt))
    end
end

function GetLastRestoredUnitBJ()
    do
        return bj_lastLoadedUnit
    end
end

function FlushGameCacheBJ(cache)
    FlushGameCache(cache)
end

function FlushStoredMissionBJ(missionKey, cache)
    FlushStoredMission(cache, missionKey)
end

function FlushParentHashtableBJ(table)
    FlushParentHashtable(table)
end

function FlushChildHashtableBJ(missionKey, table)
    FlushChildHashtable(table, missionKey)
end

function HaveStoredValue(key, valueType, missionKey, cache)
    if (valueType == bj_GAMECACHE_BOOLEAN) then
        do
            return HaveStoredBoolean(cache, missionKey, key)
        end
    elseif (valueType == bj_GAMECACHE_INTEGER) then
        do
            return HaveStoredInteger(cache, missionKey, key)
        end
    elseif (valueType == bj_GAMECACHE_REAL) then
        do
            return HaveStoredReal(cache, missionKey, key)
        end
    elseif (valueType == bj_GAMECACHE_UNIT) then
        do
            return HaveStoredUnit(cache, missionKey, key)
        end
    elseif (valueType == bj_GAMECACHE_STRING) then
        do
            return HaveStoredString(cache, missionKey, key)
        end
    else
        do
            return false
        end
    end
end

function HaveSavedValue(key, valueType, missionKey, table)
    if (valueType == bj_HASHTABLE_BOOLEAN) then
        do
            return HaveSavedBoolean(table, missionKey, key)
        end
    elseif (valueType == bj_HASHTABLE_INTEGER) then
        do
            return HaveSavedInteger(table, missionKey, key)
        end
    elseif (valueType == bj_HASHTABLE_REAL) then
        do
            return HaveSavedReal(table, missionKey, key)
        end
    elseif (valueType == bj_HASHTABLE_STRING) then
        do
            return HaveSavedString(table, missionKey, key)
        end
    elseif (valueType == bj_HASHTABLE_HANDLE) then
        do
            return HaveSavedHandle(table, missionKey, key)
        end
    else
        do
            return false
        end
    end
end

function ShowCustomCampaignButton(show, whichButton)
    SetCustomCampaignButtonVisible(whichButton - 1, show)
end

function IsCustomCampaignButtonVisibile(whichButton)
    do
        return GetCustomCampaignButtonVisible(whichButton - 1)
    end
end

function LoadGameBJ(loadFileName, doScoreScreen)
    LoadGame(loadFileName, doScoreScreen)
end

function SaveAndChangeLevelBJ(saveFileName, newLevel, doScoreScreen)
    SaveGame(saveFileName)
    ChangeLevel(newLevel, doScoreScreen)
end

function SaveAndLoadGameBJ(saveFileName, loadFileName, doScoreScreen)
    SaveGame(saveFileName)
    LoadGame(loadFileName, doScoreScreen)
end

function RenameSaveDirectoryBJ(sourceDirName, destDirName)
    do
        return RenameSaveDirectory(sourceDirName, destDirName)
    end
end

function RemoveSaveDirectoryBJ(sourceDirName)
    do
        return RemoveSaveDirectory(sourceDirName)
    end
end

function CopySaveGameBJ(sourceSaveName, destSaveName)
    do
        return CopySaveGame(sourceSaveName, destSaveName)
    end
end

function GetPlayerStartLocationX(whichPlayer)
    do
        return GetStartLocationX(GetPlayerStartLocation(whichPlayer))
    end
end

function GetPlayerStartLocationY(whichPlayer)
    do
        return GetStartLocationY(GetPlayerStartLocation(whichPlayer))
    end
end

function GetPlayerStartLocationLoc(whichPlayer)
    do
        return GetStartLocationLoc(GetPlayerStartLocation(whichPlayer))
    end
end

function GetRectCenter(whichRect)
    do
        return Location(GetRectCenterX(whichRect), GetRectCenterY(whichRect))
    end
end

function IsPlayerSlotState(whichPlayer, whichState)
    do
        return GetPlayerSlotState(whichPlayer) == whichState
    end
end

function GetFadeFromSeconds(seconds)
    if (seconds ~= 0) then
        do
            return 128 // R2I(seconds)
        end
    end
    do
        return 10000
    end
end

function GetFadeFromSecondsAsReal(seconds)
    if (seconds ~= 0) then
        do
            return 128.00 / seconds
        end
    end
    do
        return 10000.00
    end
end

function AdjustPlayerStateSimpleBJ(whichPlayer, whichPlayerState, delta)
    SetPlayerState(whichPlayer, whichPlayerState, GetPlayerState(whichPlayer, whichPlayerState) + delta)
end

function AdjustPlayerStateBJ(delta, whichPlayer, whichPlayerState)
    if (delta > 0) then
        if (whichPlayerState == PLAYER_STATE_RESOURCE_GOLD) then
            AdjustPlayerStateSimpleBJ(whichPlayer, PLAYER_STATE_GOLD_GATHERED, delta)
        elseif (whichPlayerState == PLAYER_STATE_RESOURCE_LUMBER) then
            AdjustPlayerStateSimpleBJ(whichPlayer, PLAYER_STATE_LUMBER_GATHERED, delta)
        end
    end
    AdjustPlayerStateSimpleBJ(whichPlayer, whichPlayerState, delta)
end

function SetPlayerStateBJ(whichPlayer, whichPlayerState, value)
    local oldValue = GetPlayerState(whichPlayer, whichPlayerState)
    AdjustPlayerStateBJ(value - oldValue, whichPlayer, whichPlayerState)
end

function SetPlayerFlagBJ(whichPlayerFlag, flag, whichPlayer)
    SetPlayerState(whichPlayer, whichPlayerFlag, IntegerTertiaryOp(flag, 1, 0))
end

function SetPlayerTaxRateBJ(rate, whichResource, sourcePlayer, otherPlayer)
    SetPlayerTaxRate(sourcePlayer, otherPlayer, whichResource, rate)
end

function GetPlayerTaxRateBJ(whichResource, sourcePlayer, otherPlayer)
    do
        return GetPlayerTaxRate(sourcePlayer, otherPlayer, whichResource)
    end
end

function IsPlayerFlagSetBJ(whichPlayerFlag, whichPlayer)
    do
        return GetPlayerState(whichPlayer, whichPlayerFlag) == 1
    end
end

function AddResourceAmountBJ(delta, whichUnit)
    AddResourceAmount(whichUnit, delta)
end

function GetConvertedPlayerId(whichPlayer)
    do
        return GetPlayerId(whichPlayer) + 1
    end
end

function ConvertedPlayer(convertedPlayerId)
    do
        return Player(convertedPlayerId - 1)
    end
end

function GetRectWidthBJ(r)
    do
        return GetRectMaxX(r) - GetRectMinX(r)
    end
end

function GetRectHeightBJ(r)
    do
        return GetRectMaxY(r) - GetRectMinY(r)
    end
end

function BlightGoldMineForPlayerBJ(goldMine, whichPlayer)
    local mineX = nil
    local mineY = nil
    local mineGold = nil
    local newMine = nil
    if GetUnitTypeId(goldMine) ~= FourCC("ngol") then
        do
            return nil
        end
    end
    mineX = GetUnitX(goldMine)
    mineY = GetUnitY(goldMine)
    mineGold = GetResourceAmount(goldMine)
    RemoveUnit(goldMine)
    newMine = CreateBlightedGoldmine(whichPlayer, mineX, mineY, bj_UNIT_FACING)
    SetResourceAmount(newMine, mineGold)
    do
        return newMine
    end
end

function BlightGoldMineForPlayer(goldMine, whichPlayer)
    bj_lastHauntedGoldMine = BlightGoldMineForPlayerBJ(goldMine, whichPlayer)
    do
        return bj_lastHauntedGoldMine
    end
end

function GetLastHauntedGoldMine()
    do
        return bj_lastHauntedGoldMine
    end
end

function IsPointBlightedBJ(where)
    do
        return IsPointBlighted(GetLocationX(where), GetLocationY(where))
    end
end

function SetPlayerColorBJEnum()
    SetUnitColor(GetEnumUnit(), bj_setPlayerTargetColor)
end

function SetPlayerColorBJ(whichPlayer, color, changeExisting)
    local g = nil
    SetPlayerColor(whichPlayer, color)
    if changeExisting then
        bj_setPlayerTargetColor = color
        g = CreateGroup()
        GroupEnumUnitsOfPlayer(g, whichPlayer, nil)
        ForGroup(g, SetPlayerColorBJEnum)
        DestroyGroup(g)
    end
end

function SetPlayerUnitAvailableBJ(unitId, allowed, whichPlayer)
    if allowed then
        SetPlayerTechMaxAllowed(whichPlayer, unitId, -1)
    else
        SetPlayerTechMaxAllowed(whichPlayer, unitId, 0)
    end
end

function LockGameSpeedBJ()
    SetMapFlag(MAP_LOCK_SPEED, true)
end

function UnlockGameSpeedBJ()
    SetMapFlag(MAP_LOCK_SPEED, false)
end

function IssueTargetOrderBJ(whichUnit, order, targetWidget)
    do
        return IssueTargetOrder(whichUnit, order, targetWidget)
    end
end

function IssuePointOrderLocBJ(whichUnit, order, whichLocation)
    do
        return IssuePointOrderLoc(whichUnit, order, whichLocation)
    end
end

function IssueTargetDestructableOrder(whichUnit, order, targetWidget)
    do
        return IssueTargetOrder(whichUnit, order, targetWidget)
    end
end

function IssueTargetItemOrder(whichUnit, order, targetWidget)
    do
        return IssueTargetOrder(whichUnit, order, targetWidget)
    end
end

function IssueImmediateOrderBJ(whichUnit, order)
    do
        return IssueImmediateOrder(whichUnit, order)
    end
end

function GroupTargetOrderBJ(whichGroup, order, targetWidget)
    do
        return GroupTargetOrder(whichGroup, order, targetWidget)
    end
end

function GroupPointOrderLocBJ(whichGroup, order, whichLocation)
    do
        return GroupPointOrderLoc(whichGroup, order, whichLocation)
    end
end

function GroupImmediateOrderBJ(whichGroup, order)
    do
        return GroupImmediateOrder(whichGroup, order)
    end
end

function GroupTargetDestructableOrder(whichGroup, order, targetWidget)
    do
        return GroupTargetOrder(whichGroup, order, targetWidget)
    end
end

function GroupTargetItemOrder(whichGroup, order, targetWidget)
    do
        return GroupTargetOrder(whichGroup, order, targetWidget)
    end
end

function GetDyingDestructable()
    do
        return GetTriggerDestructable()
    end
end

function SetUnitRallyPoint(whichUnit, targPos)
    IssuePointOrderLocBJ(whichUnit, "setrally", targPos)
end

function SetUnitRallyUnit(whichUnit, targUnit)
    IssueTargetOrder(whichUnit, "setrally", targUnit)
end

function SetUnitRallyDestructable(whichUnit, targDest)
    IssueTargetOrder(whichUnit, "setrally", targDest)
end

function SaveDyingWidget()
    bj_lastDyingWidget = GetTriggerWidget()
end

function SetBlightRectBJ(addBlight, whichPlayer, r)
    SetBlightRect(whichPlayer, r, addBlight)
end

function SetBlightRadiusLocBJ(addBlight, whichPlayer, loc, radius)
    SetBlightLoc(whichPlayer, loc, radius, addBlight)
end

function GetAbilityName(abilcode)
    do
        return GetObjectName(abilcode)
    end
end

function MeleeStartingVisibility()
    SetFloatGameState(GAME_STATE_TIME_OF_DAY, bj_MELEE_STARTING_TOD)
end

function MeleeStartingResources()
    local index = nil
    local indexPlayer = nil
    local v = nil
    local startingGold = nil
    local startingLumber = nil
    v = VersionGet()
    if (v == VERSION_REIGN_OF_CHAOS) then
        startingGold = bj_MELEE_STARTING_GOLD_V0
        startingLumber = bj_MELEE_STARTING_LUMBER_V0
    else
        startingGold = bj_MELEE_STARTING_GOLD_V1
        startingLumber = bj_MELEE_STARTING_LUMBER_V1
    end
    index = 0
    while true do
        indexPlayer = Player(index)
        if (GetPlayerSlotState(indexPlayer) == PLAYER_SLOT_STATE_PLAYING) then
            SetPlayerState(indexPlayer, PLAYER_STATE_RESOURCE_GOLD, startingGold)
            SetPlayerState(indexPlayer, PLAYER_STATE_RESOURCE_LUMBER, startingLumber)
        end
        index = index + 1
        if index == bj_MAX_PLAYERS then
            break
        end
    end
end

function ReducePlayerTechMaxAllowed(whichPlayer, techId, limit)
    local oldMax = GetPlayerTechMaxAllowed(whichPlayer, techId)
    if (oldMax < 0 or oldMax > limit) then
        SetPlayerTechMaxAllowed(whichPlayer, techId, limit)
    end
end

function MeleeStartingHeroLimit()
    local index = nil
    index = 0
    while true do
        SetPlayerMaxHeroesAllowed(bj_MELEE_HERO_LIMIT, Player(index))
        ReducePlayerTechMaxAllowed(Player(index), FourCC("Hamg"), bj_MELEE_HERO_TYPE_LIMIT)
        ReducePlayerTechMaxAllowed(Player(index), FourCC("Hmkg"), bj_MELEE_HERO_TYPE_LIMIT)
        ReducePlayerTechMaxAllowed(Player(index), FourCC("Hpal"), bj_MELEE_HERO_TYPE_LIMIT)
        ReducePlayerTechMaxAllowed(Player(index), FourCC("Hblm"), bj_MELEE_HERO_TYPE_LIMIT)
        ReducePlayerTechMaxAllowed(Player(index), FourCC("Obla"), bj_MELEE_HERO_TYPE_LIMIT)
        ReducePlayerTechMaxAllowed(Player(index), FourCC("Ofar"), bj_MELEE_HERO_TYPE_LIMIT)
        ReducePlayerTechMaxAllowed(Player(index), FourCC("Otch"), bj_MELEE_HERO_TYPE_LIMIT)
        ReducePlayerTechMaxAllowed(Player(index), FourCC("Oshd"), bj_MELEE_HERO_TYPE_LIMIT)
        ReducePlayerTechMaxAllowed(Player(index), FourCC("Edem"), bj_MELEE_HERO_TYPE_LIMIT)
        ReducePlayerTechMaxAllowed(Player(index), FourCC("Ekee"), bj_MELEE_HERO_TYPE_LIMIT)
        ReducePlayerTechMaxAllowed(Player(index), FourCC("Emoo"), bj_MELEE_HERO_TYPE_LIMIT)
        ReducePlayerTechMaxAllowed(Player(index), FourCC("Ewar"), bj_MELEE_HERO_TYPE_LIMIT)
        ReducePlayerTechMaxAllowed(Player(index), FourCC("Udea"), bj_MELEE_HERO_TYPE_LIMIT)
        ReducePlayerTechMaxAllowed(Player(index), FourCC("Udre"), bj_MELEE_HERO_TYPE_LIMIT)
        ReducePlayerTechMaxAllowed(Player(index), FourCC("Ulic"), bj_MELEE_HERO_TYPE_LIMIT)
        ReducePlayerTechMaxAllowed(Player(index), FourCC("Ucrl"), bj_MELEE_HERO_TYPE_LIMIT)
        ReducePlayerTechMaxAllowed(Player(index), FourCC("Npbm"), bj_MELEE_HERO_TYPE_LIMIT)
        ReducePlayerTechMaxAllowed(Player(index), FourCC("Nbrn"), bj_MELEE_HERO_TYPE_LIMIT)
        ReducePlayerTechMaxAllowed(Player(index), FourCC("Nngs"), bj_MELEE_HERO_TYPE_LIMIT)
        ReducePlayerTechMaxAllowed(Player(index), FourCC("Nplh"), bj_MELEE_HERO_TYPE_LIMIT)
        ReducePlayerTechMaxAllowed(Player(index), FourCC("Nbst"), bj_MELEE_HERO_TYPE_LIMIT)
        ReducePlayerTechMaxAllowed(Player(index), FourCC("Nalc"), bj_MELEE_HERO_TYPE_LIMIT)
        ReducePlayerTechMaxAllowed(Player(index), FourCC("Ntin"), bj_MELEE_HERO_TYPE_LIMIT)
        ReducePlayerTechMaxAllowed(Player(index), FourCC("Nfir"), bj_MELEE_HERO_TYPE_LIMIT)
        index = index + 1
        if index == bj_MAX_PLAYERS then
            break
        end
    end
end

function MeleeTrainedUnitIsHeroBJFilter()
    do
        return IsUnitType(GetFilterUnit(), UNIT_TYPE_HERO)
    end
end

function MeleeGrantItemsToHero(whichUnit)
    local owner = GetPlayerId(GetOwningPlayer(whichUnit))
    if (bj_meleeTwinkedHeroes[owner] < bj_MELEE_MAX_TWINKED_HEROES) then
        UnitAddItemById(whichUnit, FourCC("stwp"))
        bj_meleeTwinkedHeroes[owner] = bj_meleeTwinkedHeroes[owner] + 1
    end
end

function MeleeGrantItemsToTrainedHero()
    MeleeGrantItemsToHero(GetTrainedUnit())
end

function MeleeGrantItemsToHiredHero()
    MeleeGrantItemsToHero(GetSoldUnit())
end

function MeleeGrantHeroItems()
    local index = nil
    local trig = nil
    index = 0
    while true do
        bj_meleeTwinkedHeroes[index] = 0
        index = index + 1
        if index == bj_MAX_PLAYER_SLOTS then
            break
        end
    end
    index = 0
    while true do
        trig = CreateTrigger()
        TriggerRegisterPlayerUnitEvent(trig, Player(index), EVENT_PLAYER_UNIT_TRAIN_FINISH, filterMeleeTrainedUnitIsHeroBJ)
        TriggerAddAction(trig, MeleeGrantItemsToTrainedHero)
        index = index + 1
        if index == bj_MAX_PLAYERS then
            break
        end
    end
    trig = CreateTrigger()
    TriggerRegisterPlayerUnitEvent(trig, Player(PLAYER_NEUTRAL_PASSIVE), EVENT_PLAYER_UNIT_SELL, filterMeleeTrainedUnitIsHeroBJ)
    TriggerAddAction(trig, MeleeGrantItemsToHiredHero)
    bj_meleeGrantHeroItems = true
end

function MeleeClearExcessUnit()
    local theUnit = GetEnumUnit()
    local owner = GetPlayerId(GetOwningPlayer(theUnit))
    if (owner == PLAYER_NEUTRAL_AGGRESSIVE) then
        RemoveUnit(GetEnumUnit())
    elseif (owner == PLAYER_NEUTRAL_PASSIVE) then
        if not IsUnitType(theUnit, UNIT_TYPE_STRUCTURE) then
            RemoveUnit(GetEnumUnit())
        end
    end
end

function MeleeClearNearbyUnits(x, y, range)
    local nearbyUnits = nil
    nearbyUnits = CreateGroup()
    GroupEnumUnitsInRange(nearbyUnits, x, y, range, nil)
    ForGroup(nearbyUnits, MeleeClearExcessUnit)
    DestroyGroup(nearbyUnits)
end

function MeleeClearExcessUnits()
    local index = nil
    local locX = nil
    local locY = nil
    local indexPlayer = nil
    index = 0
    while true do
        indexPlayer = Player(index)
        if (GetPlayerSlotState(indexPlayer) == PLAYER_SLOT_STATE_PLAYING) then
            locX = GetStartLocationX(GetPlayerStartLocation(indexPlayer))
            locY = GetStartLocationY(GetPlayerStartLocation(indexPlayer))
            MeleeClearNearbyUnits(locX, locY, bj_MELEE_CLEAR_UNITS_RADIUS)
        end
        index = index + 1
        if index == bj_MAX_PLAYERS then
            break
        end
    end
end

function MeleeEnumFindNearestMine()
    local enumUnit = GetEnumUnit()
    local dist = nil
    local unitLoc = nil
    if (GetUnitTypeId(enumUnit) == FourCC("ngol")) then
        unitLoc = GetUnitLoc(enumUnit)
        dist = DistanceBetweenPoints(unitLoc, bj_meleeNearestMineToLoc)
        RemoveLocation(unitLoc)
        if (bj_meleeNearestMineDist < 0) or (dist < bj_meleeNearestMineDist) then
            bj_meleeNearestMine = enumUnit
            bj_meleeNearestMineDist = dist
        end
    end
end

function MeleeFindNearestMine(src, range)
    local nearbyMines = nil
    bj_meleeNearestMine = nil
    bj_meleeNearestMineDist = -1
    bj_meleeNearestMineToLoc = src
    nearbyMines = CreateGroup()
    GroupEnumUnitsInRangeOfLoc(nearbyMines, src, range, nil)
    ForGroup(nearbyMines, MeleeEnumFindNearestMine)
    DestroyGroup(nearbyMines)
    do
        return bj_meleeNearestMine
    end
end

function MeleeRandomHeroLoc(p, id1, id2, id3, id4, loc)
    local hero = nil
    local roll = nil
    local pick = nil
    local v = nil
    v = VersionGet()
    if (v == VERSION_REIGN_OF_CHAOS) then
        roll = GetRandomInt(1, 3)
    else
        roll = GetRandomInt(1, 4)
    end
    if roll == 1 then
        pick = id1
    elseif roll == 2 then
        pick = id2
    elseif roll == 3 then
        pick = id3
    elseif roll == 4 then
        pick = id4
    else
        pick = id1
    end
    hero = CreateUnitAtLoc(p, pick, loc, bj_UNIT_FACING)
    if bj_meleeGrantHeroItems then
        MeleeGrantItemsToHero(hero)
    end
    do
        return hero
    end
end

function MeleeGetProjectedLoc(src, targ, distance, deltaAngle)
    local srcX = GetLocationX(src)
    local srcY = GetLocationY(src)
    local direction = Atan2(GetLocationY(targ) - srcY, GetLocationX(targ) - srcX) + deltaAngle
    do
        return Location(srcX + distance * Cos(direction), srcY + distance * Sin(direction))
    end
end

function MeleeGetNearestValueWithin(val, minVal, maxVal)
    if (val < minVal) then
        do
            return minVal
        end
    elseif (val > maxVal) then
        do
            return maxVal
        end
    else
        do
            return val
        end
    end
end

function MeleeGetLocWithinRect(src, r)
    local withinX = MeleeGetNearestValueWithin(GetLocationX(src), GetRectMinX(r), GetRectMaxX(r))
    local withinY = MeleeGetNearestValueWithin(GetLocationY(src), GetRectMinY(r), GetRectMaxY(r))
    do
        return Location(withinX, withinY)
    end
end

function MeleeStartingUnitsHuman(whichPlayer, startLoc, doHeroes, doCamera, doPreload)
    local useRandomHero = IsMapFlagSet(MAP_RANDOM_HERO)
    local unitSpacing = 64.00
    local nearestMine = nil
    local nearMineLoc = nil
    local heroLoc = nil
    local peonX = nil
    local peonY = nil
    local townHall = nil
    if (doPreload) then
        Preloader("scripts\\HumanMelee.pld")
    end
    nearestMine = MeleeFindNearestMine(startLoc, bj_MELEE_MINE_SEARCH_RADIUS)
    if (nearestMine ~= nil) then
        townHall = CreateUnitAtLoc(whichPlayer, FourCC("htow"), startLoc, bj_UNIT_FACING)
        nearMineLoc = MeleeGetProjectedLoc(GetUnitLoc(nearestMine), startLoc, 320, 0)
        peonX = GetLocationX(nearMineLoc)
        peonY = GetLocationY(nearMineLoc)
        CreateUnit(whichPlayer, FourCC("hpea"), peonX + 0.00 * unitSpacing, peonY + 1.00 * unitSpacing, bj_UNIT_FACING)
        CreateUnit(whichPlayer, FourCC("hpea"), peonX + 1.00 * unitSpacing, peonY + 0.15 * unitSpacing, bj_UNIT_FACING)
        CreateUnit(whichPlayer, FourCC("hpea"), peonX - 1.00 * unitSpacing, peonY + 0.15 * unitSpacing, bj_UNIT_FACING)
        CreateUnit(whichPlayer, FourCC("hpea"), peonX + 0.60 * unitSpacing, peonY - 1.00 * unitSpacing, bj_UNIT_FACING)
        CreateUnit(whichPlayer, FourCC("hpea"), peonX - 0.60 * unitSpacing, peonY - 1.00 * unitSpacing, bj_UNIT_FACING)
        heroLoc = MeleeGetProjectedLoc(GetUnitLoc(nearestMine), startLoc, 384, 45)
    else
        townHall = CreateUnitAtLoc(whichPlayer, FourCC("htow"), startLoc, bj_UNIT_FACING)
        peonX = GetLocationX(startLoc)
        peonY = GetLocationY(startLoc) - 224.00
        CreateUnit(whichPlayer, FourCC("hpea"), peonX + 2.00 * unitSpacing, peonY + 0.00 * unitSpacing, bj_UNIT_FACING)
        CreateUnit(whichPlayer, FourCC("hpea"), peonX + 1.00 * unitSpacing, peonY + 0.00 * unitSpacing, bj_UNIT_FACING)
        CreateUnit(whichPlayer, FourCC("hpea"), peonX + 0.00 * unitSpacing, peonY + 0.00 * unitSpacing, bj_UNIT_FACING)
        CreateUnit(whichPlayer, FourCC("hpea"), peonX - 1.00 * unitSpacing, peonY + 0.00 * unitSpacing, bj_UNIT_FACING)
        CreateUnit(whichPlayer, FourCC("hpea"), peonX - 2.00 * unitSpacing, peonY + 0.00 * unitSpacing, bj_UNIT_FACING)
        heroLoc = Location(peonX, peonY - 2.00 * unitSpacing)
    end
    if (townHall ~= nil) then
        UnitAddAbilityBJ(FourCC("Amic"), townHall)
        UnitMakeAbilityPermanentBJ(true, FourCC("Amic"), townHall)
    end
    if (doHeroes) then
        if useRandomHero then
            MeleeRandomHeroLoc(whichPlayer, FourCC("Hamg"), FourCC("Hmkg"), FourCC("Hpal"), FourCC("Hblm"), heroLoc)
        else
            SetPlayerState(whichPlayer, PLAYER_STATE_RESOURCE_HERO_TOKENS, bj_MELEE_STARTING_HERO_TOKENS)
        end
    end
    if (doCamera) then
        SetCameraPositionForPlayer(whichPlayer, peonX, peonY)
        SetCameraQuickPositionForPlayer(whichPlayer, peonX, peonY)
    end
end

function MeleeStartingUnitsOrc(whichPlayer, startLoc, doHeroes, doCamera, doPreload)
    local useRandomHero = IsMapFlagSet(MAP_RANDOM_HERO)
    local unitSpacing = 64.00
    local nearestMine = nil
    local nearMineLoc = nil
    local heroLoc = nil
    local peonX = nil
    local peonY = nil
    if (doPreload) then
        Preloader("scripts\\OrcMelee.pld")
    end
    nearestMine = MeleeFindNearestMine(startLoc, bj_MELEE_MINE_SEARCH_RADIUS)
    if (nearestMine ~= nil) then
        CreateUnitAtLoc(whichPlayer, FourCC("ogre"), startLoc, bj_UNIT_FACING)
        nearMineLoc = MeleeGetProjectedLoc(GetUnitLoc(nearestMine), startLoc, 320, 0)
        peonX = GetLocationX(nearMineLoc)
        peonY = GetLocationY(nearMineLoc)
        CreateUnit(whichPlayer, FourCC("opeo"), peonX + 0.00 * unitSpacing, peonY + 1.00 * unitSpacing, bj_UNIT_FACING)
        CreateUnit(whichPlayer, FourCC("opeo"), peonX + 1.00 * unitSpacing, peonY + 0.15 * unitSpacing, bj_UNIT_FACING)
        CreateUnit(whichPlayer, FourCC("opeo"), peonX - 1.00 * unitSpacing, peonY + 0.15 * unitSpacing, bj_UNIT_FACING)
        CreateUnit(whichPlayer, FourCC("opeo"), peonX + 0.60 * unitSpacing, peonY - 1.00 * unitSpacing, bj_UNIT_FACING)
        CreateUnit(whichPlayer, FourCC("opeo"), peonX - 0.60 * unitSpacing, peonY - 1.00 * unitSpacing, bj_UNIT_FACING)
        heroLoc = MeleeGetProjectedLoc(GetUnitLoc(nearestMine), startLoc, 384, 45)
    else
        CreateUnitAtLoc(whichPlayer, FourCC("ogre"), startLoc, bj_UNIT_FACING)
        peonX = GetLocationX(startLoc)
        peonY = GetLocationY(startLoc) - 224.00
        CreateUnit(whichPlayer, FourCC("opeo"), peonX + 2.00 * unitSpacing, peonY + 0.00 * unitSpacing, bj_UNIT_FACING)
        CreateUnit(whichPlayer, FourCC("opeo"), peonX + 1.00 * unitSpacing, peonY + 0.00 * unitSpacing, bj_UNIT_FACING)
        CreateUnit(whichPlayer, FourCC("opeo"), peonX + 0.00 * unitSpacing, peonY + 0.00 * unitSpacing, bj_UNIT_FACING)
        CreateUnit(whichPlayer, FourCC("opeo"), peonX - 1.00 * unitSpacing, peonY + 0.00 * unitSpacing, bj_UNIT_FACING)
        CreateUnit(whichPlayer, FourCC("opeo"), peonX - 2.00 * unitSpacing, peonY + 0.00 * unitSpacing, bj_UNIT_FACING)
        heroLoc = Location(peonX, peonY - 2.00 * unitSpacing)
    end
    if (doHeroes) then
        if useRandomHero then
            MeleeRandomHeroLoc(whichPlayer, FourCC("Obla"), FourCC("Ofar"), FourCC("Otch"), FourCC("Oshd"), heroLoc)
        else
            SetPlayerState(whichPlayer, PLAYER_STATE_RESOURCE_HERO_TOKENS, bj_MELEE_STARTING_HERO_TOKENS)
        end
    end
    if (doCamera) then
        SetCameraPositionForPlayer(whichPlayer, peonX, peonY)
        SetCameraQuickPositionForPlayer(whichPlayer, peonX, peonY)
    end
end

function MeleeStartingUnitsUndead(whichPlayer, startLoc, doHeroes, doCamera, doPreload)
    local useRandomHero = IsMapFlagSet(MAP_RANDOM_HERO)
    local unitSpacing = 64.00
    local nearestMine = nil
    local nearMineLoc = nil
    local nearTownLoc = nil
    local heroLoc = nil
    local peonX = nil
    local peonY = nil
    local ghoulX = nil
    local ghoulY = nil
    if (doPreload) then
        Preloader("scripts\\UndeadMelee.pld")
    end
    nearestMine = MeleeFindNearestMine(startLoc, bj_MELEE_MINE_SEARCH_RADIUS)
    if (nearestMine ~= nil) then
        CreateUnitAtLoc(whichPlayer, FourCC("unpl"), startLoc, bj_UNIT_FACING)
        nearestMine = BlightGoldMineForPlayerBJ(nearestMine, whichPlayer)
        nearTownLoc = MeleeGetProjectedLoc(startLoc, GetUnitLoc(nearestMine), 288, 0)
        ghoulX = GetLocationX(nearTownLoc)
        ghoulY = GetLocationY(nearTownLoc)
        bj_ghoul[GetPlayerId(whichPlayer)] = CreateUnit(whichPlayer, FourCC("ugho"), ghoulX + 0.00 * unitSpacing, ghoulY + 0.00 * unitSpacing, bj_UNIT_FACING)
        nearMineLoc = MeleeGetProjectedLoc(GetUnitLoc(nearestMine), startLoc, 320, 0)
        peonX = GetLocationX(nearMineLoc)
        peonY = GetLocationY(nearMineLoc)
        CreateUnit(whichPlayer, FourCC("uaco"), peonX + 0.00 * unitSpacing, peonY + 0.50 * unitSpacing, bj_UNIT_FACING)
        CreateUnit(whichPlayer, FourCC("uaco"), peonX + 0.65 * unitSpacing, peonY - 0.50 * unitSpacing, bj_UNIT_FACING)
        CreateUnit(whichPlayer, FourCC("uaco"), peonX - 0.65 * unitSpacing, peonY - 0.50 * unitSpacing, bj_UNIT_FACING)
        SetBlightLoc(whichPlayer, nearMineLoc, 768, true)
        heroLoc = MeleeGetProjectedLoc(GetUnitLoc(nearestMine), startLoc, 384, 45)
    else
        CreateUnitAtLoc(whichPlayer, FourCC("unpl"), startLoc, bj_UNIT_FACING)
        peonX = GetLocationX(startLoc)
        peonY = GetLocationY(startLoc) - 224.00
        CreateUnit(whichPlayer, FourCC("uaco"), peonX - 1.50 * unitSpacing, peonY + 0.00 * unitSpacing, bj_UNIT_FACING)
        CreateUnit(whichPlayer, FourCC("uaco"), peonX - 0.50 * unitSpacing, peonY + 0.00 * unitSpacing, bj_UNIT_FACING)
        CreateUnit(whichPlayer, FourCC("uaco"), peonX + 0.50 * unitSpacing, peonY + 0.00 * unitSpacing, bj_UNIT_FACING)
        CreateUnit(whichPlayer, FourCC("ugho"), peonX + 1.50 * unitSpacing, peonY + 0.00 * unitSpacing, bj_UNIT_FACING)
        SetBlightLoc(whichPlayer, startLoc, 768, true)
        heroLoc = Location(peonX, peonY - 2.00 * unitSpacing)
    end
    if (doHeroes) then
        if useRandomHero then
            MeleeRandomHeroLoc(whichPlayer, FourCC("Udea"), FourCC("Udre"), FourCC("Ulic"), FourCC("Ucrl"), heroLoc)
        else
            SetPlayerState(whichPlayer, PLAYER_STATE_RESOURCE_HERO_TOKENS, bj_MELEE_STARTING_HERO_TOKENS)
        end
    end
    if (doCamera) then
        SetCameraPositionForPlayer(whichPlayer, peonX, peonY)
        SetCameraQuickPositionForPlayer(whichPlayer, peonX, peonY)
    end
end

function MeleeStartingUnitsNightElf(whichPlayer, startLoc, doHeroes, doCamera, doPreload)
    local useRandomHero = IsMapFlagSet(MAP_RANDOM_HERO)
    local unitSpacing = 64.00
    local minTreeDist = 3.50 * bj_CELLWIDTH
    local minWispDist = 1.75 * bj_CELLWIDTH
    local nearestMine = nil
    local nearMineLoc = nil
    local wispLoc = nil
    local heroLoc = nil
    local peonX = nil
    local peonY = nil
    local tree = nil
    if (doPreload) then
        Preloader("scripts\\NightElfMelee.pld")
    end
    nearestMine = MeleeFindNearestMine(startLoc, bj_MELEE_MINE_SEARCH_RADIUS)
    if (nearestMine ~= nil) then
        nearMineLoc = MeleeGetProjectedLoc(GetUnitLoc(nearestMine), startLoc, 650, 0)
        nearMineLoc = MeleeGetLocWithinRect(nearMineLoc, GetRectFromCircleBJ(GetUnitLoc(nearestMine), minTreeDist))
        tree = CreateUnitAtLoc(whichPlayer, FourCC("etol"), nearMineLoc, bj_UNIT_FACING)
        IssueTargetOrder(tree, "entangleinstant", nearestMine)
        wispLoc = MeleeGetProjectedLoc(GetUnitLoc(nearestMine), startLoc, 320, 0)
        wispLoc = MeleeGetLocWithinRect(wispLoc, GetRectFromCircleBJ(GetUnitLoc(nearestMine), minWispDist))
        peonX = GetLocationX(wispLoc)
        peonY = GetLocationY(wispLoc)
        CreateUnit(whichPlayer, FourCC("ewsp"), peonX + 0.00 * unitSpacing, peonY + 1.00 * unitSpacing, bj_UNIT_FACING)
        CreateUnit(whichPlayer, FourCC("ewsp"), peonX + 1.00 * unitSpacing, peonY + 0.15 * unitSpacing, bj_UNIT_FACING)
        CreateUnit(whichPlayer, FourCC("ewsp"), peonX - 1.00 * unitSpacing, peonY + 0.15 * unitSpacing, bj_UNIT_FACING)
        CreateUnit(whichPlayer, FourCC("ewsp"), peonX + 0.58 * unitSpacing, peonY - 1.00 * unitSpacing, bj_UNIT_FACING)
        CreateUnit(whichPlayer, FourCC("ewsp"), peonX - 0.58 * unitSpacing, peonY - 1.00 * unitSpacing, bj_UNIT_FACING)
        heroLoc = MeleeGetProjectedLoc(GetUnitLoc(nearestMine), startLoc, 384, 45)
    else
        CreateUnitAtLoc(whichPlayer, FourCC("etol"), startLoc, bj_UNIT_FACING)
        peonX = GetLocationX(startLoc)
        peonY = GetLocationY(startLoc) - 224.00
        CreateUnit(whichPlayer, FourCC("ewsp"), peonX - 2.00 * unitSpacing, peonY + 0.00 * unitSpacing, bj_UNIT_FACING)
        CreateUnit(whichPlayer, FourCC("ewsp"), peonX - 1.00 * unitSpacing, peonY + 0.00 * unitSpacing, bj_UNIT_FACING)
        CreateUnit(whichPlayer, FourCC("ewsp"), peonX + 0.00 * unitSpacing, peonY + 0.00 * unitSpacing, bj_UNIT_FACING)
        CreateUnit(whichPlayer, FourCC("ewsp"), peonX + 1.00 * unitSpacing, peonY + 0.00 * unitSpacing, bj_UNIT_FACING)
        CreateUnit(whichPlayer, FourCC("ewsp"), peonX + 2.00 * unitSpacing, peonY + 0.00 * unitSpacing, bj_UNIT_FACING)
        heroLoc = Location(peonX, peonY - 2.00 * unitSpacing)
    end
    if (doHeroes) then
        if useRandomHero then
            MeleeRandomHeroLoc(whichPlayer, FourCC("Edem"), FourCC("Ekee"), FourCC("Emoo"), FourCC("Ewar"), heroLoc)
        else
            SetPlayerState(whichPlayer, PLAYER_STATE_RESOURCE_HERO_TOKENS, bj_MELEE_STARTING_HERO_TOKENS)
        end
    end
    if (doCamera) then
        SetCameraPositionForPlayer(whichPlayer, peonX, peonY)
        SetCameraQuickPositionForPlayer(whichPlayer, peonX, peonY)
    end
end

function MeleeStartingUnitsUnknownRace(whichPlayer, startLoc, doHeroes, doCamera, doPreload)
    local index = nil
    if (doPreload) then
    end
    index = 0
    while true do
        CreateUnit(whichPlayer, FourCC("nshe"), GetLocationX(startLoc) + GetRandomReal(-256, 256), GetLocationY(startLoc) + GetRandomReal(-256, 256), GetRandomReal(0, 360))
        index = index + 1
        if index == 12 then
            break
        end
    end
    if (doHeroes) then
        SetPlayerState(whichPlayer, PLAYER_STATE_RESOURCE_HERO_TOKENS, bj_MELEE_STARTING_HERO_TOKENS)
    end
    if (doCamera) then
        SetCameraPositionLocForPlayer(whichPlayer, startLoc)
        SetCameraQuickPositionLocForPlayer(whichPlayer, startLoc)
    end
end

function MeleeStartingUnits()
    local index = nil
    local indexPlayer = nil
    local indexStartLoc = nil
    local indexRace = nil
    Preloader("scripts\\SharedMelee.pld")
    index = 0
    while true do
        indexPlayer = Player(index)
        if (GetPlayerSlotState(indexPlayer) == PLAYER_SLOT_STATE_PLAYING) then
            indexStartLoc = GetStartLocationLoc(GetPlayerStartLocation(indexPlayer))
            indexRace = GetPlayerRace(indexPlayer)
            if (indexRace == RACE_HUMAN) then
                MeleeStartingUnitsHuman(indexPlayer, indexStartLoc, true, true, true)
            elseif (indexRace == RACE_ORC) then
                MeleeStartingUnitsOrc(indexPlayer, indexStartLoc, true, true, true)
            elseif (indexRace == RACE_UNDEAD) then
                MeleeStartingUnitsUndead(indexPlayer, indexStartLoc, true, true, true)
            elseif (indexRace == RACE_NIGHTELF) then
                MeleeStartingUnitsNightElf(indexPlayer, indexStartLoc, true, true, true)
            else
                MeleeStartingUnitsUnknownRace(indexPlayer, indexStartLoc, true, true, true)
            end
        end
        index = index + 1
        if index == bj_MAX_PLAYERS then
            break
        end
    end
end

function MeleeStartingUnitsForPlayer(whichRace, whichPlayer, loc, doHeroes)
    if (whichRace == RACE_HUMAN) then
        MeleeStartingUnitsHuman(whichPlayer, loc, doHeroes, false, false)
    elseif (whichRace == RACE_ORC) then
        MeleeStartingUnitsOrc(whichPlayer, loc, doHeroes, false, false)
    elseif (whichRace == RACE_UNDEAD) then
        MeleeStartingUnitsUndead(whichPlayer, loc, doHeroes, false, false)
    elseif (whichRace == RACE_NIGHTELF) then
        MeleeStartingUnitsNightElf(whichPlayer, loc, doHeroes, false, false)
    else
    end
end

function PickMeleeAI(num, s1, s2, s3)
    local pick = nil
    if GetAIDifficulty(num) == AI_DIFFICULTY_NEWBIE then
        StartMeleeAI(num, s1)
        do
            return
        end
    end
    if s2 == nil then
        pick = 1
    elseif s3 == nil then
        pick = GetRandomInt(1, 2)
    else
        pick = GetRandomInt(1, 3)
    end
    if pick == 1 then
        StartMeleeAI(num, s1)
    elseif pick == 2 then
        StartMeleeAI(num, s2)
    else
        StartMeleeAI(num, s3)
    end
end

function MeleeStartingAI()
    local index = nil
    local indexPlayer = nil
    local indexRace = nil
    index = 0
    while true do
        indexPlayer = Player(index)
        if (GetPlayerSlotState(indexPlayer) == PLAYER_SLOT_STATE_PLAYING) then
            indexRace = GetPlayerRace(indexPlayer)
            if (GetPlayerController(indexPlayer) == MAP_CONTROL_COMPUTER) then
                if (indexRace == RACE_HUMAN) then
                    PickMeleeAI(indexPlayer, "human.ai", nil, nil)
                elseif (indexRace == RACE_ORC) then
                    PickMeleeAI(indexPlayer, "orc.ai", nil, nil)
                elseif (indexRace == RACE_UNDEAD) then
                    PickMeleeAI(indexPlayer, "undead.ai", nil, nil)
                    RecycleGuardPosition(bj_ghoul[index])
                elseif (indexRace == RACE_NIGHTELF) then
                    PickMeleeAI(indexPlayer, "elf.ai", nil, nil)
                else
                end
                ShareEverythingWithTeamAI(indexPlayer)
            end
        end
        index = index + 1
        if index == bj_MAX_PLAYERS then
            break
        end
    end
end

function LockGuardPosition(targ)
    SetUnitCreepGuard(targ, true)
end

function MeleePlayerIsOpponent(playerIndex, opponentIndex)
    local thePlayer = Player(playerIndex)
    local theOpponent = Player(opponentIndex)
    if (playerIndex == opponentIndex) then
        do
            return false
        end
    end
    if (GetPlayerSlotState(theOpponent) ~= PLAYER_SLOT_STATE_PLAYING) then
        do
            return false
        end
    end
    if (bj_meleeDefeated[opponentIndex]) then
        do
            return false
        end
    end
    if GetPlayerAlliance(thePlayer, theOpponent, ALLIANCE_PASSIVE) then
        if GetPlayerAlliance(theOpponent, thePlayer, ALLIANCE_PASSIVE) then
            if (GetPlayerState(thePlayer, PLAYER_STATE_ALLIED_VICTORY) == 1) then
                if (GetPlayerState(theOpponent, PLAYER_STATE_ALLIED_VICTORY) == 1) then
                    do
                        return false
                    end
                end
            end
        end
    end
    do
        return true
    end
end

function MeleeGetAllyStructureCount(whichPlayer)
    local playerIndex = nil
    local buildingCount = nil
    local indexPlayer = nil
    buildingCount = 0
    playerIndex = 0
    while true do
        indexPlayer = Player(playerIndex)
        if (PlayersAreCoAllied(whichPlayer, indexPlayer)) then
            buildingCount = buildingCount + GetPlayerStructureCount(indexPlayer, true)
        end
        playerIndex = playerIndex + 1
        if playerIndex == bj_MAX_PLAYERS then
            break
        end
    end
    do
        return buildingCount
    end
end

function MeleeGetAllyCount(whichPlayer)
    local playerIndex = nil
    local playerCount = nil
    local indexPlayer = nil
    playerCount = 0
    playerIndex = 0
    while true do
        indexPlayer = Player(playerIndex)
        if PlayersAreCoAllied(whichPlayer, indexPlayer) and not bj_meleeDefeated[playerIndex] and (whichPlayer ~= indexPlayer) then
            playerCount = playerCount + 1
        end
        playerIndex = playerIndex + 1
        if playerIndex == bj_MAX_PLAYERS then
            break
        end
    end
    do
        return playerCount
    end
end

function MeleeGetAllyKeyStructureCount(whichPlayer)
    local playerIndex = nil
    local indexPlayer = nil
    local keyStructs = nil
    keyStructs = 0
    playerIndex = 0
    while true do
        indexPlayer = Player(playerIndex)
        if (PlayersAreCoAllied(whichPlayer, indexPlayer)) then
            keyStructs = keyStructs + GetPlayerTypedUnitCount(indexPlayer, "townhall", true, true)
            keyStructs = keyStructs + GetPlayerTypedUnitCount(indexPlayer, "greathall", true, true)
            keyStructs = keyStructs + GetPlayerTypedUnitCount(indexPlayer, "treeoflife", true, true)
            keyStructs = keyStructs + GetPlayerTypedUnitCount(indexPlayer, "necropolis", true, true)
        end
        playerIndex = playerIndex + 1
        if playerIndex == bj_MAX_PLAYERS then
            break
        end
    end
    do
        return keyStructs
    end
end

function MeleeDoDrawEnum()
    local thePlayer = GetEnumPlayer()
    CachePlayerHeroData(thePlayer)
    RemovePlayerPreserveUnitsBJ(thePlayer, PLAYER_GAME_RESULT_TIE, false)
end

function MeleeDoVictoryEnum()
    local thePlayer = GetEnumPlayer()
    local playerIndex = GetPlayerId(thePlayer)
    if (not bj_meleeVictoried[playerIndex]) then
        bj_meleeVictoried[playerIndex] = true
        CachePlayerHeroData(thePlayer)
        RemovePlayerPreserveUnitsBJ(thePlayer, PLAYER_GAME_RESULT_VICTORY, false)
    end
end

function MeleeDoDefeat(whichPlayer)
    bj_meleeDefeated[GetPlayerId(whichPlayer)] = true
    RemovePlayerPreserveUnitsBJ(whichPlayer, PLAYER_GAME_RESULT_DEFEAT, false)
end

function MeleeDoDefeatEnum()
    local thePlayer = GetEnumPlayer()
    CachePlayerHeroData(thePlayer)
    MakeUnitsPassiveForTeam(thePlayer)
    MeleeDoDefeat(thePlayer)
end

function MeleeDoLeave(whichPlayer)
    if (GetIntegerGameState(GAME_STATE_DISCONNECTED) ~= 0) then
        GameOverDialogBJ(whichPlayer, true)
    else
        bj_meleeDefeated[GetPlayerId(whichPlayer)] = true
        RemovePlayerPreserveUnitsBJ(whichPlayer, PLAYER_GAME_RESULT_DEFEAT, true)
    end
end

function MeleeRemoveObservers()
    local playerIndex = nil
    local indexPlayer = nil
    playerIndex = 0
    while true do
        indexPlayer = Player(playerIndex)
        if (IsPlayerObserver(indexPlayer)) then
            RemovePlayerPreserveUnitsBJ(indexPlayer, PLAYER_GAME_RESULT_NEUTRAL, false)
        end
        playerIndex = playerIndex + 1
        if playerIndex == bj_MAX_PLAYERS then
            break
        end
    end
end

function MeleeCheckForVictors()
    local playerIndex = nil
    local opponentIndex = nil
    local opponentlessPlayers = CreateForce()
    local gameOver = false
    playerIndex = 0
    while true do
        if (not bj_meleeDefeated[playerIndex]) then
            opponentIndex = 0
            while true do
                if MeleePlayerIsOpponent(playerIndex, opponentIndex) then
                    do
                        return CreateForce()
                    end
                end
                opponentIndex = opponentIndex + 1
                if opponentIndex == bj_MAX_PLAYERS then
                    break
                end
            end
            ForceAddPlayer(opponentlessPlayers, Player(playerIndex))
            gameOver = true
        end
        playerIndex = playerIndex + 1
        if playerIndex == bj_MAX_PLAYERS then
            break
        end
    end
    bj_meleeGameOver = gameOver
    do
        return opponentlessPlayers
    end
end

function MeleeCheckForLosersAndVictors()
    local playerIndex = nil
    local indexPlayer = nil
    local defeatedPlayers = CreateForce()
    local victoriousPlayers = nil
    local gameOver = false
    if (bj_meleeGameOver) then
        do
            return
        end
    end
    if (GetIntegerGameState(GAME_STATE_DISCONNECTED) ~= 0) then
        bj_meleeGameOver = true
        do
            return
        end
    end
    playerIndex = 0
    while true do
        indexPlayer = Player(playerIndex)
        if (not bj_meleeDefeated[playerIndex] and not bj_meleeVictoried[playerIndex]) then
            if (MeleeGetAllyStructureCount(indexPlayer) <= 0) then
                ForceAddPlayer(defeatedPlayers, Player(playerIndex))
                bj_meleeDefeated[playerIndex] = true
            end
        end
        playerIndex = playerIndex + 1
        if playerIndex == bj_MAX_PLAYERS then
            break
        end
    end
    victoriousPlayers = MeleeCheckForVictors()
    ForForce(defeatedPlayers, MeleeDoDefeatEnum)
    ForForce(victoriousPlayers, MeleeDoVictoryEnum)
    if (bj_meleeGameOver) then
        MeleeRemoveObservers()
    end
end

function MeleeGetCrippledWarningMessage(whichPlayer)
    local r = GetPlayerRace(whichPlayer)
    if (r == RACE_HUMAN) then
        do
            return GetLocalizedString("CRIPPLE_WARNING_HUMAN")
        end
    elseif (r == RACE_ORC) then
        do
            return GetLocalizedString("CRIPPLE_WARNING_ORC")
        end
    elseif (r == RACE_NIGHTELF) then
        do
            return GetLocalizedString("CRIPPLE_WARNING_NIGHTELF")
        end
    elseif (r == RACE_UNDEAD) then
        do
            return GetLocalizedString("CRIPPLE_WARNING_UNDEAD")
        end
    else
        do
            return ""
        end
    end
end

function MeleeGetCrippledTimerMessage(whichPlayer)
    local r = GetPlayerRace(whichPlayer)
    if (r == RACE_HUMAN) then
        do
            return GetLocalizedString("CRIPPLE_TIMER_HUMAN")
        end
    elseif (r == RACE_ORC) then
        do
            return GetLocalizedString("CRIPPLE_TIMER_ORC")
        end
    elseif (r == RACE_NIGHTELF) then
        do
            return GetLocalizedString("CRIPPLE_TIMER_NIGHTELF")
        end
    elseif (r == RACE_UNDEAD) then
        do
            return GetLocalizedString("CRIPPLE_TIMER_UNDEAD")
        end
    else
        do
            return ""
        end
    end
end

function MeleeGetCrippledRevealedMessage(whichPlayer)
    do
        return GetLocalizedString("CRIPPLE_REVEALING_PREFIX") .. GetPlayerName(whichPlayer) .. GetLocalizedString("CRIPPLE_REVEALING_POSTFIX")
    end
end

function MeleeExposePlayer(whichPlayer, expose)
    local playerIndex = nil
    local indexPlayer = nil
    local toExposeTo = CreateForce()
    CripplePlayer(whichPlayer, toExposeTo, false)
    bj_playerIsExposed[GetPlayerId(whichPlayer)] = expose
    playerIndex = 0
    while true do
        indexPlayer = Player(playerIndex)
        if (not PlayersAreCoAllied(whichPlayer, indexPlayer)) then
            ForceAddPlayer(toExposeTo, indexPlayer)
        end
        playerIndex = playerIndex + 1
        if playerIndex == bj_MAX_PLAYERS then
            break
        end
    end
    CripplePlayer(whichPlayer, toExposeTo, expose)
    DestroyForce(toExposeTo)
end

function MeleeExposeAllPlayers()
    local playerIndex = nil
    local indexPlayer = nil
    local playerIndex2 = nil
    local indexPlayer2 = nil
    local toExposeTo = CreateForce()
    playerIndex = 0
    while true do
        indexPlayer = Player(playerIndex)
        ForceClear(toExposeTo)
        CripplePlayer(indexPlayer, toExposeTo, false)
        playerIndex2 = 0
        while true do
            indexPlayer2 = Player(playerIndex2)
            if playerIndex ~= playerIndex2 then
                if (not PlayersAreCoAllied(indexPlayer, indexPlayer2)) then
                    ForceAddPlayer(toExposeTo, indexPlayer2)
                end
            end
            playerIndex2 = playerIndex2 + 1
            if playerIndex2 == bj_MAX_PLAYERS then
                break
            end
        end
        CripplePlayer(indexPlayer, toExposeTo, true)
        playerIndex = playerIndex + 1
        if playerIndex == bj_MAX_PLAYERS then
            break
        end
    end
    DestroyForce(toExposeTo)
end

function MeleeCrippledPlayerTimeout()
    local expiredTimer = GetExpiredTimer()
    local playerIndex = nil
    local exposedPlayer = nil
    playerIndex = 0
    while true do
        if (bj_crippledTimer[playerIndex] == expiredTimer) then
            if true then
                break
            end
        end
        playerIndex = playerIndex + 1
        if playerIndex == bj_MAX_PLAYERS then
            break
        end
    end
    if (playerIndex == bj_MAX_PLAYERS) then
        do
            return
        end
    end
    exposedPlayer = Player(playerIndex)
    if (GetLocalPlayer() == exposedPlayer) then
        TimerDialogDisplay(bj_crippledTimerWindows[playerIndex], false)
    end
    DisplayTimedTextToPlayer(GetLocalPlayer(), 0, 0, bj_MELEE_CRIPPLE_MSG_DURATION, MeleeGetCrippledRevealedMessage(exposedPlayer))
    MeleeExposePlayer(exposedPlayer, true)
end

function MeleePlayerIsCrippled(whichPlayer)
    local allyStructures = MeleeGetAllyStructureCount(whichPlayer)
    local allyKeyStructures = MeleeGetAllyKeyStructureCount(whichPlayer)
    do
        return (allyStructures > 0) and (allyKeyStructures <= 0)
    end
end

function MeleeCheckForCrippledPlayers()
    local playerIndex = nil
    local indexPlayer = nil
    local crippledPlayers = CreateForce()
    local isNowCrippled = nil
    local indexRace = nil
    if bj_finishSoonAllExposed then
        do
            return
        end
    end
    playerIndex = 0
    while true do
        indexPlayer = Player(playerIndex)
        isNowCrippled = MeleePlayerIsCrippled(indexPlayer)
        if (not bj_playerIsCrippled[playerIndex] and isNowCrippled) then
            bj_playerIsCrippled[playerIndex] = true
            TimerStart(bj_crippledTimer[playerIndex], bj_MELEE_CRIPPLE_TIMEOUT, false, MeleeCrippledPlayerTimeout)
            if (GetLocalPlayer() == indexPlayer) then
                TimerDialogDisplay(bj_crippledTimerWindows[playerIndex], true)
                DisplayTimedTextToPlayer(indexPlayer, 0, 0, bj_MELEE_CRIPPLE_MSG_DURATION, MeleeGetCrippledWarningMessage(indexPlayer))
            end
        elseif (bj_playerIsCrippled[playerIndex] and not isNowCrippled) then
            bj_playerIsCrippled[playerIndex] = false
            PauseTimer(bj_crippledTimer[playerIndex])
            if (GetLocalPlayer() == indexPlayer) then
                TimerDialogDisplay(bj_crippledTimerWindows[playerIndex], false)
                if (MeleeGetAllyStructureCount(indexPlayer) > 0) then
                    if (bj_playerIsExposed[playerIndex]) then
                        DisplayTimedTextToPlayer(indexPlayer, 0, 0, bj_MELEE_CRIPPLE_MSG_DURATION, GetLocalizedString("CRIPPLE_UNREVEALED"))
                    else
                        DisplayTimedTextToPlayer(indexPlayer, 0, 0, bj_MELEE_CRIPPLE_MSG_DURATION, GetLocalizedString("CRIPPLE_UNCRIPPLED"))
                    end
                end
            end
            MeleeExposePlayer(indexPlayer, false)
        end
        playerIndex = playerIndex + 1
        if playerIndex == bj_MAX_PLAYERS then
            break
        end
    end
end

function MeleeCheckLostUnit(lostUnit)
    local lostUnitOwner = GetOwningPlayer(lostUnit)
    if (GetPlayerStructureCount(lostUnitOwner, true) <= 0) then
        MeleeCheckForLosersAndVictors()
    end
    MeleeCheckForCrippledPlayers()
end

function MeleeCheckAddedUnit(addedUnit)
    local addedUnitOwner = GetOwningPlayer(addedUnit)
    if (bj_playerIsCrippled[GetPlayerId(addedUnitOwner)]) then
        MeleeCheckForCrippledPlayers()
    end
end

function MeleeTriggerActionConstructCancel()
    MeleeCheckLostUnit(GetCancelledStructure())
end

function MeleeTriggerActionUnitDeath()
    if (IsUnitType(GetDyingUnit(), UNIT_TYPE_STRUCTURE)) then
        MeleeCheckLostUnit(GetDyingUnit())
    end
end

function MeleeTriggerActionUnitConstructionStart()
    MeleeCheckAddedUnit(GetConstructingStructure())
end

function MeleeTriggerActionPlayerDefeated()
    local thePlayer = GetTriggerPlayer()
    CachePlayerHeroData(thePlayer)
    if (MeleeGetAllyCount(thePlayer) > 0) then
        ShareEverythingWithTeam(thePlayer)
        if (not bj_meleeDefeated[GetPlayerId(thePlayer)]) then
            MeleeDoDefeat(thePlayer)
        end
    else
        MakeUnitsPassiveForTeam(thePlayer)
        if (not bj_meleeDefeated[GetPlayerId(thePlayer)]) then
            MeleeDoDefeat(thePlayer)
        end
    end
    MeleeCheckForLosersAndVictors()
end

function MeleeTriggerActionPlayerLeft()
    local thePlayer = GetTriggerPlayer()
    if (IsPlayerObserver(thePlayer)) then
        RemovePlayerPreserveUnitsBJ(thePlayer, PLAYER_GAME_RESULT_NEUTRAL, false)
        do
            return
        end
    end
    CachePlayerHeroData(thePlayer)
    if (MeleeGetAllyCount(thePlayer) > 0) then
        ShareEverythingWithTeam(thePlayer)
        MeleeDoLeave(thePlayer)
    else
        MakeUnitsPassiveForTeam(thePlayer)
        MeleeDoLeave(thePlayer)
    end
    MeleeCheckForLosersAndVictors()
end

function MeleeTriggerActionAllianceChange()
    MeleeCheckForLosersAndVictors()
    MeleeCheckForCrippledPlayers()
end

function MeleeTriggerTournamentFinishSoon()
    local playerIndex = nil
    local indexPlayer = nil
    local timeRemaining = GetTournamentFinishSoonTimeRemaining()
    if not bj_finishSoonAllExposed then
        bj_finishSoonAllExposed = true
        playerIndex = 0
        while true do
            indexPlayer = Player(playerIndex)
            if bj_playerIsCrippled[playerIndex] then
                bj_playerIsCrippled[playerIndex] = false
                PauseTimer(bj_crippledTimer[playerIndex])
                if (GetLocalPlayer() == indexPlayer) then
                    TimerDialogDisplay(bj_crippledTimerWindows[playerIndex], false)
                end
            end
            playerIndex = playerIndex + 1
            if playerIndex == bj_MAX_PLAYERS then
                break
            end
        end
        MeleeExposeAllPlayers()
    end
    TimerDialogDisplay(bj_finishSoonTimerDialog, true)
    TimerDialogSetRealTimeRemaining(bj_finishSoonTimerDialog, timeRemaining)
end

function MeleeWasUserPlayer(whichPlayer)
    local slotState = nil
    if (GetPlayerController(whichPlayer) ~= MAP_CONTROL_USER) then
        do
            return false
        end
    end
    slotState = GetPlayerSlotState(whichPlayer)
    do
        return (slotState == PLAYER_SLOT_STATE_PLAYING or slotState == PLAYER_SLOT_STATE_LEFT)
    end
end

function MeleeTournamentFinishNowRuleA(multiplier)
    local playerScore = __jarray(0)
    local teamScore = __jarray(0)
    local teamForce = {}
    local teamCount = nil
    local index = nil
    local indexPlayer = nil
    local index2 = nil
    local indexPlayer2 = nil
    local bestTeam = nil
    local bestScore = nil
    local draw = nil
    index = 0
    while true do
        indexPlayer = Player(index)
        if MeleeWasUserPlayer(indexPlayer) then
            playerScore[index] = GetTournamentScore(indexPlayer)
            if playerScore[index] <= 0 then
                playerScore[index] = 1
            end
        else
            playerScore[index] = 0
        end
        index = index + 1
        if index == bj_MAX_PLAYERS then
            break
        end
    end
    teamCount = 0
    index = 0
    while true do
        if playerScore[index] ~= 0 then
            indexPlayer = Player(index)
            teamScore[teamCount] = 0
            teamForce[teamCount] = CreateForce()
            index2 = index
            while true do
                if playerScore[index2] ~= 0 then
                    indexPlayer2 = Player(index2)
                    if PlayersAreCoAllied(indexPlayer, indexPlayer2) then
                        teamScore[teamCount] = teamScore[teamCount] + playerScore[index2]
                        ForceAddPlayer(teamForce[teamCount], indexPlayer2)
                        playerScore[index2] = 0
                    end
                end
                index2 = index2 + 1
                if index2 == bj_MAX_PLAYERS then
                    break
                end
            end
            teamCount = teamCount + 1
        end
        index = index + 1
        if index == bj_MAX_PLAYERS then
            break
        end
    end
    bj_meleeGameOver = true
    if teamCount ~= 0 then
        bestTeam = -1
        bestScore = -1
        index = 0
        while true do
            if teamScore[index] > bestScore then
                bestTeam = index
                bestScore = teamScore[index]
            end
            index = index + 1
            if index == teamCount then
                break
            end
        end
        draw = false
        index = 0
        while true do
            if index ~= bestTeam then
                if bestScore < (multiplier * teamScore[index]) then
                    draw = true
                end
            end
            index = index + 1
            if index == teamCount then
                break
            end
        end
        if draw then
            index = 0
            while true do
                ForForce(teamForce[index], MeleeDoDrawEnum)
                index = index + 1
                if index == teamCount then
                    break
                end
            end
        else
            index = 0
            while true do
                if index ~= bestTeam then
                    ForForce(teamForce[index], MeleeDoDefeatEnum)
                end
                index = index + 1
                if index == teamCount then
                    break
                end
            end
            ForForce(teamForce[bestTeam], MeleeDoVictoryEnum)
        end
    end
end

function MeleeTriggerTournamentFinishNow()
    local rule = GetTournamentFinishNowRule()
    if bj_meleeGameOver then
        do
            return
        end
    end
    if (rule == 1) then
        MeleeTournamentFinishNowRuleA(1)
    else
        MeleeTournamentFinishNowRuleA(3)
    end
    MeleeRemoveObservers()
end

function MeleeInitVictoryDefeat()
    local trig = nil
    local index = nil
    local indexPlayer = nil
    bj_finishSoonTimerDialog = CreateTimerDialog(nil)
    trig = CreateTrigger()
    TriggerRegisterGameEvent(trig, EVENT_GAME_TOURNAMENT_FINISH_SOON)
    TriggerAddAction(trig, MeleeTriggerTournamentFinishSoon)
    trig = CreateTrigger()
    TriggerRegisterGameEvent(trig, EVENT_GAME_TOURNAMENT_FINISH_NOW)
    TriggerAddAction(trig, MeleeTriggerTournamentFinishNow)
    index = 0
    while true do
        indexPlayer = Player(index)
        if (GetPlayerSlotState(indexPlayer) == PLAYER_SLOT_STATE_PLAYING) then
            bj_meleeDefeated[index] = false
            bj_meleeVictoried[index] = false
            bj_playerIsCrippled[index] = false
            bj_playerIsExposed[index] = false
            bj_crippledTimer[index] = CreateTimer()
            bj_crippledTimerWindows[index] = CreateTimerDialog(bj_crippledTimer[index])
            TimerDialogSetTitle(bj_crippledTimerWindows[index], MeleeGetCrippledTimerMessage(indexPlayer))
            trig = CreateTrigger()
            TriggerRegisterPlayerUnitEvent(trig, indexPlayer, EVENT_PLAYER_UNIT_CONSTRUCT_CANCEL, nil)
            TriggerAddAction(trig, MeleeTriggerActionConstructCancel)
            trig = CreateTrigger()
            TriggerRegisterPlayerUnitEvent(trig, indexPlayer, EVENT_PLAYER_UNIT_DEATH, nil)
            TriggerAddAction(trig, MeleeTriggerActionUnitDeath)
            trig = CreateTrigger()
            TriggerRegisterPlayerUnitEvent(trig, indexPlayer, EVENT_PLAYER_UNIT_CONSTRUCT_START, nil)
            TriggerAddAction(trig, MeleeTriggerActionUnitConstructionStart)
            trig = CreateTrigger()
            TriggerRegisterPlayerEvent(trig, indexPlayer, EVENT_PLAYER_DEFEAT)
            TriggerAddAction(trig, MeleeTriggerActionPlayerDefeated)
            trig = CreateTrigger()
            TriggerRegisterPlayerEvent(trig, indexPlayer, EVENT_PLAYER_LEAVE)
            TriggerAddAction(trig, MeleeTriggerActionPlayerLeft)
            trig = CreateTrigger()
            TriggerRegisterPlayerAllianceChange(trig, indexPlayer, ALLIANCE_PASSIVE)
            TriggerRegisterPlayerStateEvent(trig, indexPlayer, PLAYER_STATE_ALLIED_VICTORY, EQUAL, 1)
            TriggerAddAction(trig, MeleeTriggerActionAllianceChange)
        else
            bj_meleeDefeated[index] = true
            bj_meleeVictoried[index] = false
            if (IsPlayerObserver(indexPlayer)) then
                trig = CreateTrigger()
                TriggerRegisterPlayerEvent(trig, indexPlayer, EVENT_PLAYER_LEAVE)
                TriggerAddAction(trig, MeleeTriggerActionPlayerLeft)
            end
        end
        index = index + 1
        if index == bj_MAX_PLAYERS then
            break
        end
    end
    TimerStart(CreateTimer(), 2.0, false, MeleeTriggerActionAllianceChange)
end

function CheckInitPlayerSlotAvailability()
    local index = nil
    if (not bj_slotControlReady) then
        index = 0
        while true do
            bj_slotControlUsed[index] = false
            bj_slotControl[index] = MAP_CONTROL_USER
            index = index + 1
            if index == bj_MAX_PLAYERS then
                break
            end
        end
        bj_slotControlReady = true
    end
end

function SetPlayerSlotAvailable(whichPlayer, control)
    local playerIndex = GetPlayerId(whichPlayer)
    CheckInitPlayerSlotAvailability()
    bj_slotControlUsed[playerIndex] = true
    bj_slotControl[playerIndex] = control
end

function TeamInitPlayerSlots(teamCount)
    local index = nil
    local indexPlayer = nil
    local team = nil
    SetTeams(teamCount)
    CheckInitPlayerSlotAvailability()
    index = 0
    team = 0
    while true do
        if (bj_slotControlUsed[index]) then
            indexPlayer = Player(index)
            SetPlayerTeam(indexPlayer, team)
            team = team + 1
            if (team >= teamCount) then
                team = 0
            end
        end
        index = index + 1
        if index == bj_MAX_PLAYERS then
            break
        end
    end
end

function MeleeInitPlayerSlots()
    TeamInitPlayerSlots(bj_MAX_PLAYERS)
end

function FFAInitPlayerSlots()
    TeamInitPlayerSlots(bj_MAX_PLAYERS)
end

function OneOnOneInitPlayerSlots()
    SetTeams(2)
    SetPlayers(2)
    TeamInitPlayerSlots(2)
end

function InitGenericPlayerSlots()
    local gType = GetGameTypeSelected()
    if (gType == GAME_TYPE_MELEE) then
        MeleeInitPlayerSlots()
    elseif (gType == GAME_TYPE_FFA) then
        FFAInitPlayerSlots()
    elseif (gType == GAME_TYPE_USE_MAP_SETTINGS) then
    elseif (gType == GAME_TYPE_ONE_ON_ONE) then
        OneOnOneInitPlayerSlots()
    elseif (gType == GAME_TYPE_TWO_TEAM_PLAY) then
        TeamInitPlayerSlots(2)
    elseif (gType == GAME_TYPE_THREE_TEAM_PLAY) then
        TeamInitPlayerSlots(3)
    elseif (gType == GAME_TYPE_FOUR_TEAM_PLAY) then
        TeamInitPlayerSlots(4)
    else
    end
end

function SetDNCSoundsDawn()
    if bj_useDawnDuskSounds then
        StartSound(bj_dawnSound)
    end
end

function SetDNCSoundsDusk()
    if bj_useDawnDuskSounds then
        StartSound(bj_duskSound)
    end
end

function SetDNCSoundsDay()
    local ToD = GetTimeOfDay()
    if (ToD >= bj_TOD_DAWN and ToD < bj_TOD_DUSK) and not bj_dncIsDaytime then
        bj_dncIsDaytime = true
        StopSound(bj_nightAmbientSound, false, true)
        StartSound(bj_dayAmbientSound)
    end
end

function SetDNCSoundsNight()
    local ToD = GetTimeOfDay()
    if (ToD < bj_TOD_DAWN or ToD >= bj_TOD_DUSK) and bj_dncIsDaytime then
        bj_dncIsDaytime = false
        StopSound(bj_dayAmbientSound, false, true)
        StartSound(bj_nightAmbientSound)
    end
end

function InitDNCSounds()
    bj_dawnSound = CreateSoundFromLabel("RoosterSound", false, false, false, 10000, 10000)
    bj_duskSound = CreateSoundFromLabel("WolfSound", false, false, false, 10000, 10000)
    bj_dncSoundsDawn = CreateTrigger()
    TriggerRegisterGameStateEvent(bj_dncSoundsDawn, GAME_STATE_TIME_OF_DAY, EQUAL, bj_TOD_DAWN)
    TriggerAddAction(bj_dncSoundsDawn, SetDNCSoundsDawn)
    bj_dncSoundsDusk = CreateTrigger()
    TriggerRegisterGameStateEvent(bj_dncSoundsDusk, GAME_STATE_TIME_OF_DAY, EQUAL, bj_TOD_DUSK)
    TriggerAddAction(bj_dncSoundsDusk, SetDNCSoundsDusk)
    bj_dncSoundsDay = CreateTrigger()
    TriggerRegisterGameStateEvent(bj_dncSoundsDay, GAME_STATE_TIME_OF_DAY, GREATER_THAN_OR_EQUAL, bj_TOD_DAWN)
    TriggerRegisterGameStateEvent(bj_dncSoundsDay, GAME_STATE_TIME_OF_DAY, LESS_THAN, bj_TOD_DUSK)
    TriggerAddAction(bj_dncSoundsDay, SetDNCSoundsDay)
    bj_dncSoundsNight = CreateTrigger()
    TriggerRegisterGameStateEvent(bj_dncSoundsNight, GAME_STATE_TIME_OF_DAY, LESS_THAN, bj_TOD_DAWN)
    TriggerRegisterGameStateEvent(bj_dncSoundsNight, GAME_STATE_TIME_OF_DAY, GREATER_THAN_OR_EQUAL, bj_TOD_DUSK)
    TriggerAddAction(bj_dncSoundsNight, SetDNCSoundsNight)
end

function InitBlizzardGlobals()
    local index = nil
    local userControlledPlayers = nil
    local v = nil
    filterIssueHauntOrderAtLocBJ = Filter(IssueHauntOrderAtLocBJFilter)
    filterEnumDestructablesInCircleBJ = Filter(EnumDestructablesInCircleBJFilter)
    filterGetUnitsInRectOfPlayer = Filter(GetUnitsInRectOfPlayerFilter)
    filterGetUnitsOfTypeIdAll = Filter(GetUnitsOfTypeIdAllFilter)
    filterGetUnitsOfPlayerAndTypeId = Filter(GetUnitsOfPlayerAndTypeIdFilter)
    filterMeleeTrainedUnitIsHeroBJ = Filter(MeleeTrainedUnitIsHeroBJFilter)
    filterLivingPlayerUnitsOfTypeId = Filter(LivingPlayerUnitsOfTypeIdFilter)
    index = 0
    while true do
        if index == bj_MAX_PLAYER_SLOTS then
            break
        end
        bj_FORCE_PLAYER[index] = CreateForce()
        ForceAddPlayer(bj_FORCE_PLAYER[index], Player(index))
        index = index + 1
    end
    bj_FORCE_ALL_PLAYERS = CreateForce()
    ForceEnumPlayers(bj_FORCE_ALL_PLAYERS, nil)
    bj_cineModePriorSpeed = GetGameSpeed()
    bj_cineModePriorFogSetting = IsFogEnabled()
    bj_cineModePriorMaskSetting = IsFogMaskEnabled()
    index = 0
    while true do
        if index >= bj_MAX_QUEUED_TRIGGERS then
            break
        end
        bj_queuedExecTriggers[index] = nil
        bj_queuedExecUseConds[index] = false
        index = index + 1
    end
    bj_isSinglePlayer = false
    userControlledPlayers = 0
    index = 0
    while true do
        if index >= bj_MAX_PLAYERS then
            break
        end
        if (GetPlayerController(Player(index)) == MAP_CONTROL_USER and GetPlayerSlotState(Player(index)) == PLAYER_SLOT_STATE_PLAYING) then
            userControlledPlayers = userControlledPlayers + 1
        end
        index = index + 1
    end
    bj_isSinglePlayer = (userControlledPlayers == 1)
    bj_rescueSound = CreateSoundFromLabel("Rescue", false, false, false, 10000, 10000)
    bj_questDiscoveredSound = CreateSoundFromLabel("QuestNew", false, false, false, 10000, 10000)
    bj_questUpdatedSound = CreateSoundFromLabel("QuestUpdate", false, false, false, 10000, 10000)
    bj_questCompletedSound = CreateSoundFromLabel("QuestCompleted", false, false, false, 10000, 10000)
    bj_questFailedSound = CreateSoundFromLabel("QuestFailed", false, false, false, 10000, 10000)
    bj_questHintSound = CreateSoundFromLabel("Hint", false, false, false, 10000, 10000)
    bj_questSecretSound = CreateSoundFromLabel("SecretFound", false, false, false, 10000, 10000)
    bj_questItemAcquiredSound = CreateSoundFromLabel("ItemReward", false, false, false, 10000, 10000)
    bj_questWarningSound = CreateSoundFromLabel("Warning", false, false, false, 10000, 10000)
    bj_victoryDialogSound = CreateSoundFromLabel("QuestCompleted", false, false, false, 10000, 10000)
    bj_defeatDialogSound = CreateSoundFromLabel("QuestFailed", false, false, false, 10000, 10000)
    DelayedSuspendDecayCreate()
    v = VersionGet()
    if (v == VERSION_REIGN_OF_CHAOS) then
        bj_MELEE_MAX_TWINKED_HEROES = bj_MELEE_MAX_TWINKED_HEROES_V0
    else
        bj_MELEE_MAX_TWINKED_HEROES = bj_MELEE_MAX_TWINKED_HEROES_V1
    end
end

function InitQueuedTriggers()
    bj_queuedExecTimeout = CreateTrigger()
    TriggerRegisterTimerExpireEvent(bj_queuedExecTimeout, bj_queuedExecTimeoutTimer)
    TriggerAddAction(bj_queuedExecTimeout, QueuedTriggerDoneBJ)
end

function InitMapRects()
    bj_mapInitialPlayableArea = Rect(GetCameraBoundMinX() - GetCameraMargin(CAMERA_MARGIN_LEFT), GetCameraBoundMinY() - GetCameraMargin(CAMERA_MARGIN_BOTTOM), GetCameraBoundMaxX() + GetCameraMargin(CAMERA_MARGIN_RIGHT), GetCameraBoundMaxY() + GetCameraMargin(CAMERA_MARGIN_TOP))
    bj_mapInitialCameraBounds = GetCurrentCameraBoundsMapRectBJ()
end

function InitSummonableCaps()
    local index = nil
    index = 0
    while true do
        if (not GetPlayerTechResearched(Player(index), FourCC("Rhrt"), true)) then
            SetPlayerTechMaxAllowed(Player(index), FourCC("hrtt"), 0)
        end
        if (not GetPlayerTechResearched(Player(index), FourCC("Robk"), true)) then
            SetPlayerTechMaxAllowed(Player(index), FourCC("otbk"), 0)
        end
        SetPlayerTechMaxAllowed(Player(index), FourCC("uske"), bj_MAX_SKELETONS)
        index = index + 1
        if index == bj_MAX_PLAYERS then
            break
        end
    end
end

function UpdateStockAvailability(whichItem)
    local iType = GetItemType(whichItem)
    local iLevel = GetItemLevel(whichItem)
    if (iType == ITEM_TYPE_PERMANENT) then
        bj_stockAllowedPermanent[iLevel] = true
    elseif (iType == ITEM_TYPE_CHARGED) then
        bj_stockAllowedCharged[iLevel] = true
    elseif (iType == ITEM_TYPE_ARTIFACT) then
        bj_stockAllowedArtifact[iLevel] = true
    else
    end
end

function UpdateEachStockBuildingEnum()
    local iteration = 0
    local pickedItemId = nil
    while true do
        pickedItemId = ChooseRandomItemEx(bj_stockPickedItemType, bj_stockPickedItemLevel)
        if IsItemIdSellable(pickedItemId) then
            break
        end
        iteration = iteration + 1
        if (iteration > bj_STOCK_MAX_ITERATIONS) then
            do
                return
            end
        end
    end
    AddItemToStock(GetEnumUnit(), pickedItemId, 1, 1)
end

function UpdateEachStockBuilding(iType, iLevel)
    local g = nil
    bj_stockPickedItemType = iType
    bj_stockPickedItemLevel = iLevel
    g = CreateGroup()
    GroupEnumUnitsOfType(g, "marketplace", nil)
    ForGroup(g, UpdateEachStockBuildingEnum)
    DestroyGroup(g)
end

function PerformStockUpdates()
    local pickedItemId = nil
    local pickedItemType = nil
    local pickedItemLevel = 0
    local allowedCombinations = 0
    local iLevel = nil
    iLevel = 1
    while true do
        if (bj_stockAllowedPermanent[iLevel]) then
            allowedCombinations = allowedCombinations + 1
            if (GetRandomInt(1, allowedCombinations) == 1) then
                pickedItemType = ITEM_TYPE_PERMANENT
                pickedItemLevel = iLevel
            end
        end
        if (bj_stockAllowedCharged[iLevel]) then
            allowedCombinations = allowedCombinations + 1
            if (GetRandomInt(1, allowedCombinations) == 1) then
                pickedItemType = ITEM_TYPE_CHARGED
                pickedItemLevel = iLevel
            end
        end
        if (bj_stockAllowedArtifact[iLevel]) then
            allowedCombinations = allowedCombinations + 1
            if (GetRandomInt(1, allowedCombinations) == 1) then
                pickedItemType = ITEM_TYPE_ARTIFACT
                pickedItemLevel = iLevel
            end
        end
        iLevel = iLevel + 1
        if iLevel > bj_MAX_ITEM_LEVEL then
            break
        end
    end
    if (allowedCombinations == 0) then
        do
            return
        end
    end
    UpdateEachStockBuilding(pickedItemType, pickedItemLevel)
end

function StartStockUpdates()
    PerformStockUpdates()
    TimerStart(bj_stockUpdateTimer, bj_STOCK_RESTOCK_INTERVAL, true, PerformStockUpdates)
end

function RemovePurchasedItem()
    RemoveItemFromStock(GetSellingUnit(), GetItemTypeId(GetSoldItem()))
end

function InitNeutralBuildings()
    local iLevel = nil
    iLevel = 0
    while true do
        bj_stockAllowedPermanent[iLevel] = false
        bj_stockAllowedCharged[iLevel] = false
        bj_stockAllowedArtifact[iLevel] = false
        iLevel = iLevel + 1
        if iLevel > bj_MAX_ITEM_LEVEL then
            break
        end
    end
    SetAllItemTypeSlots(bj_MAX_STOCK_ITEM_SLOTS)
    SetAllUnitTypeSlots(bj_MAX_STOCK_UNIT_SLOTS)
    bj_stockUpdateTimer = CreateTimer()
    TimerStart(bj_stockUpdateTimer, bj_STOCK_RESTOCK_INITIAL_DELAY, false, StartStockUpdates)
    bj_stockItemPurchased = CreateTrigger()
    TriggerRegisterPlayerUnitEvent(bj_stockItemPurchased, Player(PLAYER_NEUTRAL_PASSIVE), EVENT_PLAYER_UNIT_SELL_ITEM, nil)
    TriggerAddAction(bj_stockItemPurchased, RemovePurchasedItem)
end

function MarkGameStarted()
    bj_gameStarted = true
    DestroyTimer(bj_gameStartedTimer)
end

function DetectGameStarted()
    bj_gameStartedTimer = CreateTimer()
    TimerStart(bj_gameStartedTimer, bj_GAME_STARTED_THRESHOLD, false, MarkGameStarted)
end

function InitBlizzard()
    ConfigureNeutralVictim()
    InitBlizzardGlobals()
    InitQueuedTriggers()
    InitRescuableBehaviorBJ()
    InitDNCSounds()
    InitMapRects()
    InitSummonableCaps()
    InitNeutralBuildings()
    DetectGameStarted()
end

function RandomDistReset()
    bj_randDistCount = 0
end

function RandomDistAddItem(inID, inChance)
    bj_randDistID[bj_randDistCount] = inID
    bj_randDistChance[bj_randDistCount] = inChance
    bj_randDistCount = bj_randDistCount + 1
end

function RandomDistChoose()
    local sum = 0
    local chance = 0
    local index = nil
    local foundID = -1
    local done = nil
    if (bj_randDistCount == 0) then
        do
            return -1
        end
    end
    index = 0
    while true do
        sum = sum + bj_randDistChance[index]
        index = index + 1
        if index == bj_randDistCount then
            break
        end
    end
    chance = GetRandomInt(1, sum)
    index = 0
    sum = 0
    done = false
    while true do
        sum = sum + bj_randDistChance[index]
        if (chance <= sum) then
            foundID = bj_randDistID[index]
            done = true
        end
        index = index + 1
        if (index == bj_randDistCount) then
            done = true
        end
        if done == true then
            break
        end
    end
    do
        return foundID
    end
end

function UnitDropItem(inUnit, inItemID)
    local x = nil
    local y = nil
    local radius = 32
    local unitX = nil
    local unitY = nil
    local droppedItem = nil
    if (inItemID == -1) then
        do
            return nil
        end
    end
    unitX = GetUnitX(inUnit)
    unitY = GetUnitY(inUnit)
    x = GetRandomReal(unitX - radius, unitX + radius)
    y = GetRandomReal(unitY - radius, unitY + radius)
    droppedItem = CreateItem(inItemID, x, y)
    SetItemDropID(droppedItem, GetUnitTypeId(inUnit))
    UpdateStockAvailability(droppedItem)
    do
        return droppedItem
    end
end

function WidgetDropItem(inWidget, inItemID)
    local x = nil
    local y = nil
    local radius = 32
    local widgetX = nil
    local widgetY = nil
    if (inItemID == -1) then
        do
            return nil
        end
    end
    widgetX = GetWidgetX(inWidget)
    widgetY = GetWidgetY(inWidget)
    x = GetRandomReal(widgetX - radius, widgetX + radius)
    y = GetRandomReal(widgetY - radius, widgetY + radius)
    do
        return CreateItem(inItemID, x, y)
    end
end
end
