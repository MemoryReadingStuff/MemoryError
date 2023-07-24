print("Run Lua script Hall of Memories.")

local API = require("api")
ScripCuRunning1 = ""



local Cselect = API.ScriptDialogWindow2("Hall Of Memories",{  "Faded memories", "Lustrous memories", "Brilliant memories", "Radiant memories", "Luminous memories", "Incandescent memories"  },"Start", "Close").Name
if Cselect == "Faded memories" then
    print(Cselect)
    ScripCuRunning1 = "Faded memories" 
elseif Cselect == "Lustrous memories" then
    print(Cselect)
    ScripCuRunning1 = "Lustrous memories"
elseif Cselect == "Brilliant memories" then
    print(Cselect)
    ScripCuRunning1 = "Brilliant memories"
elseif Cselect == "Radiant memories" then
    print(Cselect)
    ScripCuRunning1 = "Radiant memories"
elseif Cselect == "Luminous memories" then
    print(Cselect)
    ScripCuRunning1 = "Luminous memories"
elseif Cselect == "Incandescent memories" then
    print(Cselect)
    ScripCuRunning1 = "Incandescent memories"
end



function StartTwoTicking()
    while API.ReadPlayerAnim() ~= 0 do
        API.DoAction_NPC_str(0xc8, 400, { ScripCuRunning1 }, 2)
        API.RandomSleep2(1200, 1200, 1200)
    end
end

function FillJars()
    API.DoAction_NPC_str(0xc8, 400, { ScripCuRunning1 }, 74)
    API.RandomSleep2(2000, 1500, 2000)
    API.WaitUntilMovingEnds()
    API.RandomSleep2(2000, 1500, 2000)
    StartTwoTicking()
end

function GrabJars()
    API.DoAction_Tile(WPOINT.new( 2229, 9116,0 ))
    API.WaitUntilMovingEnds()
    API.RandomSleep2(1000, 1500, 2000)
    API.DoAction_Object_r(0x29, 0, { 111374 },70, WPOINT.new(2230, 9116,0),  74)
    
    while not API.InvFull_() do
        API.RandomSleep2(200, 200, 200)
    end
    
    API.DoAction_Tile(WPOINT.new(2223, 9117,0 ))
    API.WaitUntilMovingEnds()
end

function DepositJars()
    API.DoAction_Tile(WPOINT.new(2207, 9120,0 ))
    API.WaitUntilMovingEnds()
    API.RandomSleep2(2000, 1000, 1000)
    API.DoAction_Object_r(0x29, 0, { 111375 },74, WPOINT.new( 2204, 9134,0 ),  74)
    API.RandomSleep2(2000, 1000, 1000)
    API.WaitUntilMovingEnds()
    
    while API.InvItemcount_1(42900) >= 1 do
        API.RandomSleep2(1000, 1000, 1000)
    end
end


--main loop

API.Write_LoopyLoop(1)
while(API.Read_LoopyLoop())
do-----------------------------------------------------------------------------------
    if (API.Math_RandomNumber(1000) > 994) then
        API.PIdle2();
    end
    
    if API.InvFull_() then
        if API.InvItemcount_1(42898) >= 1 or API.InvItemcount_1(42899) >= 1 then
            FillJars()
        elseif API.InvItemcount_1(42900) == 28 then
            DepositJars()
        end
    else
        GrabJars()
    end

end----------------------------------------------------------------------------------