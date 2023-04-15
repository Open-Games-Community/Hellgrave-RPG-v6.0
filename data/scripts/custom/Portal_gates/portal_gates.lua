local demoniacPortal = {
	-- Ab'dendriel
	[1] = {
		city = "Echtelion",
		mapName = "echtelion",
		exitPosition = Position(32841, 32862, 7)
	},
	[2] = {
		city = "Rivendell",
		mapName = "rivendell",
		exitPosition = Position(33347, 32975, 7)
	},
	[3] = {
		city = "Dwalling",
		mapName = "dwalling",
		exitPosition = Position(33020, 33143, 7)
	},
}

local function Portalswebhook(message)	
	Webhook.send("Demoniac Portals: ", message, WEBHOOK_COLOR_ONLINE)	
end


local demoniacPortals = GlobalEvent("demoniacPortals")

function demoniacPortals.onStartup(interval)
	local gateId = math.random(1, 3)

	if demoniacPortal[gateId].burntItems then
		local item
		for i = 1, #demoniacPortal[gateId].burntItems do
			item = Tile(demoniacPortal[gateId].burntItems[i].position):getItemById(demoniacPortal[gateId].burntItems[i].itemId)
			if item then
				item:remove()
			end
		end
	end

	Game.loadMap('data/world/portals/' .. demoniacPortal[gateId].mapName .. '.otbm')

	setGlobalStorageValue(GlobalStorage.FuryGates, gateId)

	Spdlog.info(string.format("Demoniac Portal will be active in %s today on Arkeron.",
	demoniacPortal[gateId].city))
	local message = (string.format("Demoniac Portal will be active in %s today on Arkeron.",
	demoniacPortal[gateId].city))	
	addEvent(Portalswebhook, 60000, message)	

	return true
end

demoniacPortals:register()

local teleport = MoveEvent()

local portalReq = {
	chaos = 50,
	prestige = 25,
	gearScore = 10000
}
function teleport.onStepIn(creature, item, position, fromPosition)
	local player = creature:getPlayer()
	if not player then
		return true
	end

	local portalId = Game.getStorageValue(GlobalStorage.FuryGates)

	if not demoniacPortal[portalId] then
		return true
	end

	position:sendMagicEffect(CONST_ME_TELEPORT)

	if item.actionid == 22710 then
		if player:getStorageValue(Storage.Levels.Stats.Chaos) < portalReq.chaos then
			player:say("You need at least Chaos Level 50 to enter on portal.", TALKTYPE_MONSTER_SAY, false, player, fromPosition)
			player:teleportTo(fromPosition)
			fromPosition:sendMagicEffect(CONST_ME_TELEPORT)
			return true
		elseif player:getStorageValue(Storage.Levels.Stats.Prestige) < portalReq.prestige then
			player:say("You need at least Prestige 25 to enter on portal.", TALKTYPE_MONSTER_SAY, false, player, fromPosition)
			player:teleportTo(fromPosition)
			fromPosition:sendMagicEffect(CONST_ME_TELEPORT)	
		elseif player:getStorageValue(Storage.Levels.Stats.GearScore) < portalReq.gearScore then
			player:say("You need at least Gear Score 10000 to enter on this portal.", TALKTYPE_MONSTER_SAY, false, player, fromPosition)
			player:teleportTo(fromPosition)
			fromPosition:sendMagicEffect(CONST_ME_TELEPORT)
		end

		local destination = Position(33151, 33253, 8)
		player:teleportTo(destination)
		destination:sendMagicEffect(CONST_ME_TELEPORT)
	elseif item.actionid == 22715 then
		player:teleportTo(demoniacPortal[portalId].exitPosition)
		demoniacPortal[portalId].exitPosition:sendMagicEffect(CONST_ME_TELEPORT)
	end

	return true
end

teleport:type("stepin")
teleport:aid(22710, 22715)
teleport:register()
