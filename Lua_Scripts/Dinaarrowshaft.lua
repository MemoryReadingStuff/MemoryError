print("Run Lua script Dinaarrowshaft.")

--[[
#Script Name:   <Dinaarrowshaft.>
# Description:  <collects Arroshafts at anachronia >
# Autor:        <Saša>
# Version:      <1.0>
# Datum:        <06.07.23>
--]]

local API = require("api")

local afk = os.time()

function idleCheck()
    local timeDiff = os.difftime(os.time(), afk)
    local randomTime = math.random(180, 280) -- between 3 and 4.66 minutes 

    if timeDiff > randomTime then
        -- do stuff here...  turn camera, send keys, move mouse w/e
        API.PIdle2()
        afk = os.time()
    end
end

-- Exported function list is in API
-- main loop
API.Write_LoopyLoop(true)
while (API.Read_LoopyLoop()) do -----------------------------------------------------------------------------------

    API.RandomEvents()

    idleCheck()

    if (not API.ReadPlayerMovin2() and not API.CheckAnim(50)) then
        -- cuts Hair :)
        API.DoAction_NPC(0x94, 3120, {28978}, 50);
    end

    API.RandomSleep2(500, 3050, 12000)
end ----------------------------------------------------------------------------------
