function noteMiss(id, noteData, noteType, isSustainNote)
	if noteType == 'Hurt Note' then
		cameraFlash('game', 'ffff00', 0.25, true)
		if getRandomBool(50) == true then
		noteTweenAngle('speen', 4, 360, 0.5, 'quartOut')
		noteTweenAngle('speen1', 7, 360, 0.5, 'quartOut')
		noteTweenAngle('speen2', 6, 360, 0.5, 'quartOut')
		noteTweenAngle('speen3', 5, 360, 0.5, 'quartOut')
		doTweenAngle('staticaids', 'iconP1', 360, 0.5, 'quartOut')
	else
		noteTweenAngle('speen4', 4, -360, 0.5, 'quartOut')
		noteTweenAngle('speen5', 7, -360, 0.5, 'quartOut')
		noteTweenAngle('speen6', 6, -360, 0.5, 'quartOut')
		noteTweenAngle('speen7', 5, -360, 0.5, 'quartOut')
		doTweenAngle('aids', 'iconP1', -360, 0.5, 'quartOut')
	end
end
end