local chaosCoinPoint = Action()

function chaosCoinPoint.onUse(player, item, fromPosition, target, toPosition, isHotkey)
local chaosCoin = (item:getCount())
  player:setStorageValue(chaos_points, chaosPoints_get(player) + chaosCoin)
  player:sendTextMessage(MESSAGE_INFO_DESCR, "You received "..chaosCoin.." Chaos Point.")
  player:getPosition():sendMagicEffect(208)
  item:remove()
  return true
end

chaosCoinPoint:id(25968)
chaosCoinPoint:register()