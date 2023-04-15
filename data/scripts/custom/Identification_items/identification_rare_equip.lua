local Kusari_h, kusari_h, kusari_sh, kor_h, kor_a, kor_l, 
kor_bo, brutal_gh, brutal_gp, brutal_gl, brutal_gb, peaceful_q, elven_hood_qui, foresworn_b, foresworn_h,
foresworn_a, foresworn_l, foresworn_bo, betrayed_a, recthing_a, frozen_hshield, allister_h, bloodscale_pl,
bloodscale_h, bloodscale_leg, bloodscale_bp, bloodscale_shi, bloodscale_boo, relentless_h, relentless_a, relentless_l,
relentless_boo, relentless_sh, relentless_bp, saronite_h, saronite_a, saronite_l, saronite_boo, saronite_bp, saronite_sh,
unchained_h, unchained_a, unchained_l, unchained_boo, unchained_bp, exalted_l, deathbone_spell, cataclysm_spell,
defias_h, defias_a, defias_l, defias_boo, sanctified_h, sanctified_a, sanctified_p, sanctified_boo
= 34629, 34630, 34633, 41925, 41753, 41754, 41755, 41688, 41689, 41683, 41684,
41457, 41461, 39247, 39248, 39249, 39250, 39251, 39268, 39269, 39274, 39279, 41780,
41785, 40686, 40687, 40693, 40694, 40707, 40708, 40709, 40710, 40711, 40712, 40713, 40714, 40715, 40716,
40717, 40718, 40719, 40720, 40721, 40722, 40723, 40727, 39854, 39856, 39860 ,39397, 39398, 39399, 39400,
39401, 39402, 39403

local dark_crystal_wand, wand_flame, rod_flame, shattered_s, shattered_rod, guardless_axe, frozen_hbow, frozen_haxe,
frozen_hwand, foresworn_sw, foresworn_clu, foresworn_axe, foreworn_wand, bloodscale_axe, bloddscale_club, bloodscale_graxe, 
bloodscale_wand, bloodscale_bow, stalked_axe, colossal_sword, sanctified_wand, plagueheart_sword, aldor_axe, 
defias_sword, defias_club, defias_bow, defias_wand, defias_axe
= 35088, 35089, 35090, 39270, 39271, 39272, 39275, 39276, 39277, 39291, 39292, 39212, 39213, 
40688, 40689, 40690, 40691, 40692, 39859, 39858, 39404, 39405, 39406, 39428, 39429, 36957, 36951, 36952


local config = {
	[24334] = { -- rare equipment discovery scroll
		{{1, 15000}},
		{{15001, 17000}, Kusari_h},
		{{17001, 19000}, kusari_h},
		{{19001, 22000}, kusari_sh},
		{{22001, 25000}, betrayed_a},
		{{25001, 27000}, recthing_a},
		{{27001, 30000}, frozen_hshield},
		{{30001, 32000}, kor_h},
		{{32001, 34000}, kor_a},
		{{34001, 37000}, kor_l},
		{{37001, 40000}, kor_bo},
		{{40001, 43000}, brutal_gh},
		{{43001, 46000}, brutal_gp},
		{{46001, 50000}, brutal_gl},
		{{50001, 52000}, brutal_gb},
		{{52001, 55000}, elven_hood_qui},
		{{55001, 58000}, peaceful_q},
		{{58001, 62000}, foresworn_b},
		{{62001, 63000}, foresworn_h},
		{{63001, 64000}, foresworn_a},
		{{64001, 65000}, foresworn_l},
		{{65001, 66000}, foresworn_bo},
		{{66001, 67000}, allister_h},
		{{67001, 68000}, bloodscale_pl},
		{{68001, 69000}, bloodscale_h},
		{{69001, 70000}, bloodscale_leg},
		{{70001, 71000}, bloodscale_bp},
		{{71001, 72000}, bloodscale_boo},
		{{72001, 73000}, relentless_h},
		{{73001, 74000}, relentless_a},
		{{74001, 75000}, relentless_l},
		{{75001, 76000}, relentless_boo},
		{{76001, 77000}, relentless_sh},
		{{77001, 78000}, relentless_bp},
		{{78001, 79000}, saronite_h},
		{{79001, 80000}, saronite_a},
		{{80001, 81000}, saronite_l},
		{{81001, 82000}, saronite_boo},
		{{82001, 83000}, saronite_bp},
		{{83001, 84000}, saronite_sh},
		{{84001, 85000}, unchained_h},
		{{85001, 86000}, unchained_a},
		{{86001, 87000}, unchained_l},
		{{87001, 88000}, unchained_boo},
		{{88001, 89000}, unchained_bp},
		{{89001, 90000}, deathbone_spell},
		{{90001, 91000}, cataclysm_spell},
		{{91001, 92000}, defias_h},
		{{92001, 93000}, defias_a},
		{{93001, 94000}, defias_l},
		{{94001, 95000}, defias_boo},
		{{95001, 96000}, sanctified_h},
		{{96001, 97000}, sanctified_a},
		{{97001, 98000}, sanctified_p},
		{{98001, 99000}, sanctified_boo},
		{{99001, 100000}, exalted_l},
	},

	[24335] = { -- rare weapon discovery scroll
		{{1, 20000}},
		{{20001, 23000}, frozen_hwand},
		{{23001, 26000}, dark_crystal_wand},
		{{26001, 29000}, wand_flame},
		{{29001, 32000}, rod_flame},
		{{32001, 35000}, shattered_s},
		{{35001, 38000}, shattered_rod},
		{{38001, 41000}, guardless_axe},
		{{41001, 44000}, frozen_hbow},
		{{44001, 47000}, frozen_haxe},
		{{47001, 50000}, foresworn_sw},
		{{50001, 53000}, foresworn_clu},
		{{53001, 56000}, foresworn_axe},
		{{56001, 59000}, foreworn_wand},
		{{59001, 62000}, bloodscale_axe},
		{{62001, 65000}, bloddscale_club},
		{{65001, 68000}, bloodscale_graxe},
		{{68001, 71000}, defias_sword},
		{{71001, 74000}, defias_club},
		{{74001, 77000}, defias_bow},
		{{77001, 80000}, defias_wand},
		{{80001, 83000}, defias_axe},
		{{83001, 86000}, bloodscale_wand},
		{{86001, 89000}, bloodscale_bow},
		{{89001, 92000}, stalked_axe},
		{{92001, 95000}, colossal_sword},
		{{95001, 98000}, sanctified_wand},
		{{98001, 99000}, plagueheart_sword},
		{{99001, 100000}, aldor_axe},
	},

}

local RareIdentificator = {
	maxLevel = 500,
	experiencePerLevel = 250,
	storage = {
		level = 31188,
		experience = 31189
	},
}

local function giveRareIdentificatorExperience(playerId, amount)
    local player = Player(playerId)
    if not player then
        print("Error in function giveRareIdentificatorExperience -> player does not exist (check to ensure playerId being passed to function is correct)")
        return false
    end
 
    local RareIdentificatorLevel = player:getStorageValue(RareIdentificator.storage.level)
    RareIdentificatorLevel = RareIdentificatorLevel >= 0 and RareIdentificatorLevel or 0
 
    local RareIndenExperience = player:getStorageValue(RareIdentificator.storage.experience)
    RareIndenExperience = RareIndenExperience >= 0 and RareIndenExperience or 0
 
    
    RareIndenExperience = RareIndenExperience + amount
 
    if RareIdentificatorLevel < RareIdentificator.maxLevel then
        repeat    
            local ExperienceRequiredForNextLevel = RareIdentificatorLevel * RareIdentificator.experiencePerLevel
            if RareIndenExperience >= ExperienceRequiredForNextLevel then
                RareIndenExperience = RareIndenExperience - ExperienceRequiredForNextLevel
                RareIdentificatorLevel = RareIdentificatorLevel + 1
                local text = "You have advanced to Rare Indentificator level " .. RareIdentificatorLevel .. "."
                if RareIdentificatorLevel == RareIdentificator.maxLevel then
                    text = "You have reached the maximum Rare Identificator level. You are an Expert."
                end
                player:sendTextMessage(MESSAGE_EVENT_ADVANCE, text)
            else
                break
            end
        until (RareIdentificatorLevel == RareIdentificator.maxLevel)
    end
 
    player:setStorageValue(RareIdentificator.storage.level, RareIdentificatorLevel)
    player:setStorageValue(RareIdentificator.storage.experience, RareIndenExperience)
    return true 
end

local rareIdenRune = Action()

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
	if giveRareIdentificatorExperience(player:getId(), experienceRan) then
		player:sendTextMessage(MESSAGE_INFO_DESCR, "You have gained "..experienceRan.." experience on rare identification skill.")
		
	end
	local chance = math.random(100000)
	for i = 1, #targetItem do
		if chance >= targetItem[i][1][1] and chance <= targetItem[i][1][2] then
			if targetItem[i][2] then
				target:transform(targetItem[i][2])
				toPosition:sendMagicEffect(CONST_ME_MAGIC_GREEN)
			elseif player:removeItem(13290, 1) then
				player:sendTextMessage(MESSAGE_INFO_DESCR, "Rare discovery scroll has been saved by the gods.")
			else
				player:say((isInArray({24334, 24335}, target.itemid) and "The item was already damaged so badly that it broke when you tried to identificate it." or "The scroll were already damaged so badly that they broke when you tried to identificate."),TALKTYPE_MONSTER_SAY)
				target:remove()
				toPosition:sendMagicEffect(CONST_ME_BLOCKHIT)
			end
			return item:remove(1)
		end
	end
end

rareIdenRune:id(13248)
rareIdenRune:register()
