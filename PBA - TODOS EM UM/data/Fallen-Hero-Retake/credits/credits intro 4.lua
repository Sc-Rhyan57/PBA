function onCreatePost()
setTextString('botplayTxt', '0');
end
function onStepHit()
	if curStep == 153 then

		makeLuaText('Text', "A RECREATION BY ZIMFYT621...", 599, 340, -700); 
      setTextFont('Text', 'Thunderman.ttf')
		setTextSize('Text', 60);
		setObjectCamera('Text', 'other');
		addLuaText('Text', true);

		doTweenY("box", "box", -0, 0.8, "linear")	
		doTweenY("Text", "Text", 300, 1, "linear")		
	end
	if curStep == 193 then
		doTweenY("box", "box", -780, 0.8, "linear")	
		doTweenY("Text", "Text", -350, 0.7, "linear")
            end
	end