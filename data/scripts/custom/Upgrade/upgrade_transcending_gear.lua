local action = Action()

local config = {
    messages = {
        success = {
            text  = 'Gear Transcended!',
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
        [25956] = {tier = 1, upgraderType = 'scroll', chance = 5,
            items = {
                [40701] = 25934, -- Awakening Demacia Helmet
                [40702] = 25937, -- Awakening Demacia Armor
                [40703] = 25938, -- Awakening Demacia Legs
                [40704] = 25941, -- Awakening Demacia Boots
                [40705] = 25942, -- Awakening Demacia Shield
                [39264] = 25925, -- Awakening Cataclysm Helmet
                [39265] = 25929, -- Awakening Cataclysm Armor
                [39266] = 25930, -- Awakening Cataclysm Legs
                [39267] = 25933, -- Awakening Cataclysm Boots
                [39853] = 25926, -- Awakening Cataclysm Spellbook
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
        creature:sendCancelMessage('You must select a Demacia or Cataclysm Gear.')
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
        end
        if confKey == 'fail' and target.itemid == 40701 and creature:removeItem(25895, 1) then
            creature:sendTextMessage(MESSAGE_EVENT_ADVANCE, "The Transcending has failed, the item has been protected with Sacred Protection Scroll.")
        elseif confKey == 'fail' and target.itemid == 40701 then
            target:remove(1)
        elseif confKey == 'fail' and target.itemid == 40702 and creature:removeItem(25895, 1) then
                creature:sendTextMessage(MESSAGE_EVENT_ADVANCE, "The Transcending has failed, the item has been protected with Sacred Protection Scroll.")
        elseif confKey == 'fail' and target.itemid == 40702 then
            target:remove(1)
        elseif confKey == 'fail' and target.itemid == 40703 and creature:removeItem(25895, 1) then
                creature:sendTextMessage(MESSAGE_EVENT_ADVANCE, "The Transcending has failed, the item has been protected with Sacred Protection Scroll.")
        elseif confKey == 'fail' and target.itemid == 40703 then
            target:remove(1)
        elseif confKey == 'fail' and target.itemid == 40704 and creature:removeItem(25895, 1) then
                creature:sendTextMessage(MESSAGE_EVENT_ADVANCE, "The Transcending has failed, the item has been protected with Sacred Protection Scroll.")
        elseif confKey == 'fail' and target.itemid == 40704 then
            target:remove(1)
        elseif confKey == 'fail' and target.itemid == 40705 and creature:removeItem(25895, 1) then
                creature:sendTextMessage(MESSAGE_EVENT_ADVANCE, "The Transcending has failed, the item has been protected with Sacred Protection Scroll.")
        elseif confKey == 'fail' and target.itemid == 40705 then
            target:remove(1)
        elseif confKey == 'fail' and target.itemid == 39264 and creature:removeItem(25895, 1) then
                creature:sendTextMessage(MESSAGE_EVENT_ADVANCE, "The Transcending has failed, the item has been protected with Sacred Protection Scroll.")
        elseif confKey == 'fail' and target.itemid == 39264 then
            target:remove(1)
        elseif confKey == 'fail' and target.itemid == 39265 and creature:removeItem(25895, 1) then
                creature:sendTextMessage(MESSAGE_EVENT_ADVANCE, "The Transcending has failed, the item has been protected with Sacred Protection Scroll.")
        elseif confKey == 'fail' and target.itemid == 39265 then
            target:remove(1)
        elseif confKey == 'fail' and target.itemid == 39266 and creature:removeItem(25895, 1) then
                creature:sendTextMessage(MESSAGE_EVENT_ADVANCE, "The Transcending has failed, the item has been protected with Sacred Protection Scroll.")
        elseif confKey == 'fail' and target.itemid == 39266 then
            target:remove(1)
        elseif confKey == 'fail' and target.itemid == 39267 and creature:removeItem(25895, 1) then
                creature:sendTextMessage(MESSAGE_EVENT_ADVANCE, "The Transcending has failed, the item has been protected with Sacred Protection Scroll.")
        elseif confKey == 'fail' and target.itemid == 39267 then
            target:remove(1)
        elseif confKey == 'fail' and target.itemid == 39853 and creature:removeItem(25895, 1) then
                creature:sendTextMessage(MESSAGE_EVENT_ADVANCE, "The Transcending has failed, the item has been protected with Sacred Protection Scroll.")
        elseif confKey == 'fail' and target.itemid == 39853 then
            target:remove(1)
            end
        item:remove(1)
        awakeningPoints_remove(creature, 1)
        local levels = {
            expgainmin = 75, -- DO NOT CHANGE !
            expgainmax = 115, -- DO NOT CHANGE !
        }
        local experienceRan = math.random(levels.expgainmin, levels.expgainmax)
            if giveTranscendingUpgradeLevel(creature:getId(), experienceRan) then
             creature:sendTextMessage(MESSAGE_INFO_DESCR, "You have gained "..experienceRan.." experience on Transcending Upgrade skill.")
            end
    end
    return true
else
        creature:sendTextMessage(MESSAGE_INFO_DESCR, "You didn't have Awakening Points to Transcend Gear.")
end
end


for keyId, _ in pairs(config.gear) do
    action:id(keyId)
end
action:aid(25956) -- El item que hara upgrade
action:register()