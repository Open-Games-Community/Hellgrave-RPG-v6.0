
	local curseSpawn = GlobalEvent("curseSpawn")

	CURSED_CHESTS_AID = 9000

CURSED_CHESTS_SPAWNS = {
	[1] = {
		pos = Position(32507, 32297, 7),
		size = 30,
		chests = {1}
	},
	[2] = {
		pos = Position(32472, 31985, 7),
		size = 30,
		chests = {1}
	},
	[3] = {
		pos = Position(32400, 31987, 9),
		size = 30,
		chests = {1}
	},
	[4] = {
		pos = Position(32776, 32283, 7),
		size = 30,
		chests = {1}
	},
	[5] = {
		pos = Position(32230, 32457, 11),
		size = 30,
		chests = {1}
	},
	[6] = {
		pos = Position(31953, 32471, 11),
		size = 30,
		chests = {1}
	},
	[7] = {
		pos = Position(32272, 32756, 7),
		size = 30,
		chests = {1}
	},
	[8] = {
		pos = Position(32599, 32817, 7),
		size = 30,
		chests = {1}
	},
	[9] = {
		pos = Position(32571, 32688, 7),
		size = 30,
		chests = {1}
	},
	[10] = {
		pos = Position(32400, 31987, 9),
		size = 30,
		chests = {1}
	},
	[11] = {
		pos = Position(31919, 32414, 8),
		size = 700,
		chests = {4}
	},
	[12] = {
		pos = Position(31928, 32410, 9),
		size = 700,
		chests = {4}
	},
	[13] = {
		pos = Position(31957, 32438, 10),
		size = 700,
		chests = {4}
	},
	[14] = {
		pos = Position(31955, 32445, 12),
		size = 700,
		chests = {4}
	},
	[15] = {
		pos = Position(31591, 32297, 7),
		size = 30,
		chests = {1}
	},
	[16] = {
		pos = Position(31832, 32338, 7),
		size = 50,
		chests = {1}
	},
	[17] = {
		pos = Position(31916, 32643, 7),
		size = 50,
		chests = {1}
	},
	[18] = {
		pos = Position(32021, 32500, 7),
		size = 50,
		chests = {1}
	},
	[19] = {
		pos = Position(31959, 32255, 7),
		size = 70,
		chests = {1}
	},
	[20] = {
		pos = Position(29779, 32079, 9),
		size = 1200,
		chests = {6}
	}
}

function curseSpawn.onThink(cid, interval, lastExecution)
	for spawnId, data in ipairs(CURSED_CHESTS_SPAWNS) do
		if not data.spawned then
			local from = Position(data.pos.x - data.size, data.pos.y - data.size, data.pos.z)
			local to = Position(data.pos.x + data.size, data.pos.y + data.size, data.pos.z)
			local chestId = math.random(1, #data.chests)
			local spawnPos = Position(math.random(from.x, to.x), math.random(from.y, to.y), data.pos.z)
			local tile = Tile(spawnPos)
			local spawnTest = 0

			while spawnTest < 100 do
				if isBadTile(tile) then
					spawnPos = Position(math.random(from.x, to.x), math.random(from.y, to.y), data.pos.z)
					tile = Tile(spawnPos)
					spawnTest = spawnTest + 1
				else
					break
				end
			end

			if spawnTest < 100 then
				local rarity = nil
				for i = #CURSED_CHESTS_TIERS, 1, -1 do
					rarity = CURSED_CHESTS_TIERS[i]
					if math.random(1, 100) <= rarity.chance then
						break
					end
				end
				if rarity ~= nil then
					local chest = Game.createItem(rarity.item, 1, spawnPos)
					chest:setActionId(CURSED_CHESTS_AID)
					spawnPos:sendMagicEffect(CONST_ME_GROUNDSHAKER)
					local chestData = {}
					chestData.pos = spawnPos
					chestData.spawnId = spawnId
					chestData.wave = 0
					chestData.monsters = {}
					chestData.active = 0
					chestData.finished = false
					chestData.container = chest
					chestData.chest = CURSED_CHESTS_CONFIG[chestId]
					chestData.rarity = rarity
					CURSED_CHESTS_DATA[#CURSED_CHESTS_DATA + 1] = chestData
					data.spawned = true
				end
			end

		end
	end
	return true
end

curseSpawn:interval(1800000) 
curseSpawn:register()
