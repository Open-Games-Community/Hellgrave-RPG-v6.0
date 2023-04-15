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
	if msgcontains(msg, "looking") then
		npcHandler:say("This island is dangerous although bright and calm, a {dark demon} hides in it. You will find near the cave the entrance to the {village}. ", cid)
	elseif msgcontains(msg, "dark demon") then
		npcHandler:say("Once upon a time, everything was peaceful, when the son of the fisherman went fishing on the edge of the island, he found a bottle containing a {mysterious message}.", cid)
	elseif msgcontains(msg, "mysterious message") then
		npcHandler:say("This message containing a location of a treasure hidden at the bottom of the sea. So the young boys left with two friends in search of the treasure. They found the location and discovered a {ship} that had sunk to the bottom of the ocean.", cid)
	elseif msgcontains(msg, "ship") then
		npcHandler:say("They decided to go down to the boat and start looking for something that looked like treasure, the consequences of the sinking were unclear. While researching, they began to see the damage caused on the hull, this one had {huge holes} as if something had pierced it.", cid)
	elseif msgcontains(msg, "huge holes") then
		npcHandler:say("They understood that something big had engulfed the boat. In the main room they found a safe, which they decided to open, at which time they saw a light coming out of the safe, it contained {thousands of coins} and valuables.", cid)
	elseif msgcontains(msg, "thousands of coins") then
		npcHandler:say("At that time, they did not know that what had attacked the boat was just in deep sleep, they decided to carry the box and go up to the surface, the box was very heavy and some parts fell to the bottom, celli created a noise on contact with the stones at the bottom of the ocean. Then huge arms of hell began to rise from the depths and the frightened young adventurers dropped the chest and {swam} quickly out of the water.", cid)
	elseif msgcontains(msg, "swam") then
		npcHandler:say("They got on the small boat and rowed without stopping to return to the island, but the arms of hell followed the adventurers and arrived on the island. Everyone was scared, and decided to hide at the bottom of the island. The creature suddenly disappeared, it is said that it never left the island.", cid)
	elseif msgcontains(msg, "village") then
		npcHandler:say("You will find the village by following its walls, you will find something to recharge your batteries, the sea voyage is long and you should not run out of strength. The former king's house is on the island and is now available for purchase, since the events no one has dared to settle here.", cid)
	end

end
npcHandler:setMessage(MESSAGE_GREET, "Welcome young adventurer, are you {looking} for something ?")
npcHandler:setMessage(MESSAGE_FAREWELL, "Good bye.")
npcHandler:setMessage(MESSAGE_WALKAWAY, "Welcome to Arkeron Isle.")

npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())
