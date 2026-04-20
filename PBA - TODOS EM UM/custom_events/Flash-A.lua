function onCreatePost()
    if middlescroll then
	makeLuaSprite('FlashA', 'FlashA/FlashAMiddle', 0, 0);
    elseif not middlescroll then
	makeLuaSprite('FlashA', 'FlashA/FlashASide', 0, 0);
end
	setProperty('FlashA.alpha', 0.001);
	setObjectCamera('FlashA', 'camHUD');
	addLuaSprite('FlashA', true);
	setBlendMode('FlashA','ADD')
	if downscroll then
	    setProperty('FlashA.angle',180)
	end
end

function onEvent(name, value1, value2) 
	if name == 'Flash-A' then
		setProperty('FlashA.alpha', 0.4);
		if value2 == '' then
		doTweenAlpha('FlashA', 'FlashA', 0, 0.5, 'linear')
		elseif not value2 == '' then
		doTweenAlpha('FlashA', 'FlashA', 0, value2, 'linear')
		end
	end
end