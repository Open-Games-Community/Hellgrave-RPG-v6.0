local broadBossOne = CreatureEvent("broadBossOne")

local bossDeath = "Azazel [*****]"
local bossDeathTwo = "[Unique] Torturer of Souls"
local bossDeathTrois = "Bahamut [*****]"
local bossDeathQuatre = "Ultros [*****]"
local bossDeathCinq = "Onyxia [*****]"
local bossDeathSix = "Dracafeu [*****]"
local bossDeathSept = "The Wyrm"
local bossDeathHuit = "Gahz'rilla [*****]"
local bossDeathNeuf = "The Monster [*****]"
local bossDeathDix = "Lost Terror [*****]"

function broadBossOne.onDeath(monster, corpse, killer, mostDamageKiller, unjustified, mostDamageUnjustified)    

    if monster:getName() == bossDeath then
	
	   Game.broadcastMessage(""..killer:getName().." has killed " ..monster:getName().. " boss.")
    elseif monster:getName() == bossDeathTwo then
       Game.broadcastMessage("" ..killer:getName().. " has killed " ..monster:getName().. " boss.")
    elseif monster:getName() == bossDeathTrois then
        Game.broadcastMessage("" ..killer:getName().. " has killed " ..monster:getName().. " boss.")
    elseif monster:getName() == bossDeathQuatre then
        Game.broadcastMessage("" ..killer:getName().. " has killed " ..monster:getName().. " boss.")
    elseif monster:getName() == bossDeathCinq then
        Game.broadcastMessage("" ..killer:getName().. " has killed " ..monster:getName().. " boss.")
    elseif monster:getName() == bossDeathSix then
        Game.broadcastMessage("" ..killer:getName().. " has killed " ..monster:getName().. " boss.")
    elseif monster:getName() == bossDeathSept then
        Game.broadcastMessage("" ..killer:getName().. " has killed " ..monster:getName().. " boss.")
    elseif monster:getName() == bossDeathHuit then
        Game.broadcastMessage("" ..killer:getName().. " has killed " ..monster:getName().. " boss.")
    elseif monster:getName() == bossDeathNeuf then
        Game.broadcastMessage("" ..killer:getName().. " has killed " ..monster:getName().. " boss.")
    elseif monster:getName() == bossDeathDix then
        Game.broadcastMessage("" ..killer:getName().. " has killed " ..monster:getName().. " boss.")
    end
    return true
end 

broadBossOne:register()
