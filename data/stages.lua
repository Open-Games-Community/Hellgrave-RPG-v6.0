
-- HELLGRAVE RPG was tested for start from 40x and decreasing
-- You can adjust your own rate stages.
-- Take Note about LOOT !
-- Important: Loot was tested x2 and not x3, x3 is to higher for a low custom RPG server! Remember before start your server, if you set x3 is at your own risk if the server goes not to longterm !


--- All Rates have been tested like this to perform as fast possible but saving the RPG System.
----  You can also decrease the Stages / Skills doing it -4 on each multiplier it was tested also and is a good way.
experienceStages = {
	{
		minlevel = 1,
		maxlevel = 30,
		multiplier = 15
	}, {
		minlevel = 31,
		maxlevel = 100,
		multiplier = 40
	}, {
		minlevel = 101,
		maxlevel = 200,
		multiplier = 37
	}, {
		minlevel = 201,
		maxlevel = 300,
		multiplier = 33
	}, {
		minlevel = 301,
		maxlevel = 400,
		multiplier = 30
	},{
		minlevel = 401,
		maxlevel = 500,
		multiplier = 27
	},{
		minlevel = 501,
		maxlevel = 600,
		multiplier = 24
	},{
		minlevel = 601,
		maxlevel = 750,
		multiplier = 21
	}, {
		minlevel = 751,
		maxlevel = 900,
		multiplier = 18
	},{
		minlevel = 901,
		maxlevel = 1200,
		multiplier = 15
	},{
		minlevel = 1201,
		multiplier = 10
	}
}

skillsStages = {
	{
		minlevel = 10,
		maxlevel = 30,
		multiplier = 68
	}, {
		minlevel = 31,
		maxlevel = 60,
		multiplier = 48
	}, {
		minlevel = 61,
		maxlevel = 90,
		multiplier = 38
	}, {
		minlevel = 91,
		maxlevel = 110,
		multiplier = 28
	}, {
		minlevel = 111,
		maxlevel = 130,
		multiplier = 18
	},{
		minlevel = 131,
		multiplier = 10
	}
}

magicLevelStages = {
	{
		minlevel = 0,
		maxlevel = 30,
		multiplier = 56
	}, {
		minlevel = 31,
		maxlevel = 60,
		multiplier = 46
	}, {
		minlevel = 61,
		maxlevel = 90,
		multiplier = 36
	}, {
		minlevel = 91,
		maxlevel = 110,
		multiplier = 26
	}, {
		minlevel = 111,
		maxlevel = 130,
		multiplier = 16
	}, {
		minlevel = 131,
		multiplier = 6
	}
}
