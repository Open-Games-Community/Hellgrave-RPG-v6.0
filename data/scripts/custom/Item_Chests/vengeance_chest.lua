local rewards = {
    { id = 8190, name = "Lava Stomach" },
    { id = 10943, name = "Protuding Eyes" },
    { id = 10944, name = "Dragon Egg" },
    { id = 11135, name = "Blue Dragon Tail" },
    { id = 26338, name = "Evil Dragon Wing"},
    { id = 12297, name = "Rare bird feather" },
    { id = 12300, name = "Mystic Feather" },
    { id = 12303, name = "Sky Feather" },
    { id = 11774, name = "Sky Dragon Wing"},
    { id = 10071, name = "Mirror Relic" },
    { id = 10072, name = "Necromancer Relic"},
    { id = 10073, name = "Relic of Benediction" },
    { id = 10074, name = "Relic of Nature" },
    { id = 10075, name = "Relic of Cosmos"},
    { id = 10096, name = "Elemental Relic" }
}


local KeyChest = Action ()

function KeyChest.onUse(player, item, fromPosition, target, toPosition, isHotkey)
   
    if item.itemid == 10031 and target.itemid == 9744 then
        local randId = math.random(1, #rewards)
        local rewardItem = rewards[randId]   
        player:addItem(rewardItem.id, 10)
        item:remove(1)
        target:remove(1)
        toPosition:sendMagicEffect(CONST_ME_FIREAREA)
        player:sendTextMessage(MESSAGE_INFO_DESCR, 'You opened a Vengeance Chest and you obtained x10 ' .. rewardItem.name .. '.')
        return true
    end

end

KeyChest:id(10031)
KeyChest:register()