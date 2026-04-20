function onEvent(n,v1,v2)
if n == 'flashblack' then
setProperty('flll.alpha',1)
doTweenAlpha('fllltt','flll',0,0.7,'linear')
end
end

function onCreatePost()
makeLuaSprite('flll','',0,0)
makeGraphic('flll',screenWidth,screenHeight,'000000')
setObjectCamera('flll','other')
setProperty('flll.alpha',0)
addLuaSprite('flll', true);
precacheImage('flll')
end