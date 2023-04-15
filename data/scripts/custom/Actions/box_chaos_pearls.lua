local netherBox = Action()

function netherBox.onUse(player, item, fromPosition, target, toPosition, isHotkey)
local maxCount = math.random(1, 2)
if player then
  player:addItem(27384, maxCount)
end
  item:remove(1)
end

netherBox:id(27382)
netherBox:register()