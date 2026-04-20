function onCreate()
	--lefts = screenWidth/4
	popo = screenWidth/20
	botoms = screenHeight-screenHeight/6
	halfie = screenHeight/4

	if getPropertyFromClass('ClientPrefs','middleScroll') then
		--makeLuaText('dadlyric','',lefts, 0, screenHeight/2);
		makeLuaText('dadlyric','',300, popo, halfie);
	else
		makeLuaText('dadlyric','',screenWidth, 0, botoms-60);
	end

	setTextSize('dadlyric',60);
	setTextAlignment('dadlyric','center');
	setObjectCamera('dadlyric', 'other')
	addLuaText('dadlyric');
	setTextFont('dadlyric','AT.ttf')
end

-- passing a table like {255, 100, 20}

-- assumes decimal values of r, g and b but can be easily retrofitted
function rgbToHex(r, g, b)
    --%02x: 0 means replace " "s with "0"s, 2 is width, x means hex
	return string.format("%02x%02x%02x", 
		math.floor(r),
		math.floor(g),
		math.floor(b))
end



function onEvent(name, value1, value2)
	if name == 'lyricsOpponent' then
		dadColor = getProperty("dad.healthColorArray")
		father = rgbToHex(dadColor[1], dadColor[2], dadColor[3])
		setTextString('dadlyric', value1)
		if value2 == "" then
			setTextColor('dadlyric', father)
			setTextColor('dadlyric', "ffffff")
		else
			setTextColor('dadlyric', value2)
		end
	end
end