local rewards = {
    { id = 4871, name = "Magma Ore" },
    { id = 6089, name = "Kresch Plant" },
    { id = 7733, name = "Crystal Ore" },
    { id = 2635, name = "Tiger Fish" },
    { id = 6387, name = "Hemp Leaves" },
    { id = 4867, name = "Solar Ore" },
    { id = 2639, name = "Trout" },
    { id = 6547, name = "Cantharellus" },
    { id = 4866, name = "Amethyst Ore" },
    { id = 10306, name = "Unique Kralove" },
    { id = 6548, name = "Purple Cantharellus" },
    { id = 7845, name = "Amber Ore" },
    { id = 10307, name = "Kralove" },
    { id = 6550, name = "Delphinium" },
    { id = 4855, name = "Lava Ore" },
    { id = 10616, name = "Shiny Sardine" },
    { id = 6557, name = "Magic Leaf" },
    { id = 4852, name = "Light Solar Ore" },
    { id = 11100, name = "Humonk Fish" },
    { id = 7246, name = "Autumn Leaves" },
    { id = 6087, name = "Malachite Ore" },
    { id = 7286, name = "Amanite" },
    { id = 14336, name = "Sapphir Ore" },
    { id = 9002, name = "Underwater Plant" },
    { id = 4869, name = "Gold Ore" },
    { id = 2236, name = "Cactus Leaf" },
    { id = 14342, name = "Wood Branch" },
    { id = 8710, name = "Big Branch" },
    { id = 14346, name = "Tree Trunk" },
    { id = 8977, name = "Enormous Tree Trunk" }
}


local KeyChest = Action ()

function KeyChest.onUse(player, item, fromPosition, target, toPosition, isHotkey)
   
    if item.itemid == 10033 and target.itemid == 10025 then
        local randId = math.random(1, #rewards)
        local rewardItem = rewards[randId]   
        player:addItem(rewardItem.id, 20)
        item:remove(1)
        target:remove(1)
        toPosition:sendMagicEffect(CONST_ME_FIREAREA)
        player:sendTextMessage(MESSAGE_INFO_DESCR, 'You opened a Divine Chest and you obtained x20 ' .. rewardItem.name .. '.')
        return true
    end

end

KeyChest:id(10033)
KeyChest:register()