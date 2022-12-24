function onUpdate()
if rating == 1 then
	setRatingName('2 BALLS AND A BONG')
	setTextColor('scoreTxt', '000000')
	setTextBorder('scoreTxt', 1.5, 'ffffff')
end
if rating >= 0.95 and rating < 1 then
	setRatingName('BITCH ASS MOTHERFUCKER')
	setTextColor('scoreTxt', 'ffff00')
	setTextBorder('scoreTxt', 1.5, '000000')
end
if rating >= 0.9 and rating < 0.95 then
	setRatingName('WIFE PISSER')
	setTextColor('scoreTxt', '00ff00')
	setTextBorder('scoreTxt', 1.5, '000000')
end
if rating >= 0.8 and rating < 0.9 then
	setRatingName('WALNUT DICK')
	setTextColor('scoreTxt', '888888')
	setTextBorder('scoreTxt', 1.5, '000000')
end
if rating >= 0.7 and rating < 0.8 then
	setRatingName('LAZAR PISS')
	setTextColor('scoreTxt', '643200')
	setTextBorder('scoreTxt', 1.5, '000000')
end
if rating >= 0.6 and rating < 0.69 then
	setRatingName('DISGUSTING')
	setTextColor('scoreTxt', '643200')
	setTextBorder('scoreTxt', 1.5, '000000')
end
if rating >= 0.5 and rating < 0.6 then
	setRatingName('TWITTER.COM')
	setTextColor('scoreTxt', '643200')
	setTextBorder('scoreTxt', 1.5, '000000')
end
if rating >= 0 and rating < 0.5 then
	setRatingName('MY FUCKING WIFE')
	setTextBorder('scoreTxt', 1.5, '000000')
end
if rating == 0 then
	setRatingName('N/A')
	setTextBorder('scoreTxt', 1.5, '000000')
end
end