function onStepHit()
if curStep == 1 then
addLuaScript('Jake/Jake')
setObjectOrder('Jake',getObjectOrder('gfGroup')-1)
end
if curStep == 3624 then
removeLuaScript('Jake/Jake')

addLuaScript('Jake/JakeNoRTX')

setObjectOrder('Jake',getObjectOrder('gfGroup')-1)
end
if curStep == 4654 then
removeLuaScript('Jake/JakeNoRTX')

addLuaScript('Jake/Jake')

setObjectOrder('Jake',getObjectOrder('gfGroup')-1)
end
end