local conditions = {
	CONDITION_POISON, CONDITION_FIRE, CONDITION_ENERGY,
	CONDITION_PARALYZE, CONDITION_DRUNK, CONDITION_DROWN,
	CONDITION_FREEZING, CONDITION_DAZZLED, CONDITION_CURSED,
	CONDITION_BLEEDING
}
local condition_shield = createConditionObject(CONDITION_ATTRIBUTES)
setConditionParam(condition_shield, CONDITION_PARAM_SUBID, 3)
setConditionParam(condition_shield, CONDITION_PARAM_BUFF_SPELL, 1)
setConditionParam(condition_shield, CONDITION_PARAM_TICKS, 60 * 60 * 1000)
setConditionParam(condition_shield, CONDITION_PARAM_SKILL_SHIELD, 10)
setConditionParam(condition_shield, CONDITION_PARAM_FORCEUPDATE, true)
local condition_ml = createConditionObject(CONDITION_ATTRIBUTES)
setConditionParam(condition_ml, CONDITION_PARAM_SUBID, 4)
setConditionParam(condition_ml, CONDITION_PARAM_BUFF_SPELL, 1)
setConditionParam(condition_ml, CONDITION_PARAM_TICKS, 60 * 60 * 1000)
setConditionParam(condition_ml, CONDITION_PARAM_STAT_MAGICPOINTS, 5)
setConditionParam(condition_ml, CONDITION_PARAM_FORCEUPDATE, true)
local condition_melee = createConditionObject(CONDITION_ATTRIBUTES)
setConditionParam(condition_melee, CONDITION_PARAM_SUBID, 5)
setConditionParam(condition_melee, CONDITION_PARAM_BUFF_SPELL, 1)
setConditionParam(condition_melee, CONDITION_PARAM_TICKS, 60 * 60 * 1000)
setConditionParam(condition_melee, CONDITION_PARAM_SKILL_MELEE, 10)
setConditionParam(condition_melee, CONDITION_PARAM_FORCEUPDATE, true)
local condition_dist = createConditionObject(CONDITION_ATTRIBUTES)
setConditionParam(condition_dist, CONDITION_PARAM_SUBID, 6)
setConditionParam(condition_dist, CONDITION_PARAM_BUFF_SPELL, 1)
setConditionParam(condition_dist, CONDITION_PARAM_TICKS, 60 * 60 * 1000)
setConditionParam(condition_dist, CONDITION_PARAM_SKILL_DISTANCE, 10)
setConditionParam(condition_dist, CONDITION_PARAM_FORCEUPDATE, true)
local condition_f = createConditionObject(CONDITION_ATTRIBUTES)
setConditionParam(condition_f, CONDITION_PARAM_SUBID, 6)
setConditionParam(condition_f, CONDITION_PARAM_BUFF_SPELL, 1)
setConditionParam(condition_f, CONDITION_PARAM_TICKS, 60 * 60 * 1000)
setConditionParam(condition_f, CONDITION_PARAM_SKILL_FISHING, 50)
setConditionParam(condition_f, CONDITION_PARAM_FORCEUPDATE, true)
local condition_speed = createConditionObject(CONDITION_HASTE)
setConditionParam(condition_speed, CONDITION_PARAM_TICKS, 60 * 60 * 1000)
setConditionParam(condition_speed, CONDITION_PARAM_SPEED, 600)
local combat_i = createCombatObject()
setCombatParam(combat_i, COMBAT_PARAM_EFFECT, CONST_ME_MAGIC_RED)
setCombatParam(combat_i, COMBAT_PARAM_AGGRESSIVE, 0)
local condition_i = createConditionObject(CONDITION_INVISIBLE)
setConditionParam(condition_i, CONDITION_PARAM_TICKS, 600000)
addCombatCondition(combat_i, condition_i)
local iid = {[9992] = 0, [9993] = 1, [9994] = 2, [9995] = 3, [9996] = 4, [9997] = 5, [9998] = 6, [9999] = 7, [10000] = 8, [10001] = 9, [12543] = 12}

local jeanPierreFood = Action()

function jeanPierreFood.onUse(player, item, frompos, item2, topos)
	local cid = player:getId()
	if player:getStorageValue(17110 + iid[item.itemid]) > os.time() then
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You need to wait before using it again.")
		return true
	end
	player:setStorageValue(17110 + iid[item.itemid],os.time() + (15 * 60))

	if item.itemid == 9992 then
		item:remove(1)
		Creature(cid):addHealth(getCreatureMaxHealth(cid) - getCreatureHealth(cid))
		player:say("Gulp.", TALKTYPE_MONSTER_SAY)
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "Your health has been refilled.")
		player:getPosition():sendMagicEffect(CONST_ME_MAGIC_RED)
		return true
	elseif item.itemid == 9993 then
		item:remove(1)
		for i = 1, #conditions do
			doRemoveCondition(cid, conditions[i])
		end
		player:say("Chomp.", TALKTYPE_MONSTER_SAY)
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You feel better body condition.")
		player:getPosition():sendMagicEffect(CONST_ME_MAGIC_RED)
		return true
	elseif item.itemid == 9994 then
		item:remove(1)
		Creature(cid):addCondition(condition_shield)
		player:say("Chomp.", TALKTYPE_MONSTER_SAY)
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You feel less vulnerable.")
		player:getPosition():sendMagicEffect(CONST_ME_MAGIC_RED)
		return true
	elseif item.itemid == 9995 then
		item:remove(1)
		Creature(cid):addCondition(condition_ml)
		player:say("Chomp.", TALKTYPE_MONSTER_SAY)
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You feel smarter.")
		player:getPosition():sendMagicEffect(CONST_ME_MAGIC_RED)
		return true
	elseif item.itemid == 9996 then
		item:remove(1)
		player:say("Slurp.", TALKTYPE_MONSTER_SAY)
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You don't really know what this did to you, but suddenly you feel very happy.")
		player:getPosition():sendMagicEffect(CONST_ME_HEARTS)
		return true
	elseif item.itemid == 9997 then
		item:remove(1)
		Creature(cid):addCondition(condition_melee)
		player:say("Yum.", TALKTYPE_MONSTER_SAY)
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You feel stronger.")
		player:getPosition():sendMagicEffect(CONST_ME_MAGIC_RED)
		return true
	elseif item.itemid == 9998 then
		item:remove(1)
		Creature(cid):addCondition(condition_speed)
		player:say("Munch.", TALKTYPE_MONSTER_SAY)
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "Your speed has been increased.")
		player:getPosition():sendMagicEffect(CONST_ME_MAGIC_RED)
		return true
	elseif item.itemid == 9999 then
		item:remove(1)
		Creature(cid):addMana(Creature(cid):getMaxMana() - Creature(cid):getMana())
		player:say("Chomp.", TALKTYPE_MONSTER_SAY)
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "Your mana has been refilled.")
		player:getPosition():sendMagicEffect(CONST_ME_MAGIC_RED)
		return true
	elseif item.itemid == 10000 then
		item:remove(1)
		Creature(cid):addCondition(condition_dist)
		player:say("Mmmm.", TALKTYPE_MONSTER_SAY)
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You feel more focused.")
		player:getPosition():sendMagicEffect(CONST_ME_MAGIC_RED)
		return true
	elseif item.itemid == 10001 then
		item:remove(1)
		Creature(cid):addCondition(condition_f)
		player:say("Smack.", TALKTYPE_MONSTER_SAY)
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You felt fishing inspiration.")
		player:getPosition():sendMagicEffect(CONST_ME_MAGIC_RED)
		return true
	elseif item.itemid == 12543 then
		item:remove(1)
		local c = {condition_shield,condition_ml,condition_melee,condition_dist,condition_speed}
		local r = math.random(1,4)
		if r == 1 then
			Creature(cid):addCondition(c[math.random(1, #c)])
			player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You feel stronger, but you have no idea what was increased.")
		elseif r == 2 then
			doSetCreatureLight(cid, 15, 154, 60*60*1000)
			player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You feel enlightened.")
		elseif r == 3 then
			Creature(cid):addCondition(condition_i)
			player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You became invisible.")
		elseif r == 4 then
			Creature(cid):addHealth(getCreatureMaxHealth(cid) - getCreatureHealth(cid))
			Creature(cid):addMana(Creature(cid):getMaxMana() - Creature(cid):getMana())
			player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "Your vitality has been restored.")
		end
		 player:say("Smack.", TALKTYPE_MONSTER_SAY)
		 player:getPosition():sendMagicEffect(CONST_ME_MAGIC_RED)
	return true
	else
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "This ring cannot be multiplied.")
		player:getPosition():sendMagicEffect(CONST_ME_POFF)	 
		return true
	end
end

for index, value in pairs(iid) do
	jeanPierreFood:id(index)
end

jeanPierreFood:register()
