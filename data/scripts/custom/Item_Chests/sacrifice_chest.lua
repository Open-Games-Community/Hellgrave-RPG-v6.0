local rewards = {
    { id = 6105, name = "Marsh Plant" },
    { id = 7705, name = "Magma Stone" },
    { id = 6556, name = "Withered grass" },
    { id = 2630, name = "Perch" },
    { id = 5089, name = "Crystal Stone" },
    { id = 7243, name = "Rivercress Leaf" },
    { id = 2632, name = "Tench" },
    { id = 7736, name = "Solar Stone" },
    { id = 7244, name = "Tiwstcress Leaf" },
    { id = 2633, name = "Lard Bass" },
    { id = 7844, name = "Amethyst Stone" },
    { id = 7245, name = "Shellbed Leaf" },
    { id = 2634, name = "Tupe-Halett Pike" },
    { id = 4854, name = "Amber Stone" },
    { id = 7247, name = "Three Leaf Clover" },
    { id = 10303, name = "Muddy Trout" },
    { id = 7846, name = "Lava Stone" },
    { id = 7248, name = "Laurel Leaf" },
    { id = 4854, name = "Light Solar Stone" },
    { id = 10308, name = "Gudgeon" },
    { id = 8267, name = "Boletus" },
    { id = 4853, name = "Malachite Stone" },
    { id = 8584, name = "Cave Mushroom" },
    { id = 4872, name = "Sapphir Stone" },
    { id = 8694, name = "Laurel Plant" },
    { id = 4858, name = "Gold Stone" },
    { id = 9675, name = "Herbaceous Roots" },
    { id = 8707, name = "Thick Branch" },
    { id = 8701, name = "Thin branches" }
}


local KeyChest = Action ()

function KeyChest.onUse(player, item, fromPosition, target, toPosition, isHotkey)
   
    if item.itemid == 13569 and target.itemid == 13582 then
        local randId = math.random(1, #rewards)
        local rewardItem = rewards[randId]   
        player:addItem(rewardItem.id, 20)
        item:remove(1)
        target:remove(1)
        toPosition:sendMagicEffect(CONST_ME_FIREAREA)
        player:sendTextMessage(MESSAGE_INFO_DESCR, 'You opened a Sacrifice Chest and you obtained x20 ' .. rewardItem.name .. '.')
        return true
    end

end

KeyChest:id(13569)
KeyChest:register()