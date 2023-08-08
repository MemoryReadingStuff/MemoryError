local API = require("api")



-- Define the spots IDs
local crayfish = {6267}
local highfish = {329}

-- Define the highfish inventory IDs
local trout = {335}
local salmon = {331}

-- Get the local player's name
local player = API.GetLocalPlayerName()

local banknpc = {553,2759}

local banklum = {79036}

API.Write_ScripCuRunning1(player)
API.Write_ScripCuRunning2("fishing f2p")
-- Get the user's selection
local Cselect = API.ScriptDialogWindow2("Fishing", {
    "Crayfish", "Highfish"
},"Start", "Close").Name;

-- Assign the fish ID based on the user's selection
local fishid
if Cselect == "Crayfish" then
    fishid = crayfish
elseif Cselect == "Highfish" then
    fishid = highfish
end

-- Define the fish function
local function fish()
    API.DoAction_NPC(0x3c,3120,fishid,50)
    print("Fishing...")
    API.RandomSleep2(2500, 3050, 2500)
end

local function bank1()
    print("banking now... full inv....")

    -- bank tile
    local x = 3233 + math.random(-2, 2)
    local y = 3230 + math.random(-2, 2)
    local z = 0
    repeat
        if not API.Read_LoopyLoop() then break end  -- Add this line
        API.DoAction_Tile(WPOINT.new(x, y, z))
        API.RandomSleep2(500, 3050, 2000)
    until API.IsPlayerMoving_(player) or not API.Read_LoopyLoop() -- Added loop protection


    repeat 
        API.RandomSleep2(500, 3050, 2000) 
    until API.PInArea(x,10,y,10,z) or not API.Read_LoopyLoop() 


    -- bank tile
    local x = 3214 + math.random(-2, 2)
    local y = 3257 + math.random(-2, 2)
    local z = 0
    repeat
        if not API.Read_LoopyLoop() then break end  -- Add this line
        API.DoAction_Tile(WPOINT.new(x, y, z))
        API.RandomSleep2(500, 3050, 2000)
    until API.IsPlayerMoving_(player) or not API.Read_LoopyLoop() -- Added loop protection

    repeat 
        API.RandomSleep2(500, 3050, 2000) 
    until API.PInArea(x,10,y,10,z) or not API.Read_LoopyLoop() 

    repeat
        if not API.Read_LoopyLoop() then break end  -- Add this line
        print("to bank....")
        API.DoAction_Object_r(0xb5,0,banklum,50,FFPOINT.new(0, 0, 0),50)
        API.RandomSleep2(500, 3050, 12000)

        print("wait for stop moving")
        while API.IsPlayerMoving_(player) do
            if not API.Read_LoopyLoop() then break end  -- Add this line
            API.RandomSleep2(1500, 3050, 1500)
        end
    until API.BankOpen2() or not API.Read_LoopyLoop() -- Added loop protection

    print("Bank open...")
    print("depositing stuff...")

    if  API.BankOpen2() then
        API.BankAllItems()
        API.RandomSleep2(1000, 2000)
    end


    -- bank tile
    local x = 3233 + math.random(-2, 2)
    local y = 3230 + math.random(-2, 2)
    local z = 0

    repeat
        if not API.Read_LoopyLoop() then break end  -- Add this line
        API.DoAction_Tile(WPOINT.new(x, y, z))
        API.RandomSleep2(500, 3050, 2000)
    until API.IsPlayerMoving_(player) or not API.Read_LoopyLoop() -- Added loop protection

    repeat 
        API.RandomSleep2(500, 3050, 2000) 
    until API.PInArea(x,10,y,10,z) or not API.Read_LoopyLoop() 

 
    local x = 3254 + math.random(-2, 2)
    local y = 3206 + math.random(-2, 2)
    local z = 0
    print("returning....")
    repeat
        if not API.Read_LoopyLoop() then break end  -- Add this line
        API.DoAction_Tile(WPOINT.new(x, y, z))
        API.RandomSleep2(500, 3050, 12000)
    until API.IsPlayerMoving_(player) or not API.Read_LoopyLoop() -- Added loop protection

    repeat 
        API.RandomSleep2(500, 3050, 2000) 
    until API.PInArea(x,10,y,10,z) or not API.Read_LoopyLoop() 

end




local function bank()
    print("banklum")
    repeat
        if not API.Read_LoopyLoop() then break end  -- Add this line
        print("to bank....")
        API.DoAction_Object_r(0xb5,0,banklum,50,FFPOINT.new(0, 0, 0),50)
        API.RandomSleep2(500, 3050, 12000)

        print("wait for stop moving")
        while API.IsPlayerMoving_(player) do
            if not API.Read_LoopyLoop() then break end  -- Add this line
            API.RandomSleep2(1500, 3050, 1500)
        end
    until API.BankOpen2() or not API.Read_LoopyLoop() -- Added loop protection

    if  API.BankOpen2() then
        API.BankAllItems()
        API.RandomSleep2(1000, 2000)
        API.KeyboardPress('2', 60, 100)
        API.RandomSleep2(1000, 2000)
    end





end

--main loop
API.Write_LoopyLoop(true)
while(API.Read_LoopyLoop()) do
    if API.IsPlayerAnimating_(player,1) then
        API.RandomSleep2(1500, 1800, 1200)
    else
        if not API.IsPlayerAnimating_(player,3) then
            if API.Invfreecount_() == 0 then
                print("Dropping fish")
                if API.Check_continue_Open() then
                    API.KeyboardPress31(32, 500, 1200)
                    print("Close dialogue...")
                end

                repeat
                    if not API.Read_LoopyLoop() then break end  -- Add this line
                    if API.InvItemcount_1(trout[1]) > 0 or API.InvItemcount_1(salmon[1]) > 0 then
                        bank()
                    else
                        bank1()
                    end
                until API.Invfreecount_() >= math.random(20, 25) or not API.Read_LoopyLoop() -- Added loop protection
            else
                fish()
            end
        end
    end
end
