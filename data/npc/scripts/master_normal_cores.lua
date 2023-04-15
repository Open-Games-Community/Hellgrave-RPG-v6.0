local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)

local shop = {
	{id=10159, buy=0, sell=1, name='Forest Emblem'},
	{id=10165, buy=0, sell=2, name='Celestial Emblem'},
	{id=10166, buy=0, sell=1, name='Necromantic Emblem'},
	{id=10167, buy=0, sell=1, name='Damned Emblem'},
	{id=10170, buy=0, sell=1, name='Emblem of Blessing'},
	{id=10169, buy=0, sell=2, name='Emblem of Cosmos'},
	{id=10290, buy=0, sell=2, name='Venom Emblem'},
	{id=10291, buy=0, sell=1, name='Emblem of the Sky'},
	{id=10292, buy=0, sell=1, name='Nature Emblem'},
	{id=10293, buy=0, sell=2, name='Division Emblem'},
	{id=10294, buy=0, sell=1, name='Fountain of Youth Emblem'},
	{id=10295, buy=0, sell=2, name='Emblem of the People'},
	{id=10296, buy=0, sell=4, name='Supremacy Emblem'},
	{id=10297, buy=0, sell=2, name='Leaf Emblem'},
	{id=10298, buy=0, sell=5, name='Elemental Emblem'},
	{id=10299, buy=0, sell=3, name='Emblem of Magic'},
	{id=10300, buy=0, sell=4, name='Demoniac Emblem'},
	{id=10301, buy=0, sell=6, name='Divine Emblem'},
	{id=10289, buy=0, sell=2, name='Enigmatic Emblem'},
	{id=35200, buy=0, sell=4, name='Soulfire Helmet'},
	{id=35197, buy=0, sell=5, name='Evermoon Shield'},
	{id=35198, buy=0, sell=5, name='Evermoon Armor'},
	{id=35199, buy=0, sell=3, name='Evermoon Boots'},
	{id=35201, buy=0, sell=5, name='Evermoon Helmet'},
	{id=35202, buy=0, sell=5, name='Evermoon Legs'},
	{id=24332, buy=0, sell=2, name='Rod of Venom'},
	{id=20624, buy=0, sell=2, name='Frigost Wand'},
	{id=20625, buy=0, sell=5, name='Ghost Spellbook'},
	{id=33550, buy=0, sell=5, name='Bone Armor'},
	{id=41760, buy=0, sell=4, name='Dark Bone Shield'},
	{id=41761, buy=0, sell=4, name='Skull Shield of the Depth'},
	{id=41762, buy=0, sell=4, name='Skull Spellbook of the Depth'},
	{id=41556, buy=0, sell=4, name='Skull Helmet of the Depth'},
	{id=41480, buy=0, sell=4, name='Skull Armor of the Depth'},
	{id=41479, buy=0, sell=4, name='Skull Legs of the Depth'},
	{id=41474, buy=0, sell=2, name='Skull Boots of the Depth'},
	{id=41456, buy=0, sell=4, name='Skull Axe of the Depth'},
	{id=41454, buy=0, sell=4, name='Skull Hammer of the Depth'},
	{id=41452, buy=0, sell=4, name='Skull Bow of the Depth'},
	{id=41451, buy=0, sell=4, name='Skull Crossbow of the Depth'},
	{id=41450, buy=0, sell=8, name='Eagletalon Axe'},
	{id=41449, buy=0, sell=8, name='Eagletalon Bow'},
	{id=39183, buy=0, sell=8, name='Eagletalon Club'},
	{id=39184, buy=0, sell=8, name='Eagletalon Sword'},
	{id=41448, buy=0, sell=4, name='Dreadwake Helmet'},
	{id=41438, buy=0, sell=4, name='Dreadwake Armor'},
	{id=41428, buy=0, sell=4, name='Dreadwake Legs'},
	{id=41427, buy=0, sell=3, name='Dreadwake Boots'},
	{id=41313, buy=0, sell=4, name='Dreadwake Shield'},
	{id=41314, buy=0, sell=4, name='Dreadwake Sword'},
	{id=41315, buy=0, sell=4, name='Dreadwake Axe'},
	{id=41316, buy=0, sell=4, name='Dreadwake Club'},
	{id=40959, buy=0, sell=4, name='Dreadwake Bow'},
	{id=39180, buy=0, sell=4, name='Skull Wand of the Depth'},
	{id=39181, buy=0, sell=6, name='Tentugly\'s Armor'},
	{id=39182, buy=0, sell=5, name='Tentugly\'s Legs'},
	{id=40855, buy=0, sell=8, name='Tentugly\'s Wand'},
	{id=41485, buy=0, sell=5, name='Tentugly\'s Spellbook'},
	{id=39190, buy=0, sell=4, name='Wrath of Nature'},
	{id=39191, buy=0, sell=4, name='Spark of Demeter'},
	{id=39192, buy=0, sell=4, name='Enlighted of Dryad\'s'},
	{id=40786, buy=0, sell=4, name='Frozen Hell'},
	{id=41888, buy=0, sell=8, name='Bonelord Tome'},
	{id=41813, buy=0, sell=8, name='Magic Helmet'},
	{id=12505, buy=0, sell=6, name='Ornamented Helmet'},
	{id=12506, buy=0, sell=6, name='Ornamented Armor'},
	{id=12507, buy=0, sell=6, name='Ornamented Legs'},
	
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
		if player:addItem(41945, amount* itemsTable[item].sell, amount* itemsTable[item].sell) then
			return player:sendTextMessage(MESSAGE_TRADE,
						"Sell "..amount.."x "..itemsTable[item].name.." for "..amount* itemsTable[item].sell.." Core.")
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
		npcHandler:say("You can sell your looted equipments for some Cores.", cid)
	end
	return true
end





npcHandler:setCallback(CALLBACK_ONADDFOCUS, onAddFocus)
npcHandler:setCallback(CALLBACK_ONRELEASEFOCUS, onReleaseFocus)

npcHandler:setCallback(CALLBACK_GREET, greetCallback)
npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())
