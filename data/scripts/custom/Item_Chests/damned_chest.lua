local rewards = {
    { id = 7729, name = "Evil Eye" },
    { id = 10158, name = "Mysterious Scroll" },
    { id = 12295, name = "Mistery Coin" },
    { id = 12589, name = "Energy Egg"},
    { id = 12590, name = "Earth Egg"},
    { id = 12591, name = "Ice Egg"},
    { id = 12592, name = "Holy Egg"},
    { id = 12593, name = "Fire Egg"}
}

local keyOfChest = {14349}

local KeyChest = Action ()

function KeyChest.onUse(player, item, fromPosition, target, toPosition, isHotkey)
   
    if item.itemid == 14349 and target.itemid == 10006 then
        local randId = math.random(1, #rewards)
        local rewardItem = rewards[randId]   
        player:addItem(rewardItem.id, 1)
        item:remove(1)
        target:remove(1)
        toPosition:sendMagicEffect(CONST_ME_FIREAREA)
        player:sendTextMessage(MESSAGE_INFO_DESCR, 'You opened a Damned Chest and you obtained x1 ' .. rewardItem.name .. '.')
        return true
    end

end

KeyChest:id(14349)
KeyChest:register()