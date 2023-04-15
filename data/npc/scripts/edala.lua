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

local config = {
	[1] = 'Ashari, |PLAYERNAME|. How... nice to see a human taking interest in a beautiful art such as music.',
	[2] = 'Ashari, |PLAYERNAME|... that sound was.. interesting.',
	[3] = 'Ashari, |PLAYERNAME|. You\'ve made some... progress playing the lyre, haven\'t you..? I want to believe you have.',
	[4] = '|PLAYERNAME|. My regular visitor. I certainly... appreciate your efforts to entertain me, but let me assure you, I\'m quite comfortable up here by myself. Alone. In silence.',
	[5] = 'Ashari, |PLAYERNAME|. I\'m starting to feel a little sorry... for your lyre. Being forced to produce such noise must be a tragic fate.',
	[6] = '|PLAYERNAME|! You\'re driving me insane! I beg you, take your lyre away from this sacred and peaceful place.',
	[7] = '|PLAYERNAME|! My ears! I\'d prefer listening to drunken dwarves rambling all day to the sound of your lyre! Please, at least get it tuned. Here, you can have this elvish diapason.'
}

local function greetCallback(cid)
	local player = Player(cid)
	local lyreProgress = player:getStorageValue(Storage.Diapason.Lyre)
	local greetMessage = config[lyreProgress]
	if greetMessage
			and player:getStorageValue(Storage.Diapason.Edala) == 1
			and player:getStorageValue(Storage.Diapason.EdalaTimer) < os.time() then
		player:setStorageValue(Storage.Diapason.Edala, 0)
		player:setStorageValue(Storage.Diapason.EdalaTimer, os.time() + 86400)
		if lyreProgress == 7 then
			player:setStorageValue(Storage.Diapason.Lyre, 8)
			player:addItem(13536, 1)
		end
		npcHandler:setMessage(MESSAGE_GREET, greetMessage)
	else
		npcHandler:setMessage(MESSAGE_GREET, 'Ashari, |PLAYERNAME|.')
	end
	return true
end

-- Fire of the Suns
local blessKeyword = keywordHandler:addKeyword({'suns'}, StdModule.say, {npcHandler = npcHandler, text = 'Would you like to receive that protection for a sacrifice of |BLESSCOST| gold, child?'})
	blessKeyword:addChildKeyword({'yes'}, StdModule.bless, {npcHandler = npcHandler, text = 'So receive the fire of the suns, pilgrim.', cost = '|BLESSCOST|', bless = 4})
	blessKeyword:addChildKeyword({''}, StdModule.say, {npcHandler = npcHandler, text = 'Fine. You are free to decline my offer.', reset = true})
keywordHandler:addAliasKeyword({'fire'})

-- Healing
local function addHealKeyword(text, condition, effect)
	keywordHandler:addKeyword({'heal'}, StdModule.say, {npcHandler = npcHandler, text = text},
		function(player) return player:getCondition(condition) ~= nil end,
		function(player)
			player:removeCondition(condition)
			player:getPosition():sendMagicEffect(effect)
		end
	)
end

addHealKeyword('You are burning. Let me quench those flames.', CONDITION_FIRE, CONST_ME_MAGIC_GREEN)
addHealKeyword('You are poisoned. Let me soothe your pain.', CONDITION_POISON, CONST_ME_MAGIC_RED)
addHealKeyword('You are electrified, my child. Let me help you to stop trembling.', CONDITION_ENERGY, CONST_ME_MAGIC_GREEN)

keywordHandler:addKeyword({'heal'}, StdModule.say, {npcHandler = npcHandler, text = 'You are hurt, my child. I will heal your wounds.'},
	function(player) return player:getHealth() < 40 end,
	function(player)
		local health = player:getHealth()
		if health < 40 then player:addHealth(40 - health) end
		player:getPosition():sendMagicEffect(CONST_ME_MAGIC_GREEN)
	end
)
keywordHandler:addKeyword({'heal'}, StdModule.say, {npcHandler = npcHandler, text = 'You aren\'t looking that bad. Sorry, I can\'t help you. But if you are looking for additional protection you should go on the {pilgrimage} of ashes or get the protection of the {twist of fate} here.'})


-- Greeting message
keywordHandler:addGreetKeyword({"ashari"}, {npcHandler = npcHandler, text = "Greetings, |PLAYERNAME|."})
--Farewell message
keywordHandler:addFarewellKeyword({"asgha thrazi"}, {npcHandler = npcHandler, text = "Asha Thrazi, |PLAYERNAME|."})

npcHandler:setCallback(CALLBACK_GREET, greetCallback)

npcHandler:setMessage(MESSAGE_WALKAWAY, 'Asha Thrazi, |PLAYERNAME|!')
npcHandler:setMessage(MESSAGE_FAREWELL, 'Asha Thrazi, |PLAYERNAME|!')

npcHandler:addModule(FocusModule:new())
