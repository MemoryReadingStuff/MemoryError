local API = require("api")
local UTILS = {}

-- Function to tell if a string is empty
function UTILS.isEmpty(s)
  return s == nil or s == ''
end

-- Function to convert userdata to vector<string>
function UTILS.UserDataToVector(userdata)
  local vector = {}

  -- Iterate over the userdata values and extract them
  for i = 1, #userdata do
    vector[i] = userdata[i]
  end

  return vector
end

-- Function to convert userdata to string
function UTILS.UserDataToString(userdata)
  local vector = {}

  -- Iterate over the userdata values and extract them
  for i = 1, #userdata do
    vector[i] = userdata[i]
  end

  return table.concat(vector, "")
end

-- Function to convert a Lua table to string
function UTILS.tableToString(tbl)
  local strTable = {}
  for _, innerTbl in ipairs(tbl) do
    local strInnerTable = {}
    for _, value in ipairs(innerTbl) do
      table.insert(strInnerTable, tostring(value))
    end
    table.insert(strTable, "{" .. table.concat(strInnerTable, ", ") .. "}")
  end
  return table.concat(strTable, ", ")
end

-- Function to wait for an animation to complete, upto defined seconds
function UTILS.waitForAnimation(animationId, maxWaitInSeconds)
  local animation = animationId or 0
  local waitTime = maxWaitInSeconds or 5
  local exitLoop = false
  local start = os.time()
  while not exitLoop and os.time() - start < waitTime do
    if (API.ReadPlayerAnim() == animation) then
      exitLoop = true
    end
  end
end

-- Function to wait for a player to reach a coords within a threshold, upto defined seconds
function UTILS.waitForPlayerAtCoords(coords, threshold, maxWaitInSeconds)
  local waitTime = maxWaitInSeconds or 5
  local variance = threshold or 0
  local exitLoop = false
  local start = os.time()
  while not exitLoop and os.time() - start < waitTime do
    local player = API.PlayerCoord()
    -- There's probably a more math accurate way of doing this
    if ((player.x >= coords.x - threshold or player.x <= coords.x + threshold) and (player.y >= coords.y - threshold or player.y <= coords.y + threshold)) then
      exitLoop = true
    end
  end
end

-- Function to get the label of the table element
function UTILS.GetLabelFromArgument(arg, table)
  for label, record in pairs(table) do
    if record == arg then
      return label
    end
  end
  return nil
end

--[[
  Example Usage

  local lodestone = {
    BanditCamp = {
        id = 9,
        x = 2899,
        y = 3544,
        z = 0
    }
  }

  print('Teleporting to ', UTILS.GetLabelFromArgument(lodestone.BanditCamp, lodestone))
  would print 'Teleporting to BanditCamp'
--]]

--[[
Handles the below random events

/18204 chronicle fragment, other peopls 18205
//19884 guthix butterfly       	
//26022 seren spirit
//27228 Divine blessing
//27297 Forge phoenix
//28411 catalyst
--]]
function UTILS.DO_RandomEvents()
  local F_obj = API.GetAllObjArrayInteract({19884, 26022, 27228, 27297, 28411}, 20, 1)
  --if not (F_obj) == nil then
    if (F_Obj) ~= nil then
      print("Random event object detected: trying to click")
      if API.Math_AO_ValueEqualsArr({18204, 18205, 19884, 26022, 27228, 27297, 28411}, F_obj) then -- if separation is needed
          if API.DoAction_NPC__Direct(0x29, API.InteractNPC_route, F_obj[1]) then
              API.RandomSleep2(1500, 4050, 12000)
              return true
          end
      end
  end
  return false
end

-- Lua function to sleep for milliseconds with a random delay
function UTILS.randomSleep(milliseconds)
  local randomDelay = math.random(1, 200)
  local totalDelay = milliseconds + randomDelay
  local start = os.clock()
  local target = start + (totalDelay / 1000)
  while os.clock() < target do
      -- Do nothing, just wait
  end
end
return UTILS

