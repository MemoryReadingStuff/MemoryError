print("Run GemRock Miner")
local API = require("api")
local UTILS = require("utils")
local startTime = os.time()
local idleTimeThreshold = math.random(120, 260)
local timerDuration = 60  -- Timer duration in seconds

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

function LocationCheck()
    print("checking if player is at bank")
    if (API.PInArea(3270, 5, 3168, 5))then
        if (API.InvFull_()) then
                print("Player is at bank")
                banking()
            end
        end

        if (API.PInArea(3299,10,3313,10))then
            print("Player is at Mine")
            MineMoreOre()
        else 
            WalktoOre()
        end  
    
end

function bankingcheck()
    print("Checking if player is at lodestone area")
    if(API.PInArea(3297,8 ,3184,8))then
    --iif player is at lodestone then contines to banking
    banking()
-- if not checks if its at it now.  
    else bankingcheck()
    end
end


function banking()
    print("Banking")
    API.DoAction_Object1(0x5,80,{76274},50)
    API.RandomSleep2(2000,2000,2000)
    API.WaitUntilMovingEnds()

    print("Banking Click Delay")
    API.RandomSleep2(4500,1500,3200)

    print("Yeeting your shit")
    API.DoAction_Interface(0xffffffff,0xffffffff,1,517,39,-1,5456)

    print("Waiting for interface to close")
    API.RandomSleep2(2000,1500,3200)

    WalktoOre();   
end


function MineMoreOre()
    print("AFK Method check ")
    antiIdleTask()
    API.DoRandomEvents()

    print("Mining More Ore")
    --API.DoAction_Object1(0x3a,0,113047,50)
    API.DoAction_Object1(0x3a,0,{ 113047 }, 50);
    --API.DoAction_Object_r(0x3a,0,{113047},50,{3298,3314,0},5)
    API.RandomSleep2(6500,250,18000)
    InvyCheck()
end


--local Invyfull = API.InvFull_()
function InvyCheck()
        print("Invy full check1")
        if (API.InvFull_()) then
            print("Going Back to bank")
            WalktoBank()
        else 
            print("Going To mine")
            MineMoreOre()
        end
end

function WalktoBank()
    print ("Clicking Home teleport")
           API.RandomSleep2(1000,1000,1000)
           API.DoAction_Interface(0xffffffff,0xffffffff,1,1465,18,-1,5456)
           API.RandomSleep2(4500,2000,4000)

            print("is lodestone open?")
           if not API.LODEInterfaceCheckvarbit() then
            print("reclicking interface?")
            API.DoAction_Interface(0xffffffff,0xffffffff,1,1465,18,-1,5456)
            API.RandomSleep2(4500,2000,4000)
           end
           print("Clicking on lodestone location")
           API.DoAction_Interface(0xffffffff,0xffffffff,1,1092,11,-1,5456)

           API.RandomSleep2(4000, 2050, 5000)
           print('sleep done')
            


           UTILS.waitForAnimation(0, 20)
           API.RandomSleep2(4000, 2050, 5000)
           print('waitForAnimation done')
           
           UTILS.waitForPlayerAtCoords(3297, 3184, 0, 5)
           print('waitForPlayerAtCoords done')

           API.RandomSleep2(3500,2500,2500)
            print ("Clicking on bank tile")

            API.DoAction_Tile(WPOINT.new( 3271 + API.Math_RandomNumber(2), 3167 + API.Math_RandomNumber(2), 0))
            print("AFK Hopefully")
            antiIdleTask()

            API.RandomSleep2(2500,2500,2500)
            API.WaitUntilMovingEnds()
            API.RandomSleep2(2500,2500,2500)

            banking()
        end    

function WalktoOre()
    print ("Clicking Node 1")
        API.DoAction_Tile(WPOINT.new( 3283 + API.Math_RandomNumber(3), 3203 + API.Math_RandomNumber(3), 0))
        API.RandomSleep2(8000,12000,15000)

        print ("Clicking Node 2")
        API.DoAction_Tile(WPOINT.new( 3290 + API.Math_RandomNumber(5), 3238 + API.Math_RandomNumber(5), 0))
        API.RandomSleep2(8000,12000,15000)

        print("Randomevents?")
        antiIdleTask()
        API.DoRandomEvents()

        print ("Clicking Node 3")
        API.DoAction_Tile(WPOINT.new( 3295 + API.Math_RandomNumber(5), 3273 + API.Math_RandomNumber(5), 0))
        API.RandomSleep2(8000,12000,15000)

        print ("Clicking Node 4")
        API.DoAction_Tile(WPOINT.new( 3299 + API.Math_RandomNumber(3), 3313 + API.Math_RandomNumber(3), 0))
        API.RandomSleep2(8000,12000,15000)

        MineMoreOre()
    end




--default parameters don't work.
--somefunctions behave differently than expected.

--main loop
API.Write_LoopyLoop(0)
while(API.Read_LoopyLoop())
do-----------------------------------------------------------------------------------
        LocationCheck()
        antiIdleTask()
        API.DoRandomEvents()


end----------------------------------------------------------------------------------