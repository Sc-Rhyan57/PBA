function onCreatePost()
makeLuaSprite('rrr',nil,0,0)
end
function onUpdate()
setProperty('healthBar.alpha',getProperty('rrr.alpha'))
setProperty('healthBarBG.alpha',getProperty('rrr.alpha'))
setProperty('timeBar.alpha',getProperty('rrr.alpha'))
setProperty('timeTxt.alpha',getProperty('rrr.alpha'))
setProperty('scoreTxt.alpha',getProperty('rrr.alpha'))
setProperty('iconP1.alpha',getProperty('rrr.alpha'))
setProperty('iconP2.alpha',getProperty('rrr.alpha'))
setProperty('uglyHB.alpha',getProperty('rrr.alpha'))
setProperty('PBY.alpha',getProperty('rrr.alpha'))
setProperty('PBYL.alpha',getProperty('rrr.alpha'))
setProperty('PBY2.alpha',getProperty('rrr.alpha'))
setProperty('PBYL2.alpha',getProperty('rrr.alpha'))
setProperty('OPPO2.alpha',getProperty('rrr.alpha'))
setProperty('OPP2.alpha',getProperty('rrr.alpha'))

for NoteDAD = 0,3 do
noteTweenAlpha('noteDAD'..NoteDAD,NoteDAD,getProperty('rrr.alpha')-0.7,0.001)
end
end

function onEvent(n,v1,v2)
if n == 'OnlyArrowsBF' then
doTweenAlpha('oioioioi','rrr',v1,v2)
end
end