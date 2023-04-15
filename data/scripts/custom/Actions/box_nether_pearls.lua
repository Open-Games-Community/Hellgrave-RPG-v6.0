local netherBox = Action()

function netherBox.onUse(player, item, fromPosition, target, toPosition, isHotkey)
local maxCount = math.random(1, 6)
if player then
  player:addItem(27383, maxCount)
end
  item:remove(1)
end

netherBox:id(27380)
netherBox:register()