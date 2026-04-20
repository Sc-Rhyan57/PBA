function onEvent(n,v1,v2)
if n == 'flashRed' then
setProperty('uoi.alpha',1)
doTweenAlpha('uoitt','uoi',0,0.7,'linear')
end
end

function onCreatePost()
makeLuaSprite('uoi','',-5000,-5000)
makeGraphic('uoi',2800,1730,'FF0000')
setObjectCamera('uoi','camGame')
scaleObject('uoi',50,40)
setBlendMode('uoi','ADD')
setProperty('uoi.alpha',0)
addLuaSprite('uoi', true);
end