local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)

local shop = { -- 100 gps ~ 1 Loot coin approximation
	{id=30697, buy=1, sell=0, name='fox paw'},
	{id=30698, buy=2, sell=0, name='werefox tail'},
	{id=38778, buy=2, sell=0, name='werehyaena nose'},
	{id=38779, buy=3, sell=0, name='werehyaena talisman'},
	{id=12403, buy=3, sell=0, name='battle stone'},
	{id=12400, buy=1, sell=0, name='protective charm'},
	{id=11228, buy=4, sell=0, name='sabretooth'},
	{id=25384, buy=11, sell=0, name='vexclaw talon'},
	{id=10602, buy=3, sell=0, name='vampire teeth'},
	{id=10550, buy=2, sell=0, name='bloody pincers'},
	{id=10580, buy=4, sell=0, name='piece of dead brain'},
	{id=12448, buy=1, sell=0, name='rope belt'},
	{id=22534, buy=4, sell=0, name='silencer claws'},
	{id=25386, buy=12, sell=0, name='grimeleech wings'},
	{id=10574, buy=1, sell=0, name='cyclops toe'},
	{id=24845, buy=2, sell=0, name='ogre nose ring'},
	{id=11322, buy=2, sell=0, name='warmaster\'s wristguards'},
	{id=10558, buy=1, sell=0, name='piece of scarab shell'},
	{id=12659, buy=2, sell=0, name='brimstone shell'},
	{id=22533, buy=4, sell=0, name='frazzle skin'},
	{id=11113, buy=1, sell=0, name='orc tooth'},
	{id=38780, buy=3, sell=0, name='ivory carving'},
	{id=23571, buy=1, sell=0, name='moohtant horn'},
	{id=10552, buy=1, sell=0, name='elvish talisman'},
	{id=12408, buy=1, sell=0, name='broken shamanic staff'},
	{id=11226, buy=6, sell=0, name='strand of medusa hair'},
	{id=12420, buy=1, sell=0, name='elven scouting glass'},
	{id=21311, buy=1, sell=0, name='elven hoof'},
	{id=11215, buy=3, sell=0, name='metal spike'},
	{id=10608, buy=1, sell=0, name='lion\'s mane'},
	{id=23573, buy=1, sell=0, name='mooh\'tah shell'},
	{id=10571, buy=4, sell=0, name='war crystal'},
	{id=28999, buy=3, sell=0, name='fairy wings'},
	{id=29007, buy=5, sell=0, name='little bowl of myrrh'},
	{id=22539, buy=6, sell=0, name='goosebump leather'},	
	{id=19738, buy=1, sell=0, name='damselfly wings'},
	{id=11219, buy=1, sell=0, name='compass'},
	{id=15484, buy=2, sell=0, name='waspoid wing'},
	{id=24709, buy=2, sell=0, name='wereboar hooves'},
	{id=26163, buy=4, sell=0, name='crystallized anger'},
	{id=33314, buy=11, sell=0, name='quill'},
	{id=21310, buy=1, sell=0, name='rorc feather'},
	{id=24631, buy=3, sell=0, name='peacock feather fan'},
	{id=26164, buy=3, sell=0, name='energy vein'},
	{id=10578, buy=3, sell=0, name='frosty heart'},
	{id=24170, buy=3, sell=0, name='seacrest hair'},
	{id=10567, buy=1, sell=0, name='polar bear paw'},
	{id=12440, buy=1, sell=0, name='pile of grave earth'},
	{id=10564, buy=1, sell=0, name='demonic skeletal hand'},
	{id=11337, buy=2, sell=0, name='petrified scream'},
	{id=10553, buy=4, sell=0, name='fiery heart'},
	{id=5920, buy=1, sell=0, name='green dragon scale'},
	{id=5954, buy=10, sell=0, name='demon horn'},
	{id=10603, buy=1, sell=0, name='swamp grass'},
	{id=10557, buy=1, sell=0, name='poisonous slime'},
	{id=23565, buy=2, sell=0, name='slime heart'},
	{id=10561, buy=3, sell=0, name='wyvern talisman'},
	{id=15482, buy=2, sell=0, name='crawler head plating'},
	{id=10582, buy=4, sell=0, name='wyrm scale'},
	{id=10556, buy=1, sell=0, name='cultish robe'},
	{id=10555, buy=3, sell=0, name='cultish mask'},
	{id=11221, buy=5, sell=0, name='hellspawn tail'},
	{id=5877, buy=1, sell=0, name='green dragon leather'},
	{id=18425, buy=6, sell=0, name='blazing bone'},
	{id=12614, buy=6, sell=0, name='draken sulphur'},
	{id=12422, buy=1, sell=0, name='flask of embalming fluid'},
	{id=24663, buy=1, sell=0, name='gloom wolf fur'},
	{id=10577, buy=7, sell=0, name='mystical hourglass'},
	{id=11212, buy=1, sell=0, name='winter wolf fur'},
	{id=11224, buy=1, sell=0, name='thick fur'},
	{id=15425, buy=2, sell=0, name='deepling warts'},
	{id=20103, buy=1, sell=0, name='piece of swampling wood'},
	{id=10611, buy=4, sell=0, name='snake skin'},
	{id=12658, buy=4, sell=0, name='brimstone fangs'},
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
		if player:addItem(26310, amount* itemsTable[item].sell, amount* itemsTable[item].sell) then
			return player:sendTextMessage(MESSAGE_TRADE,
						"Sell "..amount.."x "..itemsTable[item].name.." for "..amount* itemsTable[item].sell.." Loot Coins.")
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
		npcHandler:say("You can buy imbuements materials with Loot Coins.", cid)
	end
	return true
end





npcHandler:setCallback(CALLBACK_ONADDFOCUS, onAddFocus)
npcHandler:setCallback(CALLBACK_ONRELEASEFOCUS, onReleaseFocus)

npcHandler:setCallback(CALLBACK_GREET, greetCallback)
npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())

