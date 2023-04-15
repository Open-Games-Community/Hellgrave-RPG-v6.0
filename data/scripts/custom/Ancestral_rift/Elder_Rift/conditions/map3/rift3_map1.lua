-- Script by Alex & Xikini         
-- 	    ___                         ___           ___      
--     /\  \                       /\__\         /|  |     
--    /::\  \                     /:/ _/_       |:|  |     
--   /:/\:\  \                   /:/ /\__\      |:|  |     
--  /:/ /::\  \   ___     ___   /:/ /:/ _/_   __|:|__|     
-- /:/_/:/\:\__\ /\  \   /\__\ /:/_/:/ /\__\ /::::\__\_____
-- \:\/:/  \/__/ \:\  \ /:/  / \:\/:/ /:/  / ~~~~\::::/___/
--  \::/__/       \:\  /:/  /   \::/_/:/  /      |:|~~|    
--   \:\  \        \:\/:/  /     \:\/:/  /       |:|  |    
--    \:\__\        \::/  /       \::/  /        |:|__|    
--     \/__/         \/__/         \/__/         |/__/     


local topLeftCorner = Position(29286, 32216, 9)
local bottomRightCorner = Position(29430, 32329, 9)

local condition = Condition(CONDITION_CURSED, CONDITIONID_COMBAT)
condition:setParameter(CONDITION_PARAM_DELAYED, true)
condition:setParameter(CONDITION_PARAM_MINVALUE, 20)
condition:setParameter(CONDITION_PARAM_MAXVALUE, 70)
condition:setParameter(CONDITION_PARAM_STARTVALUE, 50)
condition:setParameter(CONDITION_PARAM_TICKINTERVAL, 5000)
condition:setParameter(CONDITION_PARAM_FORCEUPDATE, true)

local riftCond = GlobalEvent("elderRift3CondMapfloor1")

function riftCond.onThink(interval)
    for _, player in pairs(Game.getPlayers()) do
        local position = player:getPosition()
        if position:isInRange(topLeftCorner, bottomRightCorner) then
			condition:addDamage(20, 5000, -125)
            player:addCondition(condition)
        end
    end
    return true
end

riftCond:interval(5000)
riftCond:register()