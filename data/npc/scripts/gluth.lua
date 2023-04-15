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
	if msgcontains(msg, "help") and player:getStorageValue(Storage.LostArk.FirstFragment.Start) == 3 then
		npcHandler:say("We don't talk to strangers, proof your {loyalty} and bring me 10 Feather of Fate. ", cid)
	elseif msgcontains(msg, "help") and player:getStorageValue(Storage.LostArk.FirstFragment.Start) < 3 then
		npcHandler:say("Are you looking about {craft system} ?", cid)
	elseif msgcontains(msg, "craft system") then
		npcHandler:say("The Craft system is very simple, start the mission about the job you are looking for, then explore the world and gather some resources, from monsters, mining, gathering, cutting, skinning, fishing and more.", cid)
		npcHandler:say("If you are looking for more information about Craft System i will recomend you to visit the website, otherwise you will find the workshop at west, north of library.", cid)
	elseif msgcontains(msg, "the ark") and player:getStorageValue(Storage.LostArk.FirstFragment.Explorer) == 1 then
		npcHandler:say("Ok then, go to the library at sud west and check the books, you will find a letter containing a hint.", cid)
	elseif msgcontains(msg, "watch") and player:getStorageValue(Storage.LostArk.FirstFragment.Explorer) == 1 then
		npcHandler:say("You find the letter, go back to library and enter on the teleport, ask to {Zoltun} to tell you where was seen the Ancestral Spirit.", cid)
		player:setStorageValue(Storage.LostArk.FirstFragment.Explorer, 2)
		elseif msgcontains(msg, "loyalty") and player:getStorageValue(Storage.LostArk.FirstFragment.Start) == 3 then
		npcHandler:say("Proof your loyalty and come back when you can bring me 10 {Feather of fate}, go back with Agarus in order to fight some Treasure Goblins.", cid)
		npcHandler.topic[cid] = 2
	elseif msgcontains(msg, "yes") and npcHandler.topic[cid] == 2 and player:getStorageValue(Storage.LostArk.FirstFragment.Start) < 3 then
		npcHandler:say("Come back when you got {10 Feather of Fate}.", cid)
	elseif msgcontains(msg, "Feather of Fate") or msgcontains(msg, "feather") and player:getStorageValue(Storage.LostArk.FirstFragment.Start) == 3 then
		npcHandler:say("Did you have 10 Feather of Fate? ", cid)
		npcHandler.topic[cid] = 3
	elseif msgcontains(msg, "yes") and npcHandler.topic[cid] == 3 then
		if player:removeItem(42053, 10) then
			player:addItem(10944, 3)
			player:addExperience(3000000)
			player:setStorageValue(Storage.LostArk.FirstFragment.Start, 4)
			player:setStorageValue(Storage.LostArk.FirstFragment.Explorer, 1)
			npcHandler:say("Are you looking about {craft system} or something like the rumors of {the ark} ? ", cid)
		else
			npcHandler:say("You don\'t have the 10 Feather of Fate, in order to obtain Feather of Fate you need defeat Treasure goblins, go back to Agarus on Dolwatha to fight them.", cid)
			npcHandler:releaseFocus(cid)
		end
	end

end
npcHandler:setMessage(MESSAGE_GREET, "Hello |PLAYERNAME|, can i {help} you ?")
npcHandler:setMessage(MESSAGE_FAREWELL, "Good bye.")
npcHandler:setMessage(MESSAGE_WALKAWAY, "Welcome to The Forge brave adventurer.")

npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())
