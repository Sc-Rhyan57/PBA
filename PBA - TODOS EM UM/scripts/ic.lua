function onCreatePost()
initLuaShader("glitch2")
setSpriteShader('iconP2', 'glitch2');
setSpriteShader('cnlogo', 'glitch2');
setSpriteShader('timeTxt', 'glitch2');
setSpriteShader('scoreTxt', 'glitch2');
setSpriteShader('botplayTxt', 'glitch2');
setSpriteShader('iconP1', 'glitch2');
setSpriteShader('ready', 'glitch2');
setSpriteShader('alphabet', 'glitch2');
setSpriteShader('Finn-CN', 'glitch2');
end

function onUpdate()
setShaderFloat("timeTxt", "iTime",os.clock())
setShaderFloat("scoreTxt", "iTime",os.clock())
setShaderFloat("botplayTxt", "iTime",os.clock())

if getProperty('health') > 1.6 then
setShaderFloat("iconP2", "iTime", os.clock())
if curStep %3 == 0 then
doTweenAngle('d', 'iconP2', 360, 0.01)
setProperty('iconP2.offset.x', getRandomInt(-30, 30))
setProperty('iconP2.offset.y', getRandomInt(-30, 30))
else
setProperty('iconP2.angle', getRandomInt(-5, 5))
setProperty('iconP2.offset.x', getRandomInt(-5, 5))
setProperty('iconP2.offset.y', getRandomInt(-5, 5))
end
elseif getProperty('health') < 1.6 then
setShaderFloat("iconP2", "iTime",0)
setProperty('iconP2.angle',0)
setProperty('iconP2.offset.x', 0)
setProperty('iconP2.offset.y', 0)

end

if getProperty('health') < 0.4 then
setShaderFloat("iconP1", "iTime",os.clock())
setProperty('iconP1.angle', getRandomInt(-5, 5))
setProperty('iconP1.offset.x', getRandomInt(-5, 5))
setProperty('iconP1.offset.y', getRandomInt(-5, 5))

else
setShaderFloat("iconP1", "iTime",0)
setProperty('iconP1.angle',0)
setProperty('iconP1.offset.x', 0)
setProperty('iconP1.offset.y', 0)
end
end