print("Run Lua script PortableUrns. At Fort")

local API = require("api")

textdata_text1 = API.CreateIG_answer();
textdata_text1.box_name = "Select stuff"
textdata_text1.box_start =  FFPOINT.new(20,60,0);
textdata_text1.colour = ImColor.new(0,0,255);
API.DrawTextAt(textdata_text1);
textdata_tick1 = API.CreateIG_answer();
textdata_tick1.box_name = "Do clay"
textdata_tick1.box_start =  FFPOINT.new(20,20,0);
textdata_tick1.colour = ImColor.new(0,255,0);
API.DrawCheckbox(textdata_tick1);
textdata_tick2 = API.CreateIG_answer();
textdata_tick2.box_name = "Do urns"
textdata_tick2.box_start =  FFPOINT.new(20,40,0);
textdata_tick2.colour = ImColor.new(0,255,0);
API.DrawCheckbox(textdata_tick2);

local safety_numbers0 = 0
local safety_numbers1 = 0
local safety_numbers2 = 0

--Exported function list is in API
--main loop
API.Write_LoopyLoop(true)
while(API.Read_LoopyLoop())
do-----------------------------------------------------------------------------------
   local pp = GeneralObject_route0
    API.RandomEvents();

    if (API.GetGameState() ~= 3) then
       if (safety_numbers1 > 3) then
         API.Write_LoopyLoop(false)
            print("Too much fails 0")
       end
        safety_numbers0 = safety_numbers0 +1     
    else
        safety_numbers0 = 0
    end

    if (safety_numbers1 > 4) then
        API.Write_LoopyLoop(false)
        print("Too much fails 1")
    end
    if (safety_numbers2 > 5) then
        API.Write_LoopyLoop(false)
        print("Too much fails 2")
    end

    if (not textdata_tick1.box_ticked and not textdata_tick2.box_ticked) then
        textdata_text1 = "Select stufffffffffffffffffffffffffffffffffffffffffffffffff"
    else 
        textdata_text1 = ""
    end

    if (not API.CheckAnim(100)) then
        --do soft clay, pre select urn
        if (textdata_tick1.box_ticked) then
            if (API.InvItemcount_String("Soft clay") > 20 ) then
                safety_numbers2 = safety_numbers2 + 1
                safety_numbers1 = 0
                API.ClickAllObj1(API.GetAllObjArrayInteract({106596},5,0),10,false,0,"Clay")
                API.RandomSleep2(500, 3050, 12000)
                API.KeyboardPress32(0x31,0)
                API.RandomSleep2(500, 3050, 12000)
                API.KeyboardPress32(0x20,0)
            end
        end
        --fire urn, pre select 
        if (textdata_tick2.box_ticked) then
            if (API.InvItemcount_String("(unf)") > 10 ) then
                safety_numbers2 = safety_numbers2 + 1
                safety_numbers1 = 0
                API.ClickAllObj1(API.GetAllObjArrayInteract({106596},5,0),10,false,0,"Clay")
                API.RandomSleep2(500, 3050, 12000)
                API.KeyboardPress32(0x32,0)
                API.RandomSleep2(500, 3050, 12000)
                API.KeyboardPress32(0x20,0)
            end
        end
        -- Get items for bank
        local withdraw_done = false
        if (API.InvItemcount_String("Soft clay") < 20 and textdata_tick1.box_ticked) then
            withdraw_done = true
            safety_numbers1 = safety_numbers1 + 1
            safety_numbers2 = 0
            if (not API.BankOpen2()) then 
            API.ClickAllObj1(API.GetAllObjArrayInteract({125115},5,0),10,false,0,"Bank")
            API.RandomSleep2(500, 3050, 12000)
            end
            if (API.BankOpen2()) then 
            API.KeyboardPress32(0x31,0)
            end
        end
        if (API.InvItemcount_String("(unf)") < 10 and textdata_tick2.box_ticked and not withdraw_done) then
            safety_numbers1 = safety_numbers1 + 1
            safety_numbers2 = 0
            if (not API.BankOpen2()) then 
            API.ClickAllObj1(API.GetAllObjArrayInteract({125115},5,0),10,false,0,"Bank")
            API.RandomSleep2(500, 3050, 12000)
            end
            if (API.BankOpen2()) then 
            API.KeyboardPress32(0x31,0)
            end
        end
    end

API.RandomSleep2(500, 3050, 12000)
end----------------------------------------------------------------------------------
