function onCreatePost()
makeLuaSprite('glitche', 'glitche', 0, 0)
setObjectCamera("glitche", 'hud')
addLuaSprite('glitche', false)
scaleObject('glitche',1,1)
setProperty('glitche.alpha',0)
end


function onEvent(name,value1,value2)
if name == 'WBG' then
if value1 == 'on' then
setProperty('glitche.alpha',1)
end
if value1 == 'off' then
setProperty('glitche.alpha',0)
end
end
end