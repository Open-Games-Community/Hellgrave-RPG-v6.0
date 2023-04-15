local action = Action()

local config = {
    messages = {
        success = {
            text  = 'The Item has been identified!',
            talkType = MESSAGE_INFO_DESCR,
            effect   = 48
        },

        fail = {
            text  = 'Identification failed. The item was destroyed. Next time use a Luminous concoction to avoid break an unidentified item!',
            talkType = MESSAGE_INFO_DESCR,
            effect   = 3
        }

    },

    gear = {
        [12807] = {tier = 1, upgraderType = 'rune', chance = 30,
            items = {
                [39148] = 35197, -- Evermoon Shield
                [39149] = 35198, -- Evermoon Armor
                [39150] = 35199, -- Evermoon Boots
                [39151] = 35201, -- Evermoon Helmet
                [39152] = 35202, -- Evermoon Legs
                [39153] = 24332, -- Rod of Venom
                [39154] = 20624, -- Frigost Wand
                [39155] = 20625, -- Ghost Spellbook
                [39156] = 33550, -- Bone Armor
                [39157] = 41450, -- Eagletalon Axe
                [39158] = 41449, -- Eagletalon Bow
                [39159] = 39181, -- Tentugly's armor
                [39160] = 39182, -- Tentugly's Legs
                [36202] = 40855, -- Tentugly's Wand
                [36203] = 41485, -- Tentugly's Spellbook
                [36204] = 39183, -- Eagletalon Club
                [36205] = 39184, -- Eagletalon Sword
                [36206] = 39190, -- Wrath of Nature
                [36207] = 39191, -- Spark of Demeter
                [36268] = 39192, -- Enlighted of Dryad's
                [36269] = 40786, -- Frozen Hell
                [36270] = 41888, -- Bonelord Tome
                [36271] = 41813, -- Magic Hat
                [36823] = 42088, -- Spiritthorn Armor
                [36824] = 42089, -- Spiritthorn Helmet
                [36825] = 42090, -- Alicorn Headguard
                [36826] = 42091, -- Arcanomancer Regalia
                [36827] = 42092, -- Arboreal Crown
                [36828] = 32448, -- Naga sword
                [36829] = 32449, -- Naga Axe
                [36830] = 33429, -- Naga Club
                [36831] = 33479, -- Frostflower boots
                [36832] = 33930, -- Naga crossbow
                [36833] = 33931, -- Feverbloom boots
                [36834] = 33932, -- Naga wand
                [36835] = 33933, -- Naga Rod
                [36849] = 33946, -- Dawnfire Sherwani
                [36850] = 33947, -- Midnight Tunic
                [36851] = 33948, -- Dawnfire Pantaloons
                [36852] = 33949, -- Midnight Sarong
                [36853] = 42093, -- Arboreal Tome
                [36854] = 42094, -- Arcanomancer Folio
                [36436] = 27216, -- Anubis Legs
                [36437] = 27217, -- Anubis Armor
                [36438] = 27218, -- Anubus Boots
                [36439] = 27219, -- Northren Helmet
                [36440] = 27220, -- Northren Legs
                [36441] = 27221, -- Screed Armor
                [36442] = 27222, -- Screed Legs
                [36815] = 27223, -- Bronze Boots
                [36816] = 27224, -- Mummy Boots
                [36818] = 36817, -- Mummy Spellbook
                [36820] = 36819, -- Mummy Skirt
            }
        },
    }
}

local EqWeapIdentificator = {
	maxLevel = 500,
	experiencePerLevel = 250,
	storage = {
		level = 31186,
		experience = 31187
	},
}

local function giveEqWeapIdentificatorExperience(playerId, amount)
    local player = Player(playerId)
    if not player then
        print("Error in function giveEqWeapIdentificatorExperience -> player does not exist (check to ensure playerId being passed to function is correct)")
        return false
    end
 
    local EqWeapIdentificatorLevel = player:getStorageValue(EqWeapIdentificator.storage.level)
    EqWeapIdentificatorLevel = EqWeapIdentificatorLevel >= 0 and EqWeapIdentificatorLevel or 0
 
    local EqWeapIndenExperience = player:getStorageValue(EqWeapIdentificator.storage.experience)
    EqWeapIndenExperience = EqWeapIndenExperience >= 0 and EqWeapIndenExperience or 0
 
    
    EqWeapIndenExperience = EqWeapIndenExperience + amount
 
    if EqWeapIdentificatorLevel < EqWeapIdentificator.maxLevel then
        repeat    
            local ExperienceRequiredForNextLevel = EqWeapIdentificatorLevel * EqWeapIdentificator.experiencePerLevel
            if EqWeapIndenExperience >= ExperienceRequiredForNextLevel then
                EqWeapIndenExperience = EqWeapIndenExperience - ExperienceRequiredForNextLevel
                EqWeapIdentificatorLevel = EqWeapIdentificatorLevel + 1
                local text = "You have advanced to Master Indentificator level " .. EqWeapIdentificatorLevel .. "."
                if EqWeapIdentificatorLevel == EqWeapIdentificator.maxLevel then
                    text = "You have reached the maximum Master Identificator level. You are a Master."
                end
                player:sendTextMessage(MESSAGE_EVENT_ADVANCE, text)
            else
                break
            end
        until (EqWeapIdentificatorLevel == EqWeapIdentificator.maxLevel)
    end
 
    player:setStorageValue(EqWeapIdentificator.storage.level, EqWeapIdentificatorLevel)
    player:setStorageValue(EqWeapIdentificator.storage.experience, EqWeapIndenExperience)
    return true 
end

function action.onUse(player, item, fromPosition, target, toPosition, isHotkey)
    local levels = {
		expgainmin = 250, -- DO NOT CHANGE !
		expgainmax = 295, -- DO NOT CHANGE !
	}
	local experienceRan = math.random(levels.expgainmin, levels.expgainmax)
    local pos = target:getPosition().x == 65535 and player:getPosition() or target:getPosition()
    if not target:isItem() then
        player:sendCancelMessage('You must select an item.')
        pos:sendMagicEffect(CONST_ME_POFF)
        return true
    end
    local keyConfig = config.gear[item:getId()]
    local name  = (target:getArticle() ~= '') and string.format('%s %s', target:getArticle(), target:getName()) or target:getName()
    if keyConfig then
        local upgradeId = keyConfig.items[target:getId()]
        if not upgradeId then
            player:sendCancelMessage(string.format('You are unable to identificate %s with %d %s.', (name == '') and 'this' or name, keyConfig.tier, keyConfig.upgraderType))
            pos:sendMagicEffect(249)
            return true
        end
        if target:getCount() > 1 then
            player:sendCancelMessage('You may only identificate this item one at a time.')
            pos:sendMagicEffect(CONST_ME_POFF)
            return true
        end
        local confKey = (math.random(100) <= keyConfig.chance and 'success' or 'fail')
        local resultConfig = config.messages[confKey]
        pos:sendMagicEffect(resultConfig.effect)
        player:sendTextMessage(MESSAGE_INFO_DESCR, resultConfig.text)
        if confKey == 'success' then
            if giveEqWeapIdentificatorExperience(player:getId(), experienceRan) then
                player:sendTextMessage(MESSAGE_INFO_DESCR, "You have gained "..experienceRan.." experience on Master identification skill.")
                
            end
            target:transform(upgradeId)
            target:setAttribute(ITEM_ATTRIBUTE_DESCRIPTION, ItemType(target:getId()):getDescription().."\nIdentified by "..player:getName()..".")
        end
        if confKey == 'fail' and player:removeItem(42047, 1) then 
            player:sendTextMessage(MESSAGE_INFO_DESCR, "Your item has been saved by the gods.")
        elseif confKey == 'fail' and not player:removeItem(42047, 1) then
            target:remove(1)
        end
        item:remove(1)
    end
    return true
end


for keyId, _ in pairs(config.gear) do
    action:id(keyId)
end
action:aid(12807)
action:register()