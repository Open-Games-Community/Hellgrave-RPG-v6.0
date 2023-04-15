local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)

local shop = { -- 2.600 gps 1 Darkness Coin
	{id=10097, buy=3, sell=0, name='Water Relic'},
	{id=2087, buy=3, sell=0, name='Relic of Venom'},
	{id=10074, buy=6, sell=0, name='Relic of Nature'},
	{id=10072, buy=17, sell=0, name='Necromancer Relic'},
	{id=10096, buy=17, sell=0, name='Elemental Relic'},
	{id=10073, buy=26, sell=0, name='Relic of Benediction'},
	{id=10075, buy=31, sell=0, name='Relic of Cosmos'},
	{id=10071, buy=33, sell=0, name='Mirror Relic'},
	{id=10089, buy=41, sell=0, name='Relic of the Sky'},
	{id=10092, buy=70, sell=0, name='Evil Relic'},
	{id=14350, buy=106, sell=0, name='Enigma Relic'},
	{id=18547, buy=123, sell=0, name='Celestial Relic'},
	{id=10119, buy=154, sell=0, name='Supremacy Relic'},
	{id=10090, buy=385, sell=0, name='Magma Relic'},
	{id=10099, buy=856, sell=0, name='Divine Relic'},
	{id=11428, buy=2, sell=0, name='Karma Arch'},
	{id=9676, buy=2, sell=0, name='Fire Artefact'},
	{id=9677, buy=4, sell=0, name='Arch of Riddles'},
	{id=9697, buy=8, sell=0, name='Orb of Nature'},
	{id=9696, buy=11, sell=0, name='Damnation Ark'},
	{id=9694, buy=14, sell=0, name='Hells Arch'},
	{id=9698, buy=27, sell=0, name='Orb of Misery'},
	{id=9693, buy=97, sell=0, name='Arch of Destruction'},
	{id=9699, buy=116, sell=0, name='Curse of Monolith'},
	{id=9735, buy=116, sell=0, name='Dream Catcher'},
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
		if player:addItem(26311, amount* itemsTable[item].sell, amount* itemsTable[item].sell) then
			return player:sendTextMessage(MESSAGE_TRADE,
						"Sell "..amount.."x "..itemsTable[item].name.." for "..amount* itemsTable[item].sell.." Darkness Coins.")
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
		npcHandler:say("You can buy relics and artefacts with Darkness Coins.", cid)
	end
	return true
end





npcHandler:setCallback(CALLBACK_ONADDFOCUS, onAddFocus)
npcHandler:setCallback(CALLBACK_ONRELEASEFOCUS, onReleaseFocus)

npcHandler:setCallback(CALLBACK_GREET, greetCallback)
npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())

