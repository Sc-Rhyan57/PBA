function onCreate()
    makeAnimatedLuaSprite('speedlines','speedlines', 0, 0)
    addAnimationByPrefix('speedlines','speedlines','speedlines speed',24,true)
    addLuaSprite('speedlines', true);
    setObjectCamera("speedlines", 'hud')
    scaleObject("speedlines", 3, 3)
    screenCenter("speedlines", 'xy')
    setProperty("speedlines.visible", false)
end

function onEvent(eventName, value1, value2, strumTime)
    if eventName == 'speedlines' and string.lower(value1) == 'on' then
        setProperty("speedlines.visible", true)
    end
    if eventName == 'speedlines' and string.lower(value1) == 'off' then
        setProperty("speedlines.visible", false)
    end
end
