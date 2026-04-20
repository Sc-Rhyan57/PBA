def = 650

local f = {'b', 'l', 'd'}

function onCreate()
    precacheImage('characters/Jake')
    precacheImage('characters/JakeNoRTX')
    addCharacterToList('bfNoRTX','boyfriend')
    addCharacterToList('finnNoRTX','dad')
    addCharacterToList('PibbyNoRTX','gf')
end

function onEvent(n,v1)
if n == 'RTX' then

if v1 == 'change1' then
        for _, a in pairs(f) do
            doTweenY('this'..a, a, 9000, 0.0001)
        end 
setProperty('bg.alpha',0)
setProperty('bgNoRTX.alpha',1)

triggerEvent('Change Character','bf','bfNoRTX')
triggerEvent('Change Character','dad','finnNoRTX')
triggerEvent('Change Character','gf','PibbyNoRTX')

makeLuaSprite('vigBlancoColorCum','vig',0,0)
addLuaSprite('vigBlancoColorCum',false)
setObjectCamera('vigBlancoColorCum','hud')
end

if v1 == 'change2' then
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
end