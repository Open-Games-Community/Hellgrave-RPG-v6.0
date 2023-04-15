local jobsTalk = TalkAction("!jobs")


function jobsTalk.onSay(player, words, param)

	local herbalistLevel = player:getStorageValue(45007)
    local miningLevel = player:getStorageValue(45001)
    local lumberjackLevel = player:getStorageValue(45005)
    local skinningLevel = player:getStorageValue(45003)
    --- Identificators ---
    local rareIdentificator = player:getStorageValue(31188)
    local veryRareIdentificator = player:getStorageValue(31168)
    local epicIdentificator = player:getStorageValue(31190)
    local divineIdentificator = player:getStorageValue(31184)
    local masterIdentificator = player:getStorageValue(31186)
    --- Crafting Table ----
    local CraftingTable = player:getStorageValue(30568)
    local LegendaryCraft = player:getStorageValue(39447)
    -- Upgrade Skills ---
    local normalUpgrade = player:getStorageValue(61114)
    local magicUpgrade = player:getStorageValue(61116)
    local slotUpgrade = player:getStorageValue(61118)
    local chaosUpgrade = player:getStorageValue(61120)
    local transcendingUpgrade = player:getStorageValue(61122)
    local eggHuner = player:getStorageValue(70814)

	local text = '        Jobs Information        \n\n - Herbalist Level: '..herbalistLevel..'/500.\n - Mining Level: '..miningLevel..'/500 .\n - Woodcutting Level: '..lumberjackLevel..'/500.\n - Skinning Level: '..skinningLevel..'/500.\n\n        Crafting       \n\n - Crafting Skill: '..CraftingTable..'/1000.\n - Legendary Craft Skill: '..LegendaryCraft..'/1000.\n\n        Identificator Skills        \n\n - Rare Identificator: '..rareIdentificator..'/500.\n - Very Rare Identificator: '..veryRareIdentificator..'/500.\n - Epic Identificator: '..epicIdentificator..'/500.\n - Divine Identificator: '..divineIdentificator..'/500.\n - Master Identificator: '..masterIdentificator..'/500.\n\n        Upgrade Skills        \n\n - Normal Upgrade Level: '..normalUpgrade..'/500.\n - Magic Upgrade Level: '..magicUpgrade..'/500.\n - Slot Upgrade Level: '..slotUpgrade..'/500.\n - Chaos Upgrade Level: '..chaosUpgrade..'/500.\n - Transcending Upgrade Level: '..transcendingUpgrade..'/500.\n\n        Discovery        \n\n - Dragon Egg Hunter Level: '..eggHuner..'/1000.'

	return false,  player:popupFYI(text)
end

jobsTalk:register()