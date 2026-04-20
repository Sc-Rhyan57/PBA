function onEvent(n,v1,v2)
if n == 'Flash50' then
setProperty('hhhj.alpha',0.5)
doTweenAlpha('hhhj','hhhj',0,0.7,'linear')
end
end

function onCreatePost()
makeLuaSprite('hhhj', '', 0, 0);
makeGraphic('hhhj',screenWidth,screenHeight,'ffffff')
addLuaSprite('hhhj', false);
setLuaSpriteScrollFactor('hhhj',0,0)
setProperty('hhhj.scale.x',2)
setProperty('hhhj.scale.y',2)
setBlendMode('hhhj','add')
setProperty('hhhj.alpha',0)
end