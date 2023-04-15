local elven_hh, elven_ha, elven_hl, elven_hb, ice_itter, frozen_hel, frozen_ar, frozen_leg, frozen_bo, vinguard_h,
vinguard_ar, vinguard_l, vinguard_bo, glorious_h, glorious_p, glorious_l, glorious_bo, onsl_h, onsl_ar, onsl_leg, onslaug_boo,
alchemist_bp, phantomas_boo, deathbone_ar, darkbone_ar, phantomas_l, tentacle_spell, tentacle_boo, tentacle_l, tentacle_ar, tentacle_h
= 41916, 41917, 41918, 41919, 41920, 41921, 41922, 41923, 41924, 41756, 41757, 41758, 41708, 41709, 41710, 41711, 41687,
41465, 41466, 41467, 41468, 39273, 39278, 40728, 40729, 40730, 36860, 36861, 36863, 36864, 36865

local malachite_clu, malachite_sw, malachite_axe, graviton_cross, the_face_crusher, vorpal_flame, divine_wand, divine_axe, divine_mace,
divine_swo, divine_bow, obscurus_swo, obscurus_bo, obscurus_mace, obscurus_axe, tentacle_wand, tentacle_axe, tentacle_bow,
tentacle_mace, tentacle_sword, vindictive_sw, frost_axe, frost_bow
= 34641, 34642, 34644, 34806, 34807, 35044, 39215, 39216, 39217, 39218, 39219, 39220, 39221, 39222, 38138, 36858, 36859, 36862, 
36866, 36857, 36810, 34632, 34631


local config = {
	[12787] = { -- very Rare equipment discovery scroll
		{{1, 25000}},
		{{25001, 28000}, elven_hh},
		{{28001, 32000}, elven_ha},
		{{32001, 36000}, elven_hl},
		{{36001, 39000}, elven_hb},
		{{39001, 42000}, ice_itter},
		{{42001, 44000}, frozen_hel},
		{{44001, 46000}, frozen_ar},
		{{46001, 50000}, frozen_leg},
		{{50001, 52000}, vinguard_h},
		{{52001, 54000}, frozen_bo},
		{{54001, 57000}, vinguard_ar},
		{{57001, 60000}, vinguard_l},
		{{60001, 62000}, vinguard_bo},
		{{62001, 64000}, glorious_h},
		{{64001, 67000}, glorious_p},
		{{67001, 69000}, glorious_l},
		{{69001, 72000}, glorious_bo},
		{{72001, 74000}, onsl_h},
		{{74001, 76000}, onsl_ar},
		{{76001, 78000}, onsl_leg},
		{{78001, 80000}, onslaug_boo},
		{{80001, 82000}, alchemist_bp},
		{{82001, 85000}, phantomas_boo},
		{{85001, 87000}, deathbone_ar},
		{{87001, 90000}, darkbone_ar},
		{{90001, 92000}, phantomas_l},
		{{92001, 94000}, tentacle_spell},
		{{94001, 96000}, tentacle_boo},
		{{96001, 98000}, tentacle_l},
		{{98001, 99000}, tentacle_ar},
		{{99001, 100000}, tentacle_h}
	},

	[12790] = { -- very Rare weapon discovery scroll
		{{1, 35000}},
		{{35001, 37000}, malachite_clu},
		{{37001, 41000}, malachite_sw},
		{{41001, 44000}, malachite_axe},
		{{44001, 48000}, graviton_cross},
		{{48001, 52000}, the_face_crusher},
		{{52001, 58000}, vorpal_flame},
		{{58001, 62000}, divine_wand},
		{{62001, 65000}, divine_axe},
		{{65001, 68000}, divine_mace},
		{{68001, 71000}, divine_swo},
		{{71001, 75000}, divine_bow},
		{{75001, 78000}, obscurus_swo},
		{{78001, 80000}, obscurus_bo},
		{{80001, 82000}, obscurus_mace},
		{{82001, 84000}, obscurus_axe},
		{{84001, 86000}, tentacle_wand},
		{{86001, 88000}, tentacle_axe},
		{{88001, 90000}, tentacle_bow},
		{{90001, 92000}, tentacle_mace},
		{{92001, 94000}, tentacle_sword},
		{{94001, 96000}, vindictive_sw},
		{{96001, 98000}, frost_axe},
		{{98001, 100000}, frost_bow}
	},

}

local rareIdenRune = Action()


local VeryRareIdentificator = {
	maxLevel = 500,
	experiencePerLevel = 250,
	storage = {
		level = 31168,
		experience = 31169
	},
}

local function giveVeryRareIdentificatorExperience(playerId, amount)
    local player = Player(playerId)
    if not player then
        print("Error in function giveVeryRareIdentificatorExperience -> player does not exist (check to ensure playerId being passed to function is correct)")
        return false
    end
 
    local VeryRareIdentificatorLevel = player:getStorageValue(VeryRareIdentificator.storage.level)
    VeryRareIdentificatorLevel = VeryRareIdentificatorLevel >= 0 and VeryRareIdentificatorLevel or 0
 
    local VeryRareIndenExperience = player:getStorageValue(VeryRareIdentificator.storage.experience)
    VeryRareIndenExperience = VeryRareIndenExperience >= 0 and VeryRareIndenExperience or 0
 
    
    VeryRareIndenExperience = VeryRareIndenExperience + amount
 
    if VeryRareIdentificatorLevel < VeryRareIdentificator.maxLevel then
        repeat    
            local ExperienceRequiredForNextLevel = VeryRareIdentificatorLevel * VeryRareIdentificator.experiencePerLevel
            if VeryRareIndenExperience >= ExperienceRequiredForNextLevel then
                VeryRareIndenExperience = VeryRareIndenExperience - ExperienceRequiredForNextLevel
                VeryRareIdentificatorLevel = VeryRareIdentificatorLevel + 1
                local text = "You have advanced to Very Rare Indentificator level " .. VeryRareIdentificatorLevel .. "."
                if VeryRareIdentificatorLevel == VeryRareIdentificator.maxLevel then
                    text = "You have reached the maximum very rare Identificator level. You are an Expert."
                end
                player:sendTextMessage(MESSAGE_EVENT_ADVANCE, text)
            else
                break
            end
        until (VeryRareIdentificatorLevel == VeryRareIdentificator.maxLevel)
    end
 
    player:setStorageValue(VeryRareIdentificator.storage.level, VeryRareIdentificatorLevel)
    player:setStorageValue(VeryRareIdentificator.storage.experience, VeryRareIndenExperience)
    return true 
end

function rareIdenRune.onUse(player, item, fromPosition, target, toPosition, isHotkey)
	local levels = {
		expgainmin = 250, -- DO NOT CHANGE !
		expgainmax = 295, -- DO NOT CHANGE !
	}
	local experienceRan = math.random(levels.expgainmin, levels.expgainmax)
	local targetItem = config[target.itemid]
	if not targetItem then
		return true
	end

	local chance = math.random(100000)
	for i = 1, #targetItem do
		if chance >= targetItem[i][1][1] and chance <= targetItem[i][1][2] then
			if targetItem[i][2] then
				if giveVeryRareIdentificatorExperience(player:getId(), experienceRan) then
					player:sendTextMessage(MESSAGE_INFO_DESCR, "You have gained "..experienceRan.." experience on very rare identification skill.")
					
				end
				target:transform(targetItem[i][2])
				toPosition:sendMagicEffect(CONST_ME_MAGIC_GREEN)
			elseif player:removeItem(12796, 1) then
				player:sendTextMessage(MESSAGE_INFO_DESCR, "Very Rare discovery scroll has been saved by the gods.")
			else
				player:say((isInArray({12787, 12790}, target.itemid) and "The item was already damaged so badly that it broke when you tried to identificate it." or "The scroll were already damaged so badly that they broke when you tried to identificate."),TALKTYPE_MONSTER_SAY)
				target:remove()
				toPosition:sendMagicEffect(CONST_ME_BLOCKHIT)
			end
			return item:remove(1)
		end
	end
end

rareIdenRune:id(12793)
rareIdenRune:register()
