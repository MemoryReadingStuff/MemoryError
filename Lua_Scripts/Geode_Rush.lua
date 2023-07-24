print("Run Lua script Geode_Rush.")

local API = require("api")

local safety_numbers1 = 0
local safety_numbers2 = 0


--Exported function list is in API
--main loop
API.Write_LoopyLoop(true)
while(API.Read_LoopyLoop())
do-----------------------------------------------------------------------------------
    if (safety_numbers1 > 4) then
        API.Write_LoopyLoop(false)
        print("Too much fails 1")
    end
    if (safety_numbers2 > 79) then
        API.Write_LoopyLoop(false)
        print("Too much fails 2")
    end 
    --do
    local x_rand = API.Math_RandomNumber(30) - 15
    local y_rand = API.Math_RandomNumber(30) - 15
    while(not API.InvFull_() and safety_numbers2 < 80) do
    if (API.InvItemcount_String("geode") > 0) then
        API.ClickInv_2("geode",0,0,x_rand,y_rand)
        safety_numbers2 = safety_numbers2 + 1
        safety_numbers1 = 0
        API.RandomSleep2(40, 120, 1000)
    end
    end
    --get
    if (API.InvFull_()) then
        safety_numbers1 = safety_numbers1 + 1
        safety_numbers2 = 0
        if (not API.BankOpen2()) then 
            API.ClickAllObj1(API.GetAllObjArrayInteract({125115},5,0),10,false,0,"Bank")--Fort
            API.RandomSleep2(500, 3050, 12000)
        end
        if (API.BankOpen2()) then 
            API.KeyboardPress32(0x31,0)
        end
    end
API.RandomSleep2(500, 3050, 12000)
end----------------------------------------------------------------------------------
