local awakeningCoinPoint = Action()

function awakeningCoinPoint.onUse(player, item, fromPosition, target, toPosition, isHotkey)
local awakeningCoin = (item:getCount())
  player:setStorageValue(awakening_points, awakeningPoints_get(player) + awakeningCoin)
  player:sendTextMessage(MESSAGE_INFO_DESCR, "You received "..awakeningCoin.." Awakening Point.")
  player:getPosition():sendMagicEffect(208)
  item:remove()
  return true
end

awakeningCoinPoint:id(25967)
awakeningCoinPoint:register()