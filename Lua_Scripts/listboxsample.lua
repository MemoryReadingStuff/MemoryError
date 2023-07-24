print("Run Lua script listboxsample.")

local API = require("api")

listdata = API.CreateIG_answer()
listdata.box_name = "test_list"
listdata.box_start = FFPOINT.new(1,77,0)--optional
listdata.box_size = FFPOINT.new(200,500,0)
listdata.stringsArr = {"help","dsdsd","select"}
API.DrawListBox(listdata, true)

combdata = API.CreateIG_answer()
combdata.box_name = "test_comb"
combdata.box_start = FFPOINT.new(1,1,0)
combdata.stringsArr = {"send help","cant compute","keyboard not found press f1"}
API.DrawComboBox(combdata, false)

--Exported function list is in API
--main loop
while(API.Read_LoopyLoop())
do-----------------------------------------------------------------------------------

    if (listdata.return_click) then
        listdata.return_click = false
        print(listdata.string_value)
    end

    if (combdata.return_click) then
        combdata.return_click = false
        print(combdata.string_value)
    end

API.RandomSleep2(500, 3050, 12000)
end----------------------------------------------------------------------------------
