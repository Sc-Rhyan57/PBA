function onCreatePost()
makeLuaSprite('ContrasakarAdoptame',nil, 0, 0);
makeGraphic('ContrasakarAdoptame',screenWidth,screenHeight,'ffffff')
addLuaSprite('ContrasakarAdoptame', true);
setLuaSpriteScrollFactor('ContrasakarAdoptame',0,0)
setProperty('ContrasakarAdoptame.scale.x',2)
setProperty('ContrasakarAdoptame.scale.y',2)
setBlendMode('ContrasakarAdoptame','add')
setProperty('ContrasakarAdoptame.alpha',0)
setObjectCamera('ContrasakarAdoptame','camOther')
end

function onEvent(n,v1,v2)
if n == 'FlashOther' then
setProperty('ContrasakarAdoptame.alpha',1)
doTweenAlpha('ContrasakarAdoptameAAAAAHHH','ContrasakarAdoptame',0,0.7,'linear')
end
end