local textFloat = GlobalEvent("textFloat")

local effects = {
    {position = Position(32368, 32242, 5), text = 'Welcome to Hellgrave RPG Server!', effect = CONST_ME_THUNDER},
	{position = Position(32365, 32260, 7), text = 'Trainers!', effect = CONST_ME_STUN},
	{position = Position(32371, 32240, 7), text = 'Trinity Island!', effect = CONST_ME_HOLYDAMAGE},
    {position = Position(32681, 33102, 6), text = 'Trainers!', effect = 242},
    {position = Position(32692, 33104, 8), text = 'Arkeron!', effect = 256},
    {position = Position(32676, 33100, 5), text = 'Quests, Trainers!', effect = 248},
    {position = Position(33299, 32201, 8), text = '', effect = 240},
    {position = Position(33307, 32201, 8), text = '', effect = 208},
    {position = Position(33313, 32201, 8), text = '', effect = 250},
    {position = Position(33321, 32201, 8), text = '', effect = 237},
    {position = Position(33301, 32200, 8), text = 'Mages', effect = 56},
    {position = Position(33305, 32200, 8), text = 'Hunters', effect = 56},
    {position = Position(33315, 32200, 8), text = 'Warriors', effect = 56},
    {position = Position(33319, 32200, 8), text = 'Priests', effect = 56},
    {position = Position(31815, 32418, 8), text = 'Ancestral Rift 1', effect = 204},
    {position = Position(31815, 32421, 8), text = 'Ancestral Rift 2', effect = 208},
    {position = Position(31835, 32418, 8), text = 'Elder Rift', effect = 240},
    {position = Position(31835, 32421, 8), text = 'Demoniac Rift', effect = 247},
}

function textFloat.onThink(interval)
    for i = 1, #effects do
        local settings = effects[i]
        local spectators = Game.getSpectators(settings.position, false, true, 7, 7, 5, 5)
        if #spectators > 0 then
            if settings.text then
                for i = 1, #spectators do
                    spectators[i]:say(settings.text, TALKTYPE_MONSTER_SAY, false, spectators[i], settings.position)
                end
            end
            if settings.effect then
                settings.position:sendMagicEffect(settings.effect)
            end
        end
    end
   return true
end

textFloat:interval(12000)
textFloat:register()
