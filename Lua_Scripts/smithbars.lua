print("Run Lua script smith.")

local API = require("api")

local var1 = 0
local var2 = 0


--Exported function list is in API
--main loop
API.Write_LoopyLoop(true)
while(API.Read_LoopyLoop())
do-----------------------------------------------------------------------------------
    if (API.Math_RandomNumber(1000) > 950) then
        API.PIdle1();
    end
      
    if API.InvFull_() then
        
        if (not API.ReadPlayerMovin2() and not API.CheckAnim(25)) then
            API.DoAction_Object1(0x3f, 0, { 113261 }, 50);
            API.RandomSleep2(1500,500,850);
            API.DoAction_Interface(0x24,0xffffffff,1,37,167,-1,2480);
        end
    
   
        
    
    
    else
        
    
        if (not API.CheckAnim(26)) then
            API.DoAction_Object1(0x3f, 0, { 113261 }, 50);
            API.RandomSleep2(1500,500,850);
            API.DoAction_Interface(0x24,0xffffffff,1,37,163,-1,2480);

            
            

        end



    
    end






API.RandomSleep2(10000, 3050, 12000)
end----------------------------------------------------------------------------------
