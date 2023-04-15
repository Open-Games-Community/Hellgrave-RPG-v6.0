local ancestralCoinPoint = Action()

function ancestralCoinPoint.onUse(player, item, fromPosition, target, toPosition, isHotkey)
local ancestralCoin = (item:getCount())
  player:setStorageValue(task_points, taskPoints_get(player) + ancestralCoin)
  player:sendTextMessage(MESSAGE_INFO_DESCR, "You received "..ancestralCoin.." Ancestral Point.")
  player:getPosition():sendMagicEffect(208)
  item:remove()
  return true
end

ancestralCoinPoint:id(25946)
ancestralCoinPoint:register()