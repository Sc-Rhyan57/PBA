--{{Code made by Latter and Tinny modified by Platinum Alpha}}


function onCreatePost()
---------------------------------------------
---------------------------------------------
---------------------------------------------
--jake cover notes hand1
makeAnimatedLuaSprite('JM1', 'Jake_Mechanic2',900,-100)
addAnimationByPrefix('JM1', 'spawn', 'Jake Mechanic2 Charge',24,false)
addAnimationByPrefix('JM1', 'idle', 'Jake Mechanic2 Idle',24,true)
setObjectCamera('JM1', 'camOther')
scaleObject('JM1', 1.5, 1.5,true)
setProperty('JM1.visible', false)
addLuaSprite('JM1', true)
---------------------------------------------
---------------------------------------------
---------------------------------------------
--jake cover notes hand2
makeAnimatedLuaSprite('JM2', 'Jake_Mechanic2ALT',930,370)
addAnimationByPrefix('JM2', 'spawn', 'Jake Mechanic2 Alt Charge',24,false)
addAnimationByPrefix('JM2', 'idle', 'Jake Mechanic2 Alt Idle',24,true)
setObjectCamera('JM2', 'camOther')
scaleObject('JM2', 1.5, 1.5,true)
setProperty('JM2.visible', false)
addLuaSprite('JM2', true)
end


function onEvent(n,v1,v2)
    if not botPlay then
        if n == 'Jake Mechanic' then

        playSound('warning',1)
        runTimer('puto',0.6)
        death = true

        makeLuaSprite('spaces','spaces',0,0)
        setObjectCamera('spaces','camOther')
        addLuaSprite('spaces',true)

        setProperty('spaces.scale.y',0)
        doTweenY('jj','spaces.scale',1,0.2,'backOut')

        setProperty('JM2.visible', true)
        setProperty('JM1.visible', true)
        playAnim('JM1', 'spawn', true)
        playAnim('JM2', 'spawn', true)

        apachurrale = true
        end
    end
end

apachurrale = false
function onUpdate(elapsed)
    if keyboardJustPressed('SPACE') or keyPressed('SPACE') then
        if apachurrale then

            death = false
            apachurrale = false

        end
    end
end

function onTimerCompleted(tag)--timers
    if tag == 'puto' then
        runTimer('hea', 0.2)
        playAnim('JM1', 'idle', true)
        playAnim('JM2', 'idle', true)

    end
    if tag == 'hea' then
        cameraShake('camHUD',0.05,0.1)
        setProperty('camHUD.x',-50)
        doTweenX('jjshahshshhs','camHUD',0,0.5,'backOut')
        removeLuaSprite('spaces')
        characterPlayAnim('boyfriend', 'dodgeRIGHT', true);
        setProperty('boyfriend.specialAnim', true);
    
    if not death then
        setProperty('health', getProperty('health') - 0.1)
        elseif death then
        setProperty('health', 0)
        setProperty('JM2.visible', false)
        setProperty('JM1.visible', false)

    end

        playAnim('JM1', 'spawn', true)
        playAnim('JM2', 'spawn', true)

        runTimer('b', 0.07)
        playSound('h',1)
    end
    if tag == 'b' then

        setProperty('JM2.visible', false)
        setProperty('JM1.visible', false)

    end
end