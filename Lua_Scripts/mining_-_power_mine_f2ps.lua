print("Run Lua script mining copper, iron, coal, mithril, adamantite or runite @ falador west.")

local API = require("api")

local ore = {}
local copper = {113028,113027,113026}
local iron = {113040,113038,113039}
local coal = {113103,113102,113101}
local mithril = {113050,113051,113052}
local adamantite = {113055,113053,113054}
local runite = {113125,113127,113126}
local player = API.GetLocalPlayerName()
local Cselect = API.ScriptDialogWindow2("Mining", {
    "Copper", "Iron", "Coal", "Mithril", "Adamantite", "Runite"
},"Start", "Close").Name;

--Assign stuff here
if "Copper" == Cselect then
    ScripCuRunning1 = "Mine copper";
    ore = copper
end
if "Iron" == Cselect then
    ScripCuRunning1 = "Mine iron";
    ore = iron
end
if "Coal" == Cselect then
    ScripCuRunning1 = "Mine coal";
    ore = coal
end
if "Mithril" == Cselect then
    ScripCuRunning1 = "Mine mithril";
    ore = mithril
end
if "Adamantite" == Cselect then
    ScripCuRunning1 = "Mine adamantite";
    ore = adamantite
end
if "Runite" == Cselect then
    ScripCuRunning1 = "Mine runite";
    ore = runite
end

print("Starting with:", ScripCuRunning1);

-- Function to shuffle table
local function shuffle(tbl)
  for i = #tbl, 2, -1 do
    local j = math.random(i)
    tbl[i], tbl[j] = tbl[j], tbl[i]
  end
  return tbl
end

--main loop
API.Write_LoopyLoop(true)
local oreBoxFull = false
while(API.Read_LoopyLoop()) do
    local depositAttempts = 0
    local maxDepositAttempts = 5 -- Change this to the number of attempts you want to allow

    -- Inside your loop
    if API.Invfreecount_() < math.random(5, 15) and not oreBoxFull then
         repeat
                   print("Dropping ore")
                API.KeyboardPress('a', 60, 100) 
            print(API.Invfreecount_())
        until API.Invfreecount_() >= math.random(20, 25)
    end
    

    if API.Invfreecount_() > 0 then
         print("idle check")
        if not API.IsPlayerAnimating_(player, 3) then
            API.RandomSleep2(1500, 6050, 2000)        
            if not API.IsPlayerAnimating_(player, 2) then
                print("idle so start mining...")
                -- Shuffle the ore IDs
                ore = shuffle(ore)
                -- Mine the first ore in the shuffled list
                API.DoAction_Object_r(0x3a,0,{ore[1]},50,FFPOINT.new(0, 0, 0),50)
            end
        end

        print(API.LocalPlayer_HoverProgress())
        while API.LocalPlayer_HoverProgress() <= 90 do
            print("no stamina..")
            print(API.LocalPlayer_HoverProgress()) 
                -- Try to find and mine a sparkling rock
                local foundSparkling = API.FindHl(0x3a, 0, ore, 50, { 7165, 7164 })
                if  foundSparkling then
                    print("Sparkle found")
                    API.FindHl(0x3a, 0, ore, 50, { 7165, 7164 })
                    API.RandomSleep2(2500, 3050, 12000)
                else
                    -- If no sparkling rock was found, mine the first ore in the shuffled list
                    print("No Sparkle found")
                    API.DoAction_Object_r(0x3a,0,ore,50,FFPOINT.new(0, 0, 0),50)
                    API.RandomSleep2(2500, 3050, 12000)
                end
        end
    end

    API.RandomSleep2(500, 3050, 12000)
end
