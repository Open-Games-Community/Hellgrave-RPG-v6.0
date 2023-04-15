local rewards = {
    { id = 42053, name = "Feather of Fate" },
    { id = 42047, name = "Luminous Concoction" },
    { id = 42032, name = "Luminous Potion" },
    { id = 42074, name = "demoniac sliver" },
    { id = 41945, name = "exalted core" },
    { id = 32447, name = "endless refined crystal" },
    { id = 13561, name = "amber refined crystal" },
    { id = 34822, name = "divine rose" },
    { id = 16004, name = "Ancestral Crystal" },
    { id = 13560, name = "Normal Emblem" },
    { id = 42027, name = "Hell Token"}
}


local KeyChest = Action ()

function KeyChest.onUse(player, item, fromPosition, target, toPosition, isHotkey)
   
    if item.itemid == 10046 and target.itemid == 10026 then
        local randId = math.random(1, #rewards)
        local rewardItem = rewards[randId]   
        player:addItem(rewardItem.id, 1)
        item:remove(1)
        target:remove(1)
        toPosition:sendMagicEffect(CONST_ME_FIREAREA)
        player:sendTextMessage(MESSAGE_INFO_DESCR, 'You opened a Reliquary Chest and you obtained x1 ' .. rewardItem.name .. '.')
        return true
    end

end

KeyChest:id(10046)
KeyChest:register()