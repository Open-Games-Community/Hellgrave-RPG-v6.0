local addSlotItems = { 27246 }
local slotAction = Action()
local creatureEvent = CreatureEvent()

local Attr = {}
Attr.__index = Attr
Attr.init = function(slot)
 local attr = {}
 setmetatable(attr, Attr)
 attr.name = slot.name
 attr.value = slot.value
 attr.percent = slot.percent
 return attr
end
setmetatable(Attr, {
 __call = function(_, ...) return Attr.init(...) end,
 __eq = function(a, b) return a.name == b.name and a.value == b.value and a.percent == b.percent end
})

local slotLib = {}
slotLib.maxSlots = 3 
slotLib.baseSubids = 90
slotLib.cache = {}

slotLib.attributes = {
 { name = "Club", values = { 1, 2, 3 }, percent = false },
 { name = "Sword", values = { 1, 2, 3 }, percent = false },
 { name = "Axe", values = { 1, 2, 3 }, percent = false },
 { name = "Distance", values = { 1, 2, 3 }, percent = false },
 { name = "Shield", values = { 1, 2, 3 }, percent = false },
 { name = "Fishing", values = { 1, 2, 3 }, percent = false },
 { name = "MagicLevel", values = { 1, 2, 3 }, percent = false },
 { name = "LifeLeechChance", values = { 3, 6, 9 }, percent = false },
 { name = "LifeLeechAmount", values = { 3, 6, 9 }, percent = false },
 { name = "ManaLeechChance", values = { 3, 6, 9 }, percent = false },
 { name = "ManaLeechAmount", values = { 3, 6, 9 }, percent = false },
 { name = "Speed", values = { 10, 20, 30 }, percent = false },
 { name = "HealthGain", values = { 1, 2, 3 }, percent = false },
 { name = "ManaGain", values = { 1, 2,  3}, percent = false }
}

slotLib.conditions = {
 ["Club"] = { Type = CONDITION_ATTRIBUTES, Attr = CONDITION_PARAM_SKILL_CLUB },
 ["Sword"] = { Type = CONDITION_ATTRIBUTES, Attr = CONDITION_PARAM_SKILL_SWORD },
 ["Axe"] = { Type = CONDITION_ATTRIBUTES, Attr = CONDITION_PARAM_SKILL_AXE },
 ["Distance"] = { Type = CONDITION_ATTRIBUTES, Attr = CONDITION_PARAM_SKILL_DISTANCE },
 ["Shield"] = { Type = CONDITION_ATTRIBUTES, Attr = CONDITION_PARAM_SKILL_SHIELD },
 ["Fishing"] = { Type = CONDITION_ATTRIBUTES, Attr = CONDITION_PARAM_SKILL_FISHING },
 ["MagicLevel"] = { Type = CONDITION_ATTRIBUTES, Attr = CONDITION_PARAM_STAT_MAGICPOINTS },
 ["LifeLeechChance"] = { Type = CONDITION_ATTRIBUTES, Attr = CONDITION_PARAM_SKILL_LIFE_LEECH_CHANCE },
 ["LifeLeechAmount"] = { Type = CONDITION_ATTRIBUTES, Attr = CONDITION_PARAM_SKILL_LIFE_LEECH_AMOUNT },
 ["ManaLeechChance"] = { Type = CONDITION_ATTRIBUTES, Attr = CONDITION_PARAM_SKILL_MANA_LEECH_CHANCE },
 ["ManaLeechAmount"] = { Type = CONDITION_ATTRIBUTES, Attr = CONDITION_PARAM_SKILL_MANA_LEECH_AMOUNT },
 ["Speed"] = { Type = CONDITION_HASTE, Attr = CONDITION_PARAM_SPEED },
 ["HealthGain"] = { Type = CONDITION_REGENERATION, Attr = CONDITION_PARAM_HEALTHGAIN },
 ["ManaGain"] = { Type = CONDITION_REGENERATION, Attr = CONDITION_PARAM_MANAGAIN }
}

slotLib.addItemSlot = function(item)
 local slots = slotLib.getItemSlots(item)
 local replace = #slots >= slotLib.maxSlots
 local slot = slotLib.attributes[math.random(1, #slotLib.attributes)]
 if slot then
 local slotIndex = not replace and #slots + 1 or math.random(1, slotLib.maxSlots)
 local newvalue = slot.values[math.random(1, #slot.values)]
 local oldvalue = replace and slots[slotIndex].value or newvalue
 slots[slotIndex] = {
 name = slot.name,
 value = not slot.percent and newvalue,
 valuePercent = slot.percent and newvalue
 }
 slotLib.setItemSlots(item, slots)
 return newvalue >= oldvalue
 end
end

slotLib.getItemSlots = function(item)
 local slots = {}
 for slot in string.gmatch(Item.getDescription(item), "(%[.-%])") do
 local name = string.match(slot, "%[(%a+)%p")
     local value = tonumber(string.match(slot, "%p(%d+)%]"))
     local valuePercent = tonumber(string.match(slot, "%p(%d+)%%+%]"))
     slots[#slots + 1] = {
     name = name,
     value = value,
     valuePercent = valuePercent
     }
 end
 return slots
end

slotLib.setItemSlots = function(item, slots)
 local description = ItemType.getDescription(ItemType(Item.getId(item))).."\n" or ""
 for _, slot in pairs(slots) do
 description = string.format("%s[%s+%u%s]%s", description , slot.name, slot.value or slot.valuePercent, slot.valuePercent and "%" or "", _ == #slots and "" or "\n")
 end
 return Item.setAttribute(item, ITEM_ATTRIBUTE_DESCRIPTION, description)
end

slotLib.autoDetection = function(playerId)
 local player = Player(playerId)
 if player then
 if not slotLib.cache[playerId] then
 slotLib.cache[playerId] = {}
 end
 for slot = CONST_SLOT_HEAD, CONST_SLOT_AMMO do
 local item = player:getSlotItem(slot)
 if item then
 local slots = slotLib.getItemSlots(item)
 slotLib.onSlotEquip(player, slots, slot)
 if #slots < slotLib.maxSlots then
 for index = #slots+1, slotLib.maxSlots do
 local subid = slotLib.baseSubids + slot + (CONST_SLOT_AMMO * index)
 player:removeCondition(CONDITION_ATTRIBUTES, CONDITIONID_DEFAULT, subid, true)
 player:removeCondition(CONDITION_HASTE, CONDITIONID_DEFAULT, subid, true)
 player:removeCondition(CONDITION_REGENERATION, CONDITIONID_DEFAULT, subid, true)
 end
 end
 else
 for index = 1, slotLib.maxSlots do
 local subid = slotLib.baseSubids + slot + (CONST_SLOT_AMMO * index)
 player:removeCondition(CONDITION_ATTRIBUTES, CONDITIONID_DEFAULT, subid, true)
 player:removeCondition(CONDITION_HASTE, CONDITIONID_DEFAULT, subid, true)
 player:removeCondition(CONDITION_REGENERATION, CONDITIONID_DEFAULT, subid, true)
 end
 end
 end
 addEvent(slotLib.autoDetection, 100, playerId)
 else
 slotLib.cache[playerId] = nil
 end
end

slotLib.onSlotEquip = function(player, slots, slotIndex)
 for index, slot in pairs(slots) do
 local attr = Attr(slot)
 local subid = slotLib.baseSubids + slotIndex + (CONST_SLOT_AMMO * index)
 if not slotLib.cache[player.uid][subid] or slotLib.cache[player.uid][subid] ~= attr then
 if slotLib.cache[player.uid][subid] and slotLib.cache[player.uid][subid] ~= attr then
 player:removeCondition(CONDITION_ATTRIBUTES, CONDITIONID_DEFAULT, subid, true)
 player:removeCondition(CONDITION_HASTE, CONDITIONID_DEFAULT, subid, true)
 player:removeCondition(CONDITION_REGENERATION, CONDITIONID_DEFAULT, subid, true)
 end
 local info = slotLib.conditions[attr.name]
 if info then
 local condition = Condition(info.Type, CONDITIONID_DEFAULT)
 if condition then
 condition:setParameter(info.Attr, attr.value)
 condition:setParameter(CONDITION_PARAM_TICKS, -1)
 condition:setParameter(CONDITION_PARAM_SUBID, subid)
 player:addCondition(condition)
 slotLib.cache[player.uid][subid] = attr
 end
 end
 end
 end
end

slotLib.isUpgradeable = function(item)
    local it = ItemType(item.itemid)
    return it:getWeaponType() ~= WEAPON_NONE or it:getSpeed() or it:getArmor() > 0 or it:getDefense() > 0 or it:getExtraDefense() > 0 or it:getAttack() > 0
   end

   local slotUpgrade = {
	maxLevel = 500,
	experiencePerLevel = 75, 
	storage = {
		level = 61118,
		experience = 61119
	},
}


local function giveSlotUpgradeExperience(playerId, amount)
  local player = Player(playerId)
  if not player then
      print("Error in function giveSlotUpgradeExperience -> player does not exist (check to ensure playerId being passed to function is correct)")
      return false
  end

  local SlotUpgradeLevel = player:getStorageValue(slotUpgrade.storage.level)
  SlotUpgradeLevel = SlotUpgradeLevel >= 0 and SlotUpgradeLevel or 0

  local SlotUpgradeExperience = player:getStorageValue(slotUpgrade.storage.experience)
  SlotUpgradeExperience = SlotUpgradeExperience >= 0 and SlotUpgradeExperience or 0

  
  SlotUpgradeExperience = SlotUpgradeExperience + amount

  if SlotUpgradeLevel < slotUpgrade.maxLevel then
      repeat    
          local ExperienceRequiredForNextLevel = SlotUpgradeLevel * slotUpgrade.experiencePerLevel
          if SlotUpgradeExperience >= ExperienceRequiredForNextLevel then
            SlotUpgradeExperience = SlotUpgradeExperience - ExperienceRequiredForNextLevel
              SlotUpgradeLevel = SlotUpgradeLevel + 1
              local text = "You have advanced to Slot Upgrade Skill level " .. SlotUpgradeLevel .. "."
              if SlotUpgradeLevel == slotUpgrade.maxLevel then
                  text = "You have reached the maximum Slot Upgrade Skill level."
              end
              player:sendTextMessage(MESSAGE_EVENT_ADVANCE, text)
          else
              break
          end
      until (SlotUpgradeLevel == slotUpgrade.maxLevel)
  end

  player:setStorageValue(slotUpgrade.storage.level, SlotUpgradeLevel)
  player:setStorageValue(slotUpgrade.storage.experience, SlotUpgradeExperience)
  return true
end

function slotAction.onUse(player, item, fromPos, target, toPos, isHotkey)
 if not target or not target:isItem() then
 return player:sendCancelMessage("Sorry not possible, only work on items.")
 end
 if not slotLib.isUpgradeable(target) then
 return player:sendCancelMessage("Sorry not possible, this item cannot update slots.")
 end
 local levels = {
    expgainmin = 75, -- DO NOT CHANGE !
    expgainmax = 115, -- DO NOT CHANGE !
}
 local greatz = slotLib.addItemSlot(target)
 target:getPosition():sendMagicEffect(greatz and CONST_ME_FIREWORK_RED or CONST_ME_FIREWORK_BLUE)
 player:say(greatz and "Slot Stats Added!" or "Bad Roll!")
 item:remove(1)
 local experienceRan = math.random(levels.expgainmin, levels.expgainmax)
if giveSlotUpgradeExperience(player:getId(), experienceRan) then
    player:sendTextMessage(MESSAGE_INFO_DESCR, "You have gained "..experienceRan.." experience on Slot Upgrade skill.")

end
 return true
end
  

slotAction:id(addSlotItems[1])
slotAction:register()

function creatureEvent.onLogin(player)
 slotLib.autoDetection(player.uid)
 return true
end

creatureEvent:register()