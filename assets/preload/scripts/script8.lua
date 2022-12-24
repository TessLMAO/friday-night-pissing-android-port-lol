function noteMiss()
	playSound('Ring Loss', math.random(1, 5))
	setProperty('boyfriend.alpha', 0.2)
	doTweenAlpha('bfFadeBackIn', 'boyfriend', 1, 0.5, 'quartOut')
end