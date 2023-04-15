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
	if isInArray({"elemental amulet", "repair elemental", "elemental"}, msg) then
		npcHandler:say("Do you want to repair your broken elemental amulet for 1 Amber Core and 1 Amber Coin?", cid)
		npcHandler.topic[cid] = 1
	elseif msgcontains(msg, 'yes') and npcHandler.topic[cid] == 1 then
		npcHandler.topic[cid] = 0
		if player:getItemCount(12587) == 0 then
			npcHandler:say("Sorry, you don't have the broken elemental amulet.", cid)
			return true
		end

		if  player:removeItem(42061, 1) and player:removeItem(42083, 1) then
			player:removeItem(12587, 1)
			player:addItem(12588, 1)
			npcHandler:say("Here you are.", cid)
			else
				npcHandler:say("You don't have 1 Amber Core and 1 Amber Coin.", cid)
			end
	elseif msgcontains(msg, 'no') and npcHandler.topic[cid] == 1 then
		npcHandler.topic[cid] = 0
		npcHandler:say("Ok then.", cid)


	end

	return true
end

npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())
