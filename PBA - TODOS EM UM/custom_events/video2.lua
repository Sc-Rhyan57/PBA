function onEvent(n,v1,v2)
	if n == 'video2' then
		startVideo('Start')
		setProperty('inCutscene', false)
	end
end