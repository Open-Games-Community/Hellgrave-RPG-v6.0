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

local voices = { {text = 'Come and kill some Treasure Goblins.'} }
npcHandler:addModule(VoiceModule:new(voices))

local function creatureSayCallback(cid, type, msg)
	if not npcHandler:isFocused(cid) then
		return false
	end
	local player = Player(cid)
	if msgcontains(msg, "Ark") and player:getStorageValue(Storage.LostArk.FirstFragment.Start) == 2 then
		npcHandler:say({
			'You are looking for the Ark, the fragments ? I cant talk here... Somebody is {spying}.',
		}, cid)
	elseif msgcontains(msg, "Ark") and player:getStorageValue(Storage.LostArk.FirstFragment.Start) < 2 then
		npcHandler:say({
			'Sorry, you didn\'t start the quest: The Lost Ark.',}, cid)
	elseif msgcontains(msg, "spying") and player:getStorageValue(Storage.LostArk.FirstFragment.Start) == 2 then
		npcHandler:say({
			'If you are looking about the ark i recommend you to go on Dolwatha and find {Gluth}, he can tell you more about the ark. There is to much people around here...',
			'Before to see him, make sure you carry some feather of fate...he loves those magic feathers.'
		}, cid)
	elseif msgcontains(msg, "gluth") and player:getStorageValue(Storage.LostArk.FirstFragment.Start) == 2 then
		npcHandler:say("Gluth is someone quite special...a mad scientist. You\'ll see for yourself, he doesn\'t like the light... found the entrance near the central fountain on Dolwatha.", cid)
		player:setStorageValue(Storage.LostArk.FirstFragment.Start, 3)
	end

end

-- Travel
local function addTravelKeyword(keyword, cost, destination, action, condition)
	if condition then
		keywordHandler:addKeyword({keyword}, StdModule.say, {npcHandler = npcHandler, text = 'I can teleport you only on Treasure Goblin Room'}, condition)
	end

	local travelKeyword = keywordHandler:addKeyword({keyword}, StdModule.say, {npcHandler = npcHandler, text = 'Do you want to get teleported to the ' .. keyword:titleCase() .. ' ?', cost = cost, discount = 'postman'})
	travelKeyword:addChildKeyword({'yes'}, StdModule.travel, {npcHandler = npcHandler, premium = false, cost = cost, discount = 'postman', destination = destination}, nil, action)
	travelKeyword:addChildKeyword({'no'}, StdModule.say, {npcHandler = npcHandler, text = 'Come back when you get more experience and strenght to fight them.', reset = true})
end

addTravelKeyword('treasure goblin', 0, Position(32017, 32357, 1),
function(player)
	if player:getStorageValue(Storage.Postman.Mission01) == 1 then
		player:setStorageValue(Storage.Postman.Mission01, 2)
	end
end)

addTravelKeyword('treasure', 0, Position(32017, 32357, 1))



-- Basic
keywordHandler:addKeyword({'fight'}, StdModule.say, {npcHandler = npcHandler, text = 'You can Fight Treasure Goblins each 30 minuts here, they are Mini bosses, there are 5 levels of Treasure goblins. Be {prepared to face} them before fight a Treasure Goblin.'})
keywordHandler:addKeyword({'reward'}, StdModule.say, {npcHandler = npcHandler, text = 'Each Treasure goblin can give a chance to get a Feather of Fate, more higher is the Gobline and more chance you can get one.'})
keywordHandler:addKeyword({'prepared to face'}, StdModule.say, {npcHandler = npcHandler, text = 'Really ? then ask me to teleport you on {treasure goblin} room in order to fight them.'})



npcHandler:setMessage(MESSAGE_GREET, 'Greetings, |PLAYERNAME|. You wanna {Fight} some Goblins ? You want to know the type of {reward} from Goblins ? Or are you looking for some information about the {ark} ?')
npcHandler:setMessage(MESSAGE_FAREWELL, 'Good bye. Dont forget to say hello from me to Ordalie.')
npcHandler:setMessage(MESSAGE_WALKAWAY, 'Good bye then.')

npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())

