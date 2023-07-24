print("Run Lua script Smeltbars.")

local API = require("api")

local skillxps = API.GetSkillXP("SMITHING")
local skillxpsold = 0
local skillxpstart = API.GetSkillXP("SMITHING")
local fail_count = 0
print("Current lv " .. API.XPLevelTable(skillxps))

textdata = API.CreateIG_answer();
textdata.box_name = "test_text";
textdata.box_start = FFPOINT.new(66,77,0);
textdata.colour = ImColor.new(0,255,0);
API.DrawTextAt(textdata);

--Exported function list is in API
--main loop
API.Write_fake_mouse_do(true)
while(API.Read_LoopyLoop())
do-----------------------------------------------------------------------------------
if (API.GetLocalPlayerAddress() > 0) then
    API.RandomEvents();

    if (API.Math_RandomNumber(1000) > 990) then
        API.PIdle1();
    end

    if (fail_count > 3) then
        print("No xps")
        API.Write_LoopyLoop(false)
    end

    skillxps = API.GetSkillXP("SMITHING")
    textdata.string_value = "XPs gained " .. (skillxps - skillxpstart)
    if (skillxps ~= skillxpsold) then
        skillxpsold = skillxps
        fail_count = 0
    else
        fail_count = fail_count +1
    end

    if (not API.CheckAnim(100)) then
    API.DoAction_Object_string1(0x3f,API.OFF_ACT_GeneralObject_route0,{ "Furnace" },10,false)
    API.RandomSleep2(500, 3050, 12000)
    API.KeyboardPress(' ',50, 100)
    end

end
API.RandomSleep2(500, 3050, 12000)
end----------------------------------------------------------------------------------
print("End lv " .. API.XPLevelTable(skillxps))
print("Earned xps " .. (skillxps - skillxpstart))
