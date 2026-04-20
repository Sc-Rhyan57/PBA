function onCreate()
  setProperty("showComboNum", false)
  setProperty("showRating", false)
  setProperty('skipCountdown', true)
  setProperty('timeBarBG.alpha',false)

  setProperty('scoreTxt.visible', false)


	makeLuaSprite('sss','sss', 0, 0);
	setProperty('sss.alpha', 0)
	setObjectCamera('sss', 'other')
	addLuaSprite('sss')
	setProperty('grpNoteSplashes.visible', false)
	scaleObject('sss', 0.85, 0.85)
	screenCenter('sss', 'xy')


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
  
  if curStep == 65 then
    doTweenAlpha('sssA', 'sss', 1, 0.5)	
  end
  if curStep == 120 then
    doTweenAlpha('sssA', 'sss', 0, 0.5)
    doTweenAlpha('sssA', 'sss', 0, 0.5)
  end

end  