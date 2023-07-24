local API = require("api")

local SURGE_KEY_CODE = 81

last_obstacle_id = -1

function random(min, max)
    if min == max then
        return min
    elseif min < max then
        return min + API.Math_RandomNumber3(max - min)
    else
        return max + API.Math_RandomNumber3(min - max)
    end
end

function sleep(min_millis, max_millis)
    if not max_millis then
        API.RandomSleep2(min_millis)
    else
        API.RandomSleep2(random(min_millis, max_millis))
    end
end

function anti_idle()
    if (random(1, 100) <= 3) then
        if (random(1, 100) <= 50) then
            API.PIdle1()
        else
            if last_obstacle_id ~= -1 then
                local next_obstacle = API.GetAllObjArray1({last_obstacle_id + 1}, 50, 0)[1]

                if next_obstacle ~= nil then
                    API.RotateCamera(next_obstacle.Tile_XYZ, API.PlayerCoordfloat(), 5)
                end
            end
        end
    end
end

function run_to_tile(x, y, z)
    local tile = WPOINT.new(x, y, z)

    API.DoAction_Tile(tile)

    while API.Read_LoopyLoop() and API.Math_DistanceW(API.PlayerCoord(), tile) > 5 do
        sleep(100, 200)

        anti_idle()
    end
end

function interact_with_obstacle(id)
    API.DoAction_Object1(0xb5, 0, {id}, 50)

    last_obstacle_id = id

    while API.Read_LoopyLoop() and API.ReadPlayerAnim() == 0 do
        sleep(100, 200)

        anti_idle()
    end

    while API.Read_LoopyLoop() and API.ReadPlayerAnim() ~= 0 do
        sleep(100, 200)

        anti_idle()
    end
end

function interact_with_cave()
    API.DoAction_Object1(0xb5, 0, {113734}, 50)

    last_obstacle_id = 113734

    while API.Read_LoopyLoop() and API.GetAllObjArray1({113735}, 50, 0)[1] == nil do
        sleep(100, 200)

        anti_idle()
    end

    sleep(2000)
end

function activate_surge()
    API.KeyboardPress31(SURGE_KEY_CODE, random(100, 200), 0)

    while API.Read_LoopyLoop() and API.ReadPlayerAnim() == 0 do
        sleep(100, 200)

        anti_idle()
    end

    while API.Read_LoopyLoop() and API.ReadPlayerAnim() ~= 0 do
        sleep(100, 200)

        anti_idle()
    end
end

while API.Read_LoopyLoop() do
    run_to_tile(5417, 2324, 0)
    interact_with_obstacle(113687)
    interact_with_obstacle(113688)
    interact_with_obstacle(113689)
    interact_with_obstacle(113690)
    run_to_tile(5382, 2313, 0)
    activate_surge()
    interact_with_obstacle(113691)
    interact_with_obstacle(113692)
    run_to_tile(5376, 2274, 0)
    activate_surge()
    interact_with_obstacle(113693)
    interact_with_obstacle(113694)
    run_to_tile(5418, 2230, 0)
    activate_surge()
    interact_with_obstacle(113695)
    interact_with_obstacle(113696)
    interact_with_obstacle(113697)
    interact_with_obstacle(113698)
    interact_with_obstacle(113699)
    interact_with_obstacle(113700)
    run_to_tile(5533, 2186, 0)
    activate_surge()
    interact_with_obstacle(113701)
    interact_with_obstacle(113702)
    interact_with_obstacle(113703)
    activate_surge()
    interact_with_obstacle(113704)
    interact_with_obstacle(113705)
    interact_with_obstacle(113706)
    interact_with_obstacle(113707)
    interact_with_obstacle(113708)
    activate_surge()
    run_to_tile(5658, 2287, 0)
    interact_with_obstacle(113709)
    interact_with_obstacle(113710)
    interact_with_obstacle(113711)
    interact_with_obstacle(113712)
    interact_with_obstacle(113713)
    interact_with_obstacle(113714)
    activate_surge()
    interact_with_obstacle(113715)
    interact_with_obstacle(113716)
    interact_with_obstacle(113717)
    interact_with_obstacle(113718)
    interact_with_obstacle(113719)
    interact_with_obstacle(113720)
    interact_with_obstacle(113721)
    interact_with_obstacle(113722)
    interact_with_obstacle(113723)
    interact_with_obstacle(113724)
    interact_with_obstacle(113725)
    interact_with_obstacle(113726)
    interact_with_obstacle(113727)
    run_to_tile(5559, 2477, 0)
    activate_surge()
    interact_with_obstacle(113728)
    interact_with_obstacle(113729)
    run_to_tile(5506, 2481, 0)
    interact_with_obstacle(113730)
    interact_with_obstacle(113731)
    interact_with_obstacle(113732)
    interact_with_obstacle(113733)
    interact_with_cave()
    interact_with_obstacle(113735)
    interact_with_obstacle(113736)
    interact_with_obstacle(113737)
    interact_with_obstacle(113738)
    run_to_tile(5418, 2339, 0)
end
