local wrath_of_the_lich,  megalithe_bp, cruels_h, cruels_bp, cruels_ar, cruels_leg, cruels_boo, cruels_sh,
radiant_h, radiant_ar, radiant_l, radiant_boo, radiant_bp, infernatil_helmet, sunwell_spell, vengeful_spell,
tyrant_spell, emeraude_ring, emeraude_amu, labradorite_amu, labradorite_ring, sapphir_ring
= 41674, 41786, 41774, 41775, 41776, 41777, 41783, 41784, 40695, 40696, 40698, 40699, 40700, 40735,
39855, 39857, 7491, 7492, 8712, 8713, 8711

local megalithe_sl, megalithe_sw, megalithe_scythe, megalithe_hammer, megalithe_axe, cruels_rod, cruels_wand, cruels_bow,
cruels_cross, radiant_cross
= 41787, 41788, 41789, 41790, 41791, 41778, 41779, 41781, 41782, 40697


local config = {
	[12789] = { -- divine equipment discovery scroll
		{{1, 60000}},
		{{60001, 63000}, wrath_of_the_lich},
		{{63001, 65000}, megalithe_bp},
		{{65001, 68000}, cruels_bp},
		{{68001, 71000}, cruels_h},
		{{71001, 74000}, cruels_ar},
		{{74001, 76000}, cruels_leg},
		{{76001, 78000}, cruels_boo},
		{{78001, 81000}, cruels_sh},
		{{81001, 83000}, radiant_h},
		{{83001, 85000}, radiant_ar},
		{{85001, 87000}, radiant_l},
		{{87001, 89000}, radiant_boo},
		{{89001, 90000}, radiant_bp},
		{{90001, 91000}, infernatil_helmet},
		{{91001, 92000}, sunwell_spell},
		{{92001, 93000}, vengeful_spell},
		{{93001, 95000}, tyrant_spell},
		{{95001, 96000}, emeraude_ring},
		{{96001, 97000}, emeraude_amu},
		{{97001, 98000}, labradorite_amu},
		{{98001, 99000}, labradorite_ring},
		{{99001, 100000}, sapphir_ring}
	},

	[12792] = { -- divine weapon discovery scroll
		{{1, 65000}},
		{{65001, 52000}, megalithe_sl},
		{{68001, 54000}, megalithe_sw},
		{{72001, 56000}, megalithe_scythe},
		{{75001, 58000}, megalithe_hammer},
		{{78001, 60000}, megalithe_axe},
		{{83001, 62000}, cruels_rod},
		{{87001, 64000}, cruels_wand},
		{{90001, 66000}, cruels_bow},
		{{95001, 68000}, cruels_cross},
		{{97001, 100000}, radiant_cross}
	},

}

local divineIdenRune = Action()


local divineIdentificator = {
	maxLevel = 500,
	experiencePerLevel = 250,
	storage = {
		level = 31184,
		experience = 31185
	},
}

local function giveDivineIdentificatorExperience(playerId, amount)
    local player = Player(playerId)
    if not player then
        print("Error in function giveDivineIdentificatorExperience -> player does not exist (check to ensure playerId being passed to function is correct)")
        return false
    end
 
    local DivineIdentificatorLevel = player:getStorageValue(divineIdentificator.storage.level)
    DivineIdentificatorLevel = DivineIdentificatorLevel >= 0 and DivineIdentificatorLevel or 0
 
    local DivineIndenExperience = player:getStorageValue(divineIdentificator.storage.experience)
    DivineIndenExperience = DivineIndenExperience >= 0 and DivineIndenExperience or 0
 
    
    DivineIndenExperience = DivineIndenExperience + amount
 
    if DivineIdentificatorLevel < divineIdentificator.maxLevel then
        repeat    
            local ExperienceRequiredForNextLevel = DivineIdentificatorLevel * divineIdentificator.experiencePerLevel
            if DivineIndenExperience >= ExperienceRequiredForNextLevel then
                DivineIndenExperience = DivineIndenExperience - ExperienceRequiredForNextLevel
                DivineIdentificatorLevel = DivineIdentificatorLevel + 1
                local text = "You have advanced to Divine Indentificator level " .. DivineIdentificatorLevel .. "."
                if DivineIdentificatorLevel == divineIdentificator.maxLevel then
                    text = "You have reached the maximum Divine Identificator level. You are an Expert."
                end
                player:sendTextMessage(MESSAGE_EVENT_ADVANCE, text)
            else
                break
            end
        until (DivineIdentificatorLevel == divineIdentificator.maxLevel)
    end
 
    player:setStorageValue(divineIdentificator.storage.level, DivineIdentificatorLevel)
    player:setStorageValue(divineIdentificator.storage.experience, DivineIndenExperience)
    return true 
end

function divineIdenRune.onUse(player, item, fromPosition, target, toPosition, isHotkey)
	local levels = {
		expgainmin = 250, -- DO NOT CHANGE !
		expgainmax = 295, -- DO NOT CHANGE !
	}
	local experienceRan = math.random(levels.expgainmin, levels.expgainmax)
	local targetItem = config[target.itemid]
	if not targetItem then
		return true
	end
	if giveDivineIdentificatorExperience(player:getId(), experienceRan) then
		player:sendTextMessage(MESSAGE_INFO_DESCR, "You have gained "..experienceRan.." experience on Divine identification skill.")
		
	end
	local chance = math.random(100000)
	for i = 1, #targetItem do
		if chance >= targetItem[i][1][1] and chance <= targetItem[i][1][2] then
			if targetItem[i][2] then
				target:transform(targetItem[i][2])
				toPosition:sendMagicEffect(CONST_ME_MAGIC_GREEN)
			elseif player:removeItem(12802, 1) then
				player:sendTextMessage(MESSAGE_INFO_DESCR, "Divine discovery scroll has been saved by the gods.")
			else
				player:say((isInArray({12789, 12792}, target.itemid) and "The item was already damaged so badly that it broke when you tried to identificate it." or "The scroll were already damaged so badly that they broke when you tried to identificate."),TALKTYPE_MONSTER_SAY)
				target:remove()
				toPosition:sendMagicEffect(CONST_ME_BLOCKHIT)
			end
			return item:remove(1)
		end
	end
end

divineIdenRune:id(12795)
divineIdenRune:register()
