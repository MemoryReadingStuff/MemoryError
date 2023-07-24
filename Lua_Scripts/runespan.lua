print("Run Runespan.")

--[[
#Script Name:   <Runespan.>
# Description:  <Interacts with entities in Runespan. Weight calcualted based on EXP values from the wiki.
                    https://runescape.wiki/w/Runespan#Nodes 
                    https://runescape.wiki/w/Runespan#Creatures
                    
# Inputs:       <distance> integer tile range
# Autor:        <Dead>
# Version:      <1.0>
# Date:        <2023-07-11>
--]]

local API = require("api")
local UTILS = require("utils")

local startTime = os.time()
local idleTimeThreshold = math.random(220, 260)
local startPos = API.PlayerCoord()
local distance = 5
local retryCount = 0
CurrentTarget = { idx = 0, type = 0, id = 0, weight = 0 }

textdata = API.CreateIG_answer();
textdata.box_name = "test_text";
textdata.box_start = FFPOINT.new(20, 20, 0);
textdata.box_size = FFPOINT.new(200, 60, 0)
textdata.colour = ImColor.new(255, 255, 255);

local function antiIdleTask()
    local currentTime = os.time()
    local elapsedTime = os.difftime(currentTime, startTime)

    if elapsedTime >= idleTimeThreshold then
        API.PIdle2()
        -- Reset the timer and generate a new random idle time
        startTime = os.time()
        idleTimeThreshold = math.random(220, 260)
        ScripCuRunning1 = "Timer interupt"
        print("Reset Timer & Threshhold")
    end
end

local function gameStateChecks()
    local gameState = API.GetGameState()
    if (gameState ~= 3) then
        print('Not ingame with state:', gameState)
        API.Write_LoopyLoop(false)
        return
    end
end

local function findTargets()
    local npcs = {}
    local objs = {}
    RcLevel = API.XPLevelTable(API.GetSkillXP("RUNECRAFTING"))
    if RcLevel >= 95 then
        -- ScripCuRunning1 = "Undead soul"
        table.insert(objs, { id = 70471, weight = 1031, type = 0 })
    end
    if RcLevel >= 90 then
        -- ScripCuRunning1 = "Living soul"
        table.insert(objs, { id = 70470, weight = 1030, type = 0 })
    end
    if RcLevel >= 83 then
        -- ScripCuRunning1 = "Bloody skulls"
        table.insert(objs, { id = 70469, weight = 1029, type = 0 })
    end
    if RcLevel >= 77 then
        -- ScripCuRunning1 = "Blood pool"
        table.insert(objs, { id = 70468, weight = 1028, type = 0 })
    end
    if RcLevel >= 65 then
        -- ScripCuRunning1 = "Skulls"
        table.insert(objs, { id = 70467, weight = 1027, type = 0 })
    end
    if RcLevel >= 54 then
        -- ScripCuRunning1 = "Jumper"
        table.insert(objs, { id = 70466, weight = 1026, type = 0 })
    end
    if RcLevel >= 90 then
        -- ScripCuRunning1 = "Soul esswraith"
        table.insert(npcs, { id = 15416, weight = 1025, type = 1 })
    end
    if RcLevel >= 44 then
        -- ScripCuRunning1 = "Shifter"
        table.insert(objs, { id = 70465, weight = 1024, type = 0 })
    end
    if RcLevel >= 40 then
        -- ScripCuRunning1 = "Nebula"
        table.insert(objs, { id = 70464, weight = 1023, type = 0 })
    end
    if RcLevel >= 77 then
        -- ScripCuRunning1 = "Blood esswraith"
        table.insert(npcs, { id = 15415, weight = 1022, type = 1 })
    end
    if RcLevel >= 35 then
        -- ScripCuRunning1 = "Chaotic cloud"
        table.insert(objs, { id = 70463, weight = 1021, type = 0 })
    end
    if RcLevel >= 65 then
        -- ScripCuRunning1 = "Death esswraith"
        table.insert(npcs, { id = 15414, weight = 1020, type = 1 })
    end
    if RcLevel >= 54 then
        -- ScripCuRunning1 = "Law esshound"
        table.insert(npcs, { id = 15413, weight = 1019, type = 1 })
    end
    if RcLevel >= 27 then
        -- ScripCuRunning1 = "Fire storm"
        table.insert(objs, { id = 70462, weight = 1017, type = 0 })
    end
    if RcLevel >= 20 then
        -- ScripCuRunning1 = "Fleshy growth"
        table.insert(objs, { id = 70461, weight = 1016, type = 0 })
    end
    if RcLevel >= 44 then
        -- ScripCuRunning1 = "Nature esshound"
        table.insert(npcs, { id = 15412, weight = 1018, type = 1 })
    end
    if RcLevel >= 40 then
        -- ScripCuRunning1 = "Astral esshound"
        table.insert(npcs, { id = 15411, weight = 1015, type = 1 })
    end
    if RcLevel >= 17 then
        -- ScripCuRunning1 = "Vine"
        table.insert(objs, { id = 70460, weight = 1014, type = 0 })
    end
    if RcLevel >= 14 then
        -- ScripCuRunning1 = "Fireball"
        table.insert(objs, { id = 70459, weight = 1013, type = 0 })
    end
    if RcLevel >= 35 then
        -- ScripCuRunning1 = "Chaos esshound"
        table.insert(npcs, { id = 15410, weight = 1012, type = 1 })
    end
    if RcLevel >= 9 then
        -- ScripCuRunning1 = "Rock fragment"
        table.insert(objs, { id = 70458, weight = 1011, type = 0 })
    end
    if RcLevel >= 27 then
        -- ScripCuRunning1 = "Cosmic esshound"
        table.insert(npcs, { id = 15409, weight = 1010, type = 1 })
    end
    if RcLevel >= 5 then
        -- ScripCuRunning1 = "Water pool"
        table.insert(objs, { id = 70457, weight = 1009, type = 0 })
    end
    if RcLevel >= 20 then
        -- ScripCuRunning1 = "Body esshound"
        table.insert(npcs, { id = 15408, weight = 1008, type = 1 })
    end
    if RcLevel >= 1 then
        -- ScripCuRunning1 = "Mind storm"
        table.insert(objs, { id = 70456, weight = 1007, type = 0 })
    end
    if RcLevel >= 1 then
        -- ScripCuRunning1 = "Cyclone"
        table.insert(objs, { id = 70455, weight = 1006, type = 0 })
    end
    if RcLevel >= 14 then
        -- ScripCuRunning1 = "Fire essling"
        table.insert(npcs, { id = 15407, weight = 1005, type = 1 })
    end
    if RcLevel >= 9 then
        -- ScripCuRunning1 = "Earth essling"
        table.insert(npcs, { id = 15406, weight = 1004, type = 1 })
    end
    if RcLevel >= 5 then
        -- ScripCuRunning1 = "Water essling"
        table.insert(npcs, { id = 15405, weight = 1003, type = 1 })
    end
    if RcLevel >= 1 then
        -- ScripCuRunning1 = "Mind essling"
        table.insert(npcs, { id = 15404, weight = 1002, type = 1 })
    end
    if RcLevel >= 1 then
        -- ScripCuRunning1 = "Air essling"
        table.insert(npcs, { id = 15403, weight = 1001, type = 1 })
    end
    return { objects = objs, npcs = npcs }
end

local function compare(a, b)
    -- Compare weights in descending order
    if a.weight > b.weight then
        return true
    elseif a.weight < b.weight then
        return false
    end
    -- If weights are equal, compare distances in ascending order
    return a.distance < b.distance
end

local function findBestTarget()
    local allTargets = findTargets()
    local targets = {}
    for i, target in pairs(allTargets.objects) do
        local lTarget = API.GetAllObjArrayInteract({ target.id }, distance, 0)
        if lTarget[1] ~= nil then
            local temp = lTarget[1]
            local distance = API.Math_DistanceW(WPOINT.new(temp.TileX / 512, temp.TileY / 512, temp.TileZ / 512),
                startPos)
            table.insert(targets,
                { idx = i, name = temp.Name, type = 0, weight = target.weight, distance = distance, id = temp.Id,
                    allObj = temp })
        end
    end
    for j, target2 in pairs(allTargets.npcs) do
        local lTarget = API.GetAllObjArrayInteract({ target2.id }, distance, 1)
        if lTarget[1] ~= nil then
            local temp = lTarget[1]
            local distance = API.Math_DistanceW(WPOINT.new(temp.TileX / 512, temp.TileY / 512, temp.TileZ / 512),
                startPos)
            table.insert(targets,
                { idx = j, name = temp.Name, type = 1, weight = target2.weight, distance = distance, id = temp.Id,
                    allObj = temp })
        end
    end
    table.sort(targets, compare)
    -- print(UTILS.printTable(targets))
    return targets[1]
end

local function isCurrentTargetBest(target)
    -- print(UTILS.printTable(CurrentTarget), UTILS.printTable(target))
    if CurrentTarget.id == target.id then
        return true
    elseif CurrentTarget.weight <= target.weight then
        print('weight')
        return false
    else
        return true
    end
end

local function doActionTarget(target)
    if target.type == 0 then
        API.DoAction_Object2(0x29, API.OFF_ACT_GeneralObject_route0, { target.allObj.Id }, 15,
            WPOINT.new(target.allObj.TileX / 512, target.allObj.TileY / 512, target.allObj.TileZ / 512));
        CurrentTarget = { idx = target.idx, type = 0, id = target.allObj.Id, weight = target.weight }
        UTILS.randomSleep(4000)
        API.WaitUntilMovingEnds()
    elseif target.type == 1 then
        API.DoAction_NPC(0x29, API.OFF_ACT_InteractNPC_route, { target.id }, 15);
        CurrentTarget = { idx = target.idx, type = 1, id = target.allObj.Id, weight = target.weight }
        UTILS.randomSleep(4000)
        API.WaitUntilMovingEnds()
    end
end

local function Runespan()
    gameStateChecks()
    antiIdleTask()
    API.DoRandomEvents()
    local target = findBestTarget()
    if not target then
        UTILS.randomSleep(500)
        findBestTarget()
        retryCount = retryCount + 1
        if retryCount > 5 then
            API.DoAction_Tile(startPos)
            UTILS.randomSleep(1000)
            API.WaitUntilMovingEnds()
            retryCount = 0
        end
    else
        -- print(target.name)
        if CurrentTarget.weight == 0 then
            CurrentTarget = { idx = target.idx, type = target.type, id = target.allObj.Id, weight = target.weight }
        end
        textdata.string_value = "Best target:" .. target.name
        API.DrawTextAt(textdata)

        if API.InvItemcount_1(24227) == 0 then
            API.DoAction_NPC(0x29, API.OFF_ACT_InteractNPC_route, { 15402 }, 50);
            UTILS.randomSleep(600)
            API.WaitUntilMovingEnds()
        elseif not isCurrentTargetBest(target) then
            print('Switching to better target')
            doActionTarget(target)
            UTILS.randomSleep(600)
        elseif not API.CheckAnim(80) then
            doActionTarget(target)
        end
    end
end

if (API.Read_LoopyLoop()) then
    while API.Read_LoopyLoop() do
        Runespan()
    end
end