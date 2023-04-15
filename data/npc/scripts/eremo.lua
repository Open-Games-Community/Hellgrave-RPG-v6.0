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
	if msgcontains(msg, 'letter') then
		if player:getStorageValue(Storage.TheShatteredIsles.ReputationInSabrehaven) == 4 then
			if player:getItemCount(8188) > 0 then
				if player:removeItem(8188, 1) then
					npcHandler:say(
						'A letter from that youngster Morgan? I believed him dead since years. \
						These news are good news indeed. Thank you very much, my friend.',
					cid)
					player:setStorageValue(Storage.TheShatteredIsles.ReputationInSabrehaven, 5)
				end
			end
		end
	end
	return true
end

-- Wisdom of Solitude
local blessKeyword = keywordHandler:addKeyword({'solitude'}, StdModule.say,
	{
		npcHandler = npcHandler,
		text = 'Would you like to receive that protection for a sacrifice of |BLESSCOST| gold, child?'
	}
)
blessKeyword:addChildKeyword({'yes'}, StdModule.bless,
	{
		npcHandler = npcHandler,
		text = 'So receive the wisdom of solitude, pilgrim.',
		cost = '|BLESSCOST|',
		bless = 2
	}
)
blessKeyword:addChildKeyword({''}, StdModule.say,
	{
		npcHandler = npcHandler,
		text = 'Fine. You are free to decline my offer.',
		reset = true
	}
)
keywordHandler:addAliasKeyword({'wisdom'})

-- Healing
local function addHealKeyword(text, condition, effect)
	keywordHandler:addKeyword({'heal'}, StdModule.say,
	{
		npcHandler = npcHandler,
		text = text
	},
	function(player)
		return player:getCondition(condition) ~= nil
	end,
	function(player)
		player:removeCondition(condition)
		player:getPosition():sendMagicEffect(effect)
	end
)
end

addHealKeyword('You are burning. Let me quench those flames.', CONDITION_FIRE, CONST_ME_MAGIC_GREEN)
addHealKeyword('You are poisoned. Let me soothe your pain.', CONDITION_POISON, CONST_ME_MAGIC_RED)
addHealKeyword('You are electrified, my child. Let me help you to stop trembling.',
CONDITION_ENERGY, CONST_ME_MAGIC_GREEN)

keywordHandler:addKeyword({'heal'}, StdModule.say,
	{
		npcHandler = npcHandler,
		text = 'You are hurt, my child. I will heal your wounds.'
	},
	function(player)
		return player:getHealth() < 40
	end,
	function(player)
	local health = player:getHealth()
	if health < 40 then
		player:addHealth(40 - health)
	end
	player:getPosition():sendMagicEffect(CONST_ME_MAGIC_GREEN)
end
)
keywordHandler:addKeyword({'heal'}, StdModule.say,
	{
		npcHandler = npcHandler,
		text = 'You aren\'t looking that bad. Sorry, I can\'t help you. But if you are looking for additional \
		protection you should go on the {pilgrimage} of ashes or get the protection of the {twist of fate} here.'
	}
)


npcHandler:setMessage(MESSAGE_GREET, 'Welcome to my little garden, adventurer |PLAYERNAME|!')
npcHandler:setMessage(MESSAGE_FAREWELL, 'It was a pleasure to help you, |PLAYERNAME|.')
npcHandler:setMessage(MESSAGE_WALKAWAY, 'It was a pleasure to help you, |PLAYERNAME|.')

npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)

npcHandler:addModule(FocusModule:new())
