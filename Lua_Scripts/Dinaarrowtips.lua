print("Run Lua script Dinaarrowtips.")

--[[
#Script Name:   <Dinaarrowshaft.>
# Description:  <collects rotten and good eggs to get arrotips at anachronia >
# Autor:        <Saša>
# Version:      <1.0>
# Datum:        <06.07.23>
--]]

local API = require("api")

local rottenegg = 53100
local goodegg = 53099
local composter = 123389
local incubation = 123386
local eggcollect = 123383
local afk = os.time()

function idleCheck()
    local timeDiff = os.difftime(os.time(), afk)
    local randomTime = math.random(180, 280) -- between 3 and 4.66 minutes 

    if timeDiff > randomTime then
        -- do stuff here...  turn camera, send keys, move mouse w/e
        API.PIdle2()
        afk = os.time()
    end
end

function depositrottenegg()
    API.DoAction_Tile(WPOINT.new(5230, 2327, 0))
    API.RandomSleep2(300, 800, 1000)
    API.WaitUntilMovingEnds()
    API.DoAction_Object1(0x41, 0, {composter}, 50)
end

function depositgoodegg()
    API.DoAction_Tile(WPOINT.new(5208, 2351, 0))
    API.RandomSleep2(300, 800, 1000)
    API.WaitUntilMovingEnds()
    API.DoAction_Object1(0x41, 0, {incubation}, 50)
end

function grabeggs()
    API.DoAction_Tile(WPOINT.new(5220, 2348, 0))
    API.RandomSleep2(300, 800, 1000)
    API.WaitUntilMovingEnds()
    API.DoAction_Object1(0x41, 0, {eggcollect}, 50)
end

-- Exported function list is in API
-- main loop
API.Write_LoopyLoop(true)
while (API.Read_LoopyLoop()) do -----------------------------------------------------------------------------------

    API.RandomEvents()
    idleCheck()

    if API.InvFull_() then
        
        --checks if rotten egg in inventory is 14 or higher then deposits it to the compost
        if not API.CheckAnim(40) and not API.ReadPlayerMovin2() and API.InvItemcount_1(rottenegg) >= 14 then
            print("Depositing rotten eggs")
            depositrottenegg()
            API.RandomSleep2(300, 1000, 1350)
        end
        -- checks if good eggs in inventory is 13 or higher then deposits it to the incubation station
        if not API.CheckAnim(40) and not API.ReadPlayerMovin2() and API.InvItemcount_1(goodegg) >= 13 then
            print("Depositing good eggs")

            depositgoodegg()
            API.RandomSleep2(300, 1000, 1350)
        end

    else

        if not API.InvFull_() then
            -- collects eggs at egg collector 
            if not API.CheckAnim(40) and not API.ReadPlayerMovin2() then
                print("grabbing eggs")
                grabeggs()
                API.RandomSleep2(300, 1000, 1350)
            end

        end
    end

    API.RandomSleep2(200, 2000, 4000);
end ----------------------------------------------------------------------------------
