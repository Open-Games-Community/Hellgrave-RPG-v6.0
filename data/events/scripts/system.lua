function Player:sendMainCraftWindow(config)
	local function buttonCallback(button, choice)
		if button.text == "Select" then
			self:sendVocCraftWindow(config, choice.id)
		end	
	end
	
	local window = ModalWindow {
		title = config.mainTitleMsg,
		message = config.mainMsg.."\n\n" 
	}
 
	window:addButton("Select", buttonCallback)
	window:addButton("Exit", buttonCallback)
 
    for i = 1, #config.system do
		window:addChoice(config.system[i].tiers)
    end
	window:setDefaultEnterButton("Select")
	window:setDefaultEscapeButton("Exit")
	window:sendToPlayer(self)
end
local CraftTables = {
	maxLevel = 1000,
	experiencePerLevel = 200,
	storage = {
		level = 30568,
		experience = 30569
	},
}

local function giveCraftTablesExperience(playerId, amount)
    local player = Player(playerId)
    if not player then
        print("Error in function giveCraftTablesExperience -> player does not exist (check to ensure playerId being passed to function is correct)")
        return false
    end
 
    local CraftTablesLevel = player:getStorageValue(CraftTables.storage.level)
    CraftTablesLevel = CraftTablesLevel >= 0 and CraftTablesLevel or 0
 
    local CraftTablesIndenExperience = player:getStorageValue(CraftTables.storage.experience)
    CraftTablesIndenExperience = CraftTablesIndenExperience >= 0 and CraftTablesIndenExperience or 0
 
    
    CraftTablesIndenExperience = CraftTablesIndenExperience + amount
 
    if CraftTablesLevel < CraftTables.maxLevel then
        repeat    
            local ExperienceRequiredForNextLevel = CraftTablesLevel * CraftTables.experiencePerLevel
            if CraftTablesIndenExperience >= ExperienceRequiredForNextLevel then
                CraftTablesIndenExperience = CraftTablesIndenExperience - ExperienceRequiredForNextLevel
                CraftTablesLevel = CraftTablesLevel + 1
                local text = "You have advanced to Crafting level " .. CraftTablesLevel .. "."
                if CraftTablesLevel == CraftTables.maxLevel then
                    text = "You have reached the maximum Crafting level. You are a Legend."
                end
                player:sendTextMessage(MESSAGE_EVENT_ADVANCE, text)
            else
                break
            end
        until (CraftTablesLevel == CraftTables.maxLevel)
    end
 
    player:setStorageValue(CraftTables.storage.level, CraftTablesLevel)
    player:setStorageValue(CraftTables.storage.experience, CraftTablesIndenExperience)
    return true 
end

function Player:sendVocCraftWindow(config, lastChoice)
    local function buttonCallback(button, choice)	
		local levels = {
			expgainmin = 150, -- DO NOT CHANGE !
			expgainmax = 250, -- DO NOT CHANGE !
		}
		local experienceRan = math.random(levels.expgainmin, levels.expgainmax)
		if button.text == "Back" then
			self:sendMainCraftWindow(config)
		end 
		if button.text == "Recipe" then
		local item = config.system[lastChoice].items[choice.id].item
		local details = "In order to craft "..item.." you must collect the following items.\n\nRequired Items:\n\n"
 
			for i = 1, #config.system[lastChoice].items[choice.id].reqItems do
			local reqItems = config.system[lastChoice].items[choice.id].reqItems[i].item
			local reqItemsCount = config.system[lastChoice].items[choice.id].reqItems[i].count 
			local reqItemsOnPlayer = self:getItemCount(config.system[lastChoice].items[choice.id].reqItems[i].item)
				details = details.."\n- "..capAll(getItemName(reqItems).." { "..reqItemsOnPlayer.."/"..reqItemsCount.." }")
			end	
			---- This part, can show the picture in recipe, but cannot add a button "Go Back": self:showTextDialog(item, details)
			---- If you wish to use it delete the code below (before the end tag) and replace with self:showTextDialog(item, details)
			---- Solution by Alexv45:
			 local window = ModalWindow {
				title = "Recipe",
				message = details,
			}
			window:addButton("Go Back", function() self:sendVocCraftWindow(config, lastChoice) end)
			window:sendToPlayer(self)
		end
 
		if button.text == "Craft" then
		local item = config.system[lastChoice].items[choice.id].item
			for i = 1, #config.system[lastChoice].items[choice.id].reqItems do
				if self:getItemCount(config.system[lastChoice].items[choice.id].reqItems[i].item) < config.system[lastChoice].items[choice.id].reqItems[i].count then
					self:say(config.needItems..config.system[lastChoice].items[choice.id].item, TALKTYPE_MONSTER_SAY)
					return false
				end
			end	
			for i = 1, #config.system[lastChoice].items[choice.id].reqItems do
				self:removeItem(config.system[lastChoice].items[choice.id].reqItems[i].item, config.system[lastChoice].items[choice.id].reqItems[i].count)
			end		
			if giveCraftTablesExperience(self:getId(), experienceRan) then
				self:sendTextMessage(MESSAGE_INFO_DESCR, "You have gained "..experienceRan.." experience on crafting skill.")
				
			end		
		self:addItem(config.system[lastChoice].items[choice.id].itemID)
		self:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You have crafted x1 ["..item.."].")
		self:getPosition():sendMagicEffect(CONST_ME_HOLYAREA)
		end	
    end
 
    local window = ModalWindow {
        title = config.craftTitle..config.system[lastChoice].tiers, 
        message = config.craftMsg..config.system[lastChoice].tiers..".\n\n", 
    }

	window:addButton("Back", buttonCallback)
	window:addButton("Exit")
	window:addButton("Recipe", buttonCallback)
	window:addButton("Craft", buttonCallback)
    window:setDefaultEnterButton("Craft")
    window:setDefaultEscapeButton("Exit")
 
    for i = 1, #config.system[lastChoice].items do
        window:addChoice(config.system[lastChoice].items[i].item)
    end
 
    window:sendToPlayer(self)
end
