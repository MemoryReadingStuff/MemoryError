print("Run Lua script Dinnaarrowfletching.")

local API = require("api")
--[[
#Script Name:   <Dinaarrowtips.>
# Description:  <Collects Dino Propellant at anachronia by collecting an Inv full of dinos
                then feeds them and turns it itno propallant >
# Autor:        <Saša>
# Version:      <1.0>
# Date:        <04.08.23>
--]]

-- gather station
local gatherd = 123400
-- feeding station 
local brownd = 123409
local violetd = 123405
local pinkd = 123403
local yellowd = 123407
-- finishd product fertilizer to burn
local fertilizer = 53078
-- inventory dinos 
local dinob = 53082
local dinov = 53080
local dinop = 53079
local dinoy = 53081
-- anti idle
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
--[[ 
API.DoAction_Tile(WPOINT.new(5332,2292,0))  pink dino feeding point
API.DoAction_Tile(WPOINT.new(5312,2308,0))  violet dino feeding point
API.DoAction_Tile(WPOINT.new(5304,2276,0))  gathering spot dino 
API.DoAction_Tile(WPOINT.new(5288,2259,0))  bronw dino feeding point
API.DoAction_Tile(WPOINT.new(5329,2271,0))  yellow dino feeding point
--]]

function GatherDino()
    print("gather dinos")
    API.DoAction_Tile(WPOINT.new(5304, 2276, 0))
    API.RandomSleep2(300, 300, 450)
    API.WaitUntilMovingEnds()
    API.RandomSleep2(300, 300, 450)
    API.DoAction_Object1(0x2d, 0, {gatherd}, 50)
    API.RandomSleep2(300, 300, 450)
end

function feedyellowdino()
    print("feeding yellowdino")
    if not API.ReadPlayerMovin2() and not API.CheckAnim(20) then
    API.DoAction_Tile(WPOINT.new( 5310 + API.Math_RandomNumber(3), 2285 + API.Math_RandomNumber(3), 0))
    API.RandomSleep2(600, 300, 450)
    API.WaitUntilMovingEnds()
    API.RandomSleep2(600, 300, 450)
    API.DoAction_Object1(0x2f,0,{ yellowd },50)
    API.RandomSleep2(300, 300, 450)
    end
end

function feedbrowndino()
    print("feeding browndino")
    if not API.ReadPlayerMovin2() and not API.CheckAnim(20) then
    API.DoAction_Tile(WPOINT.new( 5310 + API.Math_RandomNumber(3), 2285 + API.Math_RandomNumber(3), 0))
    API.RandomSleep2(600, 300, 450)
    API.WaitUntilMovingEnds()
    API.RandomSleep2(600, 300, 450)
    API.DoAction_Object1(0x2f,0,{ brownd },50)
    API.RandomSleep2(300, 300, 450)
    end
end

function feedvioletdino()
    print("feeding violetdino")
    if not API.ReadPlayerMovin2() and not API.CheckAnim(20) then
    API.DoAction_Tile(WPOINT.new( 5310 + API.Math_RandomNumber(3), 2285 + API.Math_RandomNumber(3), 0))
    API.RandomSleep2(600, 300, 450)
    API.WaitUntilMovingEnds()
    API.RandomSleep2(600, 300, 450)
    API.DoAction_Object1(0x2f,0,{ violetd },50)
    API.RandomSleep2(300, 300, 450)
    end
end

function feedpinkdino()
    print("feeding pinkdino")
   if not API.ReadPlayerMovin2() and not API.CheckAnim(20) then
    API.DoAction_Tile(WPOINT.new( 5310 + API.Math_RandomNumber(3), 2285 + API.Math_RandomNumber(3), 0))
    API.RandomSleep2(600, 300, 450)
    API.WaitUntilMovingEnds()
    API.RandomSleep2(600, 300, 450)
    API.DoAction_Object1(0x2f,0,{ pinkd },50)
    API.RandomSleep2(300, 300, 450)
   end
    
end

-- Exported function list is in API
-- main loop
API.Write_LoopyLoop(true)
while (API.Read_LoopyLoop()) do -----------------------------------------------------------------------------------

    --[[
 -- gather dino
    API.DoAction_Object1(0x2d, 0, {gatherd}, 50)

    -- feed colored dino
    API.DoAction_Object(0x2f, 0, {brownd, violetd, yellowd, pinkd}, 50)
    API.DoAction_Tile(WPOINT.new(5310, 2285, 0))
API.DoAction_Tile(WPOINT.new( 5310 + API.Math_RandomNumber(1), 2285 + API.Math_RandomNumber(2), 0))
--]]
    idleCheck()

    if not API.InvFull_() and not API.CheckInvStuff2(fertilizer) then
        -- Collects Dinos at the storm barn   
        if not API.CheckAnim(80) and not API.ReadPlayerMovin2() then
            print("Gathering Dinos at the storm barn")
            GatherDino()
        end

    else

        if not API.CheckAnim(60) and not API.ReadPlayerMovin2() and API.CheckInvStuff2(dinob) then
            
            feedbrowndino()
        end

        if not API.CheckAnim(60) and not API.ReadPlayerMovin2() and API.CheckInvStuff2(dinov) then
            
            feedvioletdino()
        end

        if not API.CheckAnim(60) and not API.ReadPlayerMovin2() and API.CheckInvStuff2(dinop) then
            
            feedpinkdino()
        end

        if not API.CheckAnim(60) and not API.ReadPlayerMovin2() and API.CheckInvStuff2(dinoy) then
            
            feedyellowdino()
        end

        if API.InvFull_(fertilizer) then
            -- Burning Fertilizer
            if not API.CheckAnim(40) and not API.ReadPlayerMovin2() then
                print("Burning Fertilizer")
                API.DoAction_Interface(0x41,0xcf56,1,1473,5,27,5392)
                
            end

        end

    end

    API.RandomSleep2(500, 1000, 1550)
end ----------------------------------------------------------------------------------
