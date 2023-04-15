local tournamentCoin = Action()

function tournamentCoin.onUse(player, item, fromPosition, target, toPosition, isHotkey)
local tournamentCoins = (item:getCount())
  db.query("UPDATE `accounts` SET `tournamentBalance` = `tournamentBalance` + '" .. tournamentCoins .. "' WHERE `id` = '" .. player:getAccountId() .. "';")
  player:sendTextMessage(MESSAGE_INFO_DESCR, "You received "..tournamentCoins.." Tournament Coins.")
  item:remove()
  return true
end

tournamentCoin:id(24275)
tournamentCoin:register()