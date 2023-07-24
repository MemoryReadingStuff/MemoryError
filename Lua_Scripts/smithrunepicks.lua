print("Run Lua script smithrunepicks. Start at anvil")

local API = require("api")

local skillxps = API.GetSkillXP("SMITHING")
local skillxpsold = 0
local skillxpstart = API.GetSkillXP("SMITHING")
local fail_count = 0
print("Current lv " .. API.XPLevelTable(skillxps))
local heat_time = 0
local batch5 = false
local heated_metal = "Unfinished"
local finished_metal = "Elder rune pickaxe"
local upgrade_to_grade = 0
local target_grade = 0

textdata = API.CreateIG_answer();
textdata.box_name = "test_text";
textdata.box_start = FFPOINT.new(66,77,0);
textdata.colour = ImColor.new(0,255,0);
API.DrawTextAt(textdata);
combdata = API.CreateIG_answer()
combdata.box_name = "Upgrade to:"
combdata.box_start = FFPOINT.new(1,1,0)
combdata.stringsArr = { "Grade 0", "Grade 1", "Grade 2", "Grade 3", "Grade 4", "Grade 5" }
API.DrawComboBox(combdata, false)

local bank_opened = false
local smith_area = false

---sort inv based on our preference, first found
function SortInvItemsGetGrade()
    upgrade_to_grade = -1
    IA = API.ReadInvArrays33()
    for k, v in pairs(IA) do
        if (v.textitem == "Elder rune pickaxe") then
            if (combdata.int_value > 0) then
            upgrade_to_grade = 1
            break
            end
        end
        if (v.textitem == "Elder rune pickaxe + 1") then
            if (combdata.int_value > 1) then
            upgrade_to_grade = 2
            break
            end
        end
        if (v.textitem == "Elder rune pickaxe + 2") then
            if (combdata.int_value > 2) then
            upgrade_to_grade = 3
            break
            end
        end
        if (v.textitem == "Elder rune pickaxe + 3") then
            if (combdata.int_value > 3) then
            upgrade_to_grade = 4
            break
            end
        end
        if (v.textitem == "Elder rune pickaxe + 4") then
            if (combdata.int_value > 4) then
            upgrade_to_grade = 5
            break
            end
        end
    end
end

--Exported function list is in API
--main loop
API.RandomSleep2(10500, 1050, 2000)
API.Write_fake_mouse_do(true)
while(API.Read_LoopyLoop())
do-----------------------------------------------------------------------------------
    --print(API.GetG2874Status())
    if (API.GetLocalPlayerAddress() > 0) then
        API.DoRandomEvents();
        if (not API.InvFull_()) then
        API.DoRandomEvent(27298);--forge spirit
        end

        if (API.Math_RandomNumber(1000) > 980) then
            API.PIdle1();
        end
        if (API.Math_RandomNumber(1000) > 980) then
            API.PIdle2();
        end
        
        if (fail_count > 6) then
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

        if (API.PInArea(3047,5,3343,5,0)) then
            smith_area = true
        else
            smith_area = false
        end
        
        if (not API.CheckAnim(100)) then
            if (API.InventoryInterfaceCheckvarbit() and not API.InvFull_() and smith_area) then

                --- do forge spirits
                if (API.DoAction_Inventory3("Fire spirit",0,1,API.OFF_ACT_GeneralInterface_route)) then
                    API.RandomSleep2(2500, 1050, 2000)
                end 

            ---re-buff
            if (API.InvItemcount_String("masterstroke") > 0) then
                if (not API.Buffbar_GetIDstatus(49087,false).found) then --49087
                    if (not API.DeBuffbar_GetIDstatus(48960,false).found) then --48960
                    --DO::DoAction_Interface(0x30,0xbfbf,1,1473,5,3,5456);
                    if (not API.InvFull_()) then
                    API.DoAction_Inventory3("masterstroke",0,1,API.OFF_ACT_GeneralInterface_route)
                    API.RandomSleep2(500, 1050, 2000)
                    print("Drinking")
                    end
                    end
                end
            end

              --- prepare 1
                if (API.InvItemcount_String(heated_metal) < 1) then---inv count 0
                API.DoAction_Object_string1(0x3f,API.OFF_ACT_GeneralObject_route0,{ "Anvil" },4,false)
                API.RandomSleep2(500, 3050, 12000)
                    if (API.GetG2874Status() == 85) then---check blocking interfaces
                    SortInvItemsGetGrade()--get current
                    text_head = API.ScanForInterfaceTest2Get(false, { --get interface text from there
                        InterfaceComp5.new(37,17,-1,-1,0), 
                        InterfaceComp5.new(37,19,-1,17,0), 
                        InterfaceComp5.new(37,29,-1,19,0), 
                        InterfaceComp5.new(37,40,-1,29,0) 
                    })
                    if (#text_head > 0) then
                    if (string.sub(API.ReadCharsPointer(text_head[1].memloc + API.I2offitemids3),1, 18) ~= finished_metal) then
                        API.DoAction_Interface(0xffffffff,0xb24a,1,37,136,3,API.OFF_ACT_GeneralInterface_route)
                        print("Switching to: " .. finished_metal)
                        API.RandomSleep2(200, 1050, 2000)
                    end
                    end                   
                    if (upgrade_to_grade == -1) then--nothing found, start base
                        API.DoAction_Interface(0x24,0xffffffff,1,37,149,-1,API.OFF_ACT_GeneralInterface_route)
                        API.RandomSleep2(150, 1050, 2000)
                    end
                    if (upgrade_to_grade == 1) then-- start +1
                        API.DoAction_Interface(0x24,0xffffffff,1,37,161,-1,API.OFF_ACT_GeneralInterface_route)
                        API.RandomSleep2(150, 1050, 2000)
                    end
                    if (upgrade_to_grade == 2) then-- start +2
                        API.DoAction_Interface(0x24,0xffffffff,1,37,159,-1,API.OFF_ACT_GeneralInterface_route)
                        API.RandomSleep2(150, 1050, 2000)
                    end
                    if (upgrade_to_grade == 3) then-- start +3
                        API.DoAction_Interface(0x24,0xffffffff,1,37,157,-1,API.OFF_ACT_GeneralInterface_route)
                        API.RandomSleep2(150, 1050, 2000)
                    end
                    if (upgrade_to_grade == 4) then-- start +4
                        API.DoAction_Interface(0x24,0xffffffff,1,37,155,-1,API.OFF_ACT_GeneralInterface_route)
                        API.RandomSleep2(150, 1050, 2000)
                    end
                    if (upgrade_to_grade == 5) then-- start +5
                        API.DoAction_Interface(0x24,0xffffffff,1,37,153,-1,API.OFF_ACT_GeneralInterface_route)
                        API.RandomSleep2(150, 1050, 2000)
                    end
                    if (API.Math_RandomNumber(1000) > 990) then
                        API.DoAction_Interface(0x24,0xffffffff,1,37,163,-1,API.OFF_ACT_GeneralInterface_route)                      
                    else
                        API.KeyboardPress(' ',50, 100)
                    end
                    heat_time = API.SystemTime()
                    end
                else---continue smithing
                    API.DoAction_Object_string1(0x3f,API.OFF_ACT_GeneralObject_route0,{ "Anvil" },4,false)
                    API.RandomSleep2(500, 3050, 12000)
                end
            else
                ---bank
                API.DoAction_Object_string1(0x3f,API.OFF_ACT_GeneralObject_route0,{ "Bank chest" },25,false)
                API.RandomSleep2(500, 3050, 12000)
                API.WaitUntilMovingEnds()
                if (API.GetG2874Status() == 24) then
                    bank_opened = true
                    --API.KeyboardPress('1')
                    API.DoAction_Interface(0x24,0xffffffff,1,517,119,1,API.OFF_ACT_GeneralInterface_route);
                    API.RandomSleep2(4800, 2050, 1000)
                end
                if (bank_opened) then
                    if (API.InventoryInterfaceCheckvarbit() and API.InvFull_()) then
                    print("After bank inventory still full")
                    API.Write_LoopyLoop(false)
                    end
                end
                if (bank_opened) then
                    bank_opened = false
                    API.DoAction_WalkerW(WPOINT.new(3047,3343,0))
                    API.RandomSleep2(4800, 2050, 1000)
                    API.WaitUntilMovingEnds()
                end
                --do return end
            end
        end

        --- re-heat
        if (API.SystemTime() - heat_time > 50000 + API.Math_RandomNumber(30000)) then
            heat_time = API.SystemTime()
            if (API.InvItemcount_String(heated_metal) > 0) then
                API.DoAction_Object_string1(0x3f,API.OFF_ACT_GeneralObject_route0,{ "Forge" },4,false)
                API.RandomSleep2(500, 1050, 2000)
            end
        end  


    end
API.RandomSleep2(500, 3050, 12000)
end----------------------------------------------------------------------------------
print("End lv " .. API.XPLevelTable(skillxps))
print("Earned xps " .. (skillxps - skillxpstart))
