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
	if msgcontains(msg, "Arch") then
		if player:getStorageValue(Storage.CraftSystem.Tools.Job) == 2 then
		npcHandler:say({
			'The Ark is a myth. According to the stories of the old world, it evokes a unique place where everything is unknown, magical and full of surprises.',
			'The story goes that only a few {immortals} could access it.'
		}, cid)
	else
		npcHandler:say({'Sorry dear, before to start and explore this dangerous world you need to proof your valor with Elyotrope.'}, cid)
	end
	elseif msgcontains(msg, "immortals") then
		if player:getStorageValue(Storage.CraftSystem.Tools.Job) == 2 then
		npcHandler:say({
			'Immortals were supreme beings who could travel anywhere, giving them supreme powers and unique knowledge.',
			'For that it was necessary to reunite the 7 {lost fragments} of the ark to discover this new world.'
		}, cid)
	else
		npcHandler:say({'Sorry dear, before to start and explore this dangerous world you need to proof your valor with Elyotrope.'}, cid)
	end
	elseif msgcontains(msg, "lost fragments") then
		if player:getStorageValue(Storage.CraftSystem.Tools.Job) == 2 then
		npcHandler:say("A stubborn man known as {Thomas the Explorer} has gone on a quest to find the first lost fragment.", cid)
	else
		npcHandler:say({'Sorry dear, before to start and explore this dangerous world you need to proof your valor with Elyotrope.'}, cid)
	end
	elseif msgcontains(msg, "Thomas the Explorer") then
		if player:getStorageValue(Storage.CraftSystem.Tools.Job) == 2 then
		npcHandler:say("This one asked me for help, so i decided to help him. We went in search of the first fragment at the mountain of the Cyclops, while we were looking for clues at the top of the {mountain} suddenly we were attacked by a Warden. I had time to go down the stairs and I came back, but Thomas never came back.", cid)
	else
		npcHandler:say({'Sorry dear, before to start and explore this dangerous world you need to proof your valor with Elyotrope.'}, cid)
	end
	elseif msgcontains(msg, "mountain") then
		if player:getStorageValue(Storage.CraftSystem.Tools.Job) == 2 then
		npcHandler:say("Go find Thomas in the mountains.", cid)
		player:setStorageValue(Storage.LostArk.FirstFragment.Start, 1)
	else
		npcHandler:say({'Sorry dear, before to start and explore this dangerous world you need to proof your valor with Elyotrope.'}, cid)
	end
	end

end
npcHandler:setMessage(MESSAGE_GREET, "Hello dear |PLAYERNAME|! You are looking for the {Arch} ?.")
npcHandler:setMessage(MESSAGE_FAREWELL, "Good bye.")
npcHandler:setMessage(MESSAGE_WALKAWAY, "That what I did... I left like a coward.")

npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())