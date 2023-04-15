local config = {
    [8978] = {


        [8956] = {value = 25000, newItem = 10137, after = 8957}, -- grim reaper - Monster Jaws
        [6341] = {value = 25000, newItem = 10132, after = 6342}, -- nightmare - Pair of Ribs Bones
		[3069] = {value = 25000, newItem = 10100, after = 2808}, -- cyclops - Large chunk of meat
		[22568] = {value = 25000, newItem = 10137, after = 22569}, -- Frazzlemaw - Monster Jaws
		[22485] = {value = 25000, newItem = 10124, after = 22483}, -- Guzzlemaw - Dorsal Fur
		[22489] = {value = 25000, newItem = 10128, after = 22487}, -- Silencer - Clogs
		[20380] = {value = 25000, newItem = 10032, after = 20381}, -- Werewolf - Monster Pawn
		[38651] = {value = 25000, newItem = 10104, after = 38650}, -- Brachiodemon - Hardened Skin
		[38735] = {value = 25000, newItem = 10131, after = 38734}, -- Infernal Demon - Monster Skull
        [39623] = {value = 25000, newItem = 10135, after = 39622}, -- Branchy Crawler - Monster Intestines
		[38635] = {value = 25000, newItem = 10129, after = 38634}, -- Cloak of Terror - Tail Bone
		[15293] = {value = 25000, newItem = 10100, after = 15294}, -- Crawler - Large Chunk of Meat
		[15296] = {value = 25000, newItem = 10132, after = 15297}, -- Spidris - Pair of Ribs Bones
		[15355] = {value = 25000, newItem = 10137, after = 15356}, -- Kollos - Monster Jaws
		[3004] = {value = 25000, newItem = 10106, after = 3005}, --  Ancient Scarab - Giant Monster Scale
		[41553] = {value = 25000, newItem = 14351, after = 41552}, -- Afflicted Strider - Giant Monster Fur
		[41598] = {value = 25000, newItem = 10102, after = 41597}, -- Lavafungus - Tiger Fur
		[41602] = {value = 25000, newItem = 10127, after = 41601}, -- Cave Chimera - Monster Hair
		[41634] = {value = 25000, newItem = 10126, after = 41633}, -- Girtablilu Warrior - Fractured Bones
		[41638] = {value = 25000, newItem = 10109, after = 41637}, -- Bashmu - Giant Monster Ribs
		[41536] = {value = 25000, newItem = 10101, after = 41535}, -- Blemished Spawn -  Thick Leather
		[41527] = {value = 25000, newItem = 10125, after = 41526}, -- Streaked Devourer - Monster Tail
		[41523] = {value = 25000, newItem = 10138, after = 41522}, -- Varnished Diremaw - Vertebral Column
		[41518] = {value = 25000, newItem = 10108, after = 41517}, -- Tremendous Tyrant - Monster Coast
		[30790] = {value = 25000, newItem = 10122, after = 30789}, -- Tunnel Tyrant - Rare Leather
		[40194] = {value = 25000, newItem = 10105, after = 40195}, -- Exotic Cave Spider - Carnivorous Ham
        [34711] = {value = 25000, newItem = 10104, after = 34710}, -- Arachnophobica - Hardened Skin
        [4268] = {value = 25000, newItem = 10107, after = 4269}, -- Kongra - Monster Ribs
        [4274] = {value = 25000, newItem = 10100, after = 4275}, -- Sibang  Large chunk of meat
        [4271] = {value = 25000, newItem = 10032, after = 4272}, -- Merlkin - Monster Pawn
        [8308] = {value = 25000, newItem = 10136, after = 8311}, -- Sea Serpent - Skull of Dragon
        [4323] = {value = 25000, newItem = 10134, after = 4324}, -- Serpent Spawn - Silver Dragon Scale
        [10525] = {value = 25000, newItem = 10106, after = 10526}, -- Medusa - Giant Monster Scale
        [6303] = {value = 25000, newItem = 25376, after = 6304}, -- Wyvern - Monster Pawn
        [4283] = {value = 25000, newItem = 10032, after = 4284}, -- Hydra - Pair of Ribs Bones
        [42004] = {value = 25000, newItem = 10130, after = 42005}, -- Unexpected - Monster Horn
        [42012] = {value = 25000, newItem = 10133, after = 42013}, -- Unsolicited - Golden Dragon Scale
        [42008] = {value = 25000, newItem = 10139, after = 42009} -- Unwanted - Dorsal Bone
    },
}


local skinning = {
	maxLevel = 500,
	experiencePerLevel = 125,
	storage = {
		level = 45003,
		experience = 45004
	},
}

local function giveskinningExperience(playerId, amount)
    local player = Player(playerId)
    if not player then
        print("Error in function giveskinningExperience -> player does not exist (check to ensure playerId being passed to function is correct)")
        return false
    end
 
    local skinningLevel = player:getStorageValue(skinning.storage.level)
    skinningLevel = skinningLevel >= 0 and skinningLevel or 0
 
    local skinningExperience = player:getStorageValue(skinning.storage.experience)
    skinningExperience = skinningExperience >= 0 and skinningExperience or 0
 
   
    skinningExperience = skinningExperience + amount
    if skinningLevel < skinning.maxLevel then
        repeat    
            local ExperienceRequiredForNextLevel = skinningLevel * skinning.experiencePerLevel
            if skinningExperience >= ExperienceRequiredForNextLevel then
                skinningExperience = skinningExperience - ExperienceRequiredForNextLevel
                skinningLevel = skinningLevel + 1
                local text = "You have advanced to skinning level " .. skinningLevel .. "."
                if skinningLevel == skinning.maxLevel then
                    text = "You have reached the maximum skinning level."
                end
                player:sendTextMessage(MESSAGE_EVENT_ADVANCE, text)
            else
                break
            end
        until (skinningLevel == skinning.maxLevel)
    end
 
    player:setStorageValue(skinning.storage.level, skinningLevel)
    player:setStorageValue(skinning.storage.experience, skinningExperience)
    return true
end

local AdentisSkinningKnife = Action()

function AdentisSkinningKnife.onUse(player, item, fromPosition, target, toPosition, isHotkey)
	local levels = {
		expgainmin = 50, -- DO NOT CHANGE !
		expgainmax = 90 -- DO NOT CHANGE !
	}
    local skin = config[item.itemid][target.itemid]
    local experienceRan = math.random(levels.expgainmin, levels.expgainmax)
    local prevOutfit = player:getOutfit()
    local newOutfitfemale = {
        lookType = 1676,
        lookHead = 109,
        lookBody = 87,
        lookLegs = 28,
        lookFeet = 64,
        lookAddons = 0,
        lookMount = 0
    }
    local newOutfitmale = {
        lookType = 1675,
        lookHead = 109,
        lookBody = 87,
        lookLegs = 28,
        lookFeet = 64,
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
		if skin and giveskinningExperience(player:getId(), experienceRan) then
			player:sendTextMessage(MESSAGE_INFO_DESCR, "You have gained "..experienceRan.." experience on skinning job.")
			end
    if item.itemid == 5908 then
        if target.itemid == 38613 then
            local chance = math.random(1, 10000)
            target:getPosition():sendMagicEffect(CONST_ME_HITAREA)
            target:remove(1)
            if chance <= 9556 then
                player:addItem(38614, 1)
            else
                player:addItem(38615, 1)
            end
            return true
            -- Wrath of the emperor quest
        elseif target.itemid == 11691 and player:getItemCount(12655) > 0 and player:getStorageValue(Storage.TibiaTales.AnInterestInBotany) == 1 then
            player:say("The plant feels cold but dry and very soft. You streak the plant gently with your knife and put a fragment in the almanach.", TALKTYPE_MONSTER_SAY)
            player:setStorageValue(Storage.TibiaTales.AnInterestInBotany, 2)
            return true
        elseif target.itemid == 11653 and player:getItemCount(12655) > 0 and player:getStorageValue(Storage.TibiaTales.AnInterestInBotany) == 2 then
            player:say("You cut a leaf from a branch and put it in the almanach. It smells strangely sweet and awfully bitter at the same time.", TALKTYPE_MONSTER_SAY)
            player:setStorageValue(Storage.TibiaTales.AnInterestInBotany, 3)
            return true
        elseif target.itemid == 9009 and player:getStorageValue(789100) <= 1 then
            player:say("You got Neutral matter.", TALKTYPE_MONSTER_SAY)
            player:addItem(8310, 1)
            player:setStorageValue(789100, 1)
            return true
        elseif target.itemid == 9010 and player:getStorageValue(789100) <= 1 then
            player:say("You got Neutral matter.", TALKTYPE_MONSTER_SAY)
            player:addItem(8310, 1)
            player:setStorageValue(789100, 2)
            return true
        end
    end

    if not skin then
        player:sendCancelMessage(RETURNVALUE_NOTPOSSIBLE)
        return true
    end

    local charmMType, chanceRange = player:getCharmMonsterType(CHARM_SCAVENGE), 100000
    if charmMType then
        local charmCorpse = charmMType:getCorpseId()
        if charmCorpse == target.itemid or ItemType(charmCorpse):getDecayId() == target.itemid then
            chanceRange = chanceRange * ((100 - GLOBAL_CHARM_SCAVENGE)/100)
        end
    end

    local random, effect, transform = math.random(1, chanceRange), CONST_ME_MAGIC_GREEN, true
    if type(skin[1]) == 'table' then
        local added = false
        local _skin
        for i = 1, #skin do
            _skin = skin
            if random <= _skin.value then
                if target.itemid == 11343 then
                    target:getPosition():sendMagicEffect(CONST_ME_ICEAREA)
                    local gobletItem = player:addItem(_skin.newItem, _skin.amount or 1)
                    if gobletItem then
                        gobletItem:setDescription(_skin.desc:gsub('|PLAYERNAME|', player:getName()))
                    end
                    target:remove()
                    added = true
                else
                    target:transform(_skin.newItem, _skin.amount or 1)
                    added = true
                end
                break
            end
        end

        if not added and target.itemid == 8961 then
            effect = CONST_ME_POFF
            transform = false
        elseif not added and target.itemid == 11343 then
            effect = CONST_ME_POFF
            transform = false
            target:remove()
        end
    elseif random <= skin.value then
        if isInArray({7441, 7442, 7444, 7445}, target.itemid) then
            if skin.newItem == 7446 then
                player:addAchievement('Ice Sculptor')
            end
            target:transform(skin.newItem, 1)
            effect = CONST_ME_HITAREA
        else
            player:addItem(skin.newItem, skin.amount or 1)
        end
    else
        if isInArray({7441, 7442, 7444, 7445}, target.itemid) then
            player:say('The attempt of sculpting failed miserably.', TALKTYPE_MONSTER_SAY)
            effect = CONST_ME_HITAREA
            target:remove()
        else
            effect = CONST_ME_POFF
        end
    end
    toPosition:sendMagicEffect(effect)
    if transform then
        target:transform(skin.after or target:getType():getDecayId() or target.itemid + 1)
    else
        target:remove()
    end

    return true
end

AdentisSkinningKnife:id(8978)
AdentisSkinningKnife:register()