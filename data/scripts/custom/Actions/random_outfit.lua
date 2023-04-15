
local outfits = {
    {136, 128, "Citizen"},
    {137, 129, "Hunter"},
    {138, 130, "Mage"},
    {139, 131, "Knight"},
	{466, 465, "Insectoid"},
	{336, 335, "Warmaster"},
	{324, 325, "Yalaharian"},
	{149, 145, "Wizard"},
	{146, 150, "Oriental"},
	{148, 144, "Druid"},
	{151, 155, "Pirate"},
	{156, 152, "Assassin"},
	{157, 153, "Beggar"},
	{158, 154, "Shaman"}
	
}

local randOutfit = CreatureEvent("RandomOutfitForNewPlayers")

function randOutfit.onLogin(player)
    if player:getLastLoginSaved() <= 0 then
        local outfit = outfits[math.random(1, #outfits)]
        local addon = math.random(1, 2)
        player:addOutfitAddon(outfit[1], addon)
        player:addOutfitAddon(outfit[2], addon)
        player:sendTextMessage(MESSAGE_INFO_DESCR, string.format("You obtained the %s outfit with addon %d.", outfit[3], addon))
    end
    return true
end

randOutfit:register()