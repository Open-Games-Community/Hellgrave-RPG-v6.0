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

local voices = { {text = 'Passages to Mordragor, Dolwatha, Asrock, Falanaar, Mistfall, Freewind, Death Valley, Bounac and Arkeron.'} }
npcHandler:addModule(VoiceModule:new(voices))

-- Travel
local function addTravelKeyword(keyword, cost, destination, action, condition)
	if condition then
		keywordHandler:addKeyword({keyword}, StdModule.say, {npcHandler = npcHandler, text = 'I\'m sorry but I don\'t sail there.'}, condition)
	end

	local travelKeyword = keywordHandler:addKeyword({keyword}, StdModule.say, {npcHandler = npcHandler, text = 'Do you seek a passage to ' .. keyword:titleCase() .. ' for |TRAVELCOST|?', cost = cost, discount = 'postman'})
	travelKeyword:addChildKeyword({'yes'}, StdModule.travel, {npcHandler = npcHandler, premium = false, cost = cost, discount = 'postman', destination = destination}, nil, action)
	travelKeyword:addChildKeyword({'no'}, StdModule.say, {npcHandler = npcHandler, text = 'We would like to serve you some time.', reset = true})
end

addTravelKeyword('dolwatha', 240, Position(32020, 32441, 6))
addTravelKeyword('asrock', 290, Position(31737, 32317, 5))
addTravelKeyword('bounac', 310, Position(31653, 32161, 6))
addTravelKeyword('falanaar', 225, Position(32219, 32584, 6))
addTravelKeyword('mordragor', 200, Position(32299, 32279, 6))
addTravelKeyword('mistfall', 270, Position(32374, 31937, 6))
addTravelKeyword('freewind', 315, Position(32539, 32936, 6))
addTravelKeyword('death valley', 380, Position(32593, 32475, 7))
addTravelKeyword('arkeron', 950, Position(32718, 33052, 5))



keywordHandler:addKeyword({'sail'}, StdModule.say, {npcHandler = npcHandler, text = 'Where do you want to go? To {Dolwatha}, {Mordragor}, {Asrock}, {Falanaar}, {Mistfall}, {Freewind}, {Death Valley}, {Bounac} or {Arkeron} ?'})


npcHandler:setMessage(MESSAGE_GREET, 'Welcome on board, |PLAYERNAME|. Where you wish to {sail} and explore today ?')
npcHandler:setMessage(MESSAGE_FAREWELL, 'Good bye. Recommend us if you were satisfied with our service.')
npcHandler:setMessage(MESSAGE_WALKAWAY, 'Good bye then.')

npcHandler:addModule(FocusModule:new())
