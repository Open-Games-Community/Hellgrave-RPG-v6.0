local rewards = {
    { id = 5937, name = "Precious Magma Crystal" },
    { id = 6090, name = "Willow Plant" },
    { id = 5802, name = "Precious Crystal" },
    { id = 6106, name = "Gynura Leaves" },
    { id = 5799, name = "Precious Solar Crystal"},
    { id = 6549, name = "Amanita Spissa" },
    { id = 4873, name = "Precious Amethyst Crystal" },
    { id = 6551, name = "Pilea Leaf" },
    { id = 4865, name = "Precious Amber Crystal"},
    { id = 7242, name = "Enchanted Magic Leaf" },
    { id = 41670, name = "Eldritch Crystal"},
    { id = 4870, name = "Precious Lava Crystal" },
    { id = 7249, name = "Divine Plant of the Depths" },
    { id = 5939, name = "Precious Light Solar Crystal"},
    { id = 9117, name = "Galocera Viscosa" },
    { id = 6088, name = "Precious Malachite Crystal" },
    { id = 9674, name = "Ganoderma Lucidium" },
    { id = 5938, name = "Precious Sapphir Crystal"},
    { id = 4868, name = "Precious Gold Crystal" },
    { id = 8699, name = "Empty Tree Trunk" },
    { id = 10302, name = "Ink Snapper" },
    { id = 10304, name = "Grawn"},
    { id = 10613, name = "Kiye Gudgeon" }
}


local KeyChest = Action ()

function KeyChest.onUse(player, item, fromPosition, target, toPosition, isHotkey)
   
    if item.itemid == 10028 and target.itemid == 9743 then
        local randId = math.random(1, #rewards)
        local rewardItem = rewards[randId]   
        player:addItem(rewardItem.id, 10)
        item:remove(1)
        target:remove(1)
        toPosition:sendMagicEffect(CONST_ME_FIREAREA)
        player:sendTextMessage(MESSAGE_INFO_DESCR, 'You opened a Cursed Chest and you obtained x10 ' .. rewardItem.name .. '.')
        return true
    end

end

KeyChest:id(10028)
KeyChest:register()