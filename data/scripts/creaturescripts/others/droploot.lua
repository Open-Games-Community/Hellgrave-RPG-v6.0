dofile('data/modules/scripts/blessings/blessings.lua')
local dropLoot = CreatureEvent("DropLoot")
function dropLoot.onDeath(player, corpse, killer, mostDamage, unjustified, mostDamage_unjustified)
	local town = player:getTown()
	if town and town:getId() == TOWNS_LIST.KINDERNIA and player:getLevel() < 30 then
		return true
	end

	if player:hasFlag(PlayerFlag_NotGenerateLoot) then
		return true
	end
	Blessings.DebugPrint("onDeath DROPLOOT EVENT DropLoot")
	return Blessings.PlayerDeath(player, corpse, killer)
end
dropLoot:register()
