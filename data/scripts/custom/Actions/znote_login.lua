-- Znote LoginWebService (version 1) for protocol 11, 12+
-- Move file to this location: data/scripts/znote_login.lua
-- And restart OT server, it should auto load script.
-- Requires updated version of Znote AAC. (18. June 2020)
-- This script will help Znote AAC connect players to this game server.

local znote_loginWebService = GlobalEvent("znote_loginWebService")
function znote_loginWebService.onStartup()
    print(" ")
	print("=============================")
	print("= Znote AAC loginWebService =")
	print("=============================")
    local configLua = {
        ["SERVER_NAME"] = configManager.getString(configKeys.SERVER_NAME),
        ["IP"] = configManager.getString(configKeys.IP),
        ["GAME_PORT"] = configManager.getNumber(configKeys.GAME_PORT)
    }
    local configSQL = {
        ["SERVER_NAME"] = false,
        ["IP"] = false,
        ["GAME_PORT"] = false
    }
    local webStorage = db.storeQuery([[
		SELECT
			`key`,
            `value`
		FROM `znote_global_storage`
		WHERE `key` IN('SERVER_NAME', 'IP', 'GAME_PORT')
	]])
	if webStorage ~= false then
		repeat
			local key = result.getString(webStorage, 'key')
			local value = result.getString(webStorage, 'value')
            configSQL[key] = value
		until not result.next(webStorage)
		result.free(webStorage)
    end
    local inserts = {}
    if configSQL.SERVER_NAME == false then
        table.insert(inserts, "('SERVER_NAME',".. db.escapeString(configLua.SERVER_NAME) ..")")
    elseif configSQL.SERVER_NAME ~= configLua.SERVER_NAME then
        db.query("UPDATE `znote_global_storage` SET `value`=".. db.escapeString(configLua.SERVER_NAME) .." WHERE `key`='SERVER_NAME';")
        print("= Updated [SERVER_NAME] FROM [" .. configSQL.SERVER_NAME .. "] to [" .. configLua.SERVER_NAME .. "]")
    end
    if configSQL.IP == false then
        table.insert(inserts, "('IP',".. db.escapeString(configLua.IP) ..")")
    elseif configSQL.IP ~= configLua.IP then
        db.query("UPDATE `znote_global_storage` SET `value`=".. db.escapeString(configLua.IP) .." WHERE `key`='IP';")
        print("= Updated [IP] FROM [" .. configSQL.IP .. "] to [" .. configLua.IP .. "]")
    end
    if configSQL.GAME_PORT == false then
        table.insert(inserts, "('GAME_PORT',".. db.escapeString(configLua.GAME_PORT) ..")")
    elseif configSQL.GAME_PORT ~= tostring(configLua.GAME_PORT) then
        db.query("UPDATE `znote_global_storage` SET `value`=".. db.escapeString(configLua.GAME_PORT) .." WHERE `key`='GAME_PORT';")
        print("= Updated [GAME_PORT] FROM [" .. configSQL.GAME_PORT .. "] to [" .. configLua.GAME_PORT .. "]")
    end
    if #inserts > 0 then
        db.query("INSERT INTO `znote_global_storage` (`key`,`value`) VALUES "..table.concat(inserts,',')..";")
        print("= Fixed " .. #inserts .. " missing configurations.")
    end
    print("=============================")
    print("= SERVER_NAME: " .. configLua.SERVER_NAME)
    print("= IP: " .. configLua.IP)
    print("= GAME_PORT: " .. configLua.GAME_PORT)
    print("=============================")
    print(" ")
	print(" ")
	print("=============================")
	print("Added Portal Scroll System")
	print("Added Aren System and Daily Quest System")
	print("Added 5 New Professions")
	print("Added Discovery Waypoints")
	print("Added Secret Quest First Fragment")
	print("Added Ancestral / Elder / Demoniac Rift System")
	print("Added Ancestral Tasks / Ranking / Points")
	print("Added Chaos and Parangon Level System")
	print("Added Monster Hunter Level")
	print("Added Enhanced Loot System")
	print("Added Double EXP System")
	print("Added Cursed Chests System / World Chests System")
	print("Added Gear Score System / Prestige System")
	print("Added Legendary Craft")
	print("Added Trade Island")
	print("Added Craft System including 17 Crafting Tables and all Recipes")
	print("Added New Items / New Monsters / New Bosses")
	print("Added WorldBoss Timers System")
	print("Added Upgrade System / Chaos Upgrade / Transcending Upgrade")
	print("Added Collection System / Dragon Egg Crafting")
	print("Added Kindernia Isle for no vocations players")
	print("Added Arkeron Isle Hardcore continent")
	print("=============================")
	print("Support on https://opengamescommunity.com")
	print("=============================")
end
znote_loginWebService:register()
