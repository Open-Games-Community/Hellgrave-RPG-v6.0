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

local voices = {
	{text = "Come to fulfill the prophecy!"},
	{text = "You can't escape your destiny!"},
}

npcHandler:addModule(VoiceModule:new(voices))

-- List of all towns to ask about and to sail to
local towns = {
	[TOWNS_LIST.MORDRAGOR] = {
		name = "Mordragor",
		about = {
			"Mordragor is the main city, founded after the invasions of demons to fight against them.",
		},
		canBeSailed = true,
		isPremium = false,
		message = "So it's Mordragor, you chose as your new home?",
		destination = {x = 32368, y = 32241, z = 5}
	},
	[TOWNS_LIST.MISTFALL] = {
		name = "Mistfall",
		about = {"Mistfall is an ancient city of elves. They joined forces with the people of Mordragor."},
		canBeSailed = true,
		isPremium = false,
		message = "So it's Mistfall, the city you chose as your new home?",
		destination = {x = 32374, y = 31937, z = 6}
	},
	[TOWNS_LIST.FALANAAR] = {
		name = "Falanaar",
		about = {
			"A city near the jungle. \z
			Very clean and safe, but also mystery and dangerous. But if that's what you like..."
		},
		canBeSailed = true,
		isPremium = false,
		message = "So it's Falanaar, the city you chose as your new home?",
		destination = {x = 32219, y = 32584, z = 6}
	},
	[TOWNS_LIST.DOLWATHA] = {
		name = "Dolwatha",
		about = {
			"The only desert city. \z
			Built around a lovely oasis. Lions, dragons... decent location for a newcomer."
		},
		canBeSailed = true,
		isPremium = false,
		message = "So it's Dolwatha, the city you chose as your new home?",
		destination = {x = 32017, y = 32441, z = 6}
	},
	[TOWNS_LIST.FREEWIND] = {
		name = "Freewind",
		about = {
			"The cold and the ice don't scare you, it's the ideal city. \z
			Frosts monsters, evils ... good place for starters, too."
		},
		canBeSailed = true,
		isPremium = false,
		message = "So it's Freewind, the city you chose as your new home?",
		destination = {x = 32539, y = 32936, z = 6}
	},
}

local defaultTown = TOWNS_LIST.MORDRAGOR
local townNames = {all = "", free = "", premium = ""}

-- Function to build town names strings and adds additional data to sailable/premium towns about
function buildStrings()
	local townsList = {all = {}, free = {}, premium = {}}
	for id, town in pairs(towns) do
		if town.canBeSailed then
			if town.isPremium then
				table.insert(townsList.premium, "{" .. town.name .. "}")
				town.about[1] = "Only for {premium} travellers! " .. town.about[1]
			else
				table.insert(townsList.premium, "{" .. town.name .. "}")
				table.insert(townsList.free, "{" .. town.name .. "}")
			end
			town.about[#town.about] = town.about[#town.about] .. " I can {sail} there if you like."
		end
		table.insert(townsList.all, "{" .. town.name .. "}")
	end
	for list, townList in pairs(townsList) do
		if #townList == 1 then
			townNames[list] = townList[1]
		elseif #townList > 1 then
			table.sort(townList, function(a, b) return a:upper() < b:upper() end)
			local lastTown = table.remove(townList, #townList)
			townNames[list] = table.concat(townList, ", ")  .. " or " .. lastTown
		end
	end
end

buildStrings()


-- Function to handle town travel and its messages
local function townTravelHandler(cid, message, keywords, parameters, node)
	if not npcHandler:isFocused(cid) then
        return false
    end
    local player = Player(cid)
	if (parameters.confirm ~= true) and (parameters.decline ~= true) and parameters.townId then
		local town = towns[parameters.townId]
		if town.canBeSailed == false then
			if player:isPremium() then
				npcHandler:say("What? Whatever that is, it's not a port I sail to. " .. townNames.premium .. "?", cid)
			else
				npcHandler:say("What? Whatever that is, it's not a port I sail to. " .. townNames.free .. "?", cid)
			end
		elseif town.isPremium == true and not player:isPremium() then
			npcHandler:say(
				"Negative, can't bring you there without a premium account. \z
				You should be glad you get to travel by ship - usually that's a premium service too, you know.",
				cid
			)
		else
			npcHandler:say(town.message .. " What do you say, {yes} or {no}?", cid)
		end
	elseif (parameters.confirm == true) then
		local parentNode = node:getParent()
        local parentParameters = parentNode:getParameters()
		local townId = parentParameters.townId or parameters.townId
		local town = Town(townId)
		player:setTown(town)
		player:teleportTo(towns[townId].destination)
		player:getPosition():sendMagicEffect(CONST_ME_TELEPORT)
		player:setStorageValue(Storage.Kindernia.Mainland, 1)
		npcHandler:say(
			"Here you go!!",
			cid
		)
		npcHandler:resetNpc(cid)
		npcHandler:releaseFocus(cid)
	elseif (parameters.decline == true) then
		if player:isPremium() then
			npcHandler:say("Changed your mind? Which city do you want to head to, " .. townNames.premium .. "?", cid)
		else
			npcHandler:say("Changed your mind? Which city do you want to head to, " .. townNames.free .. "?", cid)
		end
		npcHandler.keywordHandler:moveUp(cid, 1)
	elseif (parameters.sailableTowns == true) and parameters.text then
		if player:isPremium() then
			npcHandler:say(string.gsub(parameters.text, "|TOWNS|", townNames.premium), cid)
		else
			npcHandler:say(string.gsub(parameters.text, "|TOWNS|", townNames.free), cid)
		end
	end
	return true
end
-- Other topics
keywordHandler:addKeyword({"name"}, StdModule.say,
{
	npcHandler = npcHandler,
	text = "I am the Prophet i can see the future and i know you are our destiny!"
})
-- Main topic nodes
local readyNode = keywordHandler:addKeyword({"yes"}, StdModule.say,
{
	npcHandler = npcHandler,
	text = "Good. Got all you want to take to the mainland, {yes}? Gear, limbs, loot?"
})
local notReadyNode = keywordHandler:addKeyword({"no"}, StdModule.say,
{
	npcHandler = npcHandler,
	text = "What? Then what DO you want? Learn about the main Tibian {cities}?"
})
-- Main subtopic nodes
-- hi, yes, ...
local defaultTownNode = readyNode:addChildKeyword({"yes"}, StdModule.say,
{
	npcHandler = npcHandler,
	text = {
		"Quick learner, good answer. For inexperienced newcomers, \z
		I'd recommend the city of {" .. towns[defaultTown].name .. "}. Great place to start! ...",
		"Though I can tell you about the other main Tibian {cities} too, if you wish. \z
		So, ready to set sail for {" .. towns[defaultTown].name .. "}?"
	}
})
readyNode:addChildKeyword({"no"}, StdModule.say,
{
	npcHandler = npcHandler,
	text = "While you take time to ponder, I will just stroll over there and pretend not to listen to you thinking.",
	ungreet = true
})
-- hi, no, ...
local aboutTownsNode = notReadyNode:addChildKeyword({"yes"}, StdModule.say,
{
	npcHandler = npcHandler,
	text = "Well, I can tell you stuff about " .. townNames.all .. "."
})
local aboutSailNode = notReadyNode:addChildKeyword({"no"}, townTravelHandler,
{
	sailableTowns = true,
	text = "So you know it all, huh? Where do you want me to bring you to, kid? |TOWNS|?"
})
-- hi, yes, yes, ...
defaultTownNode:addChildKeyword({"yes"}, townTravelHandler, {confirm = true, townId = defaultTown})
defaultTownNode:addAliasKeyword({towns[defaultTown].name:lower()})
defaultTownNode:addChildKeyword({"no"}, townTravelHandler, {decline = true})
-- Towns topic nodes
local townsNode = keywordHandler:addKeyword({"cities"}, StdModule.say,
{
	npcHandler = npcHandler,
	text = "Do you want to know about " .. townNames.all .. "?"
})
for id, town in pairs(towns) do
	local townNode = KeywordNode:new({town.name:lower()}, StdModule.say, {npcHandler = npcHandler, text = town.about})
	townsNode:addChildKeywordNode(townNode)
	aboutTownsNode:addChildKeywordNode(townNode)
end
keywordHandler:addAliasKeyword({"city"})
-- Sail topic nodes
local sailNode = keywordHandler:addKeyword({"sail"}, StdModule.say,
{
	npcHandler = npcHandler,
	text = "So, you've decided on your new home city? Which one will it be? {Mordragor}, {Mistfall}, {Falanaar}, {Dolwatha} or {Freewind} ?"
})
local confirmNode = KeywordNode:new({"yes"}, townTravelHandler, {confirm = true})
local declineNode = KeywordNode:new({"no"}, townTravelHandler, {decline = true})
for id, town in pairs(towns) do
	local townSailNode = KeywordNode:new({town.name:lower()}, townTravelHandler, {townId = id})	
	townSailNode:addChildKeywordNode(confirmNode)
    townSailNode:addChildKeywordNode(declineNode)
	sailNode:addChildKeywordNode(townSailNode)
	aboutSailNode:addChildKeywordNode(townSailNode)
end
keywordHandler:addAliasKeyword({"passage"})
keywordHandler:addAliasKeyword({"travel"})


local function greetCallback(cid)
	local player = Player(cid)
	npcHandler:setMessage(
		MESSAGE_GREET,
		"Well, well, a new " .. player:getVocation():getName():lower() .. "! Want me to bring you somewhere nice? \z
		Just say {yes}."
	)
	return true
end

local function creatureSayCallback(cid, type, msg)
	if not npcHandler:isFocused(cid) then
		return false
	end
	local currentNode = keywordHandler:getLastNode(cid)
	-- Handle other words for nodes while still handling (bye, farewell) keywords
	if #currentNode.children == 0 then
		npcHandler:say(
			"Kid, listen. Answering with a clear {yes} or {no} will get you much further in New World. \z
			Most people are not as sharp-eared as I am. Got that?",
			cid
		)
	elseif currentNode == readyNode then
		npcHandler:say("Errr... was that a foreign language? Could you just answer with a clear {yes} or {no}?", cid)
	elseif currentNode == notReadyNode then
		npcHandler:say(
		"Aw, come on! Talk to me in human words! {Yes}, {no}, or mention a city's name, that kind of stuff.",
		cid
	)
	end
	return true
end

npcHandler:setCallback(CALLBACK_GREET, greetCallback)
npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:setMessage(
	MESSAGE_FAREWELL,
	"You sure you want to spend time on this piece of rock? I can show you the world! Huh."
)

npcHandler:addModule(FocusModule:new())
