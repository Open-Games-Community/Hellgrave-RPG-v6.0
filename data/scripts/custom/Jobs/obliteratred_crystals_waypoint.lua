local AdentisPick = Action()

local config = {
    [33161] = {text = {"The crystal is regenerating"}}, -- Small obliteratred crystal
    [30740] = {break_chance = 50, loot_chance = 35, lower_tier = 33161,  -- Medium obliteratred crystal
        normal_loot_table = { -- 80%
            [1] = {item_id = 31993, count = 1}, -- Obliterator Crystal
        },
        semi_rare_loot_table = { -- 15%
            [1] = {item_id = 31993, count = 2}, -- Obliterator Crystal
        },
        rare_loot_table = { -- 5%
            [1] = {item_id = 31993, count = 3}, -- Obliterator Crystal
        }
    },
    [30738] = {break_chance = 75, loot_chance = 55, lower_tier = 30740, -- Big Obliteratred Crystal
        normal_loot_table = { -- 80%
            [1] = {item_id = 31993, count = 1}, -- Obliterator Crystal
        },
        semi_rare_loot_table = { -- 15%
            [1] = {item_id = 31993, count = 3}, -- Obliterator Crystal
        },
        rare_loot_table = { -- 5%
            [1] = {item_id = 31993, count = 4}, -- Obliterator Crystal
        }
    },
}

local mining = {
	maxLevel = 500,
	experiencePerLevel = 125,
	storage = {
		level = 45001,
		experience = 45002
	},
}

local function giveMiningExperience(playerId, amount)
    local player = Player(playerId)
    if not player then
        print("Error in function giveMiningExperience -> player does not exist (check to ensure playerId being passed to function is correct)")
        return false
    end
 
    local miningLevel = player:getStorageValue(mining.storage.level)
    miningLevel = miningLevel >= 0 and miningLevel or 0
 
    local miningExperience = player:getStorageValue(mining.storage.experience)
    miningExperience = miningExperience >= 0 and miningExperience or 0
 
    -- local TotalMiningExperience = (miningLevel * ((mining.experience * (miningLevel - 1))/2)) + miningExperience
 
    miningExperience = miningExperience + amount
 
    if miningLevel < mining.maxLevel then
        repeat    
            local ExperienceRequiredForNextLevel = miningLevel * mining.experiencePerLevel
            if miningExperience >= ExperienceRequiredForNextLevel then
                miningExperience = miningExperience - ExperienceRequiredForNextLevel
                miningLevel = miningLevel + 1
                local text = "You have advanced to mining level " .. miningLevel .. "."
                if miningLevel == mining.maxLevel then
                    text = "You have reached the maximum mining level."
                end
                player:sendTextMessage(MESSAGE_EVENT_ADVANCE, text)
            else
                break
            end
        until (miningLevel == mining.maxLevel)
    end
 
    player:setStorageValue(mining.storage.level, miningLevel)
    player:setStorageValue(mining.storage.experience, miningExperience)
    return true
end


function AdentisPick.onUse(cid, item, fromPosition, itemEx, toPosition)
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
        lookType = 1674,
        lookHead = 120,
        lookBody = 172,
        lookLegs = 0,
        lookFeet = 41,
        lookAddons = 0,
        lookMount = 0
    }
    local newOutfitmale = {
        lookType = 1673,
        lookHead = 120,
        lookBody = 172,
        lookLegs = 0,
        lookFeet = 41,
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
		if giveMiningExperience(player:getId(), experienceRan) then
			player:sendTextMessage(MESSAGE_INFO_DESCR, "You have gained "..experienceRan.." experience on mining job.")
			
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
            doSendMagicEffect(toPosition, 255)
            return true
        end
        doSendMagicEffect(toPosition, 255)
       
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

AdentisPick:id(37546)
AdentisPick:register()