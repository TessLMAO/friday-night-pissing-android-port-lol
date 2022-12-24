local tvCycle = 1
function onCreate()
	setProperty("defaultCamZoom", 0.9)
	makeLuaSprite('sky', 'BGs/announcement/main/eggSky', -300, -200)
	scaleObject('sky', 2, 2)
	addLuaSprite('sky')
	makeLuaSprite('lights', 'BGs/announcement/main/eggLights', -250, -100)
	scaleObject('lights', 1.2, 1.2)
	addLuaSprite('lights')
	makeLuaSprite('building', 'BGs/announcement/main/eggBuilding', -250, -100)
	scaleObject('building', 1.2, 1.2)
	addLuaSprite('building')
	if lowQuality then
		removeLuaSprite('building', true)
		makeLuaSprite('tv', 'BGs/announcement/main/lowQuality', -250, -100)
		scaleObject('tv', 1.2, 1.2)
		addLuaSprite('tv')
		removeLuaSprite('bartop', true)
		removeLuaSprite('barbot', true)
	else
	    makeAnimatedLuaSprite('crowdBack', 'BGs/announcement/crowd/bg-c-back', -150, 50)
	    addAnimationByPrefix('crowdBack', 'crowdBackIdle', 'bg-c-back idle', 24, false)
	    makeAnimatedLuaSprite('crowdFront', 'BGs/announcement/crowd/bg-c-front', 150, 50)
	    addAnimationByPrefix('crowdFront', 'crowdFrontIdle', 'bg-c-front idle', 24, false)
	    setScrollFactor('crowdBack', 0.8, 0.6)
	    setScrollFactor('crowdFront', 1.5, 1.3)
	    addLuaSprite('crowdBack', false)
	    addLuaSprite('crowdFront', true)
		makeLuaSprite('tvspriteCat', 'BGs/announcement/tv/cutecatxd', -250, -100)
		scaleObject('tvspriteCat', 1.2, 1.2)
		addLuaSprite('tvspriteCat')
		makeLuaSprite('tvspriteMf', 'BGs/announcement/tv/motherfucker', -250, -100)
		scaleObject('tvspriteMf', 1.2, 1.2)
		addLuaSprite('tvspriteMf')
		setProperty('tvspriteMf.visible', false)
		makeLuaSprite('tvspriteMrHat', 'BGs/announcement/tv/pouthsark', -250, -100)
		scaleObject('tvspriteMrHat', 1.2, 1.2)
		addLuaSprite('tvspriteMrHat')
		setProperty('tvspriteMrHat.visible', false)
		makeLuaSprite('tvspriteWhat', 'BGs/announcement/tv/sexo', -250, -100)
		scaleObject('tvspriteWhat', 1.2, 1.2)
		addLuaSprite('tvspriteWhat')
		setProperty('tvspriteWhat.visible', false)
		makeLuaSprite('tvspriteApol', 'BGs/announcement/tv/apol', -250, -100)
		scaleObject('tvspriteApol', 1.2, 1.2)
		addLuaSprite('tvspriteApol')
		setProperty('tvspriteApol.visible', false)
		makeLuaSprite('tvspritePipi', 'BGs/announcement/tv/pipi', -250, -100)
		scaleObject('tvspritePipi', 1.2, 1.2)
		addLuaSprite('tvspritePipi')
		setProperty('tvspritePipi.visible', false)
		makeLuaSprite('tvspriteDINGLE', 'BGs/announcement/tv/DINGLE', -250, -100)
		scaleObject('tvspriteDINGLE', 1.2, 1.2)
		addLuaSprite('tvspriteDINGLE')
		setProperty('tvspriteDINGLE.visible', false)
	end
end
function onBeatHit()
	objectPlayAnimation('crowdBack', 'crowdBackIdle', true)
	objectPlayAnimation('crowdFront', 'crowdFrontIdle', true)
	if curBeat % 1 == 0 and not lowQuality then
		cancelTween('lightFlash2')
		doTweenAlpha('lightFlash1', 'lights', 0.2, 0.25, 'quarOut')
	end
	if curBeat % 2 == 0 and not lowQuality then
		cancelTween('lightFlash1')
		doTweenAlpha('lightFlash2', 'lights', 1, 0.25, 'quarIn')
	end
	if curBeat % 8 == 0 and tvCycle == 1 and not lowQuality then
		setProperty('tvspriteWhat.visible', false)
		setProperty('tvspriteDINGLE.visible', false)
		setProperty('tvspriteCat.visible', true)
		tvCycle = tvCycle + 1
	elseif curBeat % 16 == 0 and tvCycle == 2 and not lowQuality then
		setProperty('tvspriteCat.visible', false)
		setProperty('tvspriteMf.visible', true)
		tvCycle = tvCycle + 1
	elseif curBeat % 24 == 0 and tvCycle == 3 and not lowQuality then
		setProperty('tvspriteMf.visible', false)
		setProperty('tvspriteMrHat.visible', true)
		tvCycle = tvCycle + 1
	elseif curBeat % 32 == 0 and tvCycle == 4 and not lowQuality then
		setProperty('tvspriteMrHat.visible', false)
		setProperty('tvspriteWhat.visible', true)
		tvCycle = tvCycle + 1
	elseif curBeat % 40 == 0 and tvCycle == 5 and not lowQuality then
		setProperty('tvspriteMrHat.visible', false)
		setProperty('tvspriteApol.visible', true)
		tvCycle = tvCycle + 1
	elseif curBeat % 48 == 0 and tvCycle == 6 and not lowQuality then
		setProperty('tvspriteApol.visible', false)
		setProperty('tvspritePipi.visible', true)
		tvCycle = tvCycle + 1
	elseif curBeat % 56 == 0 and tvCycle == 7 and not lowQuality then
		setProperty('tvspritePipi.visible', false)
		setProperty('tvspriteDINGLE.visible', true)
		tvCycle = 1
	end
end
function onUpdate(elapsed)
	if mustHitSection then
		setProperty("defaultCamZoom", 0.6)
		doTweenAlpha('booMOFO', 'camHUD', 1, 0.05)
		doTweenAlpha('booMOFO1', 'bartop', 1, 0.1)
		doTweenAlpha('booMOFO2', 'barbot', 1, 0.1)
	else
		setProperty("defaultCamZoom", 1.2)
		doTweenAlpha('booMF', 'camHUD', 0.8, 0.05)
		doTweenAlpha('booMF1', 'bartop', 0, 0.1)
		doTweenAlpha('booMF2', 'barbot', 0, 0.1)
	end
end
function onStartCountdown()
	if getRandomInt(1, 12) == 1 then
		setTextString('botplayTxt', "No skills or bitches?")
	elseif getRandomInt(1, 12) == 2 then
		setTextString('botplayTxt', "His ass is NOT PLAYING!!")
	elseif getRandomInt(1, 12) == 3 then
		setTextString('botplayTxt', "The charters worked hard you know.")
	elseif getRandomInt(1, 12) == 4 then
		setTextString('botplayTxt', "skill issue xd")
	elseif getRandomInt(1, 12) == 5 then
		setTextString('botplayTxt', "If this is a showcase, actually play the mod.")
	elseif getRandomInt(1, 12) == 6 then
		setTextString('botplayTxt', "Fucking Cheater!?")
	elseif getRandomInt(1, 12) == 7 then
		setTextString('botplayTxt', "You're really just going to sit there??")
	elseif getRandomInt(1, 12) == 8 then
		setTextString('botplayTxt', "I hope your nose itches when you do play.")
	elseif getRandomInt(1, 12) == 9 then
		setTextString('botplayTxt', "You probably wouldn't FC this.")
	elseif getRandomInt(1, 12) == 10 then
		setTextString('botplayTxt', "fatherless behavior")
	elseif getRandomInt(1, 12) == 11 then
		setTextString('botplayTxt', "Get Pissed On")
	elseif getRandomInt(1, 12) == 12 then
		setTextString('botplayTxt', "You play good! Oh wait, nevermind..")
	elseif getTextString('botplayTxt') == 'BOTPLAY' then
		setTextString('botplayTxt', "ur trash kid")
	end
end