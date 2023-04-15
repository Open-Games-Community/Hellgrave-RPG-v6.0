local skillReq = MoveEvent()

function skillReq.onEquip(player, item, slot)
    if player:getId() and player:getSkillLevel(2) < 130 then
        player:sendTextMessage(MESSAGE_INFO_DESCR,"You need sword skill 130 to equip this sword.")
    return
 end
return true
end

skillReq:type("equip")
skillReq:id(42037)
skillReq:register()