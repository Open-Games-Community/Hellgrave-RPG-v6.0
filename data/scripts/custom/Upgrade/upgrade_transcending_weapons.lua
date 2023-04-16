local action = Action()

local config = {
    messages = {
        success = {
            text  = 'Weapon Transcended!',
            talkType = MESSAGE_INFO_DESCR,
            effect   = 252
        },

        fail = {
            text  = 'Upgrading to the next Transcending Tier failed!.',
            talkType = MESSAGE_INFO_DESCR,
            effect   = 251
        }

    },

    gear = {
        [25980] = {tier = 1, upgraderType = 'scroll', chance = 15,
            items = {
                [29255] = 25900, -- Dimensional Blade
                [29261] = 25901, -- Dimensional Axe
                [29267] = 25902, -- Dimensional Chopper --------------- > Harmonious Protection Scroll
                [29270] = 25903, -- Dimensional Bow
                [29273] = 25904, -- Dimensional Crossbow
                [29276] = 25905, -- Dimensional Wand
                [29279] = 25906, -- Dimensional Rod
            }
        },
        [25087] = {tier = 2, upgraderType = 'scroll', chance = 10,
            items = {
                [25900] = 25907, -- Primal Blade
                [25901] = 25908, -- Primal Axe
                [25902] = 25909, -- Primal Hammer -------------------> Darkness Protection Scroll
                [25903] = 25910, -- Primal Bow
                [25904] = 25911, -- Primal Crossbow
                [25905] = 25912, -- Primal Wand
                [25906] = 25913, -- Primal Rod
            }
        },
        [25984] = {tier = 3, upgraderType = 'scroll', chance = 5,
            items = {
                [25907] = 25914, -- Awakening Blade
                [25908] = 25915, -- Awakening Axe
                [25909] = 25916, -- Awakening Hammer --------------> Sacred Protection Scroll
                [25910] = 25917, -- Awakening Bow
                [25911] = 25918, -- Awakening Crossbow
                [25912] = 25921, -- Awakening Wand
                [25913] = 25922, -- Awakening Rod
            }
        },
    }
}

local transcendUpgrade = {
	maxLevel = 500,
	experiencePerLevel = 75, 
	storage = {
		level = 61122,
		experience = 61123
	},
}


local function giveTranscendingUpgradeLevel(playerId, amount)
  local player = Player(playerId)
  if not player then
      print("Error in function giveTranscendingUpgradeLevel -> player does not exist (check to ensure playerId being passed to function is correct)")
      return false
  end

  local TranscendingUpgradeLevel = player:getStorageValue(transcendUpgrade.storage.level)
  TranscendingUpgradeLevel = TranscendingUpgradeLevel >= 0 and TranscendingUpgradeLevel or 0

  local TranscendingUpgradeExperience = player:getStorageValue(transcendUpgrade.storage.experience)
  TranscendingUpgradeExperience = TranscendingUpgradeExperience >= 0 and TranscendingUpgradeExperience or 0

  
  TranscendingUpgradeExperience = TranscendingUpgradeExperience + amount

  if TranscendingUpgradeLevel < transcendUpgrade.maxLevel then
      repeat    
          local ExperienceRequiredForNextLevel = TranscendingUpgradeLevel * transcendUpgrade.experiencePerLevel
          if TranscendingUpgradeExperience >= ExperienceRequiredForNextLevel then
            TranscendingUpgradeExperience = TranscendingUpgradeExperience - ExperienceRequiredForNextLevel
                TranscendingUpgradeLevel = TranscendingUpgradeLevel + 1
              local text = "You have advanced to Transcending Upgrade Skill level " .. TranscendingUpgradeLevel .. "."
              if TranscendingUpgradeLevel == transcendUpgrade.maxLevel then
                  text = "You have reached the maximum Transcending Upgrade Skill level."
              end
              player:sendTextMessage(MESSAGE_EVENT_ADVANCE, text)
          else
              break
          end
      until (TranscendingUpgradeLevel == transcendUpgrade.maxLevel)
  end

  player:setStorageValue(transcendUpgrade.storage.level, TranscendingUpgradeLevel)
  player:setStorageValue(transcendUpgrade.storage.experience, TranscendingUpgradeExperience)
  return true
end

function action.onUse(creature, item, fromPosition, target, toPosition, isHotkey)
    if awakeningPoints_get(creature) >= 1 then
    -- Using creature's position if the target item is located in a container, otherwise use the item's position located on the map
    local pos = target:getPosition().x == 65535 and creature:getPosition() or target:getPosition()
    -- Make sure the creature is not attempting to target a creature
    if not target:isItem() then
        creature:sendCancelMessage('You must select a Chaos Avalon Weapon or Transcended Weapon.')
        pos:sendMagicEffect(CONST_ME_POFF)
        return true
    end
    -- Attempt to get the config based on which key id the creature is using
    local keyConfig = config.gear[item:getId()]
    -- Adding article to full item name if possible, ex: "a sword"
    local name  = (target:getArticle() ~= '') and string.format('%s %s', target:getArticle(), target:getName()) or target:getName()
    if keyConfig then
        -- Directly attempt to access the item id to upgrade to by indexing the item list with the target item's id
        local upgradeId = keyConfig.items[target:getId()]
        -- Prevent attempting to upgrade an item that isn't in config
        if not upgradeId then
            creature:sendCancelMessage(string.format('You are unable to upgrade %s with a tier %d %s.', (name == '') and 'this' or name, keyConfig.tier, keyConfig.upgraderType))
            pos:sendMagicEffect(3)
            return true
        end
        -- Prevent attempting to upgrade a stackable item that has more than 1 in it's stack
        if target:getCount() > 1 then
            creature:sendCancelMessage('You may only upgrade this item one at a time.')
            pos:sendMagicEffect(CONST_ME_POFF)
            return true
        end
        -- Use the "success" table in config if the random value is less than or equal to the chance, otherwise use the "fail" table
        local confKey = (math.random(200) <= keyConfig.chance and 'success' or 'fail')
        local resultConfig = config.messages[confKey]
        pos:sendMagicEffect(resultConfig.effect)
        creature:sendTextMessage(MESSAGE_INFO_DESCR, resultConfig.text)
        if confKey == 'success' then
            target:transform(upgradeId)
            target:setAttribute(ITEM_ATTRIBUTE_DESCRIPTION, ItemType(target:getId()):getDescription().."\nRefined by "..creature:getName()..".")
            local levels = {
                expgainmin = 75, -- DO NOT CHANGE !
                expgainmax = 115, -- DO NOT CHANGE !
            }
            local experienceRan = math.random(levels.expgainmin, levels.expgainmax)
                if giveTranscendingUpgradeLevel(creature:getId(), experienceRan) then
                 creature:sendTextMessage(MESSAGE_INFO_DESCR, "You have gained "..experienceRan.." experience on Transcending Upgrade skill.")
                end
        end
        if confKey == 'fail' and target.itemid == 29255 and creature:removeItem(25896, 1) then
            creature:sendTextMessage(MESSAGE_EVENT_ADVANCE, "The Transcending has failed, the item has been protected with Harmonious Protection Scroll.")
        elseif confKey == 'fail' and target.itemid == 29255 then
            target:remove(1)
        elseif confKey == 'fail' and target.itemid == 29261 and creature:removeItem(25896, 1) then
                creature:sendTextMessage(MESSAGE_EVENT_ADVANCE, "The Transcending has failed, the item has been protected with Harmonious Protection Scroll.")
        elseif confKey == 'fail' and target.itemid == 29261 then
                target:remove(1)
        elseif confKey == 'fail' and target.itemid == 29267 and creature:removeItem(25896, 1) then
                creature:sendTextMessage(MESSAGE_EVENT_ADVANCE, "The Transcending has failed, the item has been protected with Harmonious Protection Scroll.")
        elseif confKey == 'fail' and target.itemid == 29267 then
                target:remove(1)
        elseif confKey == 'fail' and target.itemid == 29270 and creature:removeItem(25896, 1) then
                creature:sendTextMessage(MESSAGE_EVENT_ADVANCE, "The Transcending has failed, the item has been protected with Harmonious Protection Scroll.")
        elseif confKey == 'fail' and target.itemid == 29270 then
                target:remove(1)
        elseif confKey == 'fail' and target.itemid == 29273 and creature:removeItem(25896, 1) then
                creature:sendTextMessage(MESSAGE_EVENT_ADVANCE, "The Transcending has failed, the item has been protected with Harmonious Protection Scroll.")
        elseif confKey == 'fail' and target.itemid == 29273 then
                target:remove(1)
        elseif confKey == 'fail' and target.itemid == 29279 and creature:removeItem(25896, 1) then
                creature:sendTextMessage(MESSAGE_EVENT_ADVANCE, "The Transcending has failed, the item has been protected with Harmonious Protection Scroll.")
        elseif confKey == 'fail' and target.itemid == 29279 then
                target:remove(1)
        elseif confKey == 'fail' and target.itemid == 29276 and creature:removeItem(25896, 1) then
                creature:sendTextMessage(MESSAGE_EVENT_ADVANCE, "The Transcending has failed, the item has been protected with Harmonious Protection Scroll.")
        elseif confKey == 'fail' and target.itemid == 29276 then
                target:remove(1)
        elseif confKey == 'fail' and target.itemid == 25900 and creature:removeItem(25897, 1) then
                creature:sendTextMessage(MESSAGE_EVENT_ADVANCE, "The Transcending has failed, the item has been protected with Darkness Protection Scroll.")
        elseif confKey == 'fail' and target.itemid == 25900 then
                target:remove(1)
        elseif confKey == 'fail' and target.itemid == 25901 and creature:removeItem(25897, 1) then
                creature:sendTextMessage(MESSAGE_EVENT_ADVANCE, "The Transcending has failed, the item has been protected with Darkness Protection Scroll.")
        elseif confKey == 'fail' and target.itemid == 25901 then
                target:remove(1)
        elseif confKey == 'fail' and target.itemid == 25902 and creature:removeItem(25897, 1) then
                creature:sendTextMessage(MESSAGE_EVENT_ADVANCE, "The Transcending has failed, the item has been protected with Darkness Protection Scroll.")
        elseif confKey == 'fail' and target.itemid == 25902 then
                target:remove(1)
        elseif confKey == 'fail' and target.itemid == 25903 and creature:removeItem(25897, 1) then
                creature:sendTextMessage(MESSAGE_EVENT_ADVANCE, "The Transcending has failed, the item has been protected with Darkness Protection Scroll.")
        elseif confKey == 'fail' and target.itemid == 25903 then
                target:remove(1)
        elseif confKey == 'fail' and target.itemid == 25904 and creature:removeItem(25897, 1) then
                creature:sendTextMessage(MESSAGE_EVENT_ADVANCE, "The Transcending has failed, the item has been protected with Darkness Protection Scroll.")
        elseif confKey == 'fail' and target.itemid == 25904 then
                target:remove(1)
        elseif confKey == 'fail' and target.itemid == 25905 and creature:removeItem(25897, 1) then
                creature:sendTextMessage(MESSAGE_EVENT_ADVANCE, "The Transcending has failed, the item has been protected with Darkness Protection Scroll.")
        elseif confKey == 'fail' and target.itemid == 25905 then
                target:remove(1)
        elseif confKey == 'fail' and target.itemid == 25906 and creature:removeItem(25897, 1) then
                creature:sendTextMessage(MESSAGE_EVENT_ADVANCE, "The Transcending has failed, the item has been protected with Darkness Protection Scroll.")
        elseif confKey == 'fail' and target.itemid == 25906 then
                target:remove(1)
        elseif confKey == 'fail' and target.itemid == 25907 and creature:removeItem(25895, 1) then
                creature:sendTextMessage(MESSAGE_EVENT_ADVANCE, "The Transcending has failed, the item has been protected with Sacred Protection Scroll.")
        elseif confKey == 'fail' and target.itemid == 25907 then
                target:remove(1)
        elseif confKey == 'fail' and target.itemid == 25908 and creature:removeItem(25895, 1) then
                creature:sendTextMessage(MESSAGE_EVENT_ADVANCE, "The Transcending has failed, the item has been protected with Sacred Protection Scroll.")
        elseif confKey == 'fail' and target.itemid == 25908 then
                target:remove(1)
        elseif confKey == 'fail' and target.itemid == 25909 and creature:removeItem(25895, 1) then
                creature:sendTextMessage(MESSAGE_EVENT_ADVANCE, "The Transcending has failed, the item has been protected with Sacred Protection Scroll.")
        elseif confKey == 'fail' and target.itemid == 25909 then
                target:remove(1)
        elseif confKey == 'fail' and target.itemid == 25910 and creature:removeItem(25895, 1) then
                creature:sendTextMessage(MESSAGE_EVENT_ADVANCE, "The Transcending has failed, the item has been protected with Sacred Protection Scroll.")
        elseif confKey == 'fail' and target.itemid == 25910 then
                target:remove(1)
        elseif confKey == 'fail' and target.itemid == 25911 and creature:removeItem(25895, 1) then
                creature:sendTextMessage(MESSAGE_EVENT_ADVANCE, "The Transcending has failed, the item has been protected with Sacred Protection Scroll.")
        elseif confKey == 'fail' and target.itemid == 25911 then
                target:remove(1)
        elseif confKey == 'fail' and target.itemid == 25912 and creature:removeItem(25895, 1) then
                creature:sendTextMessage(MESSAGE_EVENT_ADVANCE, "The Transcending has failed, the item has been protected with Sacred Protection Scroll.")
        elseif confKey == 'fail' and target.itemid == 25912 then
                target:remove(1)
        elseif confKey == 'fail' and target.itemid == 25913 and creature:removeItem(25895, 1) then
                creature:sendTextMessage(MESSAGE_EVENT_ADVANCE, "The Transcending has failed, the item has been protected with Sacred Protection Scroll.")
        elseif confKey == 'fail' and target.itemid == 25913 then
                target:remove(1)
            end
        item:remove(1)
        awakeningPoints_remove(creature, 1)
    end
    return true
else
        creature:sendTextMessage(MESSAGE_INFO_DESCR, "You didn't have Awakening Points to Transcend Weapons.")
end
end


for keyId, _ in pairs(config.gear) do
    action:id(keyId)
end
action:aid(25980, 25984) -- El item que hara upgrade
action:register()