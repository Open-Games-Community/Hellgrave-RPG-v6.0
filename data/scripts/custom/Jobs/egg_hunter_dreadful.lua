local DragonGloves = Action()

local config = {
    [27373] = {text = {"The Egg is Regenerating..."}}, -- MORDRAGOR
    [41484] = {break_chance = 40, loot_chance = 55, lower_tier = 27373,  -- Yellow Pine
        normal_loot_table = { -- 80%
            [1] = {item_id = 27168, count = 1}, -- Volcano Dragon Egg
            [2] = {item_id = 27475, count = 1}, -- Galaxy Fae Dragon Egg
            [3] = {item_id = 27148, count = 1}, -- Magma Dragon Egg
            [4] = {item_id = 27235, count = 1}, -- Loch Dragon Egg
            [5] = {item_id = 27147, count = 1}, -- Fraktal Dragon Egg
            [6] = {item_id = 27143, count = 1}, -- Illusion Dragon Egg 
            [7] = {item_id = 27527, count = 1}, -- Permafrost Dragon Egg
            [8] = {item_id = 27114, count = 1}, -- Adamantium Dragon Egg
            [9] = {item_id = 27130, count = 1}, -- Chimera Dragon Egg
            [10] = {item_id = 27478, count = 1}, -- Hot Metal Dragon Egg
            [11] = {item_id = 27154, count = 1}, -- Prophet Dragon Egg
            [12] = {item_id = 27465, count = 1}, -- Stained Dragon Egg
        },
        semi_rare_loot_table = { -- 15%
            [1] = {item_id = 27363, count = 1}, -- Naga Dragon Egg
            [2] = {item_id = 27492, count = 1}, -- Wurm Dragon Egg
            [3] = {item_id = 27467, count = 1}, -- Ladybug Dragon Egg
            [4] = {item_id = 27502, count = 1}, -- Ragnor Dragon Egg
            [5] = {item_id = 27469, count = 1}, -- Beholder Dragon Egg
            [6] = {item_id = 27485, count = 1}, -- Venom Dragon Egg 
            [7] = {item_id = 27487, count = 1}, -- Yggdrasil Dragon Egg
            [8] = {item_id = 27536, count = 1}, -- Outlaw Dragon Egg
            [9] = {item_id = 27244, count = 1}, -- Glutty Dragon Egg
            [10] = {item_id = 27120, count = 1}, -- Aztec Dragon Egg
            [11] = {item_id = 27137, count = 1}, -- Golden Dragon Egg
            [12] = {item_id = 27150, count = 1}, -- Mist Dragon Egg
             },
        rare_loot_table = { -- 5%
            [1] = {item_id = 29172, count = 1}, -- Serket Dragon Egg
            [2] = {item_id = 29171, count = 1},  -- Busby Dragon Egg
            [3] = {item_id = 27255, count = 1}, -- Golden Earth Dragon Egg 
            [4] = {item_id = 27132, count = 1}, -- Crystal Dragon Egg
            [5] = {item_id = 27160, count = 1}, -- Star Dragon Egg
            [6] = {item_id = 27133, count = 1} -- Eurus Dragon Egg
        }
    },
    [27454] = {text = {"The Egg is Regenerating..."}}, -- MISTFALL
    [41486] = {break_chance = 40, loot_chance = 55, lower_tier = 27454, 
        normal_loot_table = { -- 80%
            [1] = {item_id = 27142, count = 1}, -- Icewind Dragon Egg
            [2] = {item_id = 27135, count = 1}, -- Fluorescent Fae Dragon Egg
            [3] = {item_id = 27127, count = 1}, -- Cherimoya Dragon Egg
            [4] = {item_id = 27122, count = 1}, -- Snowstorm Dragon Egg
            [5] = {item_id = 27249, count = 1}, -- Frilled Dragon Egg
            [6] = {item_id = 27248, count = 1}, -- Sewn Dragon Egg ----
            [7] = {item_id = 27237, count = 1}, -- Rainbow Dragon Egg
            [8] = {item_id = 27505, count = 1}, -- Quartz Dragon Egg
            [9] = {item_id = 27501, count = 1}, -- Radiant Dragon Egg
            [10] = {item_id = 27486, count = 1}, -- Watefall Dragon Egg
            [11] = {item_id = 27479, count = 1}, -- Neon Dragon Egg
            [12] = {item_id = 27477, count = 1}, -- Ice Bullet Dragon Egg
        },
        semi_rare_loot_table = { -- 15%
            [1] = {item_id = 28596, count = 1}, -- Nature Dragon Egg
            [2] = {item_id = 29186, count = 1}, -- Dortal Dragon Egg
            [3] = {item_id = 29153, count = 1}, -- Blightwing Dragon Egg
            [4] = {item_id = 27144, count = 1}, -- Jade Dragon Egg
            [5] = {item_id = 27490, count = 1}, -- Lianas Dragon Egg
            [6] = {item_id = 27473, count = 1}, -- Purple Fire Dragon Egg
            [7] = {item_id = 27153, count = 1}, -- Origami Dragon Egg
            [8] = {item_id = 27256, count = 1}, -- Demon Dragon Egg
            [9] = {item_id = 27525, count = 1}, -- Platinum Dragon Egg
            [10] = {item_id = 27121, count = 1}, -- Anevi Dragon Egg
            [11] = {item_id = 27522, count = 1}, -- Polar Dragon Egg
            [12] = {item_id = 27230, count = 1}, -- Steel Dragon Egg
             },
        rare_loot_table = { -- 5%
            [1] = {item_id = 27356, count = 1}, -- Emerald Dragon Egg
            [2] = {item_id = 27368, count = 1},  -- Blizzard Dragon Egg
            [3] = {item_id = 27138, count = 1}, -- Greenfluid Earth Dragon Egg
            [4] = {item_id = 29174, count = 1}, -- Dittoglide Dragon Egg
            [5] = {item_id = 27528, count = 1}, -- Paradise Dragon Egg
            [6] = {item_id = 27370, count = 1} -- Orthimbras Dragon Egg
        }
    },
    [27460] = {text = {"The Egg is Regenerating..."}}, -- FALANAAR
    [41487] = {break_chance = 40, loot_chance = 55, lower_tier = 27460, 
        normal_loot_table = { -- 80%
            [1] = {item_id = 27494, count = 1}, -- Trickster Dragon Egg
            [2] = {item_id = 27152, count = 1}, -- Nightmare Fae Dragon Egg
            [3] = {item_id = 27134, count = 1}, -- Flaming Rock Dragon Egg
            [4] = {item_id = 27129, count = 1}, -- Citadel Dragon Egg
            [5] = {item_id = 27112, count = 1}, -- Ace Dragon Egg
            [6] = {item_id = 27110, count = 1}, -- Abnormal Dragon Egg 
            [7] = {item_id = 27250, count = 1}, -- Frightening Dragon Egg
            [8] = {item_id = 27241, count = 1}, -- Hedgehog Dragon Egg
            [9] = {item_id = 27236, count = 1}, -- Lava Dragon Egg
            [10] = {item_id = 27227, count = 1}, -- Mishievous Dragon Egg
            [11] = {item_id = 27537, count = 1}, -- Horned Dragon Egg
            [12] = {item_id = 27524, count = 1}, -- Larva Dragon Egg
        },
        semi_rare_loot_table = { -- 15%
            [1] = {item_id = 27489, count = 1}, -- Zombieski Dragon Egg
            [2] = {item_id = 27116, count = 1}, -- Aquamarine Dragon Egg
            [3] = {item_id = 27124, count = 1}, -- Blood Mage Dragon Egg
            [4] = {item_id = 27225, count = 1}, -- Music Dragon Egg
            [5] = {item_id = 27481, count = 1}, -- Penumbra Dragon Egg
            [6] = {item_id = 27359, count = 1}, -- Aguabrial Dragon Egg
            [7] = {item_id = 27466, count = 1}, -- Alien Dragon Egg
            [8] = {item_id = 27253, count = 1}, -- Electric Dragon Egg
            [9] = {item_id = 27365, count = 1}, -- Sapphire Dragon Egg
            [10] = {item_id = 27145, count = 1}, -- Juggernaut Dragon Egg
            [11] = {item_id = 27125, count = 1}, -- Chainmail Dragon Egg
            [12] = {item_id = 27360, count = 1}, -- Absinthe Dragon Egg
             },
        rare_loot_table = { -- 5%
            [1] = {item_id = 37641, count = 1}, -- Ebony Dragon Egg
            [2] = {item_id = 27362, count = 1},  -- Scale Dragon Egg
            [3] = {item_id = 27229, count = 1}, -- Meteor Earth Dragon Egg
            [4] = {item_id = 27139, count = 1}, -- Gummy Dragon Egg
            [5] = {item_id = 27159, count = 1}, -- Prismatic Dragon Egg
            [6] = {item_id = 27149, count = 1} -- Melted Dragon Egg
        }
    },
    [27462] = {text = {"The Egg is Regenerating..."}}, -- FREEWIND
    [41946] = {break_chance = 40, loot_chance = 55, lower_tier = 27462, 
        normal_loot_table = { -- 80%
            [1] = {item_id = 27161, count = 1}, -- Stonework Dragon Egg
            [2] = {item_id = 27470, count = 1}, -- Tanzanite Dragon Egg
            [3] = {item_id = 29161, count = 1}, -- Lagoon Dragon Egg
            [4] = {item_id = 37655, count = 1}, -- Malice Dragon Egg
            [5] = {item_id = 37654, count = 1}, -- Spirit Dragon Egg
            [6] = {item_id = 37653, count = 1}, -- Nova Dragon Egg 
            [7] = {item_id = 37650, count = 1}, -- Hellish Eye Dragon Egg
            [8] = {item_id = 27414, count = 1}, -- Sunlight Dragon Egg
            [9] = {item_id = 27171, count = 1}, -- Usurper Dragon Egg
            [10] = {item_id = 27165, count = 1}, -- Red Spark Dragon Egg
            [11] = {item_id = 27164, count = 1}, -- Golden Shard Dragon Egg
            [12] = {item_id = 27497, count = 1}, -- Tentacle Dragon Egg
        },
        semi_rare_loot_table = { -- 15%
            [1] = {item_id = 29208, count = 1}, -- Barite Dragon Egg
            [2] = {item_id = 29193, count = 1}, -- Tranquil Dragon Egg
            [3] = {item_id = 29184, count = 1}, -- Mylio Mage Dragon Egg
            [4] = {item_id = 29190, count = 1}, -- Burrow Dragon Egg
            [5] = {item_id = 37695, count = 1}, -- Clear Dragon Egg
            [6] = {item_id = 37651, count = 1}, -- Bifrost Dragon Egg
            [7] = {item_id = 27251, count = 1}, -- Fire and Ice Dragon Egg
            [8] = {item_id = 27155, count = 1}, -- Arctic Guardian Dragon Egg
            [9] = {item_id = 27371, count = 1}, -- Vethan Dragon Egg
            [10] = {item_id = 27415, count = 1}, -- Crystalline Dragon Egg
            [11] = {item_id = 27413, count = 1}, -- Turquoise Dragon Egg
            [12] = {item_id = 27496, count = 1}, -- Terra Dragon Egg
             },
        rare_loot_table = { -- 5%
            [1] = {item_id = 29185, count = 1}, -- Malefice Dragon Egg
            [2] = {item_id = 27228, count = 1},  -- Millium Dragon Egg
            [3] = {item_id = 27141, count = 1}, -- Impassible Earth Dragon Egg
            [4] = {item_id = 27488, count = 1}, -- Zombie Flame Dragon Egg
            [5] = {item_id = 27498, count = 1}, -- Salamander Dragon Egg
            [6] = {item_id = 37648, count = 1} -- Septentrional Dragon Egg
        }
    },
    [27463] = {text = {"The Egg is Regenerating..."}}, -- DEATH VALLEY
    [41947] = {break_chance = 40, loot_chance = 55, lower_tier = 27463, 
        normal_loot_table = { -- 80%
            [1] = {item_id = 27123, count = 1}, -- Blizzking Dragon Egg
            [2] = {item_id = 29165, count = 1}, -- Hyperion Dragon Egg
            [3] = {item_id = 29187, count = 1}, -- Zaffer Dragon Egg
            [4] = {item_id = 29168, count = 1}, -- Igluit Dragon Egg
            [5] = {item_id = 29151, count = 1}, -- Dark Rift Dragon Egg
            [6] = {item_id = 37696, count = 1}, -- Legacy Dragon Egg 
            [7] = {item_id = 37640, count = 1}, -- Ivory Dragon Egg
            [8] = {item_id = 27416, count = 1}, -- Nebulux Dragon Egg
            [9] = {item_id = 27163, count = 1}, -- Stormbringer Dragon Egg
            [10] = {item_id = 27158, count = 1}, -- Fae Seism Dragon Egg
            [11] = {item_id = 27115, count = 1}, -- Arid Dragon Egg
            [12] = {item_id = 27257, count = 1}, -- Dark Sky Dragon Egg
        },
        semi_rare_loot_table = { -- 15%
            [1] = {item_id = 27480, count = 1}, -- Onslaught Dragon Egg
            [2] = {item_id = 37656, count = 1}, -- Lost Dragon Egg
            [3] = {item_id = 37647, count = 1}, -- Almanach Mage Dragon Egg
            [4] = {item_id = 29160, count = 1}, -- Fomhar Dragon Egg
            [5] = {item_id = 29170, count = 1}, -- Mesmerus Dragon Egg
            [6] = {item_id = 29169, count = 1}, -- Melancholy Dragon Egg
            [7] = {item_id = 27234, count = 1}, -- Mammatus Dragon Egg
            [8] = {item_id = 27500, count = 1}, -- Raven Dragon Egg
            [9] = {item_id = 27503, count = 1}, -- Pyrex Dragon Egg
            [10] = {item_id = 27504, count = 1}, -- Ra Dragon Egg
            [11] = {item_id = 27493, count = 1}, -- Whimsical Dragon Egg
            [12] = {item_id = 27474, count = 1}, -- Headstrong Dragon Egg
             },
        rare_loot_table = { -- 5%
            [1] = {item_id = 29181, count = 1}, -- Diamond Dragon Egg
            [2] = {item_id = 29177, count = 1},  -- Oracle Dragon Egg
            [3] = {item_id = 37649, count = 1}, -- Explosive Dragon Egg
            [4] = {item_id = 29182, count = 1}, -- Riptide Dragon Egg
            [5] = {item_id = 27539, count = 1}, -- Nightglow Dragon Egg
            [6] = {item_id = 27156, count = 1} -- Sea Dragon Egg
        }
    },
    [27461] = {text = {"The Egg is Regenerating..."}}, -- DOLWATHA
    [41488] = {break_chance = 40, loot_chance = 55, lower_tier = 27461, 
        normal_loot_table = { -- 80%
            [1] = {item_id = 27358, count = 1}, -- Chronic Dragon Egg
            [2] = {item_id = 27374, count = 1}, -- Zetherus Dragon Egg
            [3] = {item_id = 29166, count = 1}, -- Incandescent Dragon Egg
            [4] = {item_id = 27136, count = 1}, -- Spiked Dragon Egg
            [5] = {item_id = 27128, count = 1}, -- Lancecacille Dragon Egg
            [6] = {item_id = 27119, count = 1}, -- Atomic Dragon Egg 
            [7] = {item_id = 27254, count = 1}, -- Dragonfly Dragon Egg
            [8] = {item_id = 27243, count = 1}, -- Grapple Dragon Egg
            [9] = {item_id = 27226, count = 1}, -- Elvenar Dragon Egg
            [10] = {item_id = 27538, count = 1}, -- Notus Dragon Egg
            [11] = {item_id = 27499, count = 1}, -- Terraformer Dragon Egg
            [12] = {item_id = 27484, count = 1}, -- Jewel Dragon Egg
        },
        semi_rare_loot_table = { -- 15%
            [1] = {item_id = 27535, count = 1}, -- Ovi Dragon Egg
            [2] = {item_id = 27245, count = 1}, -- Freezox Dragon Egg
            [3] = {item_id = 27476, count = 1}, -- Heartbroken Mage Dragon Egg
            [4] = {item_id = 27131, count = 1}, -- Ice Fire Dragon Egg
            [5] = {item_id = 27151, count = 1}, -- Moose Dragon Egg
            [6] = {item_id = 27231, count = 1}, -- Mercury Dragon Egg
            [7] = {item_id = 27240, count = 1}, -- Nucleus Dragon Egg
            [8] = {item_id = 27468, count = 1}, -- Metal Dragon Egg
            [9] = {item_id = 27495, count = 1}, -- Tiger Dragon Egg
            [10] = {item_id = 27146, count = 1}, -- Lantern Dragon Egg
            [11] = {item_id = 27523, count = 1}, -- Poisonux Dragon Egg
            [12] = {item_id = 27526, count = 1}, -- Petroleum Dragon Egg
             },
        rare_loot_table = { -- 5%
            [1] = {item_id = 27361, count = 1}, -- Komodo Dragon Egg
            [2] = {item_id = 27506, count = 1},  -- Quake Dragon Egg
            [3] = {item_id = 27252, count = 1}, -- Faust Dragon Egg
            [4] = {item_id = 27238, count = 1}, -- Kitsune Dragon Egg
            [5] = {item_id = 27367, count = 1}, -- Death Dragon Egg
            [6] = {item_id = 37694, count = 1} -- Tenebrous Dragon Egg
        }
    },
    [27464] = {text = {"The Egg is Regenerating..."}}, -- Arkeron
    [41948] = {break_chance = 40, loot_chance = 55, lower_tier = 27464, 
        normal_loot_table = { -- 80%
            [1] = {item_id = 27239, count = 1}, -- Hight Tension Dragon Egg
            [2] = {item_id = 27162, count = 1}, -- Sweet Dragon Egg
            [3] = {item_id = 29196, count = 1}, -- Charlatan Dragon Egg
            [4] = {item_id = 29173, count = 1}, -- Morpho Dragon Egg
            [5] = {item_id = 29167, count = 1}, -- Apotros Dragon Egg
            [6] = {item_id = 29156, count = 1}, -- Dark Matter Dragon Egg 
            [7] = {item_id = 29155, count = 1}, -- Spore Dragon Egg
            [8] = {item_id = 27118, count = 1}, -- Artic Dragon Egg
            [9] = {item_id = 27232, count = 1}, -- Maori Dragon Egg
            [10] = {item_id = 27369, count = 1}, -- Lex Dragon Egg
            [11] = {item_id = 27366, count = 1}, -- Ashmore Dragon Egg
            [12] = {item_id = 27351, count = 1}, -- Chronos Dragon Egg
        },
        semi_rare_loot_table = { -- 15%
            [1] = {item_id = 29189, count = 1}, -- Thorn Dragon Egg
            [2] = {item_id = 37644, count = 1}, -- Enchanted Dragon Egg
            [3] = {item_id = 29152, count = 1}, -- Viridian Mage Dragon Egg
            [4] = {item_id = 29194, count = 1}, -- Misfortune Dragon Egg
            [5] = {item_id = 27117, count = 1}, -- Archaic Dragon Egg
            [6] = {item_id = 29188, count = 1}, -- Nox Dragon Egg
            [7] = {item_id = 29183, count = 1}, -- Grove Dragon Egg
            [8] = {item_id = 29159, count = 1}, -- Muse Dragon Egg
            [9] = {item_id = 29195, count = 1}, -- Victory Dragon Egg
            [10] = {item_id = 27157, count = 1}, -- Scarab Dragon Egg
            [11] = {item_id = 27126, count = 1}, -- Chibihomp Dragon Egg
            [12] = {item_id = 27242, count = 1}, -- Portal Dragon Egg
             },
        rare_loot_table = { -- 5%
            [1] = {item_id = 29158, count = 1}, -- Vibe Dragon Egg
            [2] = {item_id = 29164, count = 1},  -- Monolith Dragon Egg
            [3] = {item_id = 29154, count = 1}, -- Abraxas Dragon Egg
            [4] = {item_id = 29204, count = 1}, -- Cansian Dragon Egg
            [5] = {item_id = 29202, count = 1}, -- Morphimagus Dragon Egg
            [6] = {item_id = 29197, count = 1}, -- Kage Dragon Egg
            [7] = {item_id = 27521, count = 1}, -- Predator Dragon Egg
            [8] = {item_id = 29192, count = 1}, -- Spectrapod Dragon Egg
        }
    },
}

local EggHunter = {
	maxLevel = 1000,
	experiencePerLevel = 95,
	storage = {
		level = 70814,
		experience = 70815
	},
}

local function giveEggHunterExperience(playerId, amount)
    local player = Player(playerId)
    if not player then
        print("Error in function giveEggHunterExperience -> player does not exist (check to ensure playerId being passed to function is correct)")
        return false
    end
 
    local EggHunterLevel = player:getStorageValue(EggHunter.storage.level)
    EggHunterLevel = EggHunterLevel >= 0 and EggHunterLevel or 0
 
    local EggHunterExperience = player:getStorageValue(EggHunter.storage.experience)
    EggHunterExperience = EggHunterExperience >= 0 and EggHunterExperience or 0
 
 
    EggHunterExperience = EggHunterExperience + amount
 
    if EggHunterLevel < EggHunter.maxLevel then
        repeat    
            local ExperienceRequiredForNextLevel = EggHunterLevel * EggHunter.experiencePerLevel
            if EggHunterExperience >= ExperienceRequiredForNextLevel then
                EggHunterExperience = EggHunterExperience - ExperienceRequiredForNextLevel
                EggHunterLevel = EggHunterLevel + 1
                local text = "You have advanced to Dragon Egg Hunter level " .. EggHunterLevel .. "."
                if EggHunterLevel == EggHunter.maxLevel then
                    text = "You have reached the maximum Dragon Egg Hunter level."
                end
                player:sendTextMessage(MESSAGE_EVENT_ADVANCE, text)
            else
                break
            end
        until (EggHunterLevel == EggHunter.maxLevel)
    end
 
    player:setStorageValue(EggHunter.storage.level, EggHunterLevel)
    player:setStorageValue(EggHunter.storage.experience, EggHunterExperience)
    return true
end

function DragonGloves.onUse(cid, item, fromPosition, itemEx, toPosition)
    local player = Player(cid)
		if not player then
    	return true
	end
	local levels = {
		expgainmin = 90, -- DO NOT CHANGE !
		expgainmax = 140, -- DO NOT CHANGE !
	}
    local object = config[itemEx.itemid]
    local experienceRan = math.random(levels.expgainmin, levels.expgainmax)
    if object then
    local prevOutfit = player:getOutfit()
    local newOutfitfemale = {
        lookType = 1676,
        lookHead = 20,
        lookBody = 30,
        lookLegs = 40,
        lookFeet = 50,
        lookAddons = 0,
        lookMount = 0
    }
    local newOutfitmale = {
        lookType = 1675,
        lookHead = 20,
        lookBody = 30,
        lookLegs = 40,
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
        if giveEggHunterExperience(player:getId(), experienceRan) then
			player:sendTextMessage(MESSAGE_INFO_DESCR, "You have gained "..experienceRan.." experience on Dragon Egg Hunter Skill.")
			
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
            doSendMagicEffect(toPosition, 32)
            return true
        end
     
        local rand_break = math.random(100)
        if rand_break <= object.break_chance then
            doTransformItem(itemEx.uid, object.lower_tier)
            doSendMagicEffect(toPosition, CONST_ME_POFF)
        end
 
        local rand_reward = math.random(100)
        if rand_reward > (object.loot_chance + 10) then
            doSendMagicEffect(toPosition, 32)
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
            if rand_loot < 8 then
                loot_table = object.rare_loot_table
            elseif rand_loot < 23 then
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

DragonGloves:id(27457)
DragonGloves:register()