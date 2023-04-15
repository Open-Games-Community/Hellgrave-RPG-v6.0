local CURSED_CHESTS_VERSION = "1.0.0"

local CURSED_CHESTS_SKULL_DEFAULT = SKULL_WHITE
local CURSED_CHESTS_SKULL_BOSS = SKULL_BLACK

CURSED_CHESTS_TIER_COMMON = 1
CURSED_CHESTS_TIER_RARE = 2
CURSED_CHESTS_TIER_EPIC = 3
CURSED_CHESTS_TIER_LEGENDARY = 4

CURSED_CHESTS_TIERS = {
	{
		tier = CURSED_CHESTS_TIER_COMMON,
		chance = 80,
		text = "Common Cursed Chest",
		item = 1750,
		monstersPerWave = 3
	},
	{
		tier = CURSED_CHESTS_TIER_RARE,
		chance = 50,
		text = "Rare Cursed Chest",
		item = 1751,
		monstersPerWave = 4
	},
	{
		tier = CURSED_CHESTS_TIER_EPIC,
		chance = 20,
		text = "Epic Cursed Chest",
		item = 1752,
		monstersPerWave = 4
	},
	{
		tier = CURSED_CHESTS_TIER_LEGENDARY,
		chance = 5,
		text = "Legendary Cursed Chest",
		item = 1753,
		monstersPerWave = 5
	}
}

CURSED_CHESTS_CONFIG = {
    [1] = {
			message = "Prepare to defend against 5 waves of demon type monsters and a boss at the end.",
			rewards = {
				[CURSED_CHESTS_TIER_COMMON] = {
					{ -- Platinum Coins
						chance = 100,
						item = 2152,
						random = true,
						amount = 35
					},
					{ -- Salvage material
						chance = 40,
						item = 8613,
						random = true,
						amount = 10
					},
					{ -- Savage chest
						chance = 8,
						item = 13165,
						amount = 1
					},
					{ -- Key of Savage chest
						chance = 11,
						item = 13166,
						amount = 1
					}
				},
				[CURSED_CHESTS_TIER_RARE] = {
					{ -- Platinum Coin
						chance = 100,
						item = 2152,
						random = true,
						amount = 60
					},
					{ -- Salvage material
						chance = 40,
						item = 8613,
						random = true,
						amount = 30
					},
					{ -- Orb of Misery
						chance = 10,
						item = 9698,
						amount = 1
					},
					{ -- Orb of Nature
						chance = 8,
						item = 9697,
						amount = 1
					},
					{ -- Damnation Ark
						chance = 7,
						item = 9696,
						amount = 1
					},
					{ -- Hells Arch
						chance = 6,
						item = 9694,
						amount = 1
					},
					{ -- Arch of Riddles
						chance = 6,
						item = 9677,
						amount = 1
					},
					{ -- Sparkling Potion
						chance = 15,
						item = 37419,
						random = true,
						amount = 1
					}
				},
				[CURSED_CHESTS_TIER_EPIC] = {
					{ -- Crystal Coin
						chance = 100,
						item = 2160,
						random = true,
						amount = 2
					},
					{ -- Sliver
						chance = 30,
						item = 41944,
						random = true,
						amount = 3
					},
					{ -- Dust
						chance = 70,
						item = 41995,
						amount = 20
					},
					{ -- Salvage Material
						chance = 60,
						item = 8613,
						randome = true,
						amount = 40
					},
					{ -- Tyranic chest
						chance = 5,
						item = 13167,
						amount = 1
					},
					{ -- key of tyranic chest
						chance = 9,
						item = 13168,
						amount = 1
					},
					{ -- Ancestral Essence
						chance = 3,
						item = 12671,
						amount = 1
					},
					{ -- Ancestral Crystal
						chance = 40,
						item = 16004,
						amount = 10
					}
				},
				[CURSED_CHESTS_TIER_LEGENDARY] = {
					{ -- Crystal Coin
						chance = 100,
						item = 2160,
						amount = 5
					},
					{ -- Tournament Coin
						chance = 10,
						item = 24275,
						amount = 2
					},
					{ -- Key of cursed chest
						chance = 7,
						item = 10028,
						amount = 1
					},
					{ -- cursed chest
						chance = 5,
						item = 9743,
						amount = 1
					},
					{ -- Hell Token
						chance = 15,
						item = 42027,
						amount = 3
					},
					{ -- Hellgrave Coin
						chance = 20,
						item = 24774,
						amount = 5
					},
					{ -- Exalted Core
						chance = 5,
						item = 41945,
						amount = 1
					},
					{ -- Ancestral Crystal
						chance = 40,
						item = 16004,
						amount = 5
					},
					{ -- Eldritch Crystal
						chance = 30,
						item = 41670,
						amount = 2
					},
					{ -- Emblem of the cosmos
						chance = 3,
						item = 10169,
						amount = 1
					}
				}
			},
			waves = {
				[CURSED_CHESTS_TIER_COMMON] = {
					{ -- Wave 1
						"Dragon",
						"Pixie",
						"Nymph"
					},
					{ -- Wave 2
						"Yielothax",
						"Dragon Lord",
						"Pixie",
						"Nymph"
					},
					{ -- Wave 3
						"Dragon Lord",
						"Yielothax",
						"Nightstalker",
						"Dragon",
						"Gozzler"
					}
				},
				[CURSED_CHESTS_TIER_RARE] = {
					{ -- Wave 1
						"Dragon Lord",
						"Nightmare",
						"Nightmare scion"
					},
					{ -- Wave 2
						"Nightmare",
						"Dragon",
						"Dragon Lord",
						"Hydra"
					},
					{ -- Wave 3
						"Hydra",
						"Iron Servant",
						"Quara Pincher Scout",
						"Frost Dragon",
						"Nightmare"
					},
					{ -- Wave 4
						"Lizard High Guard",
						"Frost Dragon",
						"Hydra",
						"Nightmare",
						"Souleater"
					}
				},
				[CURSED_CHESTS_TIER_EPIC] = {
					{ -- Wave 1
						"Behemoth",
						"Giant Spider",
						"killer caiman"
					},
					{ -- Wave 2
						"Demon",
						"Exotic Bat",
						"Destroyer",
						"Diabolic Imp"
					},
					{ -- Wave 3
						"Fury",
						"Hellspawn",
						"Misguided Shadow",
						"Dawnfire Asura",
						"Midnight Asura"
					},
					{ -- Wave 4
						"War Golem",
						"Grim Reaper",
						"Dark Torturer",
						"Hellhound",
						"Frazzlemaw"
					}
				},
				[CURSED_CHESTS_TIER_LEGENDARY] = {
					{ -- Wave 1
						"Guzzlemaw",
						"Silencer",
						"Retching Horror"
					},
					{ -- Wave 2
						"Tyrant slug [1]",
						"sacred hydra [2]",
						"Demon",
						"Juggernaut"
					},
					{ -- Wave 3
						"Grimeleech",
						"Vexclaw",
						"Hellflayer",
						"Dark Torturer"
					},
					{ -- Wave 4
						"Vexclaw",
						"Demon",
						"Juggernaut",
						"Hellhound",
						"Guzzlemaw"
					}
				}
			},
			boss = {
				name = "Zorvorax",
				fightDuration = 10,
				message = "Boss incoming! You have 5 minuts to kill the boss!"
			}
		}
}

CURSED_CHESTS_DATA = {}

function CursedChestsLoad()
	print(">> Loaded Cursed Chests v" .. CURSED_CHESTS_VERSION)
	ShowEffects()
end

function ShowEffects()
	for _, data in ipairs(CURSED_CHESTS_DATA) do
		local tile = Tile(data.pos)
		if tile then
			for _, item in ipairs(tile:getItems()) do
				if item:getId() == data.rarity.item then
					if data.active == 0 and data.finished == false then
						data.pos:sendMagicEffect(CONST_ME_YALAHARIGHOST)
					elseif data.active == 1 and data.wave > 0 then
						data.pos:sendMagicEffect(CONST_ME_YALAHARIGHOST)
					elseif data.finished == true then
						data.pos:sendMagicEffect(CONST_ME_GIFT_WRAPS)
					end
				end
			end
		end
	end
	addEvent(ShowEffects, 3000)
end

function CursedChestEvent(data)
	data.wave = data.wave + 1
	local from = Position(data.pos.x - 5, data.pos.y - 5, data.pos.z)
	local to = Position(data.pos.x + 5, data.pos.y + 5, data.pos.z)
	if data.wave <= #data.chest.waves[data.rarity.tier] then
		local mobs = CURSED_CHESTS_TIERS[data.rarity.tier].monstersPerWave * data.wave
		for i = 1, mobs do
			local mobName = data.chest.waves[data.rarity.tier][data.wave][math.random(1, #data.chest.waves[data.rarity.tier][data.wave])]
			local spawnPos = Position(math.random(from.x, to.x), math.random(from.y, to.y), data.pos.z)
			local tile = Tile(spawnPos)
			local spawnTest = 0
			while spawnTest < 100 do
				if data.pos == spawnPos or isBadTile(tile) then
					spawnPos = Position(math.random(from.x, to.x), math.random(from.y, to.y), data.pos.z)
					tile = Tile(spawnPos)
					spawnTest = spawnTest + 1
				else
					break
				end
			end
					

			if spawnTest < 100 then
				local mob = Game.createMonster(mobName, spawnPos, false, true)
				if mob then
					mob:setSkull(CURSED_CHESTS_SKULL_DEFAULT)
					mob:registerEvent("CursedChestsDeath")
					table.insert(data.monsters, mob:getId())
				end
			end
		end
	elseif data.chest.boss ~= nil then
		data.bossWave = true
		local spawnPos = Position(math.random(from.x, to.x), math.random(from.y, to.y), data.pos.z)
		local tile = Tile(spawnPos)
		local spawnTest = 0
		while spawnTest < 100 do
			if data.pos == spawnPos or isBadTile(tile) then
				spawnPos = Position(math.random(from.x, to.x), math.random(from.y, to.y), data.pos.z)
				tile = Tile(spawnPos)
				spawnTest = spawnTest + 1
			else
				break
			end
		end

		if spawnTest < 100 then
			local mob = Game.createMonster(data.chest.boss.name, spawnPos, false, true)
			if mob then
				mob:setSkull(CURSED_CHESTS_SKULL_BOSS)
				mob:registerEvent("CursedChestsDeath")
				table.insert(data.monsters, mob:getId())
				stopEvent(data.event)
				data.event = addEvent(CursedChestBoss, data.chest.boss.fightDuration * 1000, data)
			end
		end
	end
end

function CursedChestBoss(data)
	if #data.monsters == 1 then
		local boss = Monster(data.monsters[1])
		if boss then
			boss:remove()
			stopEvent(data.event)
			for i = 1, #CURSED_CHESTS_DATA do
				if CURSED_CHESTS_DATA[i] == data then table.remove(CURSED_CHESTS_DATA, i) end
			end
			data.container:getPosition():sendMagicEffect(CONST_ME_POFF)
			data.container:remove()
			CURSED_CHESTS_SPAWNS[data.spawnId].spawned = false
		end
	end
end

function FinishCursedChestEvent(data)
	if data.chest.boss ~= nil and data.bossWave == true and #data.monsters == 0 or not data.chest.boss and data.wave == #data.chest.waves[data.rarity.tier] and #data.monsters == 0 then
		stopEvent(data.event)
		data.finished = true
		data.active = 0
		local loot = 'Cursed Chest reward: '
		local items = {}

		for i = 1, #data.chest.rewards[data.rarity.tier] do
			if data.container:getEmptySlots() == 0 then break end

			local reward = data.chest.rewards[data.rarity.tier][i]
			if reward.chance == 100 then
				local amount = reward.random == true and math.random(1, reward.amount) or reward.amount
				local item = Game.createItem(reward.item, amount)
				data.container:addItemEx(item)
				table.insert(items, item)
			elseif math.random(1, 100) <= reward.chance then
				local amount = reward.random == true and math.random(1, reward.amount) or reward.amount
				local item = Game.createItem(reward.item, amount)
				data.container:addItemEx(item)
				table.insert(items, item)
			end
		end

		for i = #items, 1, -1 do
			if items[i]:getCount() > 1 then
				loot = loot .. items[i]:getCount() .. " "
				loot = loot .. items[i]:getPluralName()
			else
				loot = loot .. items[i]:getName()
			end
			if i > 1 then loot = loot .. ", " end
		end

		loot = loot .. "."

		local specs = Game.getSpectators(data.pos, false, true, 9, 9, 9, 9)
    if #specs > 0 then
        for i = 1, #specs do
            specs[i]:sendTextMessage(MESSAGE_STATUS_WARNING, loot)
        end
		end
		
		data.checks = 0
		data.event = addEvent(CursedChestCheck, 1000, data)
	end
end

function CursedChestCheck(data)
	data.event = addEvent(CursedChestCheck, 1000, data)
	addEvent(CursedChestDelete, 5 * 60 * 1000, data)
	if data.container:getEmptySlots() == data.container:getCapacity() then
		stopEvent(data.event)
		for i = 1, #CURSED_CHESTS_DATA do
			if CURSED_CHESTS_DATA[i] == data then table.remove(CURSED_CHESTS_DATA, i) end
		end
		data.container:getPosition():sendMagicEffect(CONST_ME_POFF)
		data.container:remove()
		CURSED_CHESTS_SPAWNS[data.spawnId].spawned = false
	end
end

function CursedChestDelete(data)
	for i = 1, #CURSED_CHESTS_DATA do
		if CURSED_CHESTS_DATA[i] == data then
			stopEvent(data.event)
			data.container:getPosition():sendMagicEffect(CONST_ME_POFF)
			data.container:remove()
			CURSED_CHESTS_SPAWNS[data.spawnId].spawned = false
			table.remove(CURSED_CHESTS_DATA, i)
		end
	end
end

function CursedChests_onDeath(creature, corpse, killer, mostDamageKiller, unjustified, mostDamageUnjustified)
	for _, data in ipairs(CURSED_CHESTS_DATA) do
		if data.active == 1 then
			for i = 1, #data.monsters do
				if data.monsters[i] == creature:getId() then
					table.remove(data.monsters, i)
					if data.wave < #data.chest.waves[data.rarity.tier] and #data.monsters == 0 then
						addEvent(CursedChestEvent, 1500, data)
					elseif data.chest.boss ~= nil and not data.bossWave and #data.monsters == 0 then
						killer:sendTextMessage(MESSAGE_STATUS_WARNING, 'You have 5 minuts to fight the boss otherwise you lose your chance and chest disappear.')
						addEvent(CursedChestEvent, 3000, data)
					end
					if data.wave == #data.chest.waves[data.rarity.tier] and #data.monsters == 0 or data.bossWave == true and #data.monsters == 0 then FinishCursedChestEvent(data) end
					break
				end
			end
		end
	end
	return true
end

local curseChests = Action()

function curseChests.onUse(player, item, fromPosition, target, toPosition, isHotkey)
	for _, data in ipairs(CURSED_CHESTS_DATA) do
		if data.pos == item:getPosition() then
			if data.active == 0 and data.finished == false then
				player:sendTextMessage(MESSAGE_STATUS_WARNING, data.chest.message .. '\nKill all monsters to get awesome rewards!')
				if player:getParty() then
					data.solo = false
				else
					data.solo = true
				end
				data.owner = player:getName()
				data.wave = 0
				data.monsters = {}
				data.active = 1
				data.finished = false
				data.container = item
				data.event = addEvent(CursedChestEvent, 2000, data)
			elseif data.finished == true then
				if data.solo and data.owner == player:getName() then
					return false
				elseif not data.solo then
					local party = player:getParty()
					if not party then return true end
					if data.owner == player:getName() then return false end
					local members = party:getMembers()
					for i = 1, #members do
						if members[i]:getName() == player:getName() then
							return false
						end
					end 
				end
				return true
			end
			return true
		end
	end
	return false
end

function isBadTile(tile)
	return (tile == nil or tile:getGround() == nil or tile:hasProperty(TILESTATE_NONE) or tile:hasProperty(TILESTATE_FLOORCHANGE_EAST) or isItem(tile:getThing()) and not isMoveable(tile:getThing()) or tile:getTopCreature() or tile:hasFlag(TILESTATE_PROTECTIONZONE))
end

curseChests:aid(9000)
curseChests:register()