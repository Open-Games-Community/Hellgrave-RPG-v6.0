local rewards = {
    { id = 29172, name = "Serket Dragon Egg" },
    { id = 29171, name = "Busby Dragon Egg" },
    { id = 27255, name = "Golden Earth Dragon Egg"},
    { id = 27132, name = "Crystal Dragon Egg" },
    { id = 27160, name = "Star Dragon Egg" },
    { id = 27133, name = "Eurus Dragon Egg"},
    { id = 27356, name = "Emerald Dragon Egg"},
    { id = 27368, name = "Blizzard Dragon Egg"},
    { id = 27138, name = "Greenfluid Dragon Egg"},
    { id = 29174, name = "Dittoglide Dragon Egg"},
    { id = 27528, name = "Paradise Dragon Egg"},
    { id = 27370, name = "Orthimbras Dragon Egg"},
    { id = 37641, name = "Ebony Dragon Egg"},
    { id = 27362, name = "Scale Dragon Egg"},
    { id = 27229, name = "Meteor Dragon Egg"},
    { id = 27139, name = "Gummy Dragon Egg"},
    { id = 27159, name = "Prismatic Dragon Egg"},
    { id = 27149, name = "Melted Dragon Egg"},
    { id = 29185, name = "Malefice Dragon Egg"},
    { id = 27228, name = "Millium Dragon Egg"},
    { id = 27141, name = "Impassible Dragon Egg"},
    { id = 27488, name = "Zombie Flame Dragon Egg"},
    { id = 27498, name = "Salamander Dragon Egg"},
    { id = 37648, name = "Septentrional Dragon Egg"},
    { id = 29181, name = "Diamond Dragon Egg"},
    { id = 29177, name = "Oracle Dragon Egg"},
    { id = 37649, name = "Explosive Dragon Egg"},
    { id = 29182, name = "Riptide Dragon Egg"},
    { id = 27539, name = "Nightglow Dragon Egg"},
    { id = 27156, name = "Sea Dragon Egg"},
    { id = 27361, name = "Komodo Dragon Egg"},
    { id = 27506, name = "Quake Dragon Egg"},
    { id = 27252, name = "Faust Dragon Egg"},
    { id = 27238, name = "Kitsune Dragon Egg"},
    { id = 27367, name = "Death Dragon Egg"},
    { id = 37694, name = "Tenebrous Dragon Egg"},
    { id = 29158, name = "Vibe Dragon Egg"},
    { id = 29164, name = "Monolith Dragon Egg"},
    { id = 29154, name = "Abraxas Dragon Egg"},
    { id = 29204, name = "Cansian Dragon Egg"},
    { id = 29202, name = "Morphimagus Dragon Egg"},
    { id = 29197, name = "Kage Dragon Egg"},
    { id = 27521, name = "Predator Dragon Egg"},
    { id = 29192, name = "Spectrapod Dragon Egg"},

}


local KeyChest = Action ()

function KeyChest.onUse(player, item, fromPosition, target, toPosition, isHotkey)
   
    if item.itemid == 27452 and target.itemid == 27453 then
        local randId = math.random(1, #rewards)
        local rewardItem = rewards[randId]   
        player:addItem(rewardItem.id, 1)
        item:remove(1)
        target:remove(1)
        toPosition:sendMagicEffect(CONST_ME_FIREAREA)
        player:sendTextMessage(MESSAGE_INFO_DESCR, 'You opened an Obscurus Chest and you obtained x1 ' .. rewardItem.name .. '.')
        return true
    end

end

KeyChest:id(27452)
KeyChest:register()