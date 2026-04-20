function onCreate()

  makeAnimatedLuaSprite('cut6', 'cutscene/cut6', 0, 0)
  addAnimationByPrefix('cut6', 'cut6 idle', 'cut6 idle', 11, false)
  addLuaSprite('cut6', true)
  setObjectCamera('cut6', 'other')
  scaleObject('cut6', 0.675, 0.675)

  makeAnimatedLuaSprite('cut7', 'cutscene/cut7', 0, 0)
  addAnimationByPrefix('cut7', 'cut7 idle', 'cut7 idle', 11, false)
  addLuaSprite('cut7', true)
  setObjectCamera('cut7', 'other')
  scaleObject('cut7', 0.675, 0.675)

  makeAnimatedLuaSprite('cut8', 'cutscene/cut8', 0, 0)
  addAnimationByPrefix('cut8', 'cut8 idle', 'cut8 idle', 11, false)
  addLuaSprite('cut8', true)
  setObjectCamera('cut8', 'other')
  scaleObject('cut8', 0.675, 0.675)

  makeAnimatedLuaSprite('cut9', 'cutscene/cut9', 0, 0)
  addAnimationByPrefix('cut9', 'cut9 idle', 'cut9 idle', 11, false)
  addLuaSprite('cut9', true)
  setObjectCamera('cut9', 'other')
  scaleObject('cut9', 0.675, 0.675)

end

function onUpdate()
	if curStep == 0 then
        setProperty('cut6.visible', false)
        setProperty('cut7.visible', false)
        setProperty('cut8.visible', false)
        setProperty('cut9.visible', false)
	end


     if curStep >= 1680 then
        setProperty('cut6.visible', true)
        objectPlayAnimation('cut6', 'cut6 idle')
    end

    if curStep >= 1734 then
        setProperty('cut6.visible', false)
        setProperty('cut7.visible', true)
        objectPlayAnimation('cut7', 'cut7 idle')
    end

    if curStep >= 1788 then
        setProperty('cut7.visible', false)
        setProperty('cut8.visible', true)
        objectPlayAnimation('cut8', 'cut8 idle')
    end

    if curStep >= 1842 then
        setProperty('cut8.visible', false)
        setProperty('cut9.visible', true)
        objectPlayAnimation('cut9', 'cut9 idle')
    end

    if curStep >= 1904 then
        setProperty('cut9.visible', false)
    end
end