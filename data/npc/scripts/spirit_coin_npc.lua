local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)

local shop = { -- 120 gps 1 Spirit Coin
	{id=6089, buy=5, sell=0, name='Kresch Plant'},
	{id=6387, buy=4, sell=0, name='Hemp Leaves'},
	{id=6105, buy=1, sell=0, name='Marsh Plant'},
	{id=6547, buy=11, sell=0, name='Cantharellus'},
	{id=6548, buy=9, sell=0, name='Purple Cantharellus'},
	{id=6550, buy=8, sell=0, name='Delphinium'},
	{id=6556, buy=1, sell=0, name='Withered Grass'},
	{id=6557, buy=7, sell=0, name='Magic Leaf'},
	{id=7243, buy=1, sell=0, name='Rivercress Leaf'},
	{id=7244, buy=3, sell=0, name='Twistcress Leaf'},
	{id=7245, buy=1, sell=0, name='Shellbed Leaf'},
	{id=7246, buy=8, sell=0, name='Autumn Leaves'},
	{id=7247, buy=2, sell=0, name='Three Leaf Clover'},
	{id=7248, buy=3, sell=0, name='Laurel Leaf'},
	{id=7286, buy=9, sell=0, name='Amanite'},
	{id=8267, buy=2, sell=0, name='Boletus'},
	{id=8584, buy=2, sell=0, name='Cave Mushroom'},
	{id=8694, buy=2, sell=0, name='Laurel Plant'},
	{id=9002, buy=7, sell=0, name='Underwater Plant'},
	{id=2236, buy=6, sell=0, name='Cactus Leaf'},
	{id=9675, buy=2, sell=0, name='Herbaceous Root'},
	
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
		if player:addItem(26315, amount* itemsTable[item].sell, amount* itemsTable[item].sell) then
			return player:sendTextMessage(MESSAGE_TRADE,
						"Sell "..amount.."x "..itemsTable[item].name.." for "..amount* itemsTable[item].sell.." Spirit Coins.")
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
		npcHandler:say("You can buy herbalist materials for some Spirit Coins.", cid)
	end
	return true
end





npcHandler:setCallback(CALLBACK_ONADDFOCUS, onAddFocus)
npcHandler:setCallback(CALLBACK_ONRELEASEFOCUS, onReleaseFocus)

npcHandler:setCallback(CALLBACK_GREET, greetCallback)
npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())

