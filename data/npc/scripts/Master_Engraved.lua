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
	if isInArray({"engraved boots", "repair engraved", "engraved"}, msg) then
		npcHandler:say("Do you want to repair your worn engraved boots for 1 Amber Coin and 5 Demoniac Crystals?", cid)
		npcHandler.topic[cid] = 1
	elseif msgcontains(msg, 'yes') and npcHandler.topic[cid] == 1 then
		npcHandler.topic[cid] = 0
		if player:getItemCount(13214) == 0 then
			npcHandler:say("Sorry, you don't have the worn engraved boots.", cid)
			return true
		end

		if player:removeItem(42061, 1) and player:removeItem(32446, 5) then
			player:removeItem(13214, 1)
			player:addItem(13213, 1)
			npcHandler:say("Here you are.", cid)
			else
				npcHandler:say("You don't have 1 Amber Coin and 5 Demoniac Crystals", cid)
			end
	elseif msgcontains(msg, 'no') and npcHandler.topic[cid] == 1 then
		npcHandler.topic[cid] = 0
		npcHandler:say("Ok then.", cid)


	end

	return true
end

npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())
