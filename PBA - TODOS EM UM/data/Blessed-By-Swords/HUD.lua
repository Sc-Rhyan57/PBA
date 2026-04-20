function to_hex(rgb)
return string.format('%x', (rgb[1] * 0x10000) + (rgb[2] * 0x100) + rgb[3])
end

local offsetXCombo = -1100
local offsetYCombo = -550

function onCreatePost()
setTextBorder('scoreTxt', 1,'000000')
setTextColor('scoreTxt', to_hex(getProperty('dad.healthColorArray')))
setTextBorder('botplayTxt', 1,'000000')
setTextColor('botplayTxt', to_hex(getProperty('dad.healthColorArray')))
setTextSize('scoreTxt',30)

setProperty('botplayTxt.offset.x',-320)
setProperty('timeTxt.visible',false)
setProperty('botplayTxt.visible',false)
setProperty('timeBar.visible',false)

setObjectCamera('comboGroup', 'game')
setProperty('comboGroup.x', getProperty('boyfriend.x') + offsetXCombo)
setProperty('comboGroup.y', getProperty('boyfriend.y') + offsetYCombo)
setObjectOrder('comboGroup',getObjectOrder('boyfriendGroup')+1)
setObjectOrder('numbersGroup',getObjectOrder('boyfriendGroup')+2)
setScrollFactor('comboGroup',0.8,0.8)
setPropertyFromClass('ClientPrefs', 'comboOffset[0]', 0)
setPropertyFromClass('ClientPrefs', 'comboOffset[1]', 0)

makeLuaText('HealthP',text,screenWidth/2,540,0)
setTextSize('HealthP',60)
addLuaText('HealthP',false)
setTextAlignment('HealthP','left')
setTextString('HealthP',text)
setTextFont('HealthP', 'vcr.ttf')
setObjectCamera('HealthP', 'other');
setProperty('HealthP.alpha',0)

if not downscroll then
setProperty('HealthP.y',20)
elseif downscroll then
setProperty('HealthP.y',600)
end

if botPlay then
setProperty('botplayTxt.y',getProperty('scoreTxt.y'))
setProperty('botplayTxt.x',getProperty('scoreTxt.x')+75)

setProperty('scoreTxt.alpha',0)
setProperty('scoreTxt.visible',false)
end
end

function onUpdate(elapsed)
if botPlay then
setProperty('scoreTxt.alpha',0)
setProperty('scoreTxt.visible',false)
end

setTextString('HealthP','HP: '..tostring(math.floor(math.min(2,getHealth())*100)/2)..'%')
end
function onGameOver()
removeLuaText('HealthP')
end