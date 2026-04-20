function onEvent(n,v1,v2)
if n == 'flashwhite' then
setProperty('flas.alpha',1)
doTweenAlpha('flastt','flas',0,0.7,'linear')
end
end

function onCreatePost()
makeLuaSprite('flas','',0,0)
makeGraphic('flas',screenWidth,screenHeight,'FFFFFF')
setObjectCamera('flas','camGame')
scaleObject('flas',50,40)
setBlendMode('flas','ADD')
setProperty('flas.alpha',0)
addLuaSprite('flas', true);
end