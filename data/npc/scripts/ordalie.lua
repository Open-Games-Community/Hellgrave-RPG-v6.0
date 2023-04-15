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
	if msgcontains(msg, "thomas") and player:getStorageValue(Storage.LostArk.FirstFragment.Start) == 1 then
		npcHandler:say("Ah, you have heard about my search for the {fragments}. ", cid)
	elseif msgcontains(msg, "thomas") and player:getStorageValue(Storage.LostArk.FirstFragment.Start) < 1 then
		npcHandler:say("Sorry i do not talk with strangers.", cid)
	elseif msgcontains(msg, "fragments") and player:getStorageValue(Storage.LostArk.FirstFragment.Start) == 1 then
		npcHandler:say("There are 7 fragments in Hellgrave, each of which disappeared after being reunited by an anciet demon. Thomas absolutely wanted to reunite the 7 fragments, he said that he would allow whoever obtained the seven fragments to arrive at the {ark} a mythical place, but which is thought not to exist.", cid)
	elseif msgcontains(msg, "Agarus") and player:getStorageValue(Storage.LostArk.FirstFragment.Start) == 1 then
		npcHandler:say("Agarus was seen near the {Ruins of Dolwatha}, hurry go to find him.", cid)
	elseif msgcontains(msg, "Ruins of Dolwatha") then
		npcHandler:say("The ruins of Dolwatha was an old Castle , the first one on the continent. Since the Grims attack this place they turn this place in to the chaos.", cid)
	elseif msgcontains(msg, "ark") and player:getStorageValue(Storage.LostArk.FirstFragment.Start) == 1 then
		npcHandler:say("The Ark is a heavenly place full of mysteries,, in the books it is said that it is a new world.", cid)
		npcHandler:say("Where you found this letter ? Where is Thomas and who are you? Before continuing the story, i would need to make sure that you are a brave adventurer, can you bring me back {5 demon dusts} ? I need to finish my ribbon.", cid)
		npcHandler.topic[cid] = 2
	elseif msgcontains(msg, "yes") and npcHandler.topic[cid] == 2 and player:getStorageValue(Storage.LostArk.FirstFragment.Start) < 1 then
		npcHandler:say("Perfect then, come back when you get {5 Demon Dusts} and {5 Red Dragon Leather} for my ribbon. If you didn\'t have a {blessed wooden stake} meet {Dionysos} on {Mordragor}.", cid)
	elseif msgcontains(msg, "Demon Dusts") or msgcontains(msg, "Demon Dust's") and player:getStorageValue(Storage.LostArk.FirstFragment.Start) == 1 then
		npcHandler:say("Do you have {5 Demon Dusts} for my ribbon?", cid)
		npcHandler.topic[cid] = 3
	elseif msgcontains(msg, "yes") and npcHandler.topic[cid] == 3 then
		if player:removeItem(5906, 5) then
			npcHandler:say("Many thanks! As i said the ark is a mysterious place but no one has ever managed to find it. We were following the trail of the first fragment with Thomas. ", cid)
			npcHandler:say("Take the boat go to Dolwatha, find the hunter called {Agarus}, he probably can tell you more abouthe ark and fragments. I forgot, take this reward. ", cid)
			player:addItem(2152, 25)
			player:addExperience(500000)
			player:setStorageValue(Storage.LostArk.FirstFragment.Start, 2)
		else
			npcHandler:say("You don\'t have the {5 Demon Dusts} back here when you get it.", cid)
			npcHandler:releaseFocus(cid)
		end
	end

end
npcHandler:setMessage(MESSAGE_GREET, "Hello can i help you ? what are your looking for ? Im just waiting {Thomas}, are you a friend ?")
npcHandler:setMessage(MESSAGE_FAREWELL, "Good bye.")
npcHandler:setMessage(MESSAGE_WALKAWAY, "When fire reach the wall, the door will open.")

npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())
