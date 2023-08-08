local API = require("api")
local maxDepositAttempts = math.random(2,3)
local player = API.GetLocalPlayerName() 

local alrange = {76295}
local albanknpc = {496}
local crayfish =13435
local salmon = 331
local trout = 335
API.Write_ScripCuRunning1(player)
API.Write_ScripCuRunning2("al kharid cooking.........")

local function bank()
    print("Going to the bank NPC...")
    while true do
        API.DoAction_NPC(0x5, 3120, albanknpc, 50)
        API.RandomSleep2(1000, 3000)
        print("Waiting for player movement to stop...")
        while API.IsPlayerMoving_(player) do
            API.RandomSleep2(1200, 2000)
        end
        if API.PInArea(3270,5,3168,5) and API.BankOpen2() then
            break
        end
    end

    API.KeyboardPress('3', 60, 100)

    if API.BankGetItemStack1(crayfish) > 0 then
        API.BankClickItem(crayfish)  
    elseif API.BankGetItemStack1(trout) > 0 then
        API.BankClickItem(trout)  
    elseif API.BankGetItemStack1(salmon) > 0 then
        API.BankClickItem(salmon) 
    else 
        API.Write_LoopyLoop(false)
        return
    end 

    API.RandomSleep2(800, 1200)
end

local function cook()
    while true do
        API.DoAction_Object_r(0x40,0,alrange,50,FFPOINT.new(0, 0, 0),5)
        API.RandomSleep2(1200, 2000)
        while API.IsPlayerMoving_(player) do
            API.RandomSleep2(1200, 2000)
        end
        if API.PInArea(3269,2,3184,2) then
            break
        end
    end

    API.KeyboardPress32(32,0)
    API.RandomSleep2(1200, 2000) 
    print("cooking...")

    while API.isProcessing() do
        API.RandomSleep2(1200, 2000)
    end
end

API.Write_LoopyLoop(true)
while API.Read_LoopyLoop() do
    if API.Invfreecount_() < 28 then
        bank()
        API.RandomSleep2(1200, 2000) 
        cook()
    end
end
