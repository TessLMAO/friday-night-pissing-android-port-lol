function onDestroy()
	if getPropertyFromClass('ClientPrefs', 'middleScroll', false) then
		setPropertyFromClass('ClientPrefs', 'middleScroll', false)
	end
end
function onCreate()
	setPropertyFromClass('ClientPrefs', 'middleScroll', true)
end