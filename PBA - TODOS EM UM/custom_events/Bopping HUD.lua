function onEvent(name, value1, value2)
	if name == 'Bopping HUD' then
		v1 = value1
		v2 = value2
	end
end
dea = 4.5
function onBeatHit()
	if curBeat % 1 == 0 then
	    f = v1-0.8
		setProperty('camHUD.angle', v1*dea)
		doTweenAngle('hudTween', 'camHUD', 0, 0.5, 'backOut')
		dea = -dea
		triggerEvent('Add Camera Zoom',0.16*v1,0.06)
	end
end