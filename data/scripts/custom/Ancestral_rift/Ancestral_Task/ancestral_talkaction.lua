local ancestralTalkAction = TalkAction("!ancestral")


function ancestralTalkAction.onSay(player, words, param)

	

	local text = '               Ancestral Tasks Information               \n\n - Ranking: '..getRankTask(player)..'.\n - Ancestral Rank Points: '..taskRank_get(player)..'.\n\n                                 Points                                          \n\n - Ancestral Points: '..taskPoints_get(player)..'.\n - Chaos Points: '..chaosPoints_get(player)..'.\n - Awakening Points: '..awakeningPoints_get(player)..'.\n'

	local ret_t = getTaskInfos(player)
    
	if ret_t then
		text = text .. '\n\n                     Normal Ancestral Task               \n      \n- Current Task: '..ret_t.name..'. \n- Monsters: '..ret_t.monsters..'. \n- Progress: ['..(player:getStorageValue(ret_t.storage))..'/'..ret_t.amount..'] killed.\n- Rewards:\n   - '..getItemsFromTable(ret_t.items)..'\n   - '..ret_t.pointsTask[1]..' Ancestral Points\n   - '..ret_t.pointsTask[2]..' Ancestral Rank Points. \n- Task Status: '..(player:getStorageValue(ret_t.storage) == ret_t.amount and 'Complete' or 'Incomplete')..'!'			
	else
		text = text .. "\n\n                     Normal Ancestral Task               \n      \n    You aren't doing any Normal Ancestral Task."
	end

	local ret_td = getTaskDailyInfo(player)
	if ret_td then
		text = text .. '\n\n\n                     Daily Ancestral Task               \n      \n- Current Task: '..ret_td.name..'. \n- Monsters: '..ret_td.monsters..'.  \n- Progress: ['..(player:getStorageValue(ret_td.storage))..'/'..ret_td.amount..'] killed.\n- Rewards:\n   - '..getItemsFromTable(ret_td.items)..'\n   - '..ret_td.pointsTask[1]..' Ancestral Points\n   - '..ret_td.pointsTask[2]..' Ancestral Rank Points. \n- Task Status: '..(player:getStorageValue(ret_td.storage) == ret_td.amount and 'Complete' or 'Incomplete')..'!'			
	else
		text = text .. "\n\n\n                     Daily Ancestral Task               \n      \n    You aren't doing any Daily Ancestral Task."
	end

	return false,  player:popupFYI(text)
end

ancestralTalkAction:register()
