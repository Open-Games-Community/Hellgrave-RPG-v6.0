local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)

local shop = { -- 3500 gps 1 Endless Coin
	{id=8190, buy=3, sell=0, name='Lava Stomach'},
	{id=10142, buy=3, sell=0, name='Elder Dragon Tail'},
	{id=10943, buy=1, sell=0, name='Protruding Eyes'},
	{id=10158, buy=43, sell=0, name='Mysterious Scroll'},
	{id=10944, buy=6, sell=0, name='Dragon Egg'},
	{id=10945, buy=3, sell=0, name='Scorpion Tail'},
	{id=11106, buy=4, sell=0, name='Luminous Insect'},
	{id=11135, buy=2, sell=0, name='Blue Dragon Tail'},
	{id=26338, buy=3, sell=0, name='Evil Dragon Wing'},
	{id=12295, buy=100, sell=0, name='Mistery Coin'},
	{id=12297, buy=4, sell=0, name='Rare Bird Feather'},
	{id=12300, buy=2, sell=0, name='Mystic Feather'},
	{id=12303, buy=1, sell=0, name='Sky Feather'},
	{id=12289, buy=4, sell=0, name='Treasure Map'},
	{id=12290, buy=2, sell=0, name='Fragmented Treasure Map'},
	{id=10141, buy=26, sell=0, name='Glorious Elixir'},
	{id=11774, buy=3, sell=0, name='Sky Dragon Wing'},

	
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
		if player:addItem(26316, amount* itemsTable[item].sell, amount* itemsTable[item].sell) then
			return player:sendTextMessage(MESSAGE_TRADE,
						"Sell "..amount.."x "..itemsTable[item].name.." for "..amount* itemsTable[item].sell.." Endless Coins.")
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
		npcHandler:say("You can buy general materials for some Endless Coins.", cid)
	end
	return true
end





npcHandler:setCallback(CALLBACK_ONADDFOCUS, onAddFocus)
npcHandler:setCallback(CALLBACK_ONRELEASEFOCUS, onReleaseFocus)

npcHandler:setCallback(CALLBACK_GREET, greetCallback)
npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())

