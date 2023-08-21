--[[
#Script Name:   <lodestones.lua>
# Description:  <Functions to teleport to Lodestones>
# Autor:        <Dead (dea.d - Discord)>
# Version:      <1.1>
# Datum:        <2023.08.09>
--]]

local API = require("api")
local UTILS = require("utils")
local LODESTONES = {}

LODESTONES.LODESTONE = {
    AL_KHARID = {
        id = 11,
        loc = WPOINT.new(3297, 3184, 0)
    },
    ANACHRONIA = {
        id = 25,
        loc = WPOINT.new(5431, 2338, 0)
    },
    ARDOUGNE = {
        id = 12,
        loc = WPOINT.new(2634, 3348, 0)
    },
    ASHDALE = {
        id = 34,
        loc = WPOINT.new(2474, 2708, 2)
    },
    BANDIT_CAMP = {
        id = 9,
        loc = WPOINT.new(2899, 3544, 0)
    },
    BURTHOPE = {
        id = 13,
        loc = WPOINT.new(2899, 3544, 0)
    },
    CANIFIS = {
        id = 27,
        loc = WPOINT.new(3517, 3515, 0)
    },
    CATHERBY = {
        id = 14,
        loc = WPOINT.new(2811, 3449, 0)
    },
    DRAYNOR_VILLAGE = {
        id = 15,
        loc = WPOINT.new(3105, 3298, 0)
    },
    EAGLES_PEAK = {
        id = 28,
        loc = WPOINT.new(2366, 3479, 0)
    },
    EDGEVILLE = {
        id = 16,
        loc = WPOINT.new(3067, 3505, 0)
    },
    FALADOR = {
        id = 17,
        loc = WPOINT.new(2967, 3403, 0)
    },
    FORT_FORINTHRY = {
        id = 23,
        loc = WPOINT.new(3298, 3525, 0)
    },
    FREMENNIK_PROVINCE = {
        id = 29,
        loc = WPOINT.new(2712, 3677, 0)
    },
    KARAMJA = {
        id = 30,
        loc = WPOINT.new(2761, 3147, 0)
    },
    LUNAR_ISLE = {
        id = 10,
        loc = WPOINT.new(2085, 3914, 0)
    },
    LUMBRIDGE = {
        id = 18,
        loc = WPOINT.new(3233, 3221, 0)
    },
    MENAPHOS = {
        id = 24,
        loc = WPOINT.new(3216, 2716, 0)
    },
    OOGLOG = {
        id = 31,
        loc = WPOINT.new(2532, 2871, 0)
    },
    PRIFDDINAS = {
        id = 35,
        loc = WPOINT.new(2208, 3360, 1)
    },
    SEERS_VILLAGE = {
        id = 20,
        loc = WPOINT.new(2689, 3482, 0)
    },
    TAVERLEY = {
        id = 21,
        loc = WPOINT.new(2878, 3442, 0)
    },
    TIRANNWN = {
        id = 32,
        loc = WPOINT.new(2254, 3149, 0)
    },
    UM = {
        id = 36,
        loc = WPOINT.new(1084, 1768, 1)
    },
    VARROCK = {
        id = 22,
        loc = WPOINT.new(3214, 3376, 0)
    },
    WILDERNESS = {
        id = 33,
        loc = WPOINT.new(0, 0, 0)
    },
    YANILLE = {
        id = 26,
        loc = WPOINT.new(2606, 3093, 0)
    }
}

function GoToLodestone(lode)
    print('Teleporting to ', UTILS.GetLabelFromArgument(lode, LODESTONES.LODESTONE))
    LODESTONES.openLodestonesInterface()
    API.DoAction_Interface(0xffffffff, 0xffffffff, 1, 1092, lode.id, -1, API.OFF_ACT_GeneralInterface_route)
    API.RandomSleep2(3000, 2050, 5000)
    print('sleep done')
    UTILS.waitForAnimation(0, 20)
    API.RandomSleep2(3000, 2050, 5000)
    print('waitForAnimation done')
    UTILS.waitForPlayerAtCoords(lode.loc, 0, 5)
    print('waitForPlayerAtCoords done')
end

function LODESTONES.openLodestonesInterface()
    API.DoAction_Interface(0xffffffff, 0xffffffff, 1, 1465, 18, -1, API.OFF_ACT_GeneralInterface_route)
    API.RandomSleep2(500, 3050, 12000)
end

function LODESTONES.AlKharid()
    GoToLodestone(LODESTONES.LODESTONE.AL_KHARID)
end

function LODESTONES.Anachronia()
    GoToLodestone(LODESTONES.LODESTONE.ANACHRONIA)
end

function LODESTONES.Ardougne()
    GoToLodestone(LODESTONES.LODESTONE.ARDOUGNE)
end

function LODESTONES.Ashdale()
    GoToLodestone(LODESTONES.LODESTONE.ASHDALE)
end

function LODESTONES.BanditCamp()
    GoToLodestone(LODESTONES.LODESTONE.BANDIT_CAMP)
end

function LODESTONES.Burthope()
    GoToLodestone(LODESTONES.LODESTONE.BURTHOPE)
end

function LODESTONES.Canifis()
    GoToLodestone(LODESTONES.LODESTONE.CANIFIS)
end

function LODESTONES.Catherby()
    GoToLodestone(LODESTONES.LODESTONE.CATHERBY)
end

function LODESTONES.DraynorVillage()
    GoToLodestone(LODESTONES.LODESTONE.DRAYNOR_VILLAGE)
end

function LODESTONES.Edgeville()
    GoToLodestone(LODESTONES.LODESTONE.EDGEVILLE)
end

function LODESTONES.EaglesPeak()
    GoToLodestone(LODESTONES.LODESTONE.EAGLES_PEAK)
end

function LODESTONES.Falador()
    GoToLodestone(LODESTONES.LODESTONE.FALADOR)
end

function LODESTONES.FortForinthry()
    GoToLodestone(LODESTONES.LODESTONE.FORT_FORINTHRY)
end

function LODESTONES.FremennikProvince()
    GoToLodestone(LODESTONES.LODESTONE.FREMENNIK_PROVINCE)
end

function LODESTONES.Karamja()
    GoToLodestone(LODESTONES.LODESTONE.KARAMJA)
end

function LODESTONES.Lumbridge()
    GoToLodestone(LODESTONES.LODESTONE.LUMBRIDGE)
end

function LODESTONES.LunarIsle()
    GoToLodestone(LODESTONES.LODESTONE.LUNAR_ISLE)
end

function LODESTONES.Menaphos()
    GoToLodestone(LODESTONES.LODESTONE.MENAPHOS)
end

function LODESTONES.Ooglog()
    GoToLodestone(LODESTONES.LODESTONE.OOGLOG)
end

function LODESTONES.Prifddinas()
    GoToLodestone(LODESTONES.LODESTONE.PRIFDDINAS)
end

function LODESTONES.SeersVillage()
    GoToLodestone(LODESTONES.LODESTONE.SEERS_VILLAGE)
end

function LODESTONES.Taverley()
    GoToLodestone(LODESTONES.LODESTONE.TAVERLEY)
end

function LODESTONES.Tirannwn()
    GoToLodestone(LODESTONES.LODESTONE.TIRANNWN)
end

function LODESTONES.Um()
    GoToLodestone(LODESTONES.LODESTONE.UM)
end

function LODESTONES.Varrock()
    GoToLodestone(LODESTONES.LODESTONE.VARROCK)
end

function LODESTONES.Wilderness()
    GoToLodestone(LODESTONES.LODESTONE.WILDERNESS)
end

function LODESTONES.Yanille()
    GoToLodestone(LODESTONES.LODESTONE.YANILLE)
end

return LODESTONES
