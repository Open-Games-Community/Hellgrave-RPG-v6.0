local hellgraveCoin = Action()

function hellgraveCoin.onUse(player, item, fromPosition, target, toPosition, isHotkey)
local coins = (item:getCount())
  db.query("UPDATE `accounts` SET `coins` = `coins` + '" .. coins .. "' WHERE `id` = '" .. player:getAccountId() .. "';")
  player:sendTextMessage(MESSAGE_INFO_DESCR, "You received "..coins.." Hellgrave Coins")
  item:remove()
  return true
end

hellgraveCoin:id(24774)
hellgraveCoin:register()