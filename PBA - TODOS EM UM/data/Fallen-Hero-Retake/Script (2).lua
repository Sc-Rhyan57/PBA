function onCreatePost()
        precacheImage('Finn_Transformation')
        precacheImage('itsadventuretime/adventure')
        precacheImage('itsadventuretime/time1')
        precacheImage('itsadventuretime/sword')
        precacheImage('itsadventuretime/time2')
        precacheImage('characters/Jake')
        precacheImage('characters/JakeNoRTX')
        addCharacterToList('bfNoRTX','boyfriend')
        addCharacterToList('finnNoRTX','dad')
        addCharacterToList('PibbyNoRTX','gf')
end
def = 650

local f = {'b', 'l', 'd'}

function onSongStart()
    setProperty('vocals.volume',1)
end

function onStepHit()
    
    if curStep == 6000 then
        makeAnimatedLuaSprite('finn', 'Finn_Transformation', -480, -237);
        setScrollFactor('finn',0,0)
        addAnimationByPrefix('finn', 'FINN-CUTSCENE', 'FINN-CUTSCENE',27,false)
        scaleObject('finn',2.435,2.435)
        addLuaSprite('finn', true)
        luaSpritePlayAnimation('finn', 'FINN-CUTSCENE', true);
    elseif curStep == 6000 then
        removeLuaSprite('finn')
    end
    
    if curStep == 6000 then
        cameraShake('camOther',0.01,9000)
        cameraShake('camHUD',0.01,9000)
        
        makeLuaSprite('die','die',0,0)
        setObjectCamera('die','camHUD')
        addLuaSprite('die',true)
        scaleObject('die',2,2)
        setProperty('die.alpha',0)
        doTweenAlpha('jjshsh','die',1.6,1)
    
        setProperty('boyfriend.alpha',0)
        setProperty('dad.alpha',0)
        setProperty('gf.alpha',0)
        setProperty('Jake.alpha',0)
    
        setProperty('bg.alpha',0)
        setProperty('b.y',9000)
        setProperty('l.y',9000)
        setProperty('d.y',9000)
    elseif curStep == 6000 then
        removeLuaSprite('die')
        
        cameraShake('camOther',0.01,0.0001)
        cameraShake('camHUD',0.01,0.0001)

        setProperty('boyfriend.alpha',1)
        
        triggerEvent('camera_target','bf','')
        
        characterPlayAnim('boyfriend', 'reload', true);
        setProperty('boyfriend.specialAnim', true);
    end
    
    if curStep == 6000 then
        makeLuaSprite('adventure','itsadventuretime/adventure',0,0)
        makeLuaSprite('time1','itsadventuretime/time1',0,0)
        makeLuaSprite('sword','itsadventuretime/sword',-2480,0)
        makeLuaSprite('time2','itsadventuretime/time2',0,0)
    
        setObjectCamera('adventure','Other')
        setObjectCamera('time1','Other')
        setObjectCamera('time2','Other')
        setObjectCamera('sword','Other')
    
        setProperty('sword.alpha',0)
    
        addLuaSprite('adventure',true)
        addLuaSprite('time1',true)
        addLuaSprite('sword',true)
        addLuaSprite('time2',true)
    
        setProperty('camOther.x',125)
        doTweenZoom('SpegILoveYou','camOther',0.05,0.000001)
        setProperty('camOther.angle',90)
        doTweenZoom('hsggsdhhsgsjs','camOther',1,0.23,'backOut')
        doTweenAngle('hhhhhg','camOther',0,0.23,'backOut')
        doTweenX('idgaf','camOther',0,0.23,'quadOut')
        
    elseif curStep == 6000 then
        removeLuaSprite('adventure')
        removeLuaSprite('time1')
        removeLuaSprite('sword')
        removeLuaSprite('time2')
    end
end


function onTweenCompleted(n)
    if n ==  'hhhhhg' then
        cameraShake('camOther', 0.007, 0.05)
        cameraShake('camHUD', 0.007, 0.05)
    
        setProperty('sword.alpha',1)
        doTweenX('ghghghghfjfjfgjfjfhdhhfhf','sword',0,0.3,'quadInOut')
    
    elseif n ==  'ghghghghfjfjfgjfjfhdhhfhf' then
        cameraShake('camOther', 0.025, 0.05)
        cameraShake('camHUD', 0.025, 0.05)
    end
end

function onEvent(n)
    if n ==  'bruh' then
        for _, a in pairs(f) do
            doTweenY('this'..a, a, def, 0.0001)
        end 
        setProperty('bg.alpha',1)
        setProperty('bgNoRTX.alpha',0)
    
        triggerEvent('Change Character','bf','newbf cam')
        triggerEvent('Change Character','dad','finn-sword')
        triggerEvent('Change Character','gf','pibby-angy')
        removeLuaSprite('vigBlancoColorCum')
    end
end