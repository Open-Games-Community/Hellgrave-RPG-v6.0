local itemUpgrader = Action()

local conf = {
    ["level"] = {
      [1] = {successPercent = 90, downgradeLevel = 0},
      [2] = {successPercent = 80, downgradeLevel = 1},
      [3] = {successPercent = 70, downgradeLevel = 2},
      [4] = {successPercent = 65, downgradeLevel = 3},
      [5] = {successPercent = 60, downgradeLevel = 4},
      [6] = {successPercent = 55, downgradeLevel = 5},
      [7] = {successPercent = 50, downgradeLevel = 6},
      [8] = {successPercent = 35, downgradeLevel = 7},
      [9] = {successPercent = 25, downgradeLevel = 8},
      [10] = {successPercent = 15, downgradeLevel = 9},
    },
 
    ["upgrade"] = { -- how many percent attributes are rised?
      attack = 1, -- attack %
      defense = 1, -- defense %
      extraDefense = 1, -- extra defense %
      armor = 1, -- armor %
      hitChance = 1, -- hit chance %
    }
 }
 
 
 
 -- // do not touch // --
 -- Upgrading system by Azi [Ersiu] --
 -- Edited for TFS 1.1 by Zbizu --
 
 local upgrading = {
   upValue = function (value, level, percent)
   if value < 0 then return 0 end
      if level == 0 then return value end
      local nVal = value
      for i = 1, level do
        nVal = nVal + (math.ceil((nVal/100*percent)))
      end
   return nVal > 0 and nVal or value
   end,
 
   getLevel = function (item)
   local name = Item(item):getName():split('+')
      if (#name == 1) then
        return 0
      end
   
      return math.abs(name[2])
   end,
 }


 local normalUpgrade = {
	maxLevel = 500,
	experiencePerLevel = 75, 
	storage = {
		level = 61114,
		experience = 61115
	},
}


local function giveNormalUpgradeExperience(playerId, amount)
  local player = Player(playerId)
  if not player then
      print("Error in function giveNormalUpgradeExperience -> player does not exist (check to ensure playerId being passed to function is correct)")
      return false
  end

  local NormalUpgradeLevel = player:getStorageValue(normalUpgrade.storage.level)
  NormalUpgradeLevel = NormalUpgradeLevel >= 0 and NormalUpgradeLevel or 0

  local NormalUpgradeExperience = player:getStorageValue(normalUpgrade.storage.experience)
  NormalUpgradeExperience = NormalUpgradeExperience >= 0 and NormalUpgradeExperience or 0

  
  NormalUpgradeExperience = NormalUpgradeExperience + amount

  if NormalUpgradeLevel < normalUpgrade.maxLevel then
      repeat    
          local ExperienceRequiredForNextLevel = NormalUpgradeLevel * normalUpgrade.experiencePerLevel
          if NormalUpgradeExperience >= ExperienceRequiredForNextLevel then
              NormalUpgradeExperience = NormalUpgradeExperience - ExperienceRequiredForNextLevel
              NormalUpgradeLevel = NormalUpgradeLevel + 1
              local text = "You have advanced to Upgrade Skill level " .. NormalUpgradeLevel .. "."
              if NormalUpgradeLevel == normalUpgrade.maxLevel then
                  text = "You have reached the maximum Upgrade Skill level."
              end
              player:sendTextMessage(MESSAGE_EVENT_ADVANCE, text)
          else
              break
          end
      until (NormalUpgradeLevel == normalUpgrade.maxLevel)
  end

  player:setStorageValue(normalUpgrade.storage.level, NormalUpgradeLevel)
  player:setStorageValue(normalUpgrade.storage.experience, NormalUpgradeExperience)
  return true
end


 function itemUpgrader.onUse(cid, item, fromPosition, itemEx, toPosition)

  local levels = {
		expgainmin = 75, -- DO NOT CHANGE !
		expgainmax = 115, -- DO NOT CHANGE !
	}

  if item.itemid == 7854 then
    local it = ItemType(itemEx.itemid)
    if (((it:getWeaponType() > 0 and it:getWeaponType() ~= WEAPON_WAND) or getItemAttribute(itemEx.uid, ITEM_ATTRIBUTE_ARMOR) > 0) and not isItemStackable(itemEx.itemid)) then
   local level = upgrading.getLevel(itemEx.uid)
   if(level < #conf["level"]) and level < 5 then
   local nLevel = (conf["level"][(level+1)].successPercent >= math.random(1,100)) and (level+1) or conf["level"][level].downgradeLevel
   if(nLevel > level)then
   doSendMagicEffect(cid:getPosition(), 244)
   doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "Upgrade your " .. it:getName() .. " to level " .. nLevel .. " successful!")
   else
   doSendMagicEffect(cid:getPosition(), 249)
   doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "Upgrade failed. Your " .. it:getName() .. " is now on level " .. nLevel .. "")
   end
   doItemSetAttribute(itemEx.uid, ITEM_ATTRIBUTE_NAME, it:getName()..((nLevel>0) and " +"..nLevel or ""))
   doItemSetAttribute(itemEx.uid, ITEM_ATTRIBUTE_ATTACK,  upgrading.upValue(it:getAttack(), nLevel, conf["upgrade"].attack))
   doItemSetAttribute(itemEx.uid, ITEM_ATTRIBUTE_DEFENSE, upgrading.upValue(it:getDefense(), nLevel, conf["upgrade"].defense))
   doItemSetAttribute(itemEx.uid, ITEM_ATTRIBUTE_EXTRADEFENSE, upgrading.upValue(it:getExtraDefense(), nLevel, conf["upgrade"].extraDefense))
   doItemSetAttribute(itemEx.uid, ITEM_ATTRIBUTE_ARMOR, upgrading.upValue(it:getArmor(), nLevel, conf["upgrade"].armor))
   doItemSetAttribute(itemEx.uid, ITEM_ATTRIBUTE_HITCHANCE, upgrading.upValue(it:getHitChance(), nLevel, conf["upgrade"].hitChance))
   doItemSetAttribute(itemEx.uid, ITEM_ATTRIBUTE_DESCRIPTION, it:getDescription().."\nRefined by "..cid:getName()..".")
   doRemoveItem(item.uid, 1)
   else
   doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "Your " .. it:getName() .. " is on max level or you cannot use this scroll on this item.")
   end
   local experienceRan = math.random(levels.expgainmin, levels.expgainmax)
    if giveNormalUpgradeExperience(cid:getId(), experienceRan) then
    cid:sendTextMessage(MESSAGE_INFO_DESCR, "You have gained "..experienceRan.." experience on Upgrade skill.")
    
    end
   else
   doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "You cannot upgrade this item.")
   end
elseif item.itemid == 7855 then
  local it = ItemType(itemEx.itemid)
    if (((it:getWeaponType() > 0 and it:getWeaponType() ~= WEAPON_WAND) or getItemAttribute(itemEx.uid, ITEM_ATTRIBUTE_ARMOR) > 0) and not isItemStackable(itemEx.itemid)) then
   local level = upgrading.getLevel(itemEx.uid)
   if conf["level"] and level < 10 and level > 4 then
   local nLevel = (conf["level"][(level+1)].successPercent >= math.random(1,100)) and (level+1) or conf["level"][level].downgradeLevel
   if(nLevel > level)then
   doSendMagicEffect(cid:getPosition(), 244)
   doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "Upgrade your " .. it:getName() .. " to level " .. nLevel .. " successful!")
   else
   doSendMagicEffect(cid:getPosition(), 249)
   doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "Upgrade failed. Your " .. it:getName() .. " is now on level " .. nLevel .. "")
   end
   doItemSetAttribute(itemEx.uid, ITEM_ATTRIBUTE_NAME, it:getName()..((nLevel>0) and " +"..nLevel or ""))
   doItemSetAttribute(itemEx.uid, ITEM_ATTRIBUTE_ATTACK,  upgrading.upValue(it:getAttack(), nLevel, conf["upgrade"].attack))
   doItemSetAttribute(itemEx.uid, ITEM_ATTRIBUTE_DEFENSE, upgrading.upValue(it:getDefense(), nLevel, conf["upgrade"].defense))
   doItemSetAttribute(itemEx.uid, ITEM_ATTRIBUTE_EXTRADEFENSE, upgrading.upValue(it:getExtraDefense(), nLevel, conf["upgrade"].extraDefense))
   doItemSetAttribute(itemEx.uid, ITEM_ATTRIBUTE_ARMOR, upgrading.upValue(it:getArmor(), nLevel, conf["upgrade"].armor))
   doItemSetAttribute(itemEx.uid, ITEM_ATTRIBUTE_HITCHANCE, upgrading.upValue(it:getHitChance(), nLevel, conf["upgrade"].hitChance))
   doRemoveItem(item.uid, 1)
   else
   doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "Your " .. it:getName() .. " is on max level or you cannot use this scroll on this item.")
   end
   local experienceRan = math.random(levels.expgainmin, levels.expgainmax)
  if giveNormalUpgradeExperience(cid:getId(), experienceRan) then
    cid:sendTextMessage(MESSAGE_INFO_DESCR, "You have gained "..experienceRan.." experience on Upgrade skill.")
    
  end
   else
   doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "You cannot upgrade this item.")
   end
end
end
 itemUpgrader:id(7854, 7855)
 itemUpgrader:register()

 