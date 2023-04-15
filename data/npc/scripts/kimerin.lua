local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)

function onCreatureAppear(cid)
	npcHandler:onCreatureAppear(cid)
end
function onCreatureDisappear(cid)
	npcHandler:onCreatureDisappear(cid)
end
function onCreatureSay(cid, type, msg)
	npcHandler:onCreatureSay(cid, type, msg)
end
function onThink()
	npcHandler:onThink()
end

local function creatureSayCallback(cid, type, msg)
	if not npcHandler:isFocused(cid) then
		return false
	end
	local player = Player(cid)
	if msgcontains(msg, "traces") then
		npcHandler:say("As you explore the world you will find traces of rare monsters. These {monsters} are difficult to kill, but they have a higher chance of dropping rare items. When you find one, bring me those traces, shards, relics or something belonging to it, I'll give you a small reward, but you'll also have the chance to go fight it as much as you want. ", cid)
	elseif msgcontains(msg, "monsters") then
			npcHandler:say("There are many Rare Monsters called World Bosses that you can find around the world, you will find names of each one looking at the wiki of website. ", cid)	
	elseif msgcontains(msg, "help") then
			npcHandler:say("If you complete a mission, look on your questlog the name of the monster, then write me the name of this monster and i will give you a little reward, but also the possibility to fight him each time it reappears, and you will have opportunities to find rare items and materials.", cid)	
	-------------------------------------------------
	elseif msgcontains(msg, "crustosteo") then
		if player:getStorageValue(Storage.WorldBosses.Unlock.Crustosteo) == 2 and player:removeItem(32627, 1) then
			npcHandler:say("You defeated again Crustosteo, did you find a new traces ? Huh interesting. Here you are a little reward, if you got some more traces do not hesistate to come again. ", cid)
			player:addItem(16004, 3)
			player:addItem(41995, 10)
			player:addItem(8613, 30)
		elseif player:getStorageValue(Storage.WorldBosses.Unlock.Crustosteo) == 1 and player:removeItem(32627, 1) then
			npcHandler:say("I see that you have found the Crustateo, very interesting, know that these rare monsters have the possibility of dropping rare objects. Here you are a little reward, if you got some more traces do not hesistate to come again. ", cid)
				player:addItem(16004, 3)
				player:addItem(41995, 10)
				player:addItem(8613, 30)
			player:setStorageValue(Storage.WorldBosses.Unlock.Crustosteo, 2)
		else
			npcHandler:say("You didn't found the traces of this monster, explore the world and find it. ", cid)
		end
	-------------------------------------------------
	elseif msgcontains(msg, "netherspite") then
		if player:getStorageValue(Storage.WorldBosses.Unlock.Netherspite) == 2 and player:removeItem(32629, 1) then
			npcHandler:say("You Defeated again Netherspite. Here you are a little reward, if you got some more traces do not hesistate to come again. ", cid)
			player:addItem(32410, 2)
			player:addItem(42082, 5)
			player:addItem(8613, 30)
		elseif player:getStorageValue(Storage.WorldBosses.Unlock.Netherspite) == 1 and player:removeItem(32629, 1) then
			npcHandler:say("I see that you have found the Netherspite on the Ghoul Cavern, very interesting, know that these rare monsters have the possibility of dropping rare objects. Here you are a little reward, if you got some more traces do not hesistate to come again. ", cid)
			player:addItem(32410, 2)
			player:addItem(42082, 5)
			player:addItem(8613, 30)
			player:setStorageValue(Storage.WorldBosses.Unlock.Netherspite, 2)
		else
			npcHandler:say("You didn't found the traces of this monster, explore the world and find it ", cid)
		end
	-------------------------------------------------
	elseif msgcontains(msg, "viscidius") then
		if player:getStorageValue(Storage.WorldBosses.Unlock.Viscidius) == 2 and player:removeItem(36928, 1) then
			npcHandler:say("You defeated again Viscidius. Know that these rare monsters have the possibility of dropping rare objects. Here you are a little reward, if you got some more traces do not hesistate to come again. ", cid)
			player:addItem(42103, 5)
			player:addItem(42104, 2)
		elseif player:getStorageValue(Storage.WorldBosses.Unlock.Viscidius) == 1 and player:removeItem(36928, 1) then
			npcHandler:say("You defeated Viscidius, an ancient imperator Orc, very interesting, know that these rare monsters have the possibility of dropping rare objects. Here you are a little reward, if you got some more traces do not hesistate to come again. ", cid)
				player:addItem(42103, 5)
				player:addItem(42104, 2)
			player:setStorageValue(Storage.WorldBosses.Unlock.Viscidius, 2)
		else
			npcHandler:say("You didn't found the traces of this monster, explore the world and find it ", cid)
		end
	-------------------------------------------------
	elseif msgcontains(msg, "ossirian") then
		if player:getStorageValue(Storage.WorldBosses.Unlock.Ossirian) == 2 and player:removeItem(36931, 1) then
			npcHandler:say("You defeated Ossirian Again. Here you are a little reward, if you got some more traces do not hesistate to come again. ", cid)
				player:addItem(42053, 3)
				player:addItem(42054, 3)
		elseif player:getStorageValue(Storage.WorldBosses.Unlock.Ossirian) == 1 and player:removeItem(36931, 1) then
			npcHandler:say("Ossirian was once a spider who was part of the order, this one was corrupted after trying to save the two cities from an ancestral breach. Know that these rare monsters have the possibility of dropping rare objects. Here you are a little reward, if you got some more traces do not hesistate to come again. ", cid)
				player:addItem(42053, 3)
				player:addItem(42054, 3)
			player:setStorageValue(Storage.WorldBosses.Unlock.Ossirian, 2)
		else
			npcHandler:say("You didn't found the traces of this monster, explore the world and find it. ", cid)	
		end
	-------------------------------------------------
	elseif msgcontains(msg, "sartharion") then
		if player:getStorageValue(Storage.WorldBosses.Unlock.Sartharion) == 2 and player:removeItem(36932, 1) then
			npcHandler:say("You defeated Sartharion Again. Here you are a little reward, if you got some more traces do not hesistate to come again. ", cid)
			player:addItem(24334, 1)
			player:addItem(24335, 1)
			player:addItem(13248, 1)
		elseif player:getStorageValue(Storage.WorldBosses.Unlock.Sartharion) == 1 and player:removeItem(36932, 1) then
			npcHandler:say("Oh you find the Lion King. That's amazing! I was looking for this traces so long time ago!. Know that these rare monsters have the possibility of dropping rare objects. Here you are a little reward, if you got some more traces do not hesistate to come again. ", cid)
				player:addItem(24334, 1)
				player:addItem(24335, 1)
				player:addItem(13248, 1)
			player:setStorageValue(Storage.WorldBosses.Unlock.Sartharion, 2)
		else
			npcHandler:say("You didn't found the traces of this monster, explore the world and find it. ", cid)	
		end
	-------------------------------------------------
elseif msgcontains(msg, "archaedas") then
	if player:getStorageValue(Storage.WorldBosses.Unlock.Archaedas) == 2 and player:removeItem(36933, 1) then
		npcHandler:say("You defeated Archaedas Again. Here you are a little reward, if you got some more traces do not hesistate to come again. ", cid)
		player:addItem(12793, 1)
		player:addItem(12790, 1)
		player:addItem(12787, 1)
	elseif player:getStorageValue(Storage.WorldBosses.Unlock.Archaedas) == 1 and player:removeItem(36933, 1) then
		npcHandler:say("Archaedas, a very old friend I lost by allowing a spirit to be summoned with dark magic, he descended into chaos. thank you for freeing his soul. Know that these rare monsters have the possibility of dropping rare objects. Here you are a little reward, if you got some more traces do not hesistate to come again. ", cid)
			player:addItem(12793, 1)
		player:addItem(12790, 1)
		player:addItem(12787, 1)
		player:setStorageValue(Storage.WorldBosses.Unlock.Archaedas, 2)
	else
		npcHandler:say("You didn't found the traces of this monster, explore the world and find it. ", cid)	
	end
-------------------------------------------------v
elseif msgcontains(msg, "asira") then
	if player:getStorageValue(Storage.WorldBosses.Unlock.AsiraArcanist) == 2 and player:removeItem(36934, 1) then
		npcHandler:say("You defeated Asira Arcanist Again. Here you are a little reward, if you got some more traces do not hesistate to come again. ", cid)
		player:addItem(7861, 10)
		player:addItem(7869, 10)
		player:addItem(7877, 10)
		player:addItem(7745, 10)
		player:addItem(7753, 10)
	elseif player:getStorageValue(Storage.WorldBosses.Unlock.AsiraArcanist) == 1 and player:removeItem(36934, 1) then
		npcHandler:say("Asira Arcanist, the wife of archaedas, himself convinced her to join the darkness. Know that these rare monsters have the possibility of dropping rare objects. Here you are a little reward, if you got some more traces do not hesistate to come again. ", cid)
			player:addItem(7861, 10)
			player:addItem(7869, 10)
			player:addItem(7877, 10)
			player:addItem(7745, 10)
			player:addItem(7753, 10)
		player:setStorageValue(Storage.WorldBosses.Unlock.AsiraArcanist, 2)
	else
		npcHandler:say("You didn't found the traces of this monster, explore the world and find it. ", cid)	
	end
-------------------------------------------------v
elseif msgcontains(msg, "wushoolay") then
	if player:getStorageValue(Storage.WorldBosses.Unlock.Wushoolay) == 2 and player:removeItem(36935, 1) then
		npcHandler:say("You defeated wushoolay Again. Here you are a little reward, if you got some more traces do not hesistate to come again. ", cid)
		player:addItem(36038, 15)
		player:addItem(36040, 10)
		player:addItem(36039, 6)
		player:addItem(36041, 3)
	elseif player:getStorageValue(Storage.WorldBosses.Unlock.Wushoolay) == 1 and player:removeItem(36935, 1) then
		npcHandler:say("A magical deity invoked in a ritual of passage for elves, Wushoolay, was the bear spirit once guardian of the forests. Know that these rare monsters have the possibility of dropping rare objects. Here you are a little reward, if you got some more traces do not hesistate to come again. ", cid)
			player:addItem(36038, 15)
			player:addItem(36040, 10)
			player:addItem(36039, 6)
			player:addItem(36041, 3)
		player:setStorageValue(Storage.WorldBosses.Unlock.Wushoolay, 2)
	else
		npcHandler:say("You didn't found the traces of this monster, explore the world and find it. ", cid)	
	end
-------------------------------------------------v
	end
end
npcHandler:setMessage(MESSAGE_GREET, "Hello dear |PLAYERNAME|! Have you found any {traces} of rare {monsters}? {If you have fight one of them, just ask me he's name}. I can {help} you if you have some trouble.")
npcHandler:setMessage(MESSAGE_FAREWELL, "Good bye.")
npcHandler:setMessage(MESSAGE_WALKAWAY, "Hum, this rare traces... a treasure...we need learn more...If only someone can bring me back some traces...")

npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())
