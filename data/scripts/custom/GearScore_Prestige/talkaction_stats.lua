local stats = TalkAction("!stats")


function stats.onSay(player, words, param)

	
    --- World Monster Hunter ----
    local worldMonsterHunter = player:getStorageValue(95007)
    local paragonLevel = player:getStorageValue(Storage.Levels.Stats.Parangon)
    local gearScore = player:getStorageValue(Storage.Levels.Stats.GearScore)
    local prestige = player:getStorageValue(Storage.Levels.Stats.Prestige)
    local chaos = player:getStorageValue(Storage.Levels.Stats.Chaos)

	local text = '        Stats Information        \n\n - Parangon Level: '..paragonLevel..'.\n - Gear Score: '..gearScore..'.\n - Prestige: '..prestige..'\n - Chaos Level: '..chaos..'.\n - Monster Hunter Level: '..worldMonsterHunter..'.'

	return false,  player:popupFYI(text)
end

stats:register()