function onStepHit()
    
    if curStep == 1 then
        precacheImage('mods/images/22')
        makeAnimatedLuaSprite("arizda", 'arizda', 0, 0)
        addAnimationByPrefix("arizda", "arizda", "arizda idle")
        playAnim("arizda", "arizda", true, false, 0)
        scaleObject("arizda", 1.4, 1.4)
        setProperty("arizda.visible", false)
            --hud stuff, thanks for letting me do this zaydash ur the best!!!!
            makeLuaSprite("thehud", '22', 0, 0)
            --screenCenter("thehud", 0)
            addLuaSprite('thehud', false)
            setObjectCamera('thehud', 'HUD')
            scaleObject('thehud', 0.334, 0.334, true)
            -- background shit
            makeLuaSprite('stairs', 'stairs', -720, 0);
            setScrollFactor('stairs', 0.7, 0.7);
            scaleObject('stairs', 0.6, 0.6);
     end   

end