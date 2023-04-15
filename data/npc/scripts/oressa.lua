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
	{text = "Come to me if you need healing!"},
	{text = "Choose your vocation and explore the mainland!"},
	{text = "Talk to me to choose your definite vocation! Become a Warrior, Hunter, Priest or Mage!"},
	{text = "World needs brave adventurers like you. Choose your vocation and sail to the mainland!"},
	{text = "Poisoned? Bleeding? Wounded? I can help!"}
}

npcHandler:addModule(VoiceModule:new(voices))

-- Basic keywords
keywordHandler:addKeyword({"name"}, StdModule.say,
	{
		npcHandler = npcHandler,
		text = "I am Oressa Fourwinds, the {healer}. "
	}
)
keywordHandler:addKeyword({"healer"}, StdModule.say,
	{
		npcHandler = npcHandler,
		text = "If you are hurt my child, I will {heal} your wounds."
	}
)
keywordHandler:addKeyword({"job"}, StdModule.say,
	{
		npcHandler = npcHandler,
		text = "I can {heal} you if you are hurt. I can also help you choose your {vocation}. "
	}
)

--From topic of vocation to topic of the "yes" msg (choosing vocation)
local topicTable = {
	[5] = VOCATION.ID.WARRIOR,
	[6] = VOCATION.ID.HUNTER,
	[7] = VOCATION.ID.PRIEST,
	[8] = VOCATION.ID.MAGE
}

local function creatureSayCallback(cid, type, msg)
	if not npcHandler:isFocused(cid) then
		return false
	end

	local player = Player(cid)
	local health = player:getHealth()

	local vocationDefaultMessages = {
		"A vocation is your profession and destiny, determining your skills and way of fighting. \z
			There are four vocations in Tibia: {warrior}, {mage}, {hunter} or {priest}. \z
			Each one has its unique special abilities. ... ",
		"When you leave the outpost go talk with The Prophet in order to leave Kindernia.",
		"You can try them out as often as you wish to. When you have gained enough experience to reach level 30, \z
			you are ready to choose the definite vocation that is to become your destiny. ... ",
		"Think carefully, as you can't change your vocation later on! You will have to choose your vocation in order \z
			to leave Kindernia for the main continent. ",
		"Talk to me again when you are ready to choose your vocation, and I will set you on your way. "
	}

	-- Heal and help dialog
	if msgcontains(msg, "healing") and npcHandler.topic[cid] == 0 then
		if player:getLevel() < 30 then
			if health < 40 or player:getCondition(CONDITION_POISON) then
				if health < 40 then
					player:addHealth(40 - health)
					player:getPosition():sendMagicEffect(CONST_ME_MAGIC_RED)
				end
				if player:getCondition(CONDITION_POISON) then
					player:removeCondition(CONDITION_POISON)
					player:getPosition():sendMagicEffect(CONST_ME_MAGIC_RED)
				end
				npcHandler:say("You are hurt, my child. I will heal your wounds.", cid)
				npcHandler.topic[cid] = 0
			else
				return npcHandler:say("You do not need any healing right now.", cid)
			end
		end
	elseif msgcontains(msg, "help") and npcHandler.topic[cid] == 0 then
		if player:getCondition(CONDITION_POISON) == nil or health > 40 then
			return npcHandler:say("You do not need any healing right now.", cid)
		end
		if health < 40 or player:getCondition(CONDITION_POISON) then
			if health < 40 then
				player:addHealth(40 - health)
				player:getPosition():sendMagicEffect(CONST_ME_MAGIC_RED)
			end
			if player:getCondition(CONDITION_POISON) then
				player:removeCondition(CONDITION_POISON)
				player:getPosition():sendMagicEffect(CONST_ME_MAGIC_RED)
			end
			npcHandler:say("You are hurt, my child. I will heal your wounds.", cid)
			npcHandler.topic[cid] = 0
		end
	-- Vocation dialog
	elseif npcHandler.topic[cid] == 0 and msgcontains(msg, "vocation") then
		npcHandler:say(vocationDefaultMessages,	cid, false, true, 10)
		npcHandler.topic[cid] = 0
	-- Choosing dialog start
	elseif msgcontains(msg, "choosing") or msgcontains(msg, "choose") and npcHandler.topic[cid] == 0 then
		if player:getLevel() >= 30 then
			npcHandler:say("I'll help you decide. \z
				Tell me: Do you like to keep your {distance}, or do you like {close} combat?", cid)
			npcHandler.topic[cid] = 2
		else
			npcHandler:say(vocationDefaultMessages, cid, false, true, 10)
			npcHandler.topic[cid] = 0
		end
	elseif msgcontains(msg, "distance") and npcHandler.topic[cid] == 2 then
		npcHandler:say("Tell me: Do you prefer to fight with {bow} and {spear}, or do you want to cast {magic}?", cid)
		npcHandler.topic[cid] = 3
	-- knight
	elseif msgcontains(msg, "close") and npcHandler.topic[cid] == 2 then
		npcHandler:say(
			{
				"Then you should choose the {vocation} of a Warrior and become a valiant fighter with sword and shield. ...",
				"Warriors are the toughest of all vocations. They can take more damage and carry more items than the other \z
					vocations, but they will deal less damage than hunters, priests or mages. ...",
				"Warriors can wield one- or two-handed swords, axes and clubs, and they can cast a few spells to draw a \z
					monster's attention to them. ...",
				"So tell me: DO YOU WISH TO BECOME A VALIANT WARRIOR? Answer with a proud {YES} if that is your choice!"
			},
		cid, false, true, 10)
		npcHandler.topic[cid] = 5
	-- Paladin
	elseif msgcontains(msg, "bow") or msgcontains(msg, "spear") and npcHandler.topic[cid] == 3 then
		npcHandler:say(
			{
				"Then you should join the ranks of the Hunters, noble rangers of the wild, who rely on the \z
					swiftness of movement and ranged attacks. ...",
				"Hunters are jacks of all trades. They are tougher than the magically gifted and can carry more items \z
					than priests or mages, but they can take not as much damage as a warrior can. ...",
				"Hunters deal more damage than Warriors but less than priests or mages, and have the longest range \z
					in their distance attacks. ...",
				"They can also use holy magic to slay the unholy and undead in particular. ...",
				"DO YOU WISH TO BECOME A DARING HUNTER? Answer with a proud {YES} if that is your choice!"
			},
		cid, false, true, 10)
		npcHandler.topic[cid] = 6
	-- Mage
	elseif msgcontains(msg, "magic") and npcHandler.topic[cid] == 3 then
		npcHandler:say("Tell me: Do you prefer to {heal} and cast the power of nature and ice, or do you want to rain \z
			fire and {death} on your foes?", cid)
		npcHandler.topic[cid] = 4
	-- Druid
	elseif msgcontains(msg, "heal") and npcHandler.topic[cid] == 4 then
		npcHandler:say(
			{
				"Then you should learn the ways of the Priests, healers and powerful masters of natural magic. ...",
				"Priests can heal their friends and allies, but they can also cast powerful ice and earth magic \z
					to kill their enemies. They can do a little energy, fire or death damage as well. ...",
				"Priestss cannot take much damage or carry many items, but they deal \z
					much more damage than hunters or warriors. ...",
				"So tell me: DO YOU WISH TO BECOME A SAGACIOUS PRIEST? Answer with a proud {YES} if that is your choice!"
			},
		cid, false, true, 10)
		npcHandler.topic[cid] = 7
	-- Sorcerer
	elseif msgcontains(msg, "death") and npcHandler.topic[cid] == 4 then
		npcHandler:say(
			{
				"Then you should become a Mage, a mighty wielder of deathly energies and arcane fire. ...",
				"Mages are powerful casters of magic. They use fire, energy and death magic to lay low their enemies. \z
					They can do a little ice or earth damage as well. ...",
				"Mages cannot take much damage or carry many items, \z
					but they deal much more damage than hunters or warriors. ...",
				"So tell me: DO YOU WISH TO BECOME A POWERFUL MAGE? Answer with a proud {YES} if that is your choice!"
			},
		cid, false, true, 10)
		npcHandler.topic[cid] = 8
	-- Choosing dialog start
	elseif msgcontains(msg, "decided") and npcHandler.topic[cid] == 0 then
		npcHandler:say("So tell me, which {vocation} do you want to choose: {warrior}, {mage}, {hunter} or {priest}?", cid)
	-- Say vocations name
	elseif msgcontains(msg, "mage") and npcHandler.topic[cid] == 0 then
		local message = {
			"Mages are powerful casters of death, energy and fire magic. \z
				They can do a little ice or earth damage as well. ...",
			"Mages cannot take much damage or carry many items, but they deal more damage than hunters or warriors, \z
				and can target several enemies. ...",
			"If you wish to be a caster of fire and energy, hurling death magic at your foes, \z
				you should consider choosing the Mage vocation."
		}

		if player:getLevel() >= 30 then
			table.insert(message, "So tell me: DO YOU WISH TO BECOME A POWERFUL Mage?"..
									" Answer with a proud {YES} if that is your choice!")
			npcHandler.topic[cid] = 8
		else
			npcHandler.topic[cid] = 0
		end

		npcHandler:say(message, cid, false, true, 10)
	elseif msgcontains(msg, "priest") and npcHandler.topic[cid] == 0 then
		local message = {
			"Priests are healers and powerful masters of ice and earth magic. \z
				They can also do a little energy, fire or death damage as well. ... ",
			"Priests cannot take much damage or carry many items, but they deal more damage than hunters or warriors, \z
				and can target several enemies. ... ",
			"If you wish to be a healer and wielder of powerful natural magic, \z
				you should consider choosing the Priest vocation."
		}

		if player:getLevel() >= 30 then
			table.insert(message, "So tell me: DO YOU WISH TO BECOME A SAGACIOUS PRIEST?"..
									" Answer with a proud {YES} if that is your choice!")
			npcHandler.topic[cid] = 7
		else
			npcHandler.topic[cid] = 0
		end

		npcHandler:say(message, cid, false, true, 10)
	elseif msgcontains(msg, "hunter") and npcHandler.topic[cid] == 0 then
		local message = {
			"Hunters are sturdy distance fighters. They are tougher than priests or mages and can carry more items, \z
				but they are less tough than a warrior. ... ",
			"Hunters have the longest attack range, and can deal the most damage on a single target. ... ",
			"They can also use holy magic to slay the unholy and undead in particular. ... ",
			"If you like to keep a distance to your enemy, shooting while you outdistance him, \z
				you should consider choosing the Hunter vocation."
		}

		if player:getLevel() >= 30 then
			table.insert(message, "So tell me: DO YOU WISH TO BECOME A DARING HUNTER?"..
									" Answer with a proud {YES} if that is your choice!")
			npcHandler.topic[cid] = 6
		else
			npcHandler.topic[cid] = 0
		end

		npcHandler:say(message, cid, false, true, 10)
	elseif msgcontains(msg, "warrior") and npcHandler.topic[cid] == 0 then
		local message = {
			"Warriors are stalwart melee fighters, the toughest of all vocations. They can take more damage and carry \z
				more items than the other vocations, but they will deal less damage than hunters, priests or mages. ... ",
			"Warriors can wield one- or two-handed swords, axes and clubs, and they can cast a few spells to draw a \z
				monster's attention to them. ... ",
			"If you want to be a tough melee fighter who can resist much longer than anyone else, \z
				you should consider choosing the Warrior vocation."
		}

		if player:getLevel() >= 30 then
			table.insert(message, "DO YOU WISH TO BECOME A VALIANT WARRIOR? Answer with a proud {YES} if that is your choice!")
			npcHandler.topic[cid] = 5
		else
			npcHandler.topic[cid] = 0
		end

		npcHandler:say(message, cid, false, true, 10)
	elseif ((npcHandler.topic[cid] >= 5) and (npcHandler.topic[cid] <= 8)) then
		if msgcontains(msg, "yes") then
			for index, value in pairs(topicTable) do
				if npcHandler.topic[cid] == index then
					if player:getStorageValue(Storage.Kindernia.DoorVocation) == -1 then
						-- Change to new vocation, convert magic level and skills and set proper stats
						player:changeVocation(value)
						player:setStorageValue(Storage.Kindernia.DoorVocation, value)
					else
						npcHandler.topic[cid] = 0
						return true
					end
				end
			end
			-- Remove Mainland smuggling items
			npcHandler:say(
				{
					"SO BE IT. CAST OFF YOUR TRAINING GEAR AND RISE, NOBLE ".. player:getVocation():getName():upper() .. "! ...",
					"Go and take your reward on the right door of your vocation."
				},
			cid, false, true, 10)
			npcHandler.topic[cid] = 0
		elseif msgcontains(msg, "no") then
			local vocationMessage = {
				[5] = "{hunter}, {mage} or {priest}",
				[6] = "{warrior}, {mage} or {priest}",
				[7] = "{warrior}, {hunter} or {mage}",
				[8] = "{warrior}, {hunter} or {priest}"
			}
			npcHandler:say(
				{
					"As you wish. If you wish to learn something about the "..
					vocationMessage[npcHandler.topic[cid]]..
					" vocation, tell me.",
				},
			cid, false, true, 10)
			npcHandler.topic[cid] = 0
		end
	end
	return true
end

local function greetCallback(cid)
	local player = Player(cid)
	if player:getLevel() >= 30 then
		npcHandler:setMessage(MESSAGE_GREET, "Welcome, young adventurer. Tell me if you need help in \z
												{choosing} your {vocation}, or if you have {decided} on the {vocation} you want to choose.")
	else
		npcHandler:setMessage(MESSAGE_GREET, "Welcome to Kindernia, child. \z
												If you need {healing}, I can help you. Ask me about a {vocation} if you need counsel.")
	end
	return true
end

npcHandler:setCallback(CALLBACK_GREET, greetCallback)

npcHandler:setMessage(MESSAGE_FAREWELL, "Good bye, child.")

npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)

npcHandler:addModule(FocusModule:new())
