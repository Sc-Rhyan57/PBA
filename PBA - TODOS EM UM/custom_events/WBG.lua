function onCreatePost()
    if shadersEnabled then
initLuaShader('INV')
setSpriteShader('h', 'INV')
setSpriteShader('dad', 'INV')
setSpriteShader('gf', 'INV')
setSpriteShader('boyfriend', 'INV')
setSpriteShader('Jake', 'INV')
end

makeAnimatedLuaSprite('h', 'idk', 700, 500);
addAnimationByPrefix('h', 'idle', 'idle', 24, true)
setProperty('h.alpha', 0)
addLuaSprite('h', false)
setScrollFactor('h', 2, 2)
setProperty('h.alpha', 0)
scaleObject('h',8,6)
setProperty('h.antialiasing', false);
end

function onEvent(n,v1)
if n == 'WBG' then
    if shadersEnabled then
initLuaShader('INV')
setSpriteShader('dad', 'INV')
setSpriteShader('h', 'INV')
setSpriteShader('gf', 'INV')
setSpriteShader('boyfriend', 'INV')
setSpriteShader('Jake', 'INV')
end
if v1 == 'Won' then
Won()
end

if v1 == 'INV' then
INV()
end

if v1 == 'Bon' then
Bon()
end

if v1 == 'off' then
off()
end
end
end


function INV()
setProperty('h.alpha',1)
if shadersEnabled then
setShaderInt('h', 'invert', 0)
setShaderInt('dad', 'invert', 1)
setShaderInt('gf', 'invert', 1)
setShaderInt('Jake', 'invert', 1)
setShaderInt('boyfriend', 'invert', 1)
end
setProperty('b.y',9000)
setProperty('l.y',9000)
setProperty('d.y',9000)
end

function Bon()
setProperty('h.alpha', 1)
if shadersEnabled then
setShaderInt('boyfriend', 'invert', 1)
setShaderInt('dad', 'invert', 1)
setShaderInt('h', 'invert', 0)
setShaderInt('gf', 'invert', 1)
setShaderInt('Jake', 'invert', 1)
end
setProperty('b.y',9000)
setProperty('l.y',9000)
setProperty('d.y',9000)
if shadersEnabled then
setShaderInt('boyfriend', 'invert', 1)
end
setProperty('boyfriend.color', getColorFromHex('000000'))
setProperty('dad.color', getColorFromHex('000000'))
setProperty('gf.color', getColorFromHex('000000'))
end

function Won()
setProperty('h.alpha', 1)
if shadersEnabled then
setShaderInt('h', 'invert', 1)
setShaderInt('dad', 'invert', 0)
setShaderInt('gf', 'invert', 0)
setShaderInt('Jake', 'invert', 0)
setShaderInt('boyfriend', 'invert', 0)
end
setProperty('b.y',9000)
setProperty('l.y',9000)
setProperty('d.y',9000)
setProperty('boyfriend.color', getColorFromHex('000000'))
setProperty('dad.color', getColorFromHex('000000'))
setProperty('gf.color', getColorFromHex('000000'))
end

function off()
setProperty('h.alpha', 0)
if shadersEnabled then
setShaderInt('dad', 'invert', 0)
setShaderInt('gf', 'invert', 0)
setShaderInt('boyfriend', 'invert', 0)
setShaderInt('Jake', 'invert', 0)
setShaderInt('h', 'invert', 0)
end
setProperty('b.y',650)
setProperty('l.y',650)
setProperty('d.y',650)
setProperty('boyfriend.color', getColorFromHex('ffffff'))
setProperty('dad.color', getColorFromHex('ffffff'))
setProperty('gf.color', getColorFromHex('ffffff'))
end