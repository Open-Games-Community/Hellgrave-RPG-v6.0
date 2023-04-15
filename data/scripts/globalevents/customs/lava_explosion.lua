if configManager.getBoolean(configKeys.WEATHER_RAIN) then
	local weatherStartup = GlobalEvent("LavaStartup")

	function weatherStartup.onStartup()
		local rain = math.random(300)
		if rain > 280 then
			Game.setStorageValue('LavaWeather', 1)
		else
			Game.setStorageValue('LavaWeather', 0)
		end
		return true
	end

	weatherStartup:register()

	local weather = GlobalEvent("LavaWeather")

	function weather.onThink(interval, lastExecution)
		local rain = math.random(300)
		if rain > 280 then
			Game.setStorageValue('LavaWeather', 1)
		else
			Game.setStorageValue('LavaWeather', 0)
		end
		return true
	end

	weather:interval(200000) -- how often to randomize rain / weather
	weather:register()

	local weatherRain = GlobalEvent("LavaWeatherRain")

	function weatherRain.onThink(interval, lastExecution)
		if Game.getStorageValue('LavaWeather') == 1 then
			local players = Game.getPlayers()
			if #players == 0 then
				return true
			end
			local player
			for i = 1, #players do
				player = players[i]
				player:sendWeatherEffect(lavaConfig.groundEffect, lavaConfig.fallEffect, lavaConfig.thunderEffect)
			end
		end
		return true
	end

	weatherRain:interval(150) -- less rain = greater value
	weatherRain:register()
end
