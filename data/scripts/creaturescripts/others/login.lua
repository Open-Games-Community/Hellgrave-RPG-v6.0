local function onMovementRemoveProtection(cid, oldPos, time)
	local player = Player(cid)
	if not player then
		return true
	end

	local playerPos = player:getPosition()
	if (playerPos.x ~= oldPos.x or playerPos.y ~= oldPos.y or playerPos.z ~= oldPos.z) or player:getTarget() then
		player:setStorageValue(Storage.combatProtectionStorage, 0)
		return true
	end

	addEvent(onMovementRemoveProtection, 1000, cid, oldPos, time - 1)
end

local function protectionZoneCheck(playerName)
    doRemoveCreature(playerName)
    return true
end

local playerLogin = CreatureEvent("PlayerLogin")
GameStore.SendingPackets = {
	S_CoinBalance = 0xDF, -- 223
	S_StoreError = 0xE0, -- 224
	S_RequestPurchaseData = 0xE1, -- 225
	S_CoinBalanceUpdating = 0xF2, -- 242
	S_OpenStore = 0xFB, -- 251
	S_StoreOffers = 0xFC, -- 252
	S_OpenTransactionHistory = 0xFD, -- 253
	S_CompletePurchase = 0xFE  -- 254
}

GameStore.RecivedPackets = {
	C_StoreEvent = 0xE9, -- 233
	C_TransferCoins = 0xEF, -- 239
	C_ParseHirelingName = 0xEC, -- 236
	C_OpenStore = 0xFA, -- 250
	C_RequestStoreOffers = 0xFB, -- 251
	C_BuyStoreOffer = 0xFC, -- 252
	C_OpenTransactionHistory = 0xFD, -- 253
	C_RequestTransactionHistory = 0xFE, -- 254
}

function playerLogin.onLogin(player)
	local items = {
		{2120, 1},
		{2152, 15}
	}
	--- Do not change nothing here, until you know what you are doing ---
	--- Collection --- 
	local collection = {
		ornamentedH = 180001,
		ornamentedA = 180002,
		ornamentedL = 180003,
		evermoonS = 180004,
		evermoonA = 180005,
		evermoonB = 180006,
		evermoonH = 180007,
		evermoonL = 180008,
		skullshield = 180009,
		skullspell = 180010,
		skullhel = 180011,
		skullarm = 180012,
		skulllegs = 180013,
		skullboots = 180014,
		skullaxe = 180015,
		skullhammer = 180016,
		skullbow = 180017,
		skullcross = 180018,
		skullwand = 180019,
		dreadH = 180020,
		dreadA = 180021,
		dreadL = 180022,
		dreadB = 180023,
		dreadSh = 180024,
		dreadS = 180025,
		dreadAxe = 180026,
		dreadC = 180027,
		dreadBow = 180028,
		spiritA = 180029,
		spiritH = 180030,
		alicoH = 180031,
		arcaRega = 180032,
		arborCro = 180033,
		nagaS = 180034,
		nagaA = 180035,
		nagaC = 180036,
		frotFlo = 180037,
		nagaCross = 180038,
		feverB = 180039,
		nagaW = 180040,
		nagaR = 180041,
		dawnfireS = 180042,
		midnightT = 180043,
		dawnfireP = 180044,
		midnightS = 180045,
		arborealT = 180046,
		arcanomancerF = 180047,
		anubisL = 180048,
		anubisA = 180049,
		anubisB = 180050,
		norhtrenH = 180051,
		northrenL = 180052,
		screedL = 180053,
		screedA = 180054,
		bronzeB = 180055,
		mummyB = 180056,
		mummySpell = 180057,
		mummySki = 180058 		
	}
	-- Jobs --
	local herbalist = 45007
	local minning = 45001
	local woodcutter = 45005
	local skinning = 45003
	-- Identificator Skills --
	local rareIden = 31188
	local veryRareIden = 31168
	local epicIden = 31190
	local divineIden = 31184
	local masterIden = 31186
	local craftinTable = 30568
	local legendaryCraft = 39447
	--- Upgrade Skills ---
	local normalUpgrade = 61114
	local magicUpgrade = 61116
	local slotUpgrade = 61118
	local chaosUpgrade = 61120
	local transcendingUpgrade = 61122
	------ World Monster Hunter ---
	local worldMonsterHunter = 95007
	local eggHunter = 70814

	if player:getLastLoginSaved() == 0 then
		player:sendOutfitWindow()
		-- Paragon & Prestige & Gear Score --
		player:setStorageValue(Storage.Levels.Stats.Parangon, 0)
		player:setStorageValue(Storage.Levels.Stats.GearScore, 0)
		player:setStorageValue(Storage.Levels.Stats.Prestige, 0)
		player:setStorageValue(Storage.Levels.Stats.Chaos, 0)
		--- Jobs ---
		player:setStorageValue(herbalist, 0)
		player:setStorageValue(minning, 0)
		player:setStorageValue(woodcutter, 0)
		player:setStorageValue(skinning, 0)
		--- Identificator Skills ---
		player:setStorageValue(rareIden, 0)
		player:setStorageValue(veryRareIden, 0)
		player:setStorageValue(epicIden, 0)
		player:setStorageValue(divineIden, 0)
		player:setStorageValue(masterIden, 0)
		---- Crafting ---
		player:setStorageValue(craftinTable, 0)
		player:setStorageValue(legendaryCraft, 0)
		--- Upgrade ---
		player:setStorageValue(normalUpgrade, 0)
		player:setStorageValue(magicUpgrade, 0)
		player:setStorageValue(slotUpgrade, 0)
		player:setStorageValue(chaosUpgrade, 0)
		player:setStorageValue(transcendingUpgrade, 0)
		--------- world monster Hunter ---
		player:setStorageValue(worldMonsterHunter, 0)
		player:setStorageValue(eggHunter, 0)
		---------------- Collection for talkaction show 0/1 and not -1 / 1.------
		player:setStorageValue(collection.ornamentedA, 0)
		player:setStorageValue(collection.ornamentedH, 0)
		player:setStorageValue(collection.ornamentedL, 0)
		player:setStorageValue(collection.evermoonA, 0)
		player:setStorageValue(collection.evermoonB, 0)
		player:setStorageValue(collection.evermoonH, 0)
		player:setStorageValue(collection.evermoonL, 0)
		player:setStorageValue(collection.evermoonS, 0)
		player:setStorageValue(collection.skullshield, 0)
		player:setStorageValue(collection.skullspell, 0)
		player:setStorageValue(collection.skullhel, 0)
		player:setStorageValue(collection.skullarm, 0)
		player:setStorageValue(collection.skulllegs, 0)
		player:setStorageValue(collection.skullboots, 0)
		player:setStorageValue(collection.skullaxe, 0)
		player:setStorageValue(collection.skullhammer, 0)
		player:setStorageValue(collection.skullbow, 0)
		player:setStorageValue(collection.skullcross, 0)
		player:setStorageValue(collection.skullwand, 0)
		player:setStorageValue(collection.dreadA, 0)
		player:setStorageValue(collection.dreadH, 0)
		player:setStorageValue(collection.dreadL, 0)
		player:setStorageValue(collection.dreadB, 0)
		player:setStorageValue(collection.dreadSh, 0)
		player:setStorageValue(collection.dreadS, 0)
		player:setStorageValue(collection.dreadAxe, 0)
		player:setStorageValue(collection.dreadC, 0)
		player:setStorageValue(collection.dreadBow, 0)
		player:setStorageValue(collection.spiritA, 0)
		player:setStorageValue(collection.spiritH, 0)
		player:setStorageValue(collection.alicoH, 0)
		player:setStorageValue(collection.arcaRega, 0)
		player:setStorageValue(collection.arborCro, 0)
		player:setStorageValue(collection.nagaA, 0)
		player:setStorageValue(collection.nagaS, 0)
		player:setStorageValue(collection.nagaC, 0)
		player:setStorageValue(collection.frotFlo, 0)
		player:setStorageValue(collection.nagaCross, 0)
		player:setStorageValue(collection.feverB, 0)
		player:setStorageValue(collection.nagaW, 0)
		player:setStorageValue(collection.nagaR, 0)
		player:setStorageValue(collection.dawnfireS, 0)
		player:setStorageValue(collection.dawnfireP, 0)
		player:setStorageValue(collection.midnightS, 0)
		player:setStorageValue(collection.midnightT, 0)
		player:setStorageValue(collection.arborealT, 0)
		player:setStorageValue(collection.arcanomancerF, 0)
		player:setStorageValue(collection.anubisA, 0)
		player:setStorageValue(collection.anubisB, 0)
		player:setStorageValue(collection.anubisL, 0)
		player:setStorageValue(collection.norhtrenH, 0)
		player:setStorageValue(collection.northrenL, 0)
		player:setStorageValue(collection.screedA, 0)
		player:setStorageValue(collection.screedL, 0)
		player:setStorageValue(collection.bronzeB, 0)
		player:setStorageValue(collection.mummyB, 0)
		player:setStorageValue(collection.mummySki, 0)
		player:setStorageValue(collection.mummySpell, 0)
		-----------------------------------
		local backpack = player:addItem(1988)
		if backpack then
			for i = 1, #items do
				backpack:addItem(items[i][1], items[i][2])
			end
		end
		player:addItem(2050, 1, true, 1, CONST_SLOT_AMMO)
	else
		player:sendTextMessage(MESSAGE_STATUS_DEFAULT, "Welcome brave adventurer to " .. SERVER_NAME .. ", !")
		player:sendTextMessage(MESSAGE_STATUS_DEFAULT, string.format("Your last visit in ".. SERVER_NAME ..": %s.", os.date("%d. %b %Y %X", player:getLastLoginSaved())))
	end

	local playerId = player:getId()

	-- kick other players from account
	if configManager.getBoolean(configKeys.ONE_PLAYER_ON_ACCOUNT) then
		local resultId = db.storeQuery("SELECT players.name FROM `players` INNER JOIN `players_online` WHERE players_online.player_id=players.id and players_online.player_id!=" .. player:getGuid() .. " and players.account_id=" .. player:getAccountId())
		if resultId ~= false then
			repeat
				if player:getAccountType() <= ACCOUNT_TYPE_GOD and player:getGroup():getId() < GROUP_TYPE_GOD then
					local name = result.getDataString(resultId, "name")
					if getCreatureCondition(Player(name), CONDITION_INFIGHT) == false then
						Player(name):remove()
					else
						addEvent(protectionZoneCheck, 2000, player:getName())
						doPlayerPopupFYI(player, "You cant login now.")
					end
				end
			until not result.next(resultId)
				result.free(resultId)
		end
	end
	-- End kick other players from account
	if isPremium(player) then
		player:setStorageValue(Storage.PremiumAccount, 1)
	end
	-- Premium Ends Teleport to Temple, change addon (citizen) houseless
	local defaultTown = "Mordragor" -- default town where player is teleported if his home town is in premium area
	local freeTowns = {"Mordragor", "Mistfall"} -- towns in free account area

	if isPremium(player) == false and isInArray(freeTowns, player:getTown():getName()) == false then
		local town = player:getTown()
		local sex = player:getSex()
		local home = getHouseByPlayerGUID(getPlayerGUID(player))
		town = isInArray(freeTowns, town:getName()) and town or Town(defaultTown)
		player:teleportTo(town:getTemplePosition())
		player:setTown(town)
		player:sendTextMessage(MESSAGE_STATUS_WARNING, "Your premium time has expired.")
		player:setStorageValue(Storage.PremiumAccount, 0)
		if sex == 1 then
			player:setOutfit({lookType = 128, lookFeet = 114, lookLegs = 134, lookHead = 114,lookAddons = 0})
        elseif sex == 0 then
			player:setOutfit({lookType = 136, lookFeet = 114, lookLegs = 134, lookHead = 114, lookAddons = 0})
        end
        if home ~= nil and not isPremium(player) then
            setHouseOwner(home, 0)
            player:sendTextMessage(MESSAGE_STATUS_WARNING, 'You\'ve lost your house because you are not premium anymore.')
			player:sendTextMessage(MESSAGE_STATUS_WARNING, 'Your items from house are send to your inbox.')
        end
	end
	-- End 'Premium Ends Teleport to Temple'

	-- Recruiter system
	local resultId = db.storeQuery('SELECT `recruiter` from `accounts` where `id`='..getAccountNumberByPlayerName(getPlayerName(player)))
	local recruiterStatus = result.getNumber(resultId, 'recruiter')
	local sex = player:getSex()
	if recruiterStatus >= 1 then
		if sex == 1 then
			local outfit = player:hasOutfit(746)
			if outfit == false then
				player:addOutfit(746)
			end
		else
			local outfit = player:hasOutfit(745)
			if outfit == false then
				player:addOutfit(745)
			end
		end
	end
	if recruiterStatus >= 3 then
		if sex == 1 then
			local outfit = player:hasOutfit(746,1)
			if outfit == false then
				player:addOutfitAddon(746,1)
			end
		else
			local outfit = player:hasOutfit(745,1)
			if outfit == false then
				player:addOutfit(745,1)
			end
		end
	end
	if recruiterStatus >= 10 then
		if sex == 1 then
			local outfit = player:hasOutfit(746,2)
			if outfit == false then
				player:addOutfitAddon(746,2)
			end
		else
			local outfit = player:hasOutfit(745,2)
			if outfit == false then
				player:addOutfit(745,2)
			end
		end
	end
	-- End recruiter system

	DailyReward.init(playerId)

	player:loadSpecialStorage()

	if player:getGroup():getId() >= GROUP_TYPE_GAMEMASTER then
		player:setGhostMode(false)
	end
	-- Boosted creature
	player:sendTextMessage(MESSAGE_LOOT, "Today's boosted creature: " .. Game.getBoostedCreature() .. " \
	Boosted creatures yield more experience points, carry more loot than usual and respawn at a faster rate.")
	-- Message Information
    
	-- Stamina
	nextUseStaminaTime[playerId] = 1

	-- EXP Stamina
	nextUseXpStamina[playerId] = 1

	-- Prey Small Window
	for slot = CONST_PREY_SLOT_FIRST, CONST_PREY_SLOT_THIRD do
		player:sendPreyData(slot)
	end

	-- New prey
	nextPreyTime[playerId] = {
		[CONST_PREY_SLOT_FIRST] = 1,
		[CONST_PREY_SLOT_SECOND] = 1,
		[CONST_PREY_SLOT_THIRD] = 1
	}

	if (player:getAccountType() == ACCOUNT_TYPE_TUTOR) then
	local msg = [[:: Tutor Rules
		1 *> 3 Warnings you lose the job.
		2 *> Without parallel conversations with players in Help, if the player starts offending, you simply mute it.
		3 *> Be educated with the players in Help and especially in the Private, try to help as much as possible.
		4 *> Always be on time, if you do not have a justification you will be removed from the staff.
		5 *> Help is only allowed to ask questions related to tibia.
		6 *> It is not allowed to divulge time up or to help in quest.
		7 *> You are not allowed to sell items in the Help.
		8 *> If the player encounters a bug, ask to go to the website to send a ticket and explain in detail.
		9 *> Always keep the Tutors Chat open. (required).
		10 *> You have finished your schedule, you have no tutor online, you communicate with some CM in-game
		or ts and stay in the help until someone logs in, if you can.
		11 *> Always keep a good Portuguese in the Help, we want tutors who support, not that they speak a satanic ritual.
		12 *> If you see a tutor doing something that violates the rules, take a print and send it to your superiors. "
		- Commands -
		Mute Player: /mute nick, 90 (90 seconds)
		Unmute Player: /unmute nick.
		- Commands -]]
		player:popupFYI(msg)
	end

	-- Open channels
	if table.contains({TOWNS_LIST.KINDERNIA, TOWNS_LIST.KINDERNIA_TUTORIAL}, player:getTown():getId())then
		player:openChannel(3) -- World chat
	else
		player:openChannel(3) -- World chat
	end

	-- Rewards
	local rewards = #player:getRewardList()
	if(rewards > 0) then
		player:sendTextMessage(MESSAGE_INFO_DESCR, string.format("You have %d %s in your reward chest.",
		rewards, rewards > 1 and "rewards" or "reward"))
	end

	-- Update player id
	local stats = player:inBossFight()
	if stats then
		stats.playerId = player:getId()
	end

	if player:getStorageValue(Storage.combatProtectionStorage) < 1 then
		player:setStorageValue(Storage.combatProtectionStorage, 1)
		onMovementRemoveProtection(playerId, player:getPosition(), 10)
	end
	-- Set Client XP Gain Rate
	local baseExp = 100
	if Game.getStorageValue(GlobalStorage.XpDisplayMode) > 0 then
		baseExp = getRateFromTable(experienceStages, player:getLevel(), configManager.getNumber(configKeys.RATE_EXP))
	end

	local staminaMinutes = player:getStamina()
	local doubleExp = false --Can change to true if you have double exp on the server
	local staminaBonus = (staminaMinutes > 2340) and 150 or ((staminaMinutes < 840) and 50 or 100)
	if doubleExp then
		baseExp = baseExp * 2
	end
	player:setStaminaXpBoost(staminaBonus)
	player:setBaseXpGain(baseExp)

	if player:getStorageValue(Storage.isTraining) == 1 then --Reset exercise weapon storage
		player:setStorageValue(Storage.isTraining,0)
	end
	return true
end
playerLogin:register()
