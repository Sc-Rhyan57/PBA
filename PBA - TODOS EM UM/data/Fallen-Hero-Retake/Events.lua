function onCreate()
  setProperty("showComboNum", false)
  setProperty("showRating", false)
  setProperty('skipCountdown', true)
  setProperty('timeBarBG.alpha',false)

  setProperty('scoreTxt.visible', false)


	makeLuaSprite('Fallen Hero RETAKE','Fallen Hero RETAKE', 0, 0);
	setProperty('Fallen Hero RETAKE.alpha', 0)
	setObjectCamera('Fallen Hero RETAKE', 'other')
	addLuaSprite('Fallen Hero RETAKE')
	setProperty('grpNoteSplashes.visible', false)
	scaleObject('Fallen Hero RETAKE', 0.85, 0.85)
	screenCenter('Fallen Hero RETAKE', 'xy')


    makeLuaSprite('Black','Black', 0, 0);
	setProperty('Black.alpha', 0)
	setObjectCamera('Black', 'other')
	addLuaSprite('Black')
	setProperty('grpNoteSplashes.visible', false)
	scaleObject('Black', 8, 8)
	screenCenter('Black', 'xy')


  makeLuaSprite('flashwhite', '', 0, 0);
  makeGraphic('flashwhite',1280,720,'FFFFFF')
    addLuaSprite('flashwhite', true);
    setLuaSpriteScrollFactor('flashwhite',0,0)
        setObjectCamera('flashwhite', 'camOther')
    setProperty('flashwhite.scale.x',2)
    setProperty('flashwhite.scale.y',2)
  setProperty('flashwhite.alpha',0)
end

function onStepHit()
  if curStep == 1 then 
    makeLuaSprite('Black', 'Black',100, 2300)
    scaleObject('Black', 8, 8)
    setObjectOrder('Black', 70)
    addLuaSprite('Black', true)	
  end
  if curStep == 527 then 
    makeLuaSprite('Black', 'Black',100, 9999)
    scaleObject('Black', 8, 8)
    setObjectOrder('Black', 70)
    addLuaSprite('Black', true)
  end  
  if curStep == 1 then 
    doTweenAlpha('Tits', 'camHUD', 0, .1, 'linear')
  end
  if curStep == 527 then 
    doTweenAlpha('Tits', 'camHUD', 1, .5, 'linear')
  end 
  if curStep == 127 then
    doTweenAlpha('Fallen Hero RETAKEA', 'Fallen Hero RETAKE', 1, 0.5)	
  end
  if curStep == 255 then
    doTweenAlpha('Fallen Hero RETAKEA', 'Fallen Hero RETAKE', 0, 0.5)
    doTweenAlpha('Fallen Hero RETAKEA', 'Fallen Hero RETAKE', 0, 0.5)
  end
  if curStep == 4607 then  
    startVideo('1', false)
    setProperty('inCutscene', false)
    setProperty('canPause', true)
    setObjectCamera('videoCutscene', 'hud')
    screenCenter('videoCutscene', 'xy')
  end 
	if curStep == 3215 then
		if not downscroll then
			noteTweenY('0', 0, 9999, 0.8, 'circOut')
			noteTweenY('1', 1, 9999, 0.8, 'circOut')
			noteTweenY('2', 2, 9999, 0.8, 'circOut')
			noteTweenY('3', 3, 9999, 0.8, 'circOut')
		else
			noteTweenY('0', 0, 9999, 0.8, 'circOut')
			noteTweenY('1', 1, 9999, 0.8, 'circOut')
			noteTweenY('2', 2, 9999, 0.8, 'circOut')
			noteTweenY('3', 3, 9999, 0.8, 'circOut')
		end
  end
  if curStep == 3247 then
		if not downscroll then
			noteTweenY('0', 0, 9999, 0.8, 'circOut')
			noteTweenY('1', 1, 9999, 0.8, 'circOut')
			noteTweenY('2', 2, 9999, 0.8, 'circOut')
			noteTweenY('3', 3, 9999, 0.8, 'circOut')
		else
			noteTweenY('0', 0, 9999, 0.8, 'circOut')
			noteTweenY('1', 1, 9999, 0.8, 'circOut')
			noteTweenY('2', 2, 9999, 0.8, 'circOut')
			noteTweenY('3', 3, 9999, 0.8, 'circOut')
		end
  end
  if curStep == 3279 then
		if not downscroll then
			noteTweenY('0', 0, 9999, 0.8, 'circOut')
			noteTweenY('1', 1, 9999, 0.8, 'circOut')
			noteTweenY('2', 2, 9999, 0.8, 'circOut')
			noteTweenY('3', 3, 9999, 0.8, 'circOut')
		else
			noteTweenY('0', 0, 9999, 0.8, 'circOut')
			noteTweenY('1', 1, 9999, 0.8, 'circOut')
			noteTweenY('2', 2, 9999, 0.8, 'circOut')
			noteTweenY('3', 3, 9999, 0.8, 'circOut')
		end
  end
  if curStep == 3295 then
		if not downscroll then
			noteTweenY('0', 0, 9999, 0.8, 'circOut')
			noteTweenY('1', 1, 9999, 0.8, 'circOut')
			noteTweenY('2', 2, 9999, 0.8, 'circOut')
			noteTweenY('3', 3, 9999, 0.8, 'circOut')
		else
			noteTweenY('0', 0, 9999, 0.8, 'circOut')
			noteTweenY('1', 1, 9999, 0.8, 'circOut')
			noteTweenY('2', 2, 9999, 0.8, 'circOut')
			noteTweenY('3', 3, 9999, 0.8, 'circOut')
		end
  end
  if curStep == 3311 then
		if not downscroll then
			noteTweenY('0', 0, 9999, 0.8, 'circOut')
			noteTweenY('1', 1, 9999, 0.8, 'circOut')
			noteTweenY('2', 2, 9999, 0.8, 'circOut')
			noteTweenY('3', 3, 9999, 0.8, 'circOut')
		else
			noteTweenY('0', 0, 9999, 0.8, 'circOut')
			noteTweenY('1', 1, 9999, 0.8, 'circOut')
			noteTweenY('2', 2, 9999, 0.8, 'circOut')
			noteTweenY('3', 3, 9999, 0.8, 'circOut')
		end
  end
  if curStep == 3328 then
		if not downscroll then
			noteTweenY('0', 0, 9999, 0.8, 'circOut')
			noteTweenY('1', 1, 9999, 0.8, 'circOut')
			noteTweenY('2', 2, 9999, 0.8, 'circOut')
			noteTweenY('3', 3, 9999, 0.8, 'circOut')
		else
			noteTweenY('0', 0, 9999, 0.8, 'circOut')
			noteTweenY('1', 1, 9999, 0.8, 'circOut')
			noteTweenY('2', 2, 9999, 0.8, 'circOut')
			noteTweenY('3', 3, 9999, 0.8, 'circOut')
		end
  end
  if curStep == 3344 then
		if not downscroll then
			noteTweenY('0', 0, 9999, 0.8, 'circOut')
			noteTweenY('1', 1, 9999, 0.8, 'circOut')
			noteTweenY('2', 2, 9999, 0.8, 'circOut')
			noteTweenY('3', 3, 9999, 0.8, 'circOut')
		else
			noteTweenY('0', 0, 9999, 0.8, 'circOut')
			noteTweenY('1', 1, 9999, 0.8, 'circOut')
			noteTweenY('2', 2, 9999, 0.8, 'circOut')
			noteTweenY('3', 3, 9999, 0.8, 'circOut')
		end
  end
  if curStep == 3359 then
		if not downscroll then
			noteTweenY('0', 0, 9999, 0.8, 'circOut')
			noteTweenY('1', 1, 9999, 0.8, 'circOut')
			noteTweenY('2', 2, 9999, 0.8, 'circOut')
			noteTweenY('3', 3, 9999, 0.8, 'circOut')
		else
			noteTweenY('0', 0, 9999, 0.8, 'circOut')
			noteTweenY('1', 1, 9999, 0.8, 'circOut')
			noteTweenY('2', 2, 9999, 0.8, 'circOut')
			noteTweenY('3', 3, 9999, 0.8, 'circOut')
		end
  end
  if curStep == 3375 then
		if not downscroll then
			noteTweenY('0', 0, 9999, 0.8, 'circOut')
			noteTweenY('1', 1, 9999, 0.8, 'circOut')
			noteTweenY('2', 2, 9999, 0.8, 'circOut')
			noteTweenY('3', 3, 9999, 0.8, 'circOut')
		else
			noteTweenY('0', 0, 9999, 0.8, 'circOut')
			noteTweenY('1', 1, 9999, 0.8, 'circOut')
			noteTweenY('2', 2, 9999, 0.8, 'circOut')
			noteTweenY('3', 3, 9999, 0.8, 'circOut')
		end
  end
  if curStep == 3391 then
		if not downscroll then
			noteTweenY('0', 0, 9999, 0.8, 'circOut')
			noteTweenY('1', 1, 9999, 0.8, 'circOut')
			noteTweenY('2', 2, 9999, 0.8, 'circOut')
			noteTweenY('3', 3, 9999, 0.8, 'circOut')
		else
			noteTweenY('0', 0, 9999, 0.8, 'circOut')
			noteTweenY('1', 1, 9999, 0.8, 'circOut')
			noteTweenY('2', 2, 9999, 0.8, 'circOut')
			noteTweenY('3', 3, 9999, 0.8, 'circOut')
		end
  end
  if curStep == 3408 then
		if not downscroll then
			noteTweenY('0', 0, 9999, 0.8, 'circOut')
			noteTweenY('1', 1, 9999, 0.8, 'circOut')
			noteTweenY('2', 2, 9999, 0.8, 'circOut')
			noteTweenY('3', 3, 9999, 0.8, 'circOut')
		else
			noteTweenY('0', 0, 9999, 0.8, 'circOut')
			noteTweenY('1', 1, 9999, 0.8, 'circOut')
			noteTweenY('2', 2, 9999, 0.8, 'circOut')
			noteTweenY('3', 3, 9999, 0.8, 'circOut')
		end
  end
  if curStep == 3423 then
		if not downscroll then
			noteTweenY('0', 0, 9999, 0.8, 'circOut')
			noteTweenY('1', 1, 9999, 0.8, 'circOut')
			noteTweenY('2', 2, 9999, 0.8, 'circOut')
			noteTweenY('3', 3, 9999, 0.8, 'circOut')
		else
			noteTweenY('0', 0, 9999, 0.8, 'circOut')
			noteTweenY('1', 1, 9999, 0.8, 'circOut')
			noteTweenY('2', 2, 9999, 0.8, 'circOut')
			noteTweenY('3', 3, 9999, 0.8, 'circOut')
		end
  end
  if curStep == 3439 then
		if not downscroll then
			noteTweenY('0', 0, 9999, 0.8, 'circOut')
			noteTweenY('1', 1, 9999, 0.8, 'circOut')
			noteTweenY('2', 2, 9999, 0.8, 'circOut')
			noteTweenY('3', 3, 9999, 0.8, 'circOut')
		else
			noteTweenY('0', 0, 9999, 0.8, 'circOut')
			noteTweenY('1', 1, 9999, 0.8, 'circOut')
			noteTweenY('2', 2, 9999, 0.8, 'circOut')
			noteTweenY('3', 3, 9999, 0.8, 'circOut')
		end
  end
  if curStep == 3455 then
		if not downscroll then
			noteTweenY('0', 0, 9999, 0.8, 'circOut')
			noteTweenY('1', 1, 9999, 0.8, 'circOut')
			noteTweenY('2', 2, 9999, 0.8, 'circOut')
			noteTweenY('3', 3, 9999, 0.8, 'circOut')
		else
			noteTweenY('0', 0, 9999, 0.8, 'circOut')
			noteTweenY('1', 1, 9999, 0.8, 'circOut')
			noteTweenY('2', 2, 9999, 0.8, 'circOut')
			noteTweenY('3', 3, 9999, 0.8, 'circOut')
		end
  end
  if curStep == 3471 then
		if not downscroll then
			noteTweenY('0', 0, 9999, 0.8, 'circOut')
			noteTweenY('1', 1, 9999, 0.8, 'circOut')
			noteTweenY('2', 2, 9999, 0.8, 'circOut')
			noteTweenY('3', 3, 9999, 0.8, 'circOut')
		else
			noteTweenY('0', 0, 9999, 0.8, 'circOut')
			noteTweenY('1', 1, 9999, 0.8, 'circOut')
			noteTweenY('2', 2, 9999, 0.8, 'circOut')
			noteTweenY('3', 3, 9999, 0.8, 'circOut')
		end
  end
  if curStep == 4287 then
		if not downscroll then
			noteTweenY('0', 0, 9999, 0.8, 'circOut')
			noteTweenY('1', 1, 9999, 0.8, 'circOut')
			noteTweenY('2', 2, 9999, 0.8, 'circOut')
			noteTweenY('3', 3, 9999, 0.8, 'circOut')
		else
			noteTweenY('0', 0, 9999, 0.8, 'circOut')
			noteTweenY('1', 1, 9999, 0.8, 'circOut')
			noteTweenY('2', 2, 9999, 0.8, 'circOut')
			noteTweenY('3', 3, 9999, 0.8, 'circOut')
		end
  end
  if curStep == 4304 then
		if not downscroll then
			noteTweenY('0', 0, 9999, 0.8, 'circOut')
			noteTweenY('1', 1, 9999, 0.8, 'circOut')
			noteTweenY('2', 2, 9999, 0.8, 'circOut')
			noteTweenY('3', 3, 9999, 0.8, 'circOut')
		else
			noteTweenY('0', 0, 9999, 0.8, 'circOut')
			noteTweenY('1', 1, 9999, 0.8, 'circOut')
			noteTweenY('2', 2, 9999, 0.8, 'circOut')
			noteTweenY('3', 3, 9999, 0.8, 'circOut')
		end
  end
  if curStep == 4320 then
		if not downscroll then
			noteTweenY('0', 0, 9999, 0.8, 'circOut')
			noteTweenY('1', 1, 9999, 0.8, 'circOut')
			noteTweenY('2', 2, 9999, 0.8, 'circOut')
			noteTweenY('3', 3, 9999, 0.8, 'circOut')
		else
			noteTweenY('0', 0, 9999, 0.8, 'circOut')
			noteTweenY('1', 1, 9999, 0.8, 'circOut')
			noteTweenY('2', 2, 9999, 0.8, 'circOut')
			noteTweenY('3', 3, 9999, 0.8, 'circOut')
		end
  end
  if curStep == 4343 then
		if not downscroll then
			noteTweenY('0', 0, 9999, 0.8, 'circOut')
			noteTweenY('1', 1, 9999, 0.8, 'circOut')
			noteTweenY('2', 2, 9999, 0.8, 'circOut')
			noteTweenY('3', 3, 9999, 0.8, 'circOut')
		else
			noteTweenY('0', 0, 9999, 0.8, 'circOut')
			noteTweenY('1', 1, 9999, 0.8, 'circOut')
			noteTweenY('2', 2, 9999, 0.8, 'circOut')
			noteTweenY('3', 3, 9999, 0.8, 'circOut')
		end
  end
  if curStep == 4352 then
		if not downscroll then
			noteTweenY('0', 0, 9999, 0.8, 'circOut')
			noteTweenY('1', 1, 9999, 0.8, 'circOut')
			noteTweenY('2', 2, 9999, 0.8, 'circOut')
			noteTweenY('3', 3, 9999, 0.8, 'circOut')
		else
			noteTweenY('0', 0, 9999, 0.8, 'circOut')
			noteTweenY('1', 1, 9999, 0.8, 'circOut')
			noteTweenY('2', 2, 9999, 0.8, 'circOut')
			noteTweenY('3', 3, 9999, 0.8, 'circOut')
		end
  end
  if curStep == 4367 then
		if not downscroll then
			noteTweenY('0', 0, 9999, 0.8, 'circOut')
			noteTweenY('1', 1, 9999, 0.8, 'circOut')
			noteTweenY('2', 2, 9999, 0.8, 'circOut')
			noteTweenY('3', 3, 9999, 0.8, 'circOut')
		else
			noteTweenY('0', 0, 9999, 0.8, 'circOut')
			noteTweenY('1', 1, 9999, 0.8, 'circOut')
			noteTweenY('2', 2, 9999, 0.8, 'circOut')
			noteTweenY('3', 3, 9999, 0.8, 'circOut')
		end
  end
  if curStep == 4387 then
		if not downscroll then
			noteTweenY('0', 0, 9999, 0.8, 'circOut')
			noteTweenY('1', 1, 9999, 0.8, 'circOut')
			noteTweenY('2', 2, 9999, 0.8, 'circOut')
			noteTweenY('3', 3, 9999, 0.8, 'circOut')
		else
			noteTweenY('0', 0, 9999, 0.8, 'circOut')
			noteTweenY('1', 1, 9999, 0.8, 'circOut')
			noteTweenY('2', 2, 9999, 0.8, 'circOut')
			noteTweenY('3', 3, 9999, 0.8, 'circOut')
		end
  end
  if curStep == 4399 then
		if not downscroll then
			noteTweenY('0', 0, 9999, 0.8, 'circOut')
			noteTweenY('1', 1, 9999, 0.8, 'circOut')
			noteTweenY('2', 2, 9999, 0.8, 'circOut')
			noteTweenY('3', 3, 9999, 0.8, 'circOut')
		else
			noteTweenY('0', 0, 9999, 0.8, 'circOut')
			noteTweenY('1', 1, 9999, 0.8, 'circOut')
			noteTweenY('2', 2, 9999, 0.8, 'circOut')
			noteTweenY('3', 3, 9999, 0.8, 'circOut')
		end
  end
  if curStep == 4415 then
		if not downscroll then
			noteTweenY('0', 0, 9999, 0.8, 'circOut')
			noteTweenY('1', 1, 9999, 0.8, 'circOut')
			noteTweenY('2', 2, 9999, 0.8, 'circOut')
			noteTweenY('3', 3, 9999, 0.8, 'circOut')
		else
			noteTweenY('0', 0, 9999, 0.8, 'circOut')
			noteTweenY('1', 1, 9999, 0.8, 'circOut')
			noteTweenY('2', 2, 9999, 0.8, 'circOut')
			noteTweenY('3', 3, 9999, 0.8, 'circOut')
		end
  end
  if curStep == 4575 then
		if not downscroll then
			noteTweenY('0', 0, 9999, 0.8, 'circOut')
			noteTweenY('1', 1, 9999, 0.8, 'circOut')
			noteTweenY('2', 2, 9999, 0.8, 'circOut')
			noteTweenY('3', 3, 9999, 0.8, 'circOut')
		else
			noteTweenY('0', 0, 9999, 0.8, 'circOut')
			noteTweenY('1', 1, 9999, 0.8, 'circOut')
			noteTweenY('2', 2, 9999, 0.8, 'circOut')
			noteTweenY('3', 3, 9999, 0.8, 'circOut')
		end
  end
  if curStep == 4591 then
		if not downscroll then
			noteTweenY('0', 0, 9999, 0.8, 'circOut')
			noteTweenY('1', 1, 9999, 0.8, 'circOut')
			noteTweenY('2', 2, 9999, 0.8, 'circOut')
			noteTweenY('3', 3, 9999, 0.8, 'circOut')
		else
			noteTweenY('0', 0, 9999, 0.8, 'circOut')
			noteTweenY('1', 1, 9999, 0.8, 'circOut')
			noteTweenY('2', 2, 9999, 0.8, 'circOut')
			noteTweenY('3', 3, 9999, 0.8, 'circOut')
		end
  end
  if curStep == 4607 then
		if not downscroll then
			noteTweenY('0', 0, 9999, 0.8, 'circOut')
			noteTweenY('1', 1, 9999, 0.8, 'circOut')
			noteTweenY('2', 2, 9999, 0.8, 'circOut')
			noteTweenY('3', 3, 9999, 0.8, 'circOut')
		else
			noteTweenY('0', 0, 9999, 0.8, 'circOut')
			noteTweenY('1', 1, 9999, 0.8, 'circOut')
			noteTweenY('2', 2, 9999, 0.8, 'circOut')
			noteTweenY('3', 3, 9999, 0.8, 'circOut')
		end
  end
	if curStep == 45000 then
		if not downscroll then
			noteTweenY('4', 4, 100,40, 100, 'circOut')
			noteTweenY('5', 5, 100,40, 100, 'circOut')
			noteTweenY('6', 6, 100,40, 100, 'circOut')
			noteTweenY('7', 7, 100,40, 100, 'circOut')
		else
			noteTweenY('4', 4, 100,40, 100, 'circOut')
			noteTweenY('5', 5, 100,40, 100, 'circOut')
			noteTweenY('6', 6, 100,40, 100, 'circOut')
			noteTweenY('7', 7, 100,40, 100, 'circOut')
		end
  end     
  if curStep == 1983 then
    doTweenAlpha('Black', 'Black', 1, 0.5)	
  end
  if curStep == 2271 then
    doTweenAlpha('BlackA', 'Black', 0, 0.5)
    doTweenAlpha('BlackA', 'Black', 0, 0.5)
  end
  if curStep == 1166 then
    makeLuaSprite('Black', 'Black',100, 2300)
    scaleObject('Black', 8, 8)
    setObjectOrder('Black', 70)
    addLuaSprite('Black', true)	
  end
  if curStep == 1347 then
    makeLuaSprite('Black', 'Black',100, 9999)
    scaleObject('Black', 8, 8)
    setObjectOrder('Black', 70)
    addLuaSprite('Black', true)
  end
  if curStep == 1180 then
    makeLuaSprite('Black', 'Black',100, 2300)
    scaleObject('Black', 8, 8)
    setObjectOrder('Black', 70)
    addLuaSprite('Black', true)	
  end
  if curStep == 4608 then
    makeLuaSprite('Black', 'Black',100, 9999)
    scaleObject('Black', 8, 8)
    setObjectOrder('Black', 70)
    addLuaSprite('Black', true)
  end
  if curStep == 4639 then
    makeLuaSprite('Black', 'Black',100, 9999)
    scaleObject('Black', 8, 8)
    setObjectOrder('Black', 70)
    addLuaSprite('Black', true)
  end
  if curStep == 4608 then
    doTweenAlpha('Tits', 'camHUD', 0, .1, 'linear')	
  end
  if curStep == 4544 then
    makeLuaSprite('Black', 'Black',100, 2300)
    scaleObject('Black', 8, 8)
    setObjectOrder('Black', 70)
    addLuaSprite('Black', true)	
  end
  if curStep == 4575 then
    makeLuaSprite('Black', 'Black',100, 9999)
    scaleObject('Black', 8, 8)
    setObjectOrder('Black', 70)
    addLuaSprite('Black', true)
  end
  if curStep == 1983 then
    doTweenAlpha('Tits', 'camHUD', 0, .1, 'linear')	
  end
  if curStep == 2265 then 
    doTweenAlpha('Tits', 'camHUD', 1, .5, 'linear')
  end 
  if curStep == 1983 then
    makeLuaSprite('Black', 'Black',100, 2300)
    scaleObject('Black', 8, 8)
    setObjectOrder('Black', 70)
    addLuaSprite('Black', true)	
  end
  if curStep == 2271 then
    makeLuaSprite('Black', 'Black',100, 9999)
    scaleObject('Black', 8, 8)
    setObjectOrder('Black', 70)
    addLuaSprite('Black', true)
  end
  if curStep == 3727 then
    makeLuaSprite('Black', 'Black',100, 2300)
    scaleObject('Black', 8, 8)
    setObjectOrder('Black', 70)
    addLuaSprite('Black', true)	
  end
  if curStep == 3903 then
    makeLuaSprite('Black', 'Black',100, 9999)
    scaleObject('Black', 8, 8)
    setObjectOrder('Black', 70)
    addLuaSprite('Black', true)
  end
   if curStep == 3215 then
    makeLuaSprite("black",'', 1250, 2300);
    makeGraphic("black",4737,2409,'000000')
	scaleObject('Black', 8, 8)
    setObjectOrder('Black', 70)
    setObjectCamera("black", 'camGame')
    addLuaSprite('black')
  end
  if curStep == 3471 then
    makeLuaSprite("black",'', 9999, 9999);
    makeGraphic("black",9999, 9999,'000000')
	scaleObject('Black', 0, 0)
    setObjectOrder('Black', 70)
    setObjectCamera("black", 'camGame')
    addLuaSprite('black')
  end

end  

function onPause()
  if getProperty('videoCutscene') == nil then return end
  callMethod('videoCutscene.pause')
  if callMethodFromClass('flixel.FlxG', 'signals.focusLost.has', {instanceArg('videoCutscene.videoSprite.pause')}) then
      callMethodFromClass('flixel.FlxG', 'signals.focusLost.remove', {instanceArg('videoCutscene.videoSprite.pause')})
  end
  if callMethodFromClass('flixel.FlxG', 'signals.focusGained.has', {instanceArg('videoCutscene.videoSprite.resume')}) then
      callMethodFromClass('flixel.FlxG', 'signals.focusGained.remove', {instanceArg('videoCutscene.videoSprite.resume')})
  end
end

function onResume()
  if getProperty('videoCutscene') == nil then return end
  callMethod('videoCutscene.resume')
  if not callMethodFromClass('flixel.FlxG', 'signals.focusLost.has', {instanceArg('videoCutscene.videoSprite.pause')}) then
      callMethodFromClass('flixel.FlxG', 'signals.focusLost.add', {instanceArg('videoCutscene.videoSprite.pause')})
  end
  if not callMethodFromClass('flixel.FlxG', 'signals.focusGained.has', {instanceArg('videoCutscene.videoSprite.resume')}) then
      callMethodFromClass('flixel.FlxG', 'signals.focusGained.add', {instanceArg('videoCutscene.videoSprite.resume')})
  end
end
