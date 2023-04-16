local action = Action()

local config = {
    messages = {
        success = {
            text  = 'Your item has been upgraded to the next Tier!',
            talkType = MESSAGE_INFO_DESCR,
            effect   = 244
        },

        fail = {
            text  = 'Upgrade Failed.',
            talkType = MESSAGE_INFO_DESCR,
            effect   = 249
        }

    },

    gear = {
        [7856] = {tier = 1, upgraderType = 'rune', chance = 40,
            items = {
                [42033] = 40804, -- Angelic Wand +1
                [12542] = 18497, -- Ekatrix Rod +1
                [12573] = 18500, -- Kraken Wand +1
                [33932] = 18503, -- Naga Wand +1
                [33933] = 18506, -- Naga Rod +1
                [24317] = 40785, -- Ancestral Rifter Rod +1
                [39186] = 39193, -- Ancestral Evil Wand +1
                [20624] = 41481, -- Frigost Wand +1
                [7491] = 34784, -- Emeraude Ring +1
                [7492] = 34770, -- Emeraude Amulet +1
                [8712] = 35047, -- Labradorite Amulet +1
                [8713] = 35050, -- Labradorite Ring +1
                [8711] = 35059, -- Sapphir Ring +1
            }
        },
        [7857] = {tier = 3, upgraderType = 'rune', chance = 30,
            items = {
                [40804] = 40805, -- Angelic Wand +3
                [18497] = 18498, -- Ekatrix Rod +3
                [18500] = 18501, -- Kraken Wand +3
                [18503] = 18504, -- Naga Wand +3
                [18506] = 18507, -- Naga Rod +3
                [40785] = 40745, -- Ancestral Rifter Rod +3
                [39193] = 39194, -- Ancestral Evil Wand +3
                [41481] = 41482, -- Frigost Wand +3
                [34784] = 34785, -- Emeraude Ring +3
                [34770] = 35045, -- Emeraude Amulet +3
                [35047] = 35048, -- Labradorite Amulet +3
                [35050] = 35052, -- Labradorite Ring +3
                [35059] = 35060, -- Sapphir Ring +3
                [40805] = 40806, -- Angelic Wand +5
                [18498] = 18499, -- Ekatrix Rod +5
                [18501] = 18502, -- Kraken Wand +5
                [18504] = 18505, -- Naga Wand +5
                [18507] = 18508, -- Naga Rod +5
                [40745] = 39171, -- Ancestral Rifter Rod +5
                [39194] = 39195, -- Ancestral Evil Wand +5
                [41482] = 41483, -- Frigost Wand +5
                [34785] = 34769, -- Emeraude Ring +5
                [35045] = 35046, -- Emeraude Amulet +5
                [35048] = 35049, -- Labradorite Amulet +5
                [35052] = 35058, -- Labradorite Ring +5
                [35060] = 34841, -- Sapphir Ring +5
            }
        },
    }
}


local magicUpgrade = {
	maxLevel = 500,
	experiencePerLevel = 75, 
	storage = {
		level = 61116,
		experience = 61117
	},
}


local function giveNormalMagicExperience(playerId, amount)
  local player = Player(playerId)
  if not player then
      print("Error in function giveNormalMagicExperience -> player does not exist (check to ensure playerId being passed to function is correct)")
      return false
  end

  local magicUpgradeLevel = player:getStorageValue(magicUpgrade.storage.level)
  magicUpgradeLevel = magicUpgradeLevel >= 0 and magicUpgradeLevel or 0

  local magicUpgradeExperience = player:getStorageValue(magicUpgrade.storage.experience)
  magicUpgradeExperience = magicUpgradeExperience >= 0 and magicUpgradeExperience or 0

  
  magicUpgradeExperience = magicUpgradeExperience + amount

  if magicUpgradeLevel < magicUpgrade.maxLevel then
      repeat    
          local ExperienceRequiredForNextLevel = magicUpgradeLevel * magicUpgrade.experiencePerLevel
          if magicUpgradeExperience >= ExperienceRequiredForNextLevel then
             magicUpgradeExperience = magicUpgradeExperience - ExperienceRequiredForNextLevel
              magicUpgradeLevel = magicUpgradeLevel + 1
              local text = "You have advanced to Mage Upgrade Skill level " .. magicUpgradeLevel .. "."
              if magicUpgradeLevel == magicUpgrade.maxLevel then
                  text = "You have reached the maximum Mage Upgrade Skill level."
              end
              player:sendTextMessage(MESSAGE_EVENT_ADVANCE, text)
          else
              break
          end
      until (magicUpgradeLevel == magicUpgrade.maxLevel)
  end

  player:setStorageValue(magicUpgrade.storage.level, magicUpgradeLevel)
  player:setStorageValue(magicUpgrade.storage.experience, magicUpgradeExperience)
  return true
end


function action.onUse(player, item, fromPosition, target, toPosition, isHotkey)
    local levels = {
		expgainmin = 75, -- DO NOT CHANGE !
		expgainmax = 115, -- DO NOT CHANGE !
	}
    -- Using player's position if the target item is located in a container, otherwise use the item's position located on the map
    local pos = target:getPosition().x == 65535 and player:getPosition() or target:getPosition()
    -- Make sure the player is not attempting to target a creature
    if not target:isItem() then
        player:sendCancelMessage('You must select an item.')
        pos:sendMagicEffect(CONST_ME_POFF)
        return true
    end
    -- Attempt to get the config based on which key id the player is using
    local keyConfig = config.gear[item:getId()]
    -- Adding article to full item name if possible, ex: "a sword"
    local name  = (target:getArticle() ~= '') and string.format('%s %s', target:getArticle(), target:getName()) or target:getName()
    if keyConfig then
        -- Directly attempt to access the item id to upgrade to by indexing the item list with the target item's id
        local upgradeId = keyConfig.items[target:getId()]
        -- Prevent attempting to upgrade an item that isn't in config
        if not upgradeId then
            player:sendCancelMessage(string.format('You are unable to upgrade %s with a tier %d %s.', (name == '') and 'this' or name, keyConfig.tier, keyConfig.upgraderType))
            pos:sendMagicEffect(249)
            return true
        end
        -- Prevent attempting to upgrade a stackable item that has more than 1 in it's stack
        if target:getCount() > 1 then
            player:sendCancelMessage('You may only upgrade this item one at a time.')
            pos:sendMagicEffect(CONST_ME_POFF)
            return true
        end


        -- Use the "success" table in config if the random value is less than or equal to the chance, otherwise use the "fail" table
        local confKey = (math.random(100) <= keyConfig.chance and 'success' or 'fail')
        local resultConfig = config.messages[confKey]
        pos:sendMagicEffect(resultConfig.effect)
        player:sendTextMessage(MESSAGE_INFO_DESCR, resultConfig.text)
        if confKey == 'success' then
            local experienceRan = math.random(levels.expgainmin, levels.expgainmax)
        if giveNormalMagicExperience(player:getId(), experienceRan) then
            player:sendTextMessage(MESSAGE_INFO_DESCR, "You have gained "..experienceRan.." experience on Mage Upgrade skill.")
    
        end
            target:transform(upgradeId)
            target:setAttribute(ITEM_ATTRIBUTE_DESCRIPTION, ItemType(target:getId()):getDescription().."\nRefined by "..player:getName()..".")
        end
        if confKey == 'fail' and target.itemid == 40804 then
            target:transform(42033)
        elseif confKey == 'fail' and target.itemid == 40805 then
            target:transform(40804)
        elseif confKey == 'fail' and target.itemid == 18497 then
            target:transform(12542)
        elseif confKey == 'fail' and target.itemid == 18498 then
            target:transform(18497)
        elseif confKey == 'fail' and target.itemid == 18500 then
            target:transform(12573)
        elseif confKey == 'fail' and target.itemid == 18501 then
            target:transform(18500)
        elseif confKey == 'fail' and target.itemid == 18503 then
            target:transform(33932)
        elseif confKey == 'fail' and target.itemid == 18504 then
            target:transform(18503)
        elseif confKey == 'fail' and target.itemid == 18506 then
            target:transform(33933)
        elseif confKey == 'fail' and target.itemid == 18507 then
            target:transform(15806)
        elseif confKey == 'fail' and target.itemid == 40785 then
            target:transform(24317)
        elseif confKey == 'fail' and target.itemid == 40745 then
            target:transform(40785)
        elseif confKey == 'fail' and target.itemid == 39193 then
            target:transform(39186)
        elseif confKey == 'fail' and target.itemid == 39194 then
            target:transform(39193)
        elseif confKey == 'fail' and target.itemid == 41481 then
            target:transform(20624)
        elseif confKey == 'fail' and target.itemid == 41482 then
            target:transform(41481)
        elseif confKey == 'fail' and target.itemid == 34784 then
            target:transform(7491)
        elseif confKey == 'fail' and target.itemid == 34785 then
            target:transform(34784)
        elseif confKey == 'fail' and target.itemid == 34770 then
            target.transform(7492)
        elseif confKey == 'fail' and target.itemid == 35045 then
            target.transform(34770)
        elseif confKey == 'fail' and target.itemid == 35047 then
            target.transform(8712)
        elseif confKey == 'fail' and target.itemid == 35048 then
            target.transform(35047)
        elseif confKey == 'fail' and target.itemid == 35050 then
            target.transform(8713)
        elseif confKey == 'fail' and target.itemid == 35052 then
            target.transform(35050)
        elseif confKey == 'fail' and target.itemid == 35059 then
            target.transform(8711)
        elseif confKey == 'fail' and target.itemid == 35060 then
            target.transform(35059)
        end
        item:remove(1)
    end
    return true
end


for keyId, _ in pairs(config.gear) do
    action:id(keyId)
end
action:aid(7865, 7866, 7867) -- El item que hara upgrade
action:register()