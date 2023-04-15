local warfront_hel, warfront_ar, warfront_l, warfront_boo, fanged_hel, fanged_ar, fanged_l, fanged_boo,
regalia_hel, refalia_ar, regalia_l, regalia_sh, regalia_boo, starkoh_quiver, scouting_h, scouting_ar, scouting_l,
scouting_boo, lightbringer_h, lightbringer_ar, lightbringer_l, lightbringer_boo, lightbringer_bp, lightbringer_shi,
lightforged_bp, lightforged_casck, lightforged_pl, lightfoged_pan, lightforged_boo, lightforged_crown, lightforged_m_boo,
darkshore_bp, darkshore_hel, darkshore_arm, darkshore_l, darkshore_boo, vanguard_sh, vanguard_bp, vanguard_boo, 
kirin_bp, kirin_h, kirin_ar, kirin_l, halloween_bp
= 41685, 41686, 41567, 41568, 41569, 41570, 41571, 41572, 41573, 41574, 41575, 41576, 41577, 41462, 41473, 41475, 41476,
41477, 41455, 41453, 39239, 39240, 39241, 39242, 39252, 39253, 39254, 39255, 39256, 39257, 39258, 39259, 39260, 39261, 39262, 
39263, 40724, 40725, 40726, 39411, 39424, 39425, 39426, 34842

local darkshore_sw, darkshore_axe, darkshore_wand, darkshore_bow, darkshore_rod, lightforged_sw, lightforged_clu, lightforged_axe,
darkshore_clu, darkshore_elven_bow, vanguard_sw, vanguard_mac, vanguard_wand, vanguard_bow, kirin_wand, kirin_axe, kirin_sw, kirin_scythe 
= 39281, 39282, 39283, 39284, 39285, 39286, 39287, 39288, 39289, 39290, 40731, 40732, 40733, 40734, 39407, 39408, 39409, 39410


local config = {
	[12788] = { -- epic equipment discovery scroll
		{{1, 35000}},
		{{35001, 36000}, warfront_hel},
		{{36001, 37000}, warfront_ar},
		{{37001, 38000}, warfront_l},
		{{38001, 39000}, warfront_boo},
		{{39001, 40000}, fanged_hel},
		{{40001, 42000}, fanged_ar},
		{{42001, 44000}, fanged_l},
		{{44001, 46000}, fanged_boo},
		{{46001, 48000}, regalia_hel},
		{{48001, 50000}, refalia_ar},
		{{50001, 51000}, regalia_l},
		{{51001, 52000}, regalia_sh},
		{{52001, 53000}, regalia_boo},
		{{53001, 54000}, starkoh_quiver},
		{{54001, 55000}, scouting_h},
		{{55001, 56000}, scouting_ar},
		{{56001, 57000}, scouting_l},
		{{57001, 58000}, scouting_boo},
		{{58001, 59000}, lightbringer_h},
		{{59001, 60000}, lightbringer_ar},
		{{60001, 62000}, lightbringer_l},
		{{62001, 64000}, lightbringer_boo},
		{{64001, 66000}, lightbringer_bp},
		{{66001, 68000}, lightbringer_shi},
		{{68001, 70000}, lightforged_bp},
		{{70001, 71000}, lightforged_casck},
		{{71001, 72000}, lightforged_pl},
		{{72001, 75000}, lightfoged_pan},
		{{75001, 77000}, lightforged_boo},
		{{77001, 79000}, lightforged_crown},
		{{79001, 80000}, lightforged_boo},
		{{80001, 81000}, lightforged_m_boo},
		{{81001, 83000}, darkshore_bp},
		{{83001, 85000}, darkshore_hel},
		{{85001, 87000}, darkshore_arm},
		{{87001, 89000}, darkshore_l},
		{{89001, 90000}, darkshore_boo},
		{{90001, 91000}, vanguard_sh},
		{{91001, 92000}, vanguard_bp},
		{{92001, 93000}, vanguard_boo},
		{{93001, 94000}, kirin_bp},
		{{94001, 95000}, kirin_h},
		{{95001, 97000}, kirin_ar},
		{{97001, 98000}, kirin_l},
		{{98001, 100000}, halloween_bp},
	},

	[12791] = { -- epic weapon discovery scroll
		{{1, 50000}},
		{{50001, 52000}, darkshore_sw},
		{{52001, 54000}, darkshore_axe},
		{{54001, 56000}, darkshore_wand},
		{{56001, 58000}, darkshore_bow},
		{{58001, 60000}, darkshore_rod},
		{{60001, 62000}, lightforged_sw},
		{{62001, 64000}, lightforged_clu},
		{{64001, 66000}, lightforged_axe},
		{{66001, 68000}, darkshore_clu},
		{{68001, 70000}, darkshore_elven_bow},
		{{70001, 74000}, vanguard_sw},
		{{74001, 79000}, vanguard_mac},
		{{79001, 82000}, vanguard_wand},
		{{82001, 86000}, vanguard_bow},
		{{86001, 91000}, kirin_wand},
		{{91001, 95000}, kirin_axe},
		{{95001, 98000}, kirin_sw},
		{{98001, 100000}, kirin_scythe}
	},

}

local epicIdenRune = Action()

local EpicIdentificator = {
	maxLevel = 500,
	experiencePerLevel = 250,
	storage = {
		level = 31190,
		experience = 31191
	},
}

local function giveEpicIdentificatorExperience(playerId, amount)
    local player = Player(playerId)
    if not player then
        print("Error in function giveEpicIdentificatorExperience -> player does not exist (check to ensure playerId being passed to function is correct)")
        return false
    end
 
    local EpicIdentificatorLevel = player:getStorageValue(EpicIdentificator.storage.level)
    EpicIdentificatorLevel = EpicIdentificatorLevel >= 0 and EpicIdentificatorLevel or 0
 
    local EpicIndenExperience = player:getStorageValue(EpicIdentificator.storage.experience)
    EpicIndenExperience = EpicIndenExperience >= 0 and EpicIndenExperience or 0
 
    
    EpicIndenExperience = EpicIndenExperience + amount
 
    if EpicIdentificatorLevel < EpicIdentificator.maxLevel then
        repeat    
            local ExperienceRequiredForNextLevel = EpicIdentificatorLevel * EpicIdentificator.experiencePerLevel
            if EpicIndenExperience >= ExperienceRequiredForNextLevel then
                EpicIndenExperience = EpicIndenExperience - ExperienceRequiredForNextLevel
                EpicIdentificatorLevel = EpicIdentificatorLevel + 1
                local text = "You have advanced to Epic Indentificator level " .. EpicIdentificatorLevel .. "."
                if EpicIdentificatorLevel == EpicIdentificator.maxLevel then
                    text = "You have reached the maximum Epic Identificator level. You are an Expert."
                end
                player:sendTextMessage(MESSAGE_EVENT_ADVANCE, text)
            else
                break
            end
        until (EpicIdentificatorLevel == EpicIdentificator.maxLevel)
    end
 
    player:setStorageValue(EpicIdentificator.storage.level, EpicIdentificatorLevel)
    player:setStorageValue(EpicIdentificator.storage.experience, EpicIndenExperience)
    return true 
end

function epicIdenRune.onUse(player, item, fromPosition, target, toPosition, isHotkey)
	local levels = {
		expgainmin = 250, -- DO NOT CHANGE !
		expgainmax = 295, -- DO NOT CHANGE !
	}
	local experienceRan = math.random(levels.expgainmin, levels.expgainmax)
	local targetItem = config[target.itemid]
	if not targetItem then
		return true
	end
	if giveEpicIdentificatorExperience(player:getId(), experienceRan) then
		player:sendTextMessage(MESSAGE_INFO_DESCR, "You have gained "..experienceRan.." experience on Epic identification skill.")
		
	end
	local chance = math.random(100000)
	for i = 1, #targetItem do
		if chance >= targetItem[i][1][1] and chance <= targetItem[i][1][2] then
			if targetItem[i][2] then
				target:transform(targetItem[i][2])
				toPosition:sendMagicEffect(CONST_ME_MAGIC_GREEN)
			elseif player:removeItem(12797, 1) then
				player:sendTextMessage(MESSAGE_INFO_DESCR, "Epic discovery scroll has been saved by the gods.")
			else
				player:say((isInArray({12788, 12791}, target.itemid) and "The item was already damaged so badly that it broke when you tried to identificate it." or "The scroll were already damaged so badly that they broke when you tried to identificate."),TALKTYPE_MONSTER_SAY)
				target:remove()
				toPosition:sendMagicEffect(CONST_ME_BLOCKHIT)
			end
			return item:remove(1)
		end
	end
end

epicIdenRune:id(12794)
epicIdenRune:register()
