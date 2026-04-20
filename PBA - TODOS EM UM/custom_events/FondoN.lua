function onCreatePost()
	makeLuaSprite('blackbg', '', 0, 0)
	setScrollFactor('blackbg', 0, 0)
    scaleObject('blackbg', 20.0, 20.0)
	makeGraphic('blackbg', 3840, 2160, '000001')
	addLuaSprite('blackbg', false)
	setProperty('blackbg.alpha', 0)
	screenCenter('blackbg', 'xy')
end
function onEvent(n, v1, v2)
	if n == 'FondoN' and string.lower(v1) == 'a' then
		doTweenAlpha('applebadxd70', 'blackbg', 0.7, v2, 'linear')
        end
	if n == 'FondoN' and string.lower(v1) == 'b' then
		doTweenAlpha('applebadxd', 'blackbg', 0.000001, v2, 'linear')
	end
end