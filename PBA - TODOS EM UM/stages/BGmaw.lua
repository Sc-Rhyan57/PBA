function onCreate()
	makeAnimatedLuaSprite('rain', 'rain', 190, -350)
    makeAnimatedLuaSprite('Lighting', 'Lighting', -200, -700)
    makeAnimatedLuaSprite('gumballanimpng', 'gumballanimpng', 860, 600)

    addAnimationByPrefix('rain', 'rain rain', 'rain rain', 30 , true)
    addAnimationByPrefix('Lighting', 'LIGHTNING', 'LIGHTNING', 35, true)
    addAnimationByPrefix('gumballanimpng', 'idle', 'idle', 30, true)

	makeLuaSprite('bg', 'bg', 0, 0)
	makeLuaSprite('car1', 'car1', 0, 0)
	makeLuaSprite('car2', 'car2', 0, 0)
	makeLuaSprite('lightc2', 'lightc2', 0, 0)
	makeLuaSprite('znak', 'znak', 0, 0)
	makeLuaSprite('bgs', 'bgs', 0, 0)
	makeLuaSprite('znaks', 'znaks', 0, 0)

	addLuaSprite('rain', true)
	addLuaSprite('Lighting', true)
	addLuaSprite('gumballanimpng', true)
	addLuaSprite('bg', false)
	addLuaSprite('car1', false)
	addLuaSprite('car2', false)
	addLuaSprite('lightc2', true)
	addLuaSprite('znak', true)
	addLuaSprite('bgs', false)
	addLuaSprite('znaks', true)

    setScrollFactor('rain', 0.8, 0.8)
    
    scaleObject('rain', 1.8, 1.8)
 
    setProperty('rain.visible', false)
    setProperty('Lighting.visible', false)
    setProperty('gumballanimpng.visible', false)
    setProperty('bgs.visible', false)
    setProperty('znaks.visible', false)
end


function onBeatHit()
if curBeat == 10 then
    setProperty('Lighting.visible', true)
end

if curBeat == 12 then
    setProperty('Lighting.visible', false)
end

if curBeat == 410 then
    setProperty('gumballanimpng.visible', true)
end

if curBeat == 411 then
    setProperty('gumballanimpng.visible', false)
end



if curBeat == 291 then
    setProperty('rain.visible', true)
end

if curBeat == 556 then
    setProperty('rain.visible', false)
    setProperty('bg.visible', false) 
    setProperty('car1.visible', false)
    setProperty('car2.visible', false)
    setProperty('lightc2.visible', false)
    setProperty('znak.visible', false)
    setProperty('bgs.visible', true)
    setProperty('znaks.visible', true)
end

if curStep == 2603 then
    setProperty('rain.visible', true)
    setProperty('bg.visible', true) 
    setProperty('car1.visible', true)
    setProperty('car2.visible', true)
    setProperty('lightc2.visible', true)
    setProperty('znak.visible', true)
    setProperty('bgs.visible', false)
    setProperty('znaks.visible', false)
end
end