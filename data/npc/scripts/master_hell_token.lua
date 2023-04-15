local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)

local shop = {
	{id=34843, buy=0, sell=6, name='Covenant Helmet'},
	{id=34844, buy=0, sell=6, name='Covenant Armor'},
	{id=35061, buy=0, sell=4, name='Covenant Legs'},
	{id=35062, buy=0, sell=3, name='Covenant Boots'},
	{id=34641, buy=0, sell=3, name='Malachite Club'},
	{id=34642, buy=0, sell=3, name='Malachite Sword'},
	{id=34644, buy=0, sell=3, name='Malachite Axe'},
	{id=34806, buy=0, sell=2, name='Graviton Crossbow'},
	{id=34807, buy=0, sell=2, name='The Face Crusher'},
	{id=35044, buy=0, sell=2, name='Vorpal Flame'},
	{id=41916, buy=0, sell=3, name='Elven Hood Helmet'},
	{id=41917, buy=0, sell=4, name='Elven Hood Armor'},
	{id=41918, buy=0, sell=3, name='Elven Hood Legs'},
	{id=41919, buy=0, sell=2, name='Elven Hood Boots'},
	{id=41920, buy=0, sell=5, name='Ice Hitter Helmet'},
	{id=41921, buy=0, sell=3, name='Frozen Helmet'},
	{id=41922, buy=0, sell=2, name='Frozen Armor'},
	{id=41923, buy=0, sell=2, name='Frozen Legs'},
	{id=41924, buy=0, sell=1, name='Frozen Boots'},
	{id=41756, buy=0, sell=2, name='Vinguard Helmet'},
	{id=41757, buy=0, sell=2, name='Vinguard Armor'},
	{id=41758, buy=0, sell=2, name='Vinguard Legs'},
	{id=41708, buy=0, sell=1, name='Vinguard Boots'},
	{id=41709, buy=0, sell=3, name='Glorious Helmet'},
	{id=41710, buy=0, sell=3, name='Glorious Plate'},
	{id=41711, buy=0, sell=3, name='Glorious Legs'},
	{id=41687, buy=0, sell=2, name='Glorious Boots'},
	{id=41685, buy=0, sell=6, name='Warfront Helmet'},
	{id=41686, buy=0, sell=6, name='Warfront Armor'},
	{id=41567, buy=0, sell=6, name='Warfront Legs'},
	{id=41568, buy=0, sell=5, name='Warfront Boots'},
	{id=41569, buy=0, sell=5, name='Fanged Slayer Helmet'},
	{id=41570, buy=0, sell=6, name='Fanged Slayer Armor'},
	{id=41571, buy=0, sell=6, name='Fanged Slayer Legs'},
	{id=41572, buy=0, sell=6, name='Fanged Slayer Boots'},
	{id=41573, buy=0, sell=7, name='Regalia of Bound Helmet'},
	{id=41574, buy=0, sell=9, name='Regalia of Bound Armor'},
	{id=41575, buy=0, sell=7, name='Regalia of Bound Legs'},
	{id=41576, buy=0, sell=9, name='Regalia of Bound Shield'},
	{id=41577, buy=0, sell=6, name='Regalia of Bound Boots'},
	{id=41462, buy=0, sell=7, name='Starkoh Quiver'},
	{id=41465, buy=0, sell=4, name='Onslaught Helmet'},
	{id=41466, buy=0, sell=6, name='Onslaught Armor'},
	{id=41467, buy=0, sell=4, name='Onslaught Legs'},
	{id=41468, buy=0, sell=3, name='Onslaught Boots'},
	{id=36809, buy=0, sell=2, name='Scourgelord Shield'},
	{id=36857, buy=0, sell=3, name='Tentacle Sword'},
	{id=36866, buy=0, sell=3, name='Tentacle Mace'},
	{id=36865, buy=0, sell=3, name='Tentacle Helmet'},
	{id=36864, buy=0, sell=3, name='Tentacle Armor'},
	{id=36863, buy=0, sell=4, name='Tentacle Legs'},
	{id=36862, buy=0, sell=3, name='Tentacle Bow'},
	{id=36861, buy=0, sell=2, name='Tentacle Boots'},
	{id=36860, buy=0, sell=3, name='Tentacle Spellbook'},
	{id=36859, buy=0, sell=3, name='Tentacle Axe'},
	{id=36858, buy=0, sell=3, name='Tentacle Wand'},
	{id=41473, buy=0, sell=3, name='Scouting Helmet'},
	{id=41475, buy=0, sell=4, name='Scouting Armor'},
	{id=41476, buy=0, sell=3, name='Scouting Legs'},
	{id=41477, buy=0, sell=2, name='Scouting Boots'},
	{id=41674, buy=0, sell=10, name='Wrath of the Lich Helmet'},
	{id=41455, buy=0, sell=4, name='Lightbringer Helmet'},
	{id=41453, buy=0, sell=6, name='Lightbringer Armor'},
	{id=39239, buy=0, sell=5, name='Lightbringer Legs'},
	{id=39240, buy=0, sell=3, name='Lightbringer Boots'},
	{id=39241, buy=0, sell=3, name='Lightbringer Backpack'},
	{id=39242, buy=0, sell=5, name='Lightbringer Shield'},
	{id=39252, buy=0, sell=3, name='Lightforged Backpack'},
	{id=39253, buy=0, sell=6, name='Lightforged Cask'},
	{id=39254, buy=0, sell=6, name='Lightforged Plate'},
	{id=39255, buy=0, sell=5, name='Lightforged Pants'},
	{id=39256, buy=0, sell=3, name='Lightforged Boots'},
	{id=39257, buy=0, sell=6, name='Lightforged Crown'},
	{id=39258, buy=0, sell=3, name='Lightforged Mesh Boots'},
	{id=39259, buy=0, sell=3, name='Darkshore Backpack'},
	{id=39260, buy=0, sell=4, name='Darkshore Helmet'},
	{id=39261, buy=0, sell=5, name='Darkshore Armor'},
	{id=39262, buy=0, sell=4, name='Darkshore Legs'},
	{id=39263, buy=0, sell=3, name='Darkshore Boots'},
	{id=39272, buy=0, sell=4, name='Guardless Axe'},
	{id=39273, buy=0, sell=6, name='Alchemist Backpack'},
	{id=39280, buy=0, sell=3, name='Sky Crystal Backpack'},
	{id=39281, buy=0, sell=5, name='Darkshore Sword'},
	{id=39282, buy=0, sell=5, name='Darkshore Axe'},
	{id=39283, buy=0, sell=5, name='Darkshore Wand'},
	{id=39284, buy=0, sell=5, name='Darkshore Bow'},
	{id=39285, buy=0, sell=5, name='Darkshore Rod'},
	{id=39286, buy=0, sell=5, name='Lightforged Sword'},
	{id=39288, buy=0, sell=5, name='Lightforged Axe'},
	{id=39287, buy=0, sell=5, name='Lightforged Club'},
	{id=39289, buy=0, sell=5, name='Darkshore Club'},
	{id=39290, buy=0, sell=5, name='Darkshore Elven Bow'},
	{id=39215, buy=0, sell=7, name='Divine Wand'},
	{id=39216, buy=0, sell=7, name='Divine Axe'},
	{id=39217, buy=0, sell=7, name='Divine Mace'},
	{id=39218, buy=0, sell=7, name='Divine Sword'},
	{id=39219, buy=0, sell=7, name='Divine Bow'},
	{id=12508, buy=0, sell=8, name='Obscurus Helmet'},
	{id=39220, buy=0, sell=7, name='Obscurus Sword'},
	{id=39221, buy=0, sell=7, name='Obscurus Bow'},
	{id=39222, buy=0, sell=7, name='Obscurus Mace'},
	{id=38138, buy=0, sell=7, name='Obscurus Axe'},
	{id=41786, buy=0, sell=4, name='Megalithe Backpack'},
	{id=41787, buy=0, sell=8, name='Megalithe Slayer'},
	{id=41788, buy=0, sell=8, name='Megalithe Sword'},
	{id=41789, buy=0, sell=8, name='Megalithe Scythe'},
	{id=41790, buy=0, sell=8, name='Megalithe Hammer'},
	{id=41791, buy=0, sell=8, name='Megalithe Axe'},
	{id=41774, buy=0, sell=7, name='Cruels Gladiator Helmet'},
	{id=41775, buy=0, sell=4, name='Cruels Gladiator Backpack'},
	{id=41776, buy=0, sell=8, name='Cruels Gladiator Armor'},
	{id=41777, buy=0, sell=7, name='Cruels Gladiator Legs'},
	{id=41778, buy=0, sell=9, name='Cruels Gladiator Rod'},
	{id=41779, buy=0, sell=9, name='Cruels Gladiator Wand'},
	{id=41781, buy=0, sell=9, name='Cruels Gladiator Bow'},
	{id=41782, buy=0, sell=9, name='Cruels Gladiator Crossbow'},
	{id=41783, buy=0, sell=5, name='Cruels Gladiator Boots'},
	{id=41784, buy=0, sell=7, name='Cruels Gladiator Shield'},
	{id=40695, buy=0, sell=8, name='Radiant Helmet'},
	{id=40696, buy=0, sell=10, name='Radiant Armor'},
	{id=40697, buy=0, sell=9, name='Radiant Crossbow'},
	{id=40698, buy=0, sell=9, name='Radiant Legs'},
	{id=40699, buy=0, sell=7, name='Radiant Boots'},
	{id=40700, buy=0, sell=5, name='Radiant Backpack'},
	{id=40724, buy=0, sell=6, name='Vanguard Shield'},
	{id=40725, buy=0, sell=3, name='Vanguard Backpack'},
	{id=40726, buy=0, sell=3, name='Vanguard Boots'},
	{id=40731, buy=0, sell=6, name='Vanguard Sword'},
	{id=40732, buy=0, sell=6, name='Vanguard Mace'},
	{id=40733, buy=0, sell=6, name='Vanguard Wand'},
	{id=40734, buy=0, sell=6, name='Vanguard Bow'},
	{id=40735, buy=0, sell=15, name='Infernatil Helmet'},
	{id=39855, buy=0, sell=15, name='Vengeful Spellbook'},
	{id=39857, buy=0, sell=11, name='Tyrant Spellbook'},
	{id=39407, buy=0, sell=7, name='Kirin Wand'},
	{id=39408, buy=0, sell=7, name='Kirin Club'},
	{id=39409, buy=0, sell=7, name='Kirin Axe'},
	{id=39410, buy=0, sell=7, name='Kirin Sword'},
	{id=39411, buy=0, sell=3, name='Kirin Backpack'},
	{id=39412, buy=0, sell=7, name='Kirin Scythe'},
	{id=39424, buy=0, sell=6, name='Kirin Helmet'},
	{id=39425, buy=0, sell=8, name='Kirin Armor'},
	{id=39426, buy=0, sell=6, name='Kirin Legs'},
	{id=39427, buy=0, sell=6, name='Kirin Shield'},
	{id=34631, buy=0, sell=8, name='Frost Bow'},
	{id=34632, buy=0, sell=8, name='Frost Axe'},
	{id=36810, buy=0, sell=8, name='Vindictive Sword'},
	{id=36953, buy=0, sell=4, name='Judgement Legs'},
	{id=36954, buy=0, sell=5, name='Judgement Armor'},
	{id=36955, buy=0, sell=2, name='Judgement Boots'},
	{id=36956, buy=0, sell=4, name='Judgement Helmet'},
	{id=34842, buy=0, sell=3, name='Halloween Backpack'},
	{id=7491, buy=0, sell=3, name='Emeraude Ring'},
	{id=7492, buy=0, sell=3, name='Emeraude Amulet'},
	{id=8712, buy=0, sell=3, name='Labradorite Amulet'},
	{id=8713, buy=0, sell=3, name='Labradorite Ring'},
	{id=8711, buy=0, sell=3, name='Sapphire Ring'},
}

local function setNewTradeTable(table)
	local items, item = {}
	for i = 1, #table do
		item = table[i]
		items[item.id] = {id = item.id, buy = item.buy, sell = item.sell, subType = 0, name = item.name}
	end
	return items
end

local function onBuy(cid, item, subType, amount, ignoreCap, inBackpacks)
	local player = Player(cid)
	local itemsTable = setNewTradeTable(shop)
	if not ignoreCap and player:getFreeCapacity() < ItemType(itemsTable[item].id):getWeight(amount) then
		return player:sendTextMessage(MESSAGE_INFO_DESCR, "You don't have enough cap.")
	end
	if itemsTable[item].buy then
		if player:removeItem(Npc():getCurrency(), amount * itemsTable[item].buy) then
			if amount > 1 then
				currencyName = ItemType(Npc():getCurrency()):getPluralName():lower()
			else
				currencyName = ItemType(Npc():getCurrency()):getName():lower()
			end
			player:addItem(itemsTable[item].id, amount)
			return player:sendTextMessage(MESSAGE_INFO_DESCR,
						"Bought "..amount.."x "..itemsTable[item].name.." for "..itemsTable[item].buy * amount.." "..currencyName..".")
		else
			return player:sendTextMessage(MESSAGE_INFO_DESCR, "You don't have enough "..currencyName..".")
		end
	end
end

local function onSell(cid, item, subType, amount, ignoreCap, inBackpacks)
	local player = Player(cid)
	local itemsTable = setNewTradeTable(shop)
	if not ignoreCap and player:getFreeCapacity() < ItemType(itemsTable[item].id):getWeight(amount) then
		return player:sendTextMessage(MESSAGE_FAILURE, "You don't have enough cap.")
		end
		if player:removeItem(item, amount, 1, amount* itemsTable[item].sell) then
			end
		if player:addItem(42027, amount* itemsTable[item].sell, amount* itemsTable[item].sell) then
			return player:sendTextMessage(MESSAGE_TRADE,
						"Sell "..amount.."x "..itemsTable[item].name.." for "..amount* itemsTable[item].sell.." Hell Token.")
end
return true
end



local answerType = {}
local answerLevel = {}

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

local function greetCallback(cid)
	npcHandler.topic[cid] = 0
	return true
end

local function creatureSayCallback(cid, type, msg)
	if not npcHandler:isFocused(cid) then
		return false
	end

	local player = Player(cid)

	
	if msgcontains(msg, "Trade") then
		openShopWindow(cid, shop, onBuy, onSell)
		npcHandler:say("You can sell your looted equipments for some Hell Tokens.", cid)
	elseif msgcontains(msg, "fragment") or msgcontains(msg, "the fragment") then
		npcHandler:say("A precious fragment you have found, you are now member of the Ancestral team.", cid)
	end
	return true
end



local voices = { {text = 'Trade your loot for Hell Tokens!'} }
npcHandler:addModule(VoiceModule:new(voices))

npcHandler:setCallback(CALLBACK_ONADDFOCUS, onAddFocus)
npcHandler:setCallback(CALLBACK_ONRELEASEFOCUS, onReleaseFocus)

npcHandler:setCallback(CALLBACK_GREET, greetCallback)
npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())
