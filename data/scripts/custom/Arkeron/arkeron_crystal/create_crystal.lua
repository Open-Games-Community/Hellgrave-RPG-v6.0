local rewards = {
    { id = 18559, name = "Wrath Crystal" }
}


local KeyChest = Action ()

function KeyChest.onUse(player, item, fromPosition, target, toPosition, isHotkey)
   
    if item.itemid == 25987 and target.itemid == 25988 then
        local randId = math.random(1, #rewards)
        local rewardItem = rewards[randId]   
        player:addItem(rewardItem.id, 1)
        item:remove(1)
        target:remove(1)
        toPosition:sendMagicEffect(CONST_ME_FIREAREA)
        player:sendTextMessage(MESSAGE_INFO_DESCR, 'You created x1 ' .. rewardItem.name .. '.')
        return true
    end

end

KeyChest:id(25987)
KeyChest:register()