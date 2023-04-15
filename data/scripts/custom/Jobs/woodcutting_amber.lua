local AmberWood = Action()

local config = {
    [7700] = {text = {"The tree is growing..."}}, -- Tree Stump
    [7499] = {break_chance = 40, loot_chance = 45, lower_tier = 7700,  -- Yellow Pine
        normal_loot_table = { -- 80%
            [1] = {item_id = 8707, count = 1}, -- Thick Branch
            [2] = {item_id = 8701, count = 1} -- Thin Branches
        },
        semi_rare_loot_table = { -- 15%
            [1] = {item_id = 14346, count = 1}, -- Tree Trunk
            [2] = {item_id = 8710, count = 1},  -- Big Branch
			[3] = {item_id = 14342, count = 1} -- Wood branch
        },
        rare_loot_table = { -- 5%
            [1] = {item_id = 8699, count = 1}, -- Empty Tree Trunk
            [2] = {item_id = 8977, count = 1}  -- Enormous Tree Trunk
        }
    },
    [7487] = {break_chance = 75, loot_chance = 55, lower_tier = 7499, -- Yellow Tree
        normal_loot_table = { -- 80%
            [1] = {item_id = 8707, count = 1}, -- Thick Branch
            [2] = {item_id = 8701, count = 1} -- Thin Branches
        },
        semi_rare_loot_table = { -- 15%
            [1] = {item_id = 14346, count = 1}, -- Tree Trunk
            [2] = {item_id = 8710, count = 1},  -- Big Branch
			[3] = {item_id = 14342, count = 1} -- Wood branch
        },
        rare_loot_table = { -- 5%
            [1] = {item_id = 8699, count = 1}, -- Empty Tree Trunk
            [2] = {item_id = 8977, count = 1}  -- Enormous Tree Trunk
        }
    },
    [12655] = {text = {"The tree is growing..."}}, -- Tree Stump
    [4857] = {break_chance = 40, loot_chance = 45, lower_tier = 12655,  -- Green Tree
        normal_loot_table = { -- 80%
            [1] = {item_id = 8707, count = 1}, -- Thick Branch
            [2] = {item_id = 8701, count = 1} -- Thin Branches
        },
        semi_rare_loot_table = { -- 15%
            [1] = {item_id = 14346, count = 1}, -- Tree Trunk
            [2] = {item_id = 8710, count = 1},  -- Big Branch
			[3] = {item_id = 14342, count = 1} -- Wood branch
        },
        rare_loot_table = { -- 5%
            [1] = {item_id = 8699, count = 1}, -- Empty Tree Trunk
            [2] = {item_id = 8977, count = 1}  -- Enormous Tree Trunk
        }
    },
    [7500] = {break_chance = 50, loot_chance = 75, lower_tier = 4857, -- Green Tree
        normal_loot_table = { -- 80%
            [1] = {item_id = 8707, count = 1}, -- Thick Branch
            [2] = {item_id = 8701, count = 1} -- Thin Branches
        },
        semi_rare_loot_table = { -- 15%
            [1] = {item_id = 14346, count = 1}, -- Tree Trunk
            [2] = {item_id = 8710, count = 1},  -- Big Branch
			[3] = {item_id = 14342, count = 1} -- Wood branch
        },
        rare_loot_table = { -- 5%
            [1] = {item_id = 8699, count = 1}, -- Empty Tree Trunk
            [2] = {item_id = 8977, count = 1}  -- Enormous Tree Trunk
        }
    },
    [13193] = {text = {"The tree is growing..."}}, -- Tree Stump
    [9083] = {break_chance = 40, loot_chance = 45, lower_tier = 13193,  -- Autumn Tree
        normal_loot_table = { -- 80%
            [1] = {item_id = 8707, count = 1}, -- Thick Branch
            [2] = {item_id = 8701, count = 1} -- Thin Branches
        },
        semi_rare_loot_table = { -- 15%
            [1] = {item_id = 14346, count = 1}, -- Tree Trunk
            [2] = {item_id = 8710, count = 1},  -- Big Branch
			[3] = {item_id = 14342, count = 1} -- Wood branch
        },
        rare_loot_table = { -- 5%
            [1] = {item_id = 8699, count = 1}, -- Empty Tree Trunk
            [2] = {item_id = 8977, count = 1}  -- Enormous Tree Trunk
        }
    },
    [7530] = {break_chance = 50, loot_chance = 75, lower_tier = 9083, -- Red Tree
        normal_loot_table = { -- 80%
            [1] = {item_id = 8707, count = 1}, -- Thick Branch
            [2] = {item_id = 8701, count = 1} -- Thin Branches
        },
        semi_rare_loot_table = { -- 15%
            [1] = {item_id = 14346, count = 1}, -- Tree Trunk
            [2] = {item_id = 8710, count = 1},  -- Big Branch
			[3] = {item_id = 14342, count = 1} -- Wood branch
        },
        rare_loot_table = { -- 5%
            [1] = {item_id = 8699, count = 1}, -- Empty Tree Trunk
            [2] = {item_id = 8977, count = 1}  -- Enormous Tree Trunk
        }
    },
	[13194] = {text = {"The tree is growing..."}}, -- Tree Stump
    [6523] = {break_chance = 40, loot_chance = 45, lower_tier = 13194,  -- Green Tree
        normal_loot_table = { -- 80%
            [1] = {item_id = 8707, count = 1}, -- Thick Branch
            [2] = {item_id = 8701, count = 1} -- Thin Branches
        },
        semi_rare_loot_table = { -- 15%
            [1] = {item_id = 14346, count = 1}, -- Tree Trunk
            [2] = {item_id = 8710, count = 1},  -- Big Branch
			[3] = {item_id = 14342, count = 1} -- Wood branch
        },
        rare_loot_table = { -- 5%
            [1] = {item_id = 8699, count = 1}, -- Empty Tree Trunk
            [2] = {item_id = 8977, count = 1}  -- Enormous Tree Trunk
        }
    },
    [9680] = {break_chance = 50, loot_chance = 75, lower_tier = 6523, -- Green Tree
        normal_loot_table = { -- 80%
            [1] = {item_id = 8707, count = 1}, -- Thick Branch
            [2] = {item_id = 8701, count = 1} -- Thin Branches
        },
        semi_rare_loot_table = { -- 15%
            [1] = {item_id = 14346, count = 1}, -- Tree Trunk
            [2] = {item_id = 8710, count = 1},  -- Big Branch
			[3] = {item_id = 14342, count = 1} -- Wood branch
        },
        rare_loot_table = { -- 5%
            [1] = {item_id = 8699, count = 1}, -- Empty Tree Trunk
            [2] = {item_id = 8977, count = 1}  -- Enormous Tree Trunk
        }
    },	
}

local Lumberjack = {
	maxLevel = 500,
	experiencePerLevel = 125,
	storage = {
		level = 45005,
		experience = 45006
	},
}

local function giveLumberjackExperience(playerId, amount)
    local player = Player(playerId)
    if not player then
        print("Error in function giveLumberjackExperience -> player does not exist (check to ensure playerId being passed to function is correct)")
        return false
    end
 
    local LumberjackLevel = player:getStorageValue(Lumberjack.storage.level)
    LumberjackLevel = LumberjackLevel >= 0 and LumberjackLevel or 0
 
    local LumberjackExperience = player:getStorageValue(Lumberjack.storage.experience)
    LumberjackExperience = LumberjackExperience >= 0 and LumberjackExperience or 0
 
    -- local TotalLumberjackExperience = (LumberjackLevel * ((Lumberjack.experience * (LumberjackLevel - 1))/2)) + LumberjackExperience
 
    LumberjackExperience = LumberjackExperience + amount
 
    if LumberjackLevel < Lumberjack.maxLevel then
        repeat    
            local ExperienceRequiredForNextLevel = LumberjackLevel * Lumberjack.experiencePerLevel
            if LumberjackExperience >= ExperienceRequiredForNextLevel then
                LumberjackExperience = LumberjackExperience - ExperienceRequiredForNextLevel
                LumberjackLevel = LumberjackLevel + 1
                local text = "You have advanced to Lumberjack level " .. LumberjackLevel .. "."
                if LumberjackLevel == Lumberjack.maxLevel then
                    text = "You have reached the maximum Lumberjack level."
                end
                player:sendTextMessage(MESSAGE_EVENT_ADVANCE, text)
            else
                break
            end
        until (LumberjackLevel == Lumberjack.maxLevel)
    end
 
    player:setStorageValue(Lumberjack.storage.level, LumberjackLevel)
    player:setStorageValue(Lumberjack.storage.experience, LumberjackExperience)
    return true
end

function AmberWood.onUse(cid, item, fromPosition, itemEx, toPosition)
    local player = Player(cid)
		if not player then
    	return true
	end
	local levels = {
		expgainmin = 125, -- DO NOT CHANGE !
		expgainmax = 225, -- DO NOT CHANGE !
	}
    local object = config[itemEx.itemid]
    local experienceRan = math.random(levels.expgainmin, levels.expgainmax)
    if object then
        local prevOutfit = player:getOutfit()
        local newOutfitfemale = {
            lookType = 1670,
            lookHead = 47,
            lookBody = 93,
            lookLegs = 54,
            lookFeet = 19,
            lookAddons = 0,
            lookMount = 0
        }
        local newOutfitmale = {
            lookType = 1669,
            lookHead = 47,
            lookBody = 93,
            lookLegs = 54,
            lookFeet = 19,
            lookAddons = 0,
            lookMount = 0
        }
    
        if player:getSex() == PLAYERSEX_FEMALE then
            addEvent(function(cid, prev)
                local player = Creature(cid)
                if not player then
                    return
                end
                player:setOutfit(prev)
            end, 1500, player:getId(), prevOutfit)
    
            player:setOutfit(newOutfitfemale)
        end
        if player:getSex() == PLAYERSEX_MALE then
            addEvent(function(cid, prev)
                local player = Creature(cid)
                if not player then
                    return
                end
                player:setOutfit(prev)
            end, 1500, player:getId(), prevOutfit)
    
            player:setOutfit(newOutfitmale)
        end
        if giveLumberjackExperience(player:getId(), experienceRan) then
			player:sendTextMessage(MESSAGE_INFO_DESCR, "You have gained "..experienceRan.." experience on lumberjack job.")
			
		end
        if object.text then
            local rand_text = math.random(#object.text)
            doCreatureSay(cid, object.text[rand_text], TALKTYPE_ORANGE_1, nil, nil, toPosition)
            doSendMagicEffect(toPosition, CONST_ME_POFF)
            return true
        end
        if object.text then
            local rand_text = math.random(#object.text)
            doCreatureSay(cid, object.text[rand_text], TALKTYPE_ORANGE_1, nil, nil, toPosition)
            doSendMagicEffect(toPosition, CONST_ME_POFF)
            return true
        end
 
     
        local rand_event = math.random(200)
        if rand_event == 200 then
            doSendMagicEffect(toPosition, 33)
            return true
        end
     
        local rand_break = math.random(100)
        if rand_break <= object.break_chance then
            doTransformItem(itemEx.uid, object.lower_tier)
            doSendMagicEffect(toPosition, CONST_ME_POFF)
        end
 
        local rand_reward = math.random(100)
        if rand_reward > (object.loot_chance + 10) then
            doSendMagicEffect(toPosition, CONST_ME_HITAREA)
            return true
        end
        doSendMagicEffect(toPosition, CONST_ME_BLOCKHIT)
       
        local multiple = 1
        local rand_multiple = math.random(15)
        if rand_multiple == 15 then
            multiple = math.random(2, 3)
        end
        for i = 1, multiple do
            local loot_table = object.normal_loot_table
            local rand_loot = math.random(100)
            if rand_loot < 6 then
                loot_table = object.rare_loot_table
            elseif rand_loot < 21 then
                loot_table = object.semi_rare_loot_table
            end
            local rand_item = math.random(#loot_table)
            rand_item = loot_table[rand_item]
            if rand_item.count == 1 then
                doPlayerAddItem(cid, rand_item.item_id, 1, true)
            else
                local new_count = math.random(rand_item.count)
                doPlayerAddItem(cid, rand_item.item_id, new_count, true)
            end
        end
 
    end
 
    return true
end

AmberWood:id(38143)
AmberWood:register()