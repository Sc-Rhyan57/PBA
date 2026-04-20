function onEvent(n,v1)
    if n == '' then
if v1 == 'end1' then
    setProperty('h.alpha',1)
    setProperty('dad.alpha',0)
    setProperty('boyfriend.alpha',0)
    setProperty('Jake.alpha',0)
    setProperty('gf.alpha',0)
doTweenAlpha('jsgdlwndix','camGame',1,1)
doTweenAlpha('jsgdlwndi','CN',0,1)
doTweenAlpha('jsgdlwnd','HealthP',0,1)

makeLuaSprite('c1','credits/c1',-1270,730)
addLuaSprite('c1',true)
setObjectCamera('c1','camOther')
setProperty('c1.alpha',0)

doTweenAlpha('hahahahahaha','c1',1,1)
doTweenX('ekisde','c1',0,2.2,'backOut')
doTweenY('sakarzzzz','c1',0,2.2,'cubeOut')

elseif v1 == 'end2' then

doTweenY('jjjjjjjjj','c1',-730,1,'cubeIn')
doTweenY('hqhzksnxkx','c12',-730,1,'cubeIn')

makeLuaSprite('c2','credits/c2',-1270,730)
addLuaSprite('c2',true)
setObjectCamera('c2','camOther')
setProperty('c2.alpha',0)
doTweenAlpha('xxxxxddddddd','c2',1,1)
doTweenX('sakarzzzzzzz','c2',0,2.2,'backOut')
doTweenY('sakarzzzzz','c2',0,2.2,'cubeOut')

elseif v1 == 'end3' then

setProperty('camOther.alpha',0)
doTweenAlpha('ayer soñe que me besaban ancianas en bikini y no tenian dentadura jaja que rico xd','camOther',1,0.07)
setProperty('flas.alpha',1)
doTweenAlpha('ayer soñe que me besaban ancianas en bikini y no tenian dentadura jaja que rico','flas',0,0.07)

setProperty('camOther.zoom',1.1)
doTweenZoom('vennn','camOther',1,0.3)

elseif v1 == 'end4' then

removeLuaSprite('c2')
removeLuaSprite('XXXXXDDDDDD')
removeLuaSprite('XXXXXDDDDD')
removeLuaSprite('c22')

doTweenAlpha('ayer soñe que me besaban ancianas en bikini y no tenian dentadura jaja que rico','camGame',0,0.07)


end
end
end

function onTweenCompleted(n)
if n == 'ekisde' then
makeLuaSprite('c12','credits/c12',-1270,0)
addLuaSprite('c12',true)
setObjectCamera('c12','camOther')
setProperty('c12.alpha',0)
doTweenAlpha('k','c12',1,1)
doTweenX('jj','c12',0,2.2,'cubeOut')
elseif n == 'sakarzzzzzzz' then
makeLuaSprite('c22','credits/c22',0,0)
addLuaSprite('c22',true)
setObjectCamera('c22','camOther')
setProperty('c22.alpha',0)
doTweenAlpha('xd','c22',1,1)
elseif n == 'jjjjjjjjj' then
removeLuaSprite('c1')
removeLuaSprite('c12')
elseif n == 'xd' then
makeLuaSprite('XXXXXDDDDDD','credits/c2XD',0,0)
addLuaSprite('XXXXXDDDDDD',true)
setObjectCamera('XXXXXDDDDDD','camOther')
setProperty('XXXXXDDDDDD.alpha',0)
doTweenAlpha('XXXXXDDDDDD','XXXXXDDDDDD',1,1)

makeLuaSprite('XXXXXDDDDD','credits/c2XDSEXO',0,0)
addLuaSprite('XXXXXDDDDD',true)
setProperty('XXXXXDDDDD.alpha',0)
setObjectCamera('XXXXXDDDDD','camOther')
setProperty('XXXXXDDDDD.visible',false)
doTweenAlpha('fhlhldylddtktdk','XXXXXDDDDD',1,1)
end

end