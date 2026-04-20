function onEvent(name, value1, value2)
	if name == "Image Flash(Copy)" then
		makeLuaSprite('sexo', value1, 0, 0);
		addLuaSprite('sexo', false);
		setScrollFactor('sexo',0,0)
		scaleObject('sexo',5,5)
		screenCenter('sexo')
		setObjectCamera('sexo', 'strumHUD');
		runTimer('yyyyy', value2);
	end
end

function onTimerCompleted(tag, loops, loopsleft)
	if tag == 'yyyyy' then
		doTweenAlpha('iuuuu', 'sexo', 0, 0.3, 'linear');
	end
end

function onTweenCompleted(tag)
	if tag == 'iuuuu' then
		removeLuaSprite('sexo', true);
	end
end