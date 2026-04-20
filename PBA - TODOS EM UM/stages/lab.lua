local spin = 6
local light=true

function onCreate()
runTimer('Light2',0.6)
runTimer('movL',0.8)

makeLuaSprite('bgNoRTX', 'stages/lab/bgNoRTX', 1100, 650);
scaleObject('bgNoRTX', 1.5, 1.5);
doTweenX('bgNoRTXx', 'bgNoRTX.scale', 2.25, 0.001, 'linear')
doTweenY('bgNoRTXy', 'bgNoRTX.scale', 2.25, 0.001, 'linear')
setProperty('bgNoRTX.alpha',0)

makeLuaSprite('bg', 'stages/lab/bg', 1100, 650);
scaleObject('bg', 1.5, 1.5);
doTweenX('bgX', 'bg.scale', 2.25, 0.001, 'linear')
doTweenY('bgY', 'bg.scale', 2.25, 0.001, 'linear')

makeLuaSprite('JakeU', 'JakeU', 700, -500);
scaleObject('JakeU',1.9,2.3)
setProperty('JakeU.alpha',0)
setScrollFactor('JakeU',1.3,0)

makeAnimatedLuaSprite('Jakes', 'Jakes', -700, 250);
setScrollFactor('Jakes',0.7,0)
addAnimationByPrefix('Jakes', 'Jakes', 'Jakes',24,true)
scaleObject('Jakes',7,9)
setProperty('Jakes.alpha',0)

makeAnimatedLuaSprite('J', 'J', 1500, 400);
addAnimationByPrefix('J', 'J', 'J',24,true)
scaleObject('J',2.2,2.2)
setObjectOrder('J', 1)
setProperty('J.alpha',0)

makeLuaSprite('d', 'stages/lab/dark', 1150, 650);
scaleObject('d', 2, 2);
doTweenX('BG1X', 'd.scale', 3, 0.001, 'linear')
doTweenY('BG1Y', 'd.scale', 3, 0.001, 'linear')

makeLuaSprite('l', 'stages/lab/light', 1150, 650);
scaleObject('l', 2, 2);
doTweenX('BG2X', 'l.scale', 3.01, 0.001, 'linear')
doTweenY('BG2Y', 'l.scale', 3, 0.001, 'linear')

makeLuaSprite('b', 'stages/lab/bulb', 500, 650);
scaleObject('b', 4, 4);
doTweenX('BG3X', 'b.scale', 6, 0.001, 'linear')
doTweenY('BG3Y', 'b.scale', 6, 0.001, 'linear')
setBlendMode('b','add')

addLuaSprite('bgNoRTX', false);
addLuaSprite('bg', false);
addLuaSprite('J', true)
addLuaSprite('b', true);
addLuaSprite('d', true);
addLuaSprite('l', true);

addLuaSprite('JakeU', true)
addLuaSprite('Jakes', true)

doTweenAngle('rightangle','l',4,2.5,'sineInOut')
doTweenX('right','l',getProperty('l.x')-115,2.5,'sineInOut')
end



function onCreatePost()
doTweenAlpha('flicker', 'l', 0, 0.25, 'bounceInOut')
end



function onTweenCompleted(tag)
	if tag == 'flicker' then
	doTweenAlpha('flicker2', 'l', 0.44, 0.4, 'expoOut')
	end

	if tag == 'flicker2' then
	doTweenAlpha('flicker', 'l', 0, 0.4, 'bounceInOut')
	end

    if tag == 'rightangle' then
      doTweenAngle('leftangle','l',-4,2.5,'sineInOut')
   end
   if tag == 'leftangle' then
      doTweenAngle('rightangle','l',4,2.5,'sineInOut')
   end
   if tag == 'right' then
   	doTweenX('left','l',getProperty('l.x')+125,2.5,'sineInOut')
   end
   if tag == 'left' then
   	doTweenX('right','l',getProperty('l.x')-125,2.5,'sineInOut')
   end
end

function onUpdate()
setProperty('d.angle',getProperty('l.angle'))
setProperty('b.angle',getProperty('l.angle'))
setProperty('d.x',getProperty('l.x'))
setProperty('b.x',getProperty('l.x')-580)
setProperty('b.angle',getProperty('l.angle'))

end
function onStepHit()
    if curStep == 4644 then
removeLuaSprite('bgNoRTX')
    end
end