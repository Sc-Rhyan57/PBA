local followchars = true;
local focus=false

function onCreatePost()
makeLuaText('lyr', ' ', 0,170,470)
setTextSize('lyr', 60)
doTweenColor('lyrZ', 'lyr', '778899', 0.01, 'linear')
setObjectCamera('lyr', 'other')
setTextFont('lyr', 'Finn.ttf')
addLuaText('lyr', true)
end

function onEvent(name,value1,value2)
if name == 'Ansfoxy' then 
if value1 == 'intro' then
setProperty('defaultCamZoom',0.90)
doTweenAlpha("white1","white", 5, 000000.1, 'linear');
doTweenAlpha("white2","white", 0, 1, 'linear');
doTweenAlpha('fadeInn', 'camHUD', 1, 0.1, 'linear')
doTweenAlpha("c2A","c2", 0, 0.1, true);
introfocada=false
end

if value1 == 'pibby' then
triggerEvent('Ansfoxy', 'comeon', '')
triggerEvent('Play Animation', 'cmon', 'gf')
focus=true
runTimer('pibby',2);
end

if value1 == 'cinema1' then
doTweenX('cX', 'c.scale', 1, 0.5, 'linear')
doTweenY('cY', 'c.scale', 1, 0.5, 'linear')
end

if value1 == 'white' then
doTweenAlpha("white1","white2", 1, 0.001, 'linear');
doTweenAlpha("white2","white2", 0, 1, 'linear');
end

if value1 == 'white2' then
doTweenAlpha("blackA","black", 0, 0.001, true);
doTweenAlpha("white1","white", 5, 0.001, 'linear');
doTweenAlpha("white2","white", 0, 1, 'linear');
end

if value1 == 'cinema2' then
doTweenX('cX', 'c.scale', 2, 0.5, 'linear')
doTweenY('cY', 'c.scale', 2, 0.5, 'linear')
end

if value1 == 'cinema3' then
doTweenX('cX', 'c.scale', 1, 0.5, 'linear')
doTweenY('cY', 'c.scale', 1, 0.5, 'linear')
doTweenAlpha("white1","white", 5, 0.001, 'linear');
doTweenAlpha("white2","white", 0, 1, 'linear');
end

if value1 == 'blacker' then
doTweenAlpha("blackbgA3","blackbg3", 1, 0.001, true);
end

if value1 == 'blacker2' then
doTweenAlpha("blackbg3alpha","blackbg3", 0, 6, true);
doTweenAlpha("BFA","boyfriend", 0.2, 0.0001, true);
doTweenAlpha("DADA","dad", 0.4, 0.0001, true);
end

if value1 == 'finaph' then
doTweenAlpha("DADC","dad", 1, 0.0001, true);
end

if value1 == 'black1' then
cam=false
doTweenX()
doTweenY()
doTweenAlpha("white1","white", 5, 000000.1, 'linear');
doTweenAlpha("white2","white", 0, 1, 'linear');
setProperty('bg4.visible', false)
setProperty('bg3.visible', false)
setProperty('BG1.visible', false)
setProperty('BG0.visible', false)
doTweenAlpha("GFA","gf", 0, 0.0001, true);
doTweenAlpha("JakeA","Jake", 0, 0.0001, true)
focado=true
nonotas=true
end

if value1 == 'black2' then
nonotas=false
doTweenAlpha("white1","white", 5, 000000.1, 'linear');
doTweenAlpha("white2","white", 0, 1, 'linear');
setProperty('bg4.visible', true)
setProperty('bg3.visible', true)
setProperty('BG1.visible', false)
setProperty('BG0.visible', true)
doTweenAlpha("gf","gf", 1, 0.0001, true);
doTweenAlpha("JakeB","Jake", 1, 0.0001, true);
--note
setPropertyFromGroup('opponentStrums', 0, 'x', defaultOpponentStrumX0)
setPropertyFromGroup('opponentStrums', 1, 'x', defaultOpponentStrumX1)
setPropertyFromGroup('opponentStrums', 2, 'x', defaultOpponentStrumX2)
setPropertyFromGroup('opponentStrums', 3, 'x', defaultOpponentStrumX3)
setPropertyFromGroup('opponentStrums', 4, 'x', defaultOpponentStrumX4)
end

if value1 == 'comeon' then
setTextString('lyr', 'COME ON')
setProperty('lyr.x', 480)
setProperty('lyr.y', 550)
end

if value1 == 'wah' then
setTextString('lyr', 'WAAAAAAAAAAAH!')
setProperty('lyr.x', 300)
setProperty('lyr.y', 550)
end

if value1 == 'notext' then
setTextString('lyr', ' ')
setProperty('lyr.x', 300)
setProperty('lyr.y', 550)
end

if value1 == 'black3' then
focado=false
cam=true
doTweenAlpha("white1","white", 5, 000000.1, 'linear');
doTweenAlpha("white2","white", 0, 1, 'linear');
setProperty('bg4.visible', false)
setProperty('bg3.visible', false)
setProperty('BG1.visible', false)
setProperty('BG0.visible', false)
doTweenAlpha("gf","gf", 1, 0.0001, true);
--note
setPropertyFromGroup('opponentStrums', 0, 'x', defaultOpponentStrumX0)
setPropertyFromGroup('opponentStrums', 1, 'x', defaultOpponentStrumX1)
setPropertyFromGroup('opponentStrums', 2, 'x', defaultOpponentStrumX2)
setPropertyFromGroup('opponentStrums', 3, 'x', defaultOpponentStrumX3)
setPropertyFromGroup('opponentStrums', 4, 'x', defaultOpponentStrumX4)
end
if value1 == 'black4' then
doTweenAlpha("white1","white", 5, 000000.1, 'linear');
doTweenAlpha("white2","white", 0, 1, 'linear');
doTweenAlpha();
setProperty('Jake.colorTransform.greenOffset', 255)
setProperty('Jake.colorTransform.redOffset', 255)
setProperty('Jake.colorTransform.blueOffset', 255)
setProperty('boyfriend.colorTransform.greenOffset', 255)
setProperty('boyfriend.colorTransform.redOffset', 255)
setProperty('boyfriend.colorTransform.blueOffset', 255)
setProperty('dad.colorTransform.greenOffset', 255)
setProperty('dad.colorTransform.redOffset', 255)
setProperty('dad.colorTransform.blueOffset', 255)
setProperty('gf.colorTransform.greenOffset', 255)
setProperty('gf.colorTransform.redOffset', 255)
setProperty('gf.colorTransform.blueOffset', 255)
setProperty('bg4.visible', false)
setProperty('bg3.visible', false)
setProperty('BG1.visible', false)
setProperty('BG0.visible', false)
doTweenAlpha();
doTweenAlpha();
end
if value1 == 'black5' then
doTweenAlpha("white1","white", 5, 000000.1, 'linear');
doTweenAlpha("white2","white", 0, 1, 'linear');
doTweenAlpha();
setProperty('Jake.colorTransform.greenOffset', 0)
setProperty('Jake.colorTransform.redOffset', 0)
setProperty('Jake.colorTransform.blueOffset', 0)
setProperty('boyfriend.colorTransform.greenOffset', 0)
setProperty('boyfriend.colorTransform.redOffset', 0)
setProperty('boyfriend.colorTransform.blueOffset', 0)
setProperty('dad.colorTransform.greenOffset', 0)
setProperty('dad.colorTransform.redOffset', 0)
setProperty('dad.colorTransform.blueOffset', 0)
setProperty('gf.colorTransform.greenOffset', 0)
setProperty('gf.colorTransform.redOffset', 0)
setProperty('gf.colorTransform.blueOffset', 0)
setProperty('bg4.visible', true)
setProperty('bg3.visible', true)
setProperty('BG1.visible', false)
setProperty('BG0.visible', true)
doTweenAlpha();
doTweenAlpha();
end
if value1 == 'black6' then
cam=false
doTweenX()
doTweenY()
doTweenAlpha();
doTweenAlpha();
setProperty('bg4.visible', true)
setProperty('bg3.visible', true)
setProperty('BG1.visible', true)
setProperty('BG0.visible', true)
doTweenAlpha("GFA","gf", 0, 0.0001, true);
doTweenAlpha("Jake","Jake", 0, 0.0001, true)
end
if value1 == 'black7' then
cam=false
setProperty('bg4.visible', true)
setProperty('bg3.visible', true)
setProperty('BG1.visible', false)
setProperty('BG0.visible', true)
doTweenAlpha("Jake","Jake", 0, 0.0001, true)
end
if value1 == 'black8' then
cam=false
setProperty('bg4.visible', true)
setProperty('bg3.visible', true)
setProperty('BG1.visible', true)
setProperty('BG0.visible', false)
doTweenAlpha("Jake2","Jake2", 0, 0.0001, true)
end
if value1 == 'black9' then
cam=true
nonotas=false
setProperty('bg4.visible', true)
setProperty('bg3.visible', true)
setProperty('BG1.visible', true)
setProperty('BG0.visible', false)
doTweenAlpha("Jake2","Jake2", 1, 0.0001, false);
end
if value1 == 'black10' then
cam=true
nonotas=false
setProperty('bg4.visible', true)
setProperty('bg3.visible', true)
setProperty('BG1.visible', false)
setProperty('BG0.visible', true)
doTweenAlpha("Jake","Jake", 1, 0.0001, false);
end
if value1 == 'black11' then
doTweenAlpha("white1","white", 5, 000000.1, 'linear');
doTweenAlpha("white2","white", 0, 2, 'linear');
setProperty('camGame.visible', false)
setProperty('camHUD.visible', false)
end

end
end

function onTimerCompleted(tag, loops, loopsLeft)
if tag=='pibby' then
focus=false
end
if tag=='focan' then
foca2=false
end
end

function onUpdate(elapsed)
if nonotas then
setPropertyFromGroup('opponentStrums', 0, 'x', 100000)
setPropertyFromGroup('opponentStrums', 1, 'x', 100000)
setPropertyFromGroup('opponentStrums', 2, 'x', 100000)
setPropertyFromGroup('opponentStrums', 3, 'x', 100000)
setPropertyFromGroup('opponentStrums', 4, 'x', 100000)
end
if foca2 then
doTweenZoom()
end 
if focus then
triggerEvent()
end 
if focado then
setProperty()
end 
if introfocada then
triggerEvent()
setProperty()
end 

if followchars == false and cam then
if mustHitSection == false then
setProperty()
else
setProperty()
end
end
end

function onSongStart()
doTweenAlpha();
doTweenAlpha();
setProperty()
doTweenAlpha()
doTweenAlpha();
introfocada=false
runTimer()
foca2=false
cam=false
end