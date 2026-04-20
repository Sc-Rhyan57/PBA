


function onUpdate()

g1 = getProperty('boyfriend.x')
g2 = getProperty('dad.x')
g3 = getProperty('gf.x')
g4 = getProperty('Jake.x')
if k then
triggerEvent('Camera Follow Pos',1900,1100)
end
g = 1100
gg = 1800
h = getProperty('boyfriend.y')
end
    k = false

function onEvent(n,v1)
    if n == '' then
g1 = getProperty('boyfriend.x')
g2 = getProperty('dad.x')
g3 = getProperty('gf.x')
g4 = getProperty('Jake.x')
g = 1500


if v1 == 'center' then
setProperty('boyfriend.x',gg)
setProperty('Jake.x',g)
setProperty('dad.x',g)
setProperty('gf.x',gg)

setProperty('boyfriend.y',h-100)
setProperty('gf.y',h-400)
k = true
setProperty('Jake.x',g+200)


elseif v1 == 'move1' then
setProperty('dad.x',g)
setProperty('Jake.x',g+200)
doTweenX('dadd','dad',g+400,13)
doTweenX('Jakee','Jake',g-200,13)
triggerEvent('Camera Follow Pos',1900,1100)
setProperty('cameraSpeed',0)

elseif v1 == 'move2' then
setProperty('boyfriend.x',gg)
setProperty('gf.x',gg-200)
doTweenX('boyfriendd','boyfriend',gg-400,12)
doTweenX('gff','gf',gg+200,12)
triggerEvent('Camera Follow Pos',1900,1100)


elseif v1 == 'normal' then
k = false
setProperty('boyfriend.x',2260)
setProperty('dad.x',2130)
setProperty('gf.x',1100)
setProperty('boyfriend.y',h+100)
setProperty('gf.y',h+350)
setProperty('cameraSpeed',4)

        end
    end
end