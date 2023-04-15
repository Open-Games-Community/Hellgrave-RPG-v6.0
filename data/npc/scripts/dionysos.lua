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
	if(not npcHandler:isFocused(cid)) then
	return false
	end

	if msg:lower() == "name" then
		return npcHandler:say("Me Dionysos.", cid)
	elseif msg:lower() == "job" then
		return npcHandler:say("We didn't have any job for you.", cid)
	elseif msg:lower() == "passage" then
		return npcHandler:say("The secret passage you need to prove yourself finding secrets.", cid)
	end
	return true
end

npcHandler:setMessage(MESSAGE_FAREWELL, "Goodbye")
npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())
