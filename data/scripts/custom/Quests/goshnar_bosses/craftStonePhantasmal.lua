local craftStonePhantasmal = Action()
 
local craft = {
    level = 0, -- nivel necessario
    items = { -- itens necessários para que os players entrem.
        [1] = {item = 38907, count = 4}, -- spectral horseshoe
		[2] = {item = 38908, count = 1}, -- spectral saddle
		[3] = {item = 38909, count = 1}, -- spectral horse tack
    },
    craftedItem = {12662, 1}, -- item craftado, quantidade
}
 
function craftStonePhantasmal.onUse(player, item, fromPosition, itemEx, toPosition)
 
    if player:getLevel() < craft.level then
        player:sendTextMessage(MESSAGE_STATUS_SMALL, "You do not have level 1.")
        player:getPosition():sendMagicEffect(CONST_ME_POFF)
        return true
    end
 
    for k, v in pairs(craft.items) do
        if player:getItemCount(v.item) < v.count then
            player:sendTextMessage(MESSAGE_STATUS_SMALL, "You do not have necessary items, items necessary x4 Spectral Horse shoe, x1 Spectral Saddle, x1 Spectral Horse Tack. Right click on the Spectral Horse Shoe in order to craft Mount.")
            player:getPosition():sendMagicEffect(CONST_ME_POFF)
            return true
        end
    end
 
    for k, v in pairs(craft.items) do
        player:removeItem(v.item, v.count)
    end
 
    player:addItem(craft.craftedItem[1], craft.craftedItem[2])
    player:removeItem(item.itemid, 1)
    player:sendTextMessage(MESSAGE_STATUS_DEFAULT, "You have Crafted: "..craft.craftedItem[2].."x "..ItemType(craft.craftedItem[1]):getName()..".")
    player:getPosition():sendMagicEffect(50)
 
    return true
end
 
craftStonePhantasmal:id(38907)
craftStonePhantasmal:register()