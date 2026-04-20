function onCreate()
  setProperty("showComboNum", false)
  setProperty("showRating", false)
  setProperty('skipCountdown', true)
  setProperty('timeBarBG.alpha',false)

  setProperty('scoreTxt.visible', false)


	makeLuaSprite('ss','ss', 0, 0);
	setProperty('ss.alpha', 0)
	setObjectCamera('ss', 'other')
	addLuaSprite('ss')
	setProperty('grpNoteSplashes.visible', false)
	scaleObject('ss', 0.85, 0.85)
	screenCenter('ss', 'xy')


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
    doTweenAlpha('ssA', 'ss', 1, 0.5)	
  end
  if curStep == 80 then
    doTweenAlpha('ssA', 'ss', 0, 0.5)
    doTweenAlpha('ssA', 'ss', 0, 0.5)
  end

end  