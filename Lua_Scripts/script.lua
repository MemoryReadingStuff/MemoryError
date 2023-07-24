-- API testing
local API = require("api")

print("Current HP: " .. API.GetHP_())

local array_points = {
    {110, 111, 112},
    {220, 221, 222},
    {330, 331, 332}
}

API.SaveFFPOINTs("namesss", array_points)
local saved = API.LoadFFPOINTs("namesss")
print("saved length: " .. #saved)

for i,v in pairs(saved) do
    print(i, v.x, v.y, v.z)
end
