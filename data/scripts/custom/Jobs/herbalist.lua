local AdentisGloves = Action()

local config = {
    [12594] = {text = {"Wait for it to regenerate"}}, -- Small Fungus
    [12595] = {break_chance = 50, loot_chance = 35, lower_tier = 12594,  -- Small Fungus
        normal_loot_table = { -- 80%
            [1] = {item_id = 6547, count = 1}, -- Cantharellus
            [2] = {item_id = 8584, count = 1}, -- Cave Mushroom
			[3] = {item_id = 8267, count = 1} -- Boletus
        },
        semi_rare_loot_table = { -- 15%
            [1] = {item_id = 6548, count = 1}, -- Purple Cantharellus
            [2] = {item_id = 7286, count = 1} -- Amanite
        },
        rare_loot_table = { -- 5%
            [1] = {item_id = 6549, count = 1}, -- Amanita Spissa
            [2] = {item_id = 9117, count = 1},  -- Calocera Viscosa
			[3] = {item_id = 9674, count = 1} -- Ganoderma Lucidium
        }
    },
    [7533] = {break_chance = 75, loot_chance = 55, lower_tier = 12595, -- Brown Fungus
        normal_loot_table = { -- 80%
            [1] = {item_id = 6547, count = 1}, -- Cantharellus
            [2] = {item_id = 8584, count = 1}, -- Cave Mushroom
			[3] = {item_id = 8267, count = 1} -- Boletus
        },
        semi_rare_loot_table = { -- 15%
            [1] = {item_id = 6548, count = 1}, -- Purple Cantharellus
            [2] = {item_id = 7286, count = 1} -- Amanite
        },
        rare_loot_table = { -- 5%
            [1] = {item_id = 6549, count = 1}, -- Amanita Spissa
            [2] = {item_id = 9117, count = 1},  -- Calocera Viscosa
			[3] = {item_id = 9674, count = 1} -- Ganoderma Lucidium
        }
    },
    [12324] = {text = {"Wait for it to regenerate"}}, -- Some red flowers
    [12323] = {break_chance = 50, loot_chance = 35, lower_tier = 12324, -- Some red flowers
        normal_loot_table = { -- 80%
            [1] = {item_id = 9675, count = 1}, -- Herbaceous Root
            [2] = {item_id = 7248, count = 1}, -- Laurel Leaf
			[3] = {item_id = 7245, count = 1}, -- Shellbed Leaf
			[4] = {item_id = 6556, count = 1}, -- Whitered Grass
			[5] = {item_id = 6105, count = 1}, -- Marsh Plant
			[6] = {item_id = 7247, count = 1}, -- Three Leaf Clover
			[7] = {item_id = 8694, count = 1}, -- Laurel Plant
			[8] = {item_id = 7244, count = 1}, -- Twistcress Leaf
			[9] = {item_id = 7243, count = 1} -- Rivercress Leaf
        },
        semi_rare_loot_table = { -- 15%
            [1] = {item_id = 6550, count = 1}, -- Delphinium
            [2] = {item_id = 6557, count = 1}, -- Magic Leaf
			[3] = {item_id = 6387, count = 1}, -- Hemp Leaves
			[4] = {item_id = 9002, count = 1}, -- Underwater Plant
			[5] = {item_id = 2236, count = 1}, -- Cactus Leaf
			[6] = {item_id = 6089, count = 1} -- Kresch Plant
        },
        rare_loot_table = { -- 5%
            [1] = {item_id = 7249, count = 1}, -- Divine Plant of the Depths
            [2] = {item_id = 6090, count = 1}, -- Willow Plant
			[3] = {item_id = 6106, count = 1}, -- Gynura Leaves
			[4] = {item_id = 6551, count = 1}, -- Pilea Leaf
			[5] = {item_id = 7246, count = 1}, -- Autumn Leaves
			[6] = {item_id = 7242, count = 1} -- Enchanted Magic Leaf
        }
    },
    [12320] = {break_chance = 75, loot_chance = 55, lower_tier = 12323, -- Mega Cyan Crystal
        normal_loot_table = { -- 80%
            [1] = {item_id = 9675, count = 1}, -- Herbaceous Root
            [2] = {item_id = 7248, count = 1}, -- Laurel Leaf
			[3] = {item_id = 7245, count = 1}, -- Shellbed Leaf
			[4] = {item_id = 6556, count = 1}, -- Whitered Grass
			[5] = {item_id = 6105, count = 1}, -- Marsh Plant
			[6] = {item_id = 7247, count = 1}, -- Three Leaf Clover
			[7] = {item_id = 8694, count = 1}, -- Laurel Plant
			[8] = {item_id = 7244, count = 1}, -- Twistcress Leaf
			[9] = {item_id = 7243, count = 1} -- Rivercress Leaf
        },
        semi_rare_loot_table = { -- 15%
            [1] = {item_id = 6550, count = 1}, -- Delphinium
            [2] = {item_id = 6557, count = 1}, -- Magic Leaf
			[3] = {item_id = 6387, count = 1}, -- Hemp Leaves
			[4] = {item_id = 9002, count = 1}, -- Underwater Plant
			[5] = {item_id = 2236, count = 1}, -- Cactus Leaf
			[6] = {item_id = 6089, count = 1} -- Kresch Plant
        },
        rare_loot_table = { -- 5%
            [1] = {item_id = 7249, count = 1}, -- Divine Plant of the Depths
            [2] = {item_id = 6090, count = 1}, -- Willow Plant
			[3] = {item_id = 6106, count = 1}, -- Gynura Leaves
			[4] = {item_id = 6551, count = 1}, -- Pilea Leaf
			[5] = {item_id = 7246, count = 1}, -- Autumn Leaves
			[6] = {item_id = 7242, count = 1} -- Enchanted Magic Leaf
        }
    },
    [12327] = {text = {"Wait for it to regenerate"}}, -- Some blue flowers
    [12326] = {break_chance = 50, loot_chance = 35, lower_tier = 12327,  -- Some blue flowers
        normal_loot_table = { -- 80%
            [1] = {item_id = 9675, count = 1}, -- Herbaceous Root
            [2] = {item_id = 7248, count = 1}, -- Laurel Leaf
			[3] = {item_id = 7245, count = 1}, -- Shellbed Leaf
			[4] = {item_id = 6556, count = 1}, -- Whitered Grass
			[5] = {item_id = 6105, count = 1}, -- Marsh Plant
			[6] = {item_id = 7247, count = 1}, -- Three Leaf Clover
			[7] = {item_id = 8694, count = 1}, -- Laurel Plant
			[8] = {item_id = 7244, count = 1}, -- Twistcress Leaf
			[9] = {item_id = 7243, count = 1} -- Rivercress Leaf
        },
        semi_rare_loot_table = { -- 15%
            [1] = {item_id = 6550, count = 1}, -- Delphinium
            [2] = {item_id = 6557, count = 1}, -- Magic Leaf
			[3] = {item_id = 6387, count = 1}, -- Hemp Leaves
			[4] = {item_id = 9002, count = 1}, -- Underwater Plant
			[5] = {item_id = 2236, count = 1}, -- Cactus Leaf
			[6] = {item_id = 6089, count = 1} -- Kresch Plant
        },
        rare_loot_table = { -- 5%
            [1] = {item_id = 7249, count = 1}, -- Divine Plant of the Depths
            [2] = {item_id = 6090, count = 1}, -- Willow Plant
			[3] = {item_id = 6106, count = 1}, -- Gynura Leaves
			[4] = {item_id = 6551, count = 1}, -- Pilea Leaf
			[5] = {item_id = 7246, count = 1}, -- Autumn Leaves
			[6] = {item_id = 7242, count = 1} -- Enchanted Magic Leaf
        }
    },
    [12325] = {break_chance = 75, loot_chance = 55, lower_tier = 12326, -- Some blue flowers
        normal_loot_table = { -- 80%
            [1] = {item_id = 9675, count = 1}, -- Herbaceous Root
            [2] = {item_id = 7248, count = 1}, -- Laurel Leaf
			[3] = {item_id = 7245, count = 1}, -- Shellbed Leaf
			[4] = {item_id = 6556, count = 1}, -- Whitered Grass
			[5] = {item_id = 6105, count = 1}, -- Marsh Plant
			[6] = {item_id = 7247, count = 1}, -- Three Leaf Clover
			[7] = {item_id = 8694, count = 1}, -- Laurel Plant
			[8] = {item_id = 7244, count = 1}, -- Twistcress Leaf
			[9] = {item_id = 7243, count = 1} -- Rivercress Leaf
        },
        semi_rare_loot_table = { -- 15%
            [1] = {item_id = 6550, count = 1}, -- Delphinium
            [2] = {item_id = 6557, count = 1}, -- Magic Leaf
			[3] = {item_id = 6387, count = 1}, -- Hemp Leaves
			[4] = {item_id = 9002, count = 1}, -- Underwater Plant
			[5] = {item_id = 2236, count = 1}, -- Cactus Leaf
			[6] = {item_id = 6089, count = 1} -- Kresch Plant
        },
        rare_loot_table = { -- 5%
            [1] = {item_id = 7249, count = 1}, -- Divine Plant of the Depths
            [2] = {item_id = 6090, count = 1}, -- Willow Plant
			[3] = {item_id = 6106, count = 1}, -- Gynura Leaves
			[4] = {item_id = 6551, count = 1}, -- Pilea Leaf
			[5] = {item_id = 7246, count = 1}, -- Autumn Leaves
			[6] = {item_id = 7242, count = 1} -- Enchanted Magic Leaf
        }
    },
    [12501] = {text = {"Wait for it to regenerate"}}, -- Some flowers
    [12328] = {break_chance = 50, loot_chance = 35, lower_tier = 12501, -- Some flowers
        normal_loot_table = { -- 80%
            [1] = {item_id = 9675, count = 1}, -- Herbaceous Root
            [2] = {item_id = 7248, count = 1}, -- Laurel Leaf
			[3] = {item_id = 7245, count = 1}, -- Shellbed Leaf
			[4] = {item_id = 6556, count = 1}, -- Whitered Grass
			[5] = {item_id = 6105, count = 1}, -- Marsh Plant
			[6] = {item_id = 7247, count = 1}, -- Three Leaf Clover
			[7] = {item_id = 8694, count = 1}, -- Laurel Plant
			[8] = {item_id = 7244, count = 1}, -- Twistcress Leaf
			[9] = {item_id = 7243, count = 1} -- Rivercress Leaf
        },
        semi_rare_loot_table = { -- 15%
            [1] = {item_id = 6550, count = 1}, -- Delphinium
            [2] = {item_id = 6557, count = 1}, -- Magic Leaf
			[3] = {item_id = 6387, count = 1}, -- Hemp Leaves
			[4] = {item_id = 9002, count = 1}, -- Underwater Plant
			[5] = {item_id = 2236, count = 1}, -- Cactus Leaf
			[6] = {item_id = 6089, count = 1} -- Kresch Plant
        },
        rare_loot_table = { -- 5%
            [1] = {item_id = 7249, count = 1}, -- Divine Plant of the Depths
            [2] = {item_id = 6090, count = 1}, -- Willow Plant
			[3] = {item_id = 6106, count = 1}, -- Gynura Leaves
			[4] = {item_id = 6551, count = 1}, -- Pilea Leaf
			[5] = {item_id = 7246, count = 1}, -- Autumn Leaves
			[6] = {item_id = 7242, count = 1} -- Enchanted Magic Leaf
        }
    },
    [12382] = {break_chance = 75, loot_chance = 55, lower_tier = 12328, -- Some flowers
        normal_loot_table = { -- 80%
            [1] = {item_id = 9675, count = 1}, -- Herbaceous Root
            [2] = {item_id = 7248, count = 1}, -- Laurel Leaf
			[3] = {item_id = 7245, count = 1}, -- Shellbed Leaf
			[4] = {item_id = 6556, count = 1}, -- Whitered Grass
			[5] = {item_id = 6105, count = 1}, -- Marsh Plant
			[6] = {item_id = 7247, count = 1}, -- Three Leaf Clover
			[7] = {item_id = 8694, count = 1}, -- Laurel Plant
			[8] = {item_id = 7244, count = 1}, -- Twistcress Leaf
			[9] = {item_id = 7243, count = 1} -- Rivercress Leaf
        },
        semi_rare_loot_table = { -- 15%
            [1] = {item_id = 6550, count = 1}, -- Delphinium
            [2] = {item_id = 6557, count = 1}, -- Magic Leaf
			[3] = {item_id = 6387, count = 1}, -- Hemp Leaves
			[4] = {item_id = 9002, count = 1}, -- Underwater Plant
			[5] = {item_id = 2236, count = 1}, -- Cactus Leaf
			[6] = {item_id = 6089, count = 1} -- Kresch Plant
        },
        rare_loot_table = { -- 5%
            [1] = {item_id = 7249, count = 1}, -- Divine Plant of the Depths
            [2] = {item_id = 6090, count = 1}, -- Willow Plant
			[3] = {item_id = 6106, count = 1}, -- Gynura Leaves
			[4] = {item_id = 6551, count = 1}, -- Pilea Leaf
			[5] = {item_id = 7246, count = 1}, -- Autumn Leaves
			[6] = {item_id = 7242, count = 1} -- Enchanted Magic Leaf
        }
    },
}

local Herbalist = {
	maxLevel = 500,
	experiencePerLevel = 125,
	storage = {
		level = 45007,
		experience = 45008
	},
}

local function giveHerbalistExperience(playerId, amount)
    local player = Player(playerId)
    if not player then
        print("Error in function giveHerbalistExperience -> player does not exist (check to ensure playerId being passed to function is correct)")
        return false
    end
 
    local HerbalistLevel = player:getStorageValue(Herbalist.storage.level)
    HerbalistLevel = HerbalistLevel >= 0 and HerbalistLevel or 0
 
    local HerbalistExperience = player:getStorageValue(Herbalist.storage.experience)
    HerbalistExperience = HerbalistExperience >= 0 and HerbalistExperience or 0
 
    
    HerbalistExperience = HerbalistExperience + amount
 
    if HerbalistLevel < Herbalist.maxLevel then
        repeat    
            local ExperienceRequiredForNextLevel = HerbalistLevel * Herbalist.experiencePerLevel
            if HerbalistExperience >= ExperienceRequiredForNextLevel then
                HerbalistExperience = HerbalistExperience - ExperienceRequiredForNextLevel
                HerbalistLevel = HerbalistLevel + 1
                local text = "You have advanced to Herbalist level " .. HerbalistLevel .. "."
                if HerbalistLevel == Herbalist.maxLevel then
                    text = "You have reached the maximum Herbalist level."
                end
                player:sendTextMessage(MESSAGE_EVENT_ADVANCE, text)
            else
                break
            end
        until (HerbalistLevel == Herbalist.maxLevel)
    end
 
    player:setStorageValue(Herbalist.storage.level, HerbalistLevel)
    player:setStorageValue(Herbalist.storage.experience, HerbalistExperience)
    return true
end

function AdentisGloves.onUse(cid, item, fromPosition, itemEx, toPosition)
    local player = Player(cid)
		if not player then
    	return true
	end
	local levels = {
		expgainmin = 80, -- DO NOT CHANGE !
		expgainmax = 140, -- DO NOT CHANGE !
	}
    local object = config[itemEx.itemid]
	local experienceRan = math.random(levels.expgainmin, levels.expgainmax)
    if object then
        local prevOutfit = player:getOutfit()
    local newOutfitfemale = {
        lookType = 1672,
        lookHead = 0,
        lookBody = 56,
        lookLegs = 72,
        lookFeet = 50,
        lookAddons = 0,
        lookMount = 0
    }
    local newOutfitmale = {
        lookType = 1671,
        lookHead = 0,
        lookBody = 56,
        lookLegs = 72,
        lookFeet = 50,
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
        end, 2000, player:getId(), prevOutfit)

        player:setOutfit(newOutfitfemale)
    end
    if player:getSex() == PLAYERSEX_MALE then
        addEvent(function(cid, prev)
            local player = Creature(cid)
            if not player then
                return
            end
            player:setOutfit(prev)
        end, 2000, player:getId(), prevOutfit)

        player:setOutfit(newOutfitmale)
    end
		if giveHerbalistExperience(player:getId(), experienceRan) then
			player:sendTextMessage(MESSAGE_INFO_DESCR, "You have gained "..experienceRan.." experience on herbalist job.")
			
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
            doSendMagicEffect(toPosition, 248)
            return true
        end
        doSendMagicEffect(toPosition, 248)
       
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

AdentisGloves:id(8983)
AdentisGloves:register()