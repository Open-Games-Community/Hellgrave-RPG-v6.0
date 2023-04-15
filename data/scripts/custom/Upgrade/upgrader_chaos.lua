local action = Action()

local config = {
    messages = {
        success = {
            text  = 'Your Chaos weapon has been upgraded to the next Tier!',
            talkType = MESSAGE_INFO_DESCR,
            effect   = 252
        },

        fail = {
            text  = 'Upgrading Chaos Weapon Failed!',
            talkType = MESSAGE_INFO_DESCR,
            effect   = 251
        }

    },

    gear = {
        [25932] = {tier = 1, upgraderType = 'scroll', chance = 50,
            items = {
                [29222] = 29223, -- Legacy Azure Sword
                [29223] = 29224, -- Legacy Avalon Sword
                [29228] = 29229, -- Legacy Azure Axe
                [29229] = 29230, -- Legacy Avalon Axe
                [29234] = 29235, -- Legacy Azure Club
                [29235] = 29236, -- Legacy Avalon Club
                [29237] = 29238, -- Legacy Azure Bow
                [29238] = 29239, -- Legacy Avalon Bow
                [29240] = 29241, -- Legacy Azure Crossbow
                [29241] = 29242, -- Legacy Avalon Crossbow
                [29246] = 29247, -- Legacy Azure Rod
                [29247] = 29248, -- Legacy Avalon Rod
                [29243] = 29244, -- Legacy Azure Wand
                [29244] = 29245, -- Legacy Avalon Wand
            }
        },
        [25952] = {tier = 2, upgraderType = 'scroll', chance = 40,
            items = {
                [29224] = 29283, -- Abyssal Fallen Sword
                [29283] = 29284, -- Abyssal Azure Sword
                [29284] = 29285, -- Abyssal Avalon Sword
                [29230] = 29289, -- Abyssal Fallen Axe
                [29289] = 29290, -- Abyssal Azure Axe
                [29290] = 29291, -- Abyssal Avalon Axe
                [29236] = 29295, -- Abyssal Fallen Club
                [29295] = 29296, -- Abyssal Azure Club
                [29296] = 29297, -- Abyssal Avalon Club
                [29239] = 29298, -- Abyssal Fallen Bow
                [29298] = 29299, -- Abyssal Azure Bow
                [29299] = 29300, -- Abyssal Avalon Bow
                [29242] = 29301, -- Abyssal Fallen Crossbow
                [29301] = 29302, -- Abyssal Azure Crossbow
                [29302] = 29303, -- Abyssal Avalon Crossbow
                [29248] = 29307, -- Abyssal Fallen Rod
                [29307] = 29308, -- Abyssal Azure Rod
                [29308] = 29309, -- Abyssal Avalon Rod
                [29245] = 29304, -- Abyssal Fallen Wand
                [29304] = 29305, -- Abyssal Azure Wand
                [29305] = 29306, -- Abyssal Avalon Wand
            }
        },
        [25955] = {tier = 3, upgraderType = 'scroll', chance = 25,
            items = {
                [29285] = 29253, -- Chaos Fallen Sword
                [29253] = 29254, -- Chaos Azure Sword
                [29254] = 29255, -- Chaos Avalon Sword
                [29291] = 29259, -- Chaos Fallen Axe
                [29259] = 29260, -- Chaos Azure Axe
                [29260] = 29261, -- Chaos Avalon Axe
                [29297] = 29265, -- Chaos Fallen Club
                [29265] = 29266, -- Chaos Azure Club
                [29266] = 29267, -- Chaos Avalon Club
                [29300] = 29268, -- Chaos Fallen Bow
                [29268] = 29269, -- Chaos Azure Bow
                [29269] = 29270, -- Chaos Avalon Bow
                [29303] = 29271, -- Chaos Fallen Crossbow
                [29271] = 29272, -- Chaos Azure Crossbow
                [29272] = 29273, -- Chaos Avalon Crossbow
                [29309] = 29277, -- Chaos Fallen Rod
                [29277] = 29278, -- Chaos Azure Rod
                [29278] = 29279, -- Chaos Avalon Rod
                [29306] = 29274, -- Chaos Fallen Wand
                [29274] = 29275, -- Chaos Azure Wand
                [29275] = 29276, -- Chaos Avalon Wand
            }
        },
    }
}

local chaosUpgrade = {
	maxLevel = 500,
	experiencePerLevel = 75, 
	storage = {
		level = 61120,
		experience = 61121
	},
}


local function giveChaosUpgradeExperience(playerId, amount)
  local player = Player(playerId)
  if not player then
      print("Error in function giveChaosUpgradeExperience -> player does not exist (check to ensure playerId being passed to function is correct)")
      return false
  end

  local ChaosUpgradeLevel = player:getStorageValue(chaosUpgrade.storage.level)
  ChaosUpgradeLevel = ChaosUpgradeLevel >= 0 and ChaosUpgradeLevel or 0

  local ChaosUpgradeExperience = player:getStorageValue(chaosUpgrade.storage.experience)
  ChaosUpgradeExperience = ChaosUpgradeExperience >= 0 and ChaosUpgradeExperience or 0

  
  ChaosUpgradeExperience = ChaosUpgradeExperience + amount

  if ChaosUpgradeLevel < chaosUpgrade.maxLevel then
      repeat    
          local ExperienceRequiredForNextLevel = ChaosUpgradeLevel * chaosUpgrade.experiencePerLevel
          if ChaosUpgradeExperience >= ExperienceRequiredForNextLevel then
                ChaosUpgradeExperience = ChaosUpgradeExperience - ExperienceRequiredForNextLevel
              ChaosUpgradeLevel = ChaosUpgradeLevel + 1
              local text = "You have advanced to Chaos Upgrade Skill level " .. ChaosUpgradeLevel .. "."
              if ChaosUpgradeLevel == chaosUpgrade.maxLevel then
                  text = "You have reached the maximum Chaos Upgrade Skill level."
              end
              player:sendTextMessage(MESSAGE_EVENT_ADVANCE, text)
          else
              break
          end
      until (ChaosUpgradeLevel == chaosUpgrade.maxLevel)
  end

  player:setStorageValue(chaosUpgrade.storage.level, ChaosUpgradeLevel)
  player:setStorageValue(chaosUpgrade.storage.experience, ChaosUpgradeExperience)
  return true
end

function action.onUse(creature, item, fromPosition, target, toPosition, isHotkey)
    if chaosPoints_get(creature) >= 1 then
    -- Using creature's position if the target item is located in a container, otherwise use the item's position located on the map
    local pos = target:getPosition().x == 65535 and creature:getPosition() or target:getPosition()
    -- Make sure the creature is not attempting to target a creature
    if not target:isItem() then
        creature:sendCancelMessage('You must select a Chaos Weapon.')
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
        local confKey = (math.random(100) <= keyConfig.chance and 'success' or 'fail')
        local resultConfig = config.messages[confKey]
        pos:sendMagicEffect(resultConfig.effect)
        creature:sendTextMessage(MESSAGE_INFO_DESCR, resultConfig.text)
        if confKey == 'success' then
            target:transform(upgradeId)
            target:setAttribute(ITEM_ATTRIBUTE_DESCRIPTION, ItemType(target:getId()):getDescription().."\nRefined by "..creature:getName()..".")
        end
        if confKey == 'fail' and target.itemid == 29223 and creature:removeItem(24966, 1) then
            target:transform(29223)
            creature:sendTextMessage(MESSAGE_EVENT_ADVANCE, "The Upgrade has failed, the item has been protected.")
        elseif confKey == 'fail' and target.itemid == 29223 then
            target:transform(29222)
        elseif confKey == 'fail' and target.itemid == 29224 and creature:removeItem(24966, 1) then
                target:transform(29224)
                creature:sendTextMessage(MESSAGE_EVENT_ADVANCE, "The Upgrade has failed, the item has been protected.")
        elseif confKey == 'fail' and target.itemid == 29224 then
                target:transform(29223)
        elseif confKey == 'fail' and target.itemid == 29283 and creature:removeItem(24966, 1) then
                target:transform(29283)
                creature:sendTextMessage(MESSAGE_EVENT_ADVANCE, "The Upgrade has failed, the item has been protected.")
        elseif confKey == 'fail' and target.itemid == 29283 then
                target:transform(29224)
        elseif confKey == 'fail' and target.itemid == 29284 and creature:removeItem(24966, 1) then
                target:transform(29284)
                creature:sendTextMessage(MESSAGE_EVENT_ADVANCE, "The Upgrade has failed, the item has been protected.")
        elseif confKey == 'fail' and target.itemid == 29284 then
                target:transform(29283)
        elseif confKey == 'fail' and target.itemid == 29285 and creature:removeItem(24966, 1) then
                target:transform(29285)
                creature:sendTextMessage(MESSAGE_EVENT_ADVANCE, "The Upgrade has failed, the item has been protected.")
        elseif confKey == 'fail' and target.itemid == 29285 then
                target:transform(29284)
        elseif confKey == 'fail' and target.itemid == 29253 and creature:removeItem(24966, 1) then
                target:transform(29253)
                creature:sendTextMessage(MESSAGE_EVENT_ADVANCE, "The Upgrade has failed, the item has been protected.")
        elseif confKey == 'fail' and target.itemid == 29253 then
                target:transform(29285)
        elseif confKey == 'fail' and target.itemid == 29254 and creature:removeItem(24966, 1) then
                target:transform(29254)
                creature:sendTextMessage(MESSAGE_EVENT_ADVANCE, "The Upgrade has failed, the item has been protected.")
        elseif confKey == 'fail' and target.itemid == 29254 then
                target:transform(29253)
        elseif confKey == 'fail' and target.itemid == 29255 and creature:removeItem(24966, 1) then
                target:transform(29255)
                creature:sendTextMessage(MESSAGE_EVENT_ADVANCE, "The Upgrade has failed, the item has been protected.")
        elseif confKey == 'fail' and target.itemid == 29255 then
                target:transform(29254)
        elseif confKey == 'fail' and target.itemid == 29229 and creature:removeItem(24968, 1) then
                target:transform(29229)
                creature:sendTextMessage(MESSAGE_EVENT_ADVANCE, "The Upgrade has failed, the item has been protected.")
        elseif confKey == 'fail' and target.itemid == 29229 then
                target:transform(29228)
        elseif confKey == 'fail' and target.itemid == 29230 and creature:removeItem(24968, 1) then
                target:transform(29230)
                creature:sendTextMessage(MESSAGE_EVENT_ADVANCE, "The Upgrade has failed, the item has been protected.")
        elseif confKey == 'fail' and target.itemid == 29230 then
                target:transform(29229)
        elseif confKey == 'fail' and target.itemid == 29289 and creature:removeItem(24968, 1) then
                target:transform(29289)
                creature:sendTextMessage(MESSAGE_EVENT_ADVANCE, "The Upgrade has failed, the item has been protected.")
        elseif confKey == 'fail' and target.itemid == 29289 then
                target:transform(29230)
        elseif confKey == 'fail' and target.itemid == 29290 and creature:removeItem(24968, 1) then
                target:transform(29290)
                creature:sendTextMessage(MESSAGE_EVENT_ADVANCE, "The Upgrade has failed, the item has been protected.")
        elseif confKey == 'fail' and target.itemid == 29290 then
                target:transform(29289)
        elseif confKey == 'fail' and target.itemid == 29291 and creature:removeItem(24968, 1) then
                target:transform(29291)
                creature:sendTextMessage(MESSAGE_EVENT_ADVANCE, "The Upgrade has failed, the item has been protected.")
        elseif confKey == 'fail' and target.itemid == 29291 then
                target:transform(29290)
        elseif confKey == 'fail' and target.itemid == 29259 and creature:removeItem(24968, 1) then
                target:transform(29259)
                creature:sendTextMessage(MESSAGE_EVENT_ADVANCE, "The Upgrade has failed, the item has been protected.")
        elseif confKey == 'fail' and target.itemid == 29259 then
                target:transform(29291)
        elseif confKey == 'fail' and target.itemid == 29260 and creature:removeItem(24968, 1) then
                target:transform(29260)
                creature:sendTextMessage(MESSAGE_EVENT_ADVANCE, "The Upgrade has failed, the item has been protected.")
        elseif confKey == 'fail' and target.itemid == 29260 then
                target:transform(29259)
        elseif confKey == 'fail' and target.itemid == 29261 and creature:removeItem(24968, 1) then
                target:transform(29261)
                creature:sendTextMessage(MESSAGE_EVENT_ADVANCE, "The Upgrade has failed, the item has been protected.")
        elseif confKey == 'fail' and target.itemid == 29261 then
                target:transform(29260)
        elseif confKey == 'fail' and target.itemid == 29235 and creature:removeItem(24969, 1) then
                target:transform(29235)
                creature:sendTextMessage(MESSAGE_EVENT_ADVANCE, "The Upgrade has failed, the item has been protected.")
        elseif confKey == 'fail' and target.itemid == 29235 then
                target:transform(29234)
        elseif confKey == 'fail' and target.itemid == 29236 and creature:removeItem(24969, 1) then
                target:transform(29236)
                creature:sendTextMessage(MESSAGE_EVENT_ADVANCE, "The Upgrade has failed, the item has been protected.")
        elseif confKey == 'fail' and target.itemid == 29236 then
                target:transform(29235)
        elseif confKey == 'fail' and target.itemid == 29295 and creature:removeItem(24969, 1) then
                target:transform(29295)
                creature:sendTextMessage(MESSAGE_EVENT_ADVANCE, "The Upgrade has failed, the item has been protected.")
        elseif confKey == 'fail' and target.itemid == 29295 then
                target:transform(29236)
        elseif confKey == 'fail' and target.itemid == 29296 and creature:removeItem(24969, 1) then
                target:transform(29296)
                creature:sendTextMessage(MESSAGE_EVENT_ADVANCE, "The Upgrade has failed, the item has been protected.")
        elseif confKey == 'fail' and target.itemid == 29296 then
                target:transform(29295)
        elseif confKey == 'fail' and target.itemid == 29297 and creature:removeItem(24969, 1) then
                target:transform(29297)
                creature:sendTextMessage(MESSAGE_EVENT_ADVANCE, "The Upgrade has failed, the item has been protected.")
        elseif confKey == 'fail' and target.itemid == 29297 then
                target:transform(29296)
        elseif confKey == 'fail' and target.itemid == 29265 and creature:removeItem(24969, 1) then
                target:transform(29265)
                creature:sendTextMessage(MESSAGE_EVENT_ADVANCE, "The Upgrade has failed, the item has been protected.")
        elseif confKey == 'fail' and target.itemid == 29265 then
                target:transform(29297)
        elseif confKey == 'fail' and target.itemid == 29266 and creature:removeItem(24969, 1) then
                target:transform(29266)
                creature:sendTextMessage(MESSAGE_EVENT_ADVANCE, "The Upgrade has failed, the item has been protected.")
        elseif confKey == 'fail' and target.itemid == 29266 then
                target:transform(29265)
        elseif confKey == 'fail' and target.itemid == 29267 and creature:removeItem(24969, 1) then
                target:transform(29267)
                creature:sendTextMessage(MESSAGE_EVENT_ADVANCE, "The Upgrade has failed, the item has been protected.")
        elseif confKey == 'fail' and target.itemid == 29267 then
                target:transform(29266)
        elseif confKey == 'fail' and target.itemid == 29238 and creature:removeItem(24967, 1) then
                target:transform(29238)
                creature:sendTextMessage(MESSAGE_EVENT_ADVANCE, "The Upgrade has failed, the item has been protected.")
        elseif confKey == 'fail' and target.itemid == 29238 then
                target:transform(29237)
        elseif confKey == 'fail' and target.itemid == 29239 and creature:removeItem(24967, 1) then
                target:transform(29239)
                creature:sendTextMessage(MESSAGE_EVENT_ADVANCE, "The Upgrade has failed, the item has been protected.")
        elseif confKey == 'fail' and target.itemid == 29239 then
                target:transform(29238)
        elseif confKey == 'fail' and target.itemid == 29298 and creature:removeItem(24967, 1) then
                target:transform(29298)
                creature:sendTextMessage(MESSAGE_EVENT_ADVANCE, "The Upgrade has failed, the item has been protected.")
        elseif confKey == 'fail' and target.itemid == 29298 then
                target:transform(29239)
        elseif confKey == 'fail' and target.itemid == 29299 and creature:removeItem(24967, 1) then
                target:transform(29299)
                creature:sendTextMessage(MESSAGE_EVENT_ADVANCE, "The Upgrade has failed, the item has been protected.")
        elseif confKey == 'fail' and target.itemid == 29299 then
                target:transform(29298)
        elseif confKey == 'fail' and target.itemid == 29300 and creature:removeItem(24967, 1) then
                target:transform(29300)
                creature:sendTextMessage(MESSAGE_EVENT_ADVANCE, "The Upgrade has failed, the item has been protected.")
        elseif confKey == 'fail' and target.itemid == 29300 then
                target:transform(29299)
        elseif confKey == 'fail' and target.itemid == 29268 and creature:removeItem(24967, 1) then
                target:transform(29268)
                creature:sendTextMessage(MESSAGE_EVENT_ADVANCE, "The Upgrade has failed, the item has been protected.")
        elseif confKey == 'fail' and target.itemid == 29268 then
                target:transform(29300)
        elseif confKey == 'fail' and target.itemid == 29269 and creature:removeItem(24967, 1) then
                target:transform(29269)
                creature:sendTextMessage(MESSAGE_EVENT_ADVANCE, "The Upgrade has failed, the item has been protected.")
        elseif confKey == 'fail' and target.itemid == 29269 then
                target:transform(29268)
        elseif confKey == 'fail' and target.itemid == 29270 and creature:removeItem(24967, 1) then
                target:transform(29270)
                creature:sendTextMessage(MESSAGE_EVENT_ADVANCE, "The Upgrade has failed, the item has been protected.")
        elseif confKey == 'fail' and target.itemid == 29270 then
                target:transform(29269)
        elseif confKey == 'fail' and target.itemid == 29241 and creature:removeItem(24972, 1) then
                target:transform(29241)
                creature:sendTextMessage(MESSAGE_EVENT_ADVANCE, "The Upgrade has failed, the item has been protected.")
        elseif confKey == 'fail' and target.itemid == 29241 then
                target:transform(29240)
        elseif confKey == 'fail' and target.itemid == 29242 and creature:removeItem(24972, 1) then
                target:transform(29242)
                creature:sendTextMessage(MESSAGE_EVENT_ADVANCE, "The Upgrade has failed, the item has been protected.")
        elseif confKey == 'fail' and target.itemid == 29242 then
                target:transform(29241)
        elseif confKey == 'fail' and target.itemid == 29301 and creature:removeItem(24972, 1) then
                target:transform(29301)
                creature:sendTextMessage(MESSAGE_EVENT_ADVANCE, "The Upgrade has failed, the item has been protected.")
        elseif confKey == 'fail' and target.itemid == 29301 then
                target:transform(29242)
        elseif confKey == 'fail' and target.itemid == 29302 and creature:removeItem(24972, 1) then
                target:transform(29302)
                creature:sendTextMessage(MESSAGE_EVENT_ADVANCE, "The Upgrade has failed, the item has been protected.")
        elseif confKey == 'fail' and target.itemid == 29302 then
                target:transform(29301)
        elseif confKey == 'fail' and target.itemid == 29303 and creature:removeItem(24972, 1) then
                target:transform(29303)
                creature:sendTextMessage(MESSAGE_EVENT_ADVANCE, "The Upgrade has failed, the item has been protected.")
        elseif confKey == 'fail' and target.itemid == 29303 then
                target:transform(29302)
        elseif confKey == 'fail' and target.itemid == 29271 and creature:removeItem(24972, 1) then
                target:transform(29271)
                creature:sendTextMessage(MESSAGE_EVENT_ADVANCE, "The Upgrade has failed, the item has been protected.")
        elseif confKey == 'fail' and target.itemid == 29271 then
                target:transform(29303)    
        elseif confKey == 'fail' and target.itemid == 29272 and creature:removeItem(24972, 1) then
                target:transform(29272)
                creature:sendTextMessage(MESSAGE_EVENT_ADVANCE, "The Upgrade has failed, the item has been protected.")
        elseif confKey == 'fail' and target.itemid == 29272 then
                target:transform(29271)
        elseif confKey == 'fail' and target.itemid == 29273 and creature:removeItem(24972, 1) then
                target:transform(29273)
                creature:sendTextMessage(MESSAGE_EVENT_ADVANCE, "The Upgrade has failed, the item has been protected.")
        elseif confKey == 'fail' and target.itemid == 29273 then
                target:transform(29272)
        elseif confKey == 'fail' and target.itemid == 29247 and creature:removeItem(24970, 1) then
                target:transform(29247)
                creature:sendTextMessage(MESSAGE_EVENT_ADVANCE, "The Upgrade has failed, the item has been protected.")
        elseif confKey == 'fail' and target.itemid == 29247 then
                target:transform(29246)
        elseif confKey == 'fail' and target.itemid == 29248 and creature:removeItem(24972, 1) then
                target:transform(29248)
                creature:sendTextMessage(MESSAGE_EVENT_ADVANCE, "The Upgrade has failed, the item has been protected.")
        elseif confKey == 'fail' and target.itemid == 29248 then
                target:transform(29247)
        elseif confKey == 'fail' and target.itemid == 29307 and creature:removeItem(24972, 1) then
                target:transform(29307)
                creature:sendTextMessage(MESSAGE_EVENT_ADVANCE, "The Upgrade has failed, the item has been protected.")
        elseif confKey == 'fail' and target.itemid == 29307 then
                target:transform(29248)
        elseif confKey == 'fail' and target.itemid == 29308 and creature:removeItem(24972, 1) then
                target:transform(29308)
                creature:sendTextMessage(MESSAGE_EVENT_ADVANCE, "The Upgrade has failed, the item has been protected.")
        elseif confKey == 'fail' and target.itemid == 29308 then
                target:transform(29307)
        elseif confKey == 'fail' and target.itemid == 29309 and creature:removeItem(24972, 1) then
                target:transform(29309)
                creature:sendTextMessage(MESSAGE_EVENT_ADVANCE, "The Upgrade has failed, the item has been protected.")
        elseif confKey == 'fail' and target.itemid == 29309 then
                target:transform(29308)
        elseif confKey == 'fail' and target.itemid == 29277 and creature:removeItem(24972, 1) then
                target:transform(29277)
                creature:sendTextMessage(MESSAGE_EVENT_ADVANCE, "The Upgrade has failed, the item has been protected.")
        elseif confKey == 'fail' and target.itemid == 29277 then
                target:transform(29309)
        elseif confKey == 'fail' and target.itemid == 29278 and creature:removeItem(24972, 1) then
                target:transform(29278)
                creature:sendTextMessage(MESSAGE_EVENT_ADVANCE, "The Upgrade has failed, the item has been protected.")
        elseif confKey == 'fail' and target.itemid == 29278 then
                target:transform(29277)
        elseif confKey == 'fail' and target.itemid == 29279 and creature:removeItem(24972, 1) then
                target:transform(29279)
                creature:sendTextMessage(MESSAGE_EVENT_ADVANCE, "The Upgrade has failed, the item has been protected.")
        elseif confKey == 'fail' and target.itemid == 29279 then
                target:transform(29278)   
        elseif confKey == 'fail' and target.itemid == 29244 and creature:removeItem(24971, 1) then
                target:transform(29244)
                creature:sendTextMessage(MESSAGE_EVENT_ADVANCE, "The Upgrade has failed, the item has been protected.")
        elseif confKey == 'fail' and target.itemid == 29244 then
                target:transform(29243)
        elseif confKey == 'fail' and target.itemid == 29245 and creature:removeItem(24972, 1) then
                target:transform(29245)
                creature:sendTextMessage(MESSAGE_EVENT_ADVANCE, "The Upgrade has failed, the item has been protected.")
        elseif confKey == 'fail' and target.itemid == 29245 then
                target:transform(29244)
        elseif confKey == 'fail' and target.itemid == 29304 and creature:removeItem(24972, 1) then
                target:transform(29304)
                creature:sendTextMessage(MESSAGE_EVENT_ADVANCE, "The Upgrade has failed, the item has been protected.")
        elseif confKey == 'fail' and target.itemid == 29304 then
                target:transform(29245)
        elseif confKey == 'fail' and target.itemid == 29305 and creature:removeItem(24972, 1) then
                target:transform(29305)
                creature:sendTextMessage(MESSAGE_EVENT_ADVANCE, "The Upgrade has failed, the item has been protected.")
        elseif confKey == 'fail' and target.itemid == 29305 then
                target:transform(29304)
        elseif confKey == 'fail' and target.itemid == 29306 and creature:removeItem(24972, 1) then
                target:transform(29306)
                creature:sendTextMessage(MESSAGE_EVENT_ADVANCE, "The Upgrade has failed, the item has been protected.")
        elseif confKey == 'fail' and target.itemid == 29306 then
                target:transform(29305)
        elseif confKey == 'fail' and target.itemid == 29274 and creature:removeItem(24972, 1) then
                target:transform(29274)
                creature:sendTextMessage(MESSAGE_EVENT_ADVANCE, "The Upgrade has failed, the item has been protected.")
        elseif confKey == 'fail' and target.itemid == 29274 then
                target:transform(29306)
        elseif confKey == 'fail' and target.itemid == 29275 and creature:removeItem(24972, 1) then
                target:transform(29275)
                creature:sendTextMessage(MESSAGE_EVENT_ADVANCE, "The Upgrade has failed, the item has been protected.")
        elseif confKey == 'fail' and target.itemid == 29275 then
                target:transform(29274)
        elseif confKey == 'fail' and target.itemid == 29276 and creature:removeItem(24972, 1) then
                target:transform(29276)
                creature:sendTextMessage(MESSAGE_EVENT_ADVANCE, "The Upgrade has failed, the item has been protected.")
        elseif confKey == 'fail' and target.itemid == 29276 then
                target:transform(29275)            
            end
        item:remove(1)
        chaosPoints_remove(creature, 1)
        local levels = {
		expgainmin = 75, -- DO NOT CHANGE !
		expgainmax = 115, -- DO NOT CHANGE !
	}
	local experienceRan = math.random(levels.expgainmin, levels.expgainmax)
        if giveChaosUpgradeExperience(creature:getId(), experienceRan) then
         creature:sendTextMessage(MESSAGE_INFO_DESCR, "You have gained "..experienceRan.." experience on Chaos Upgrade skill.")
        end
    end
    return true
else
        creature:sendTextMessage(MESSAGE_INFO_DESCR, "You didn't have Chaos Points to Transcend Weapons.")
end
end


for keyId, _ in pairs(config.gear) do
    action:id(keyId)
end
action:aid(25932, 25952, 25955) -- El item que hara upgrade
action:register()