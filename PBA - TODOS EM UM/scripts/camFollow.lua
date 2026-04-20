canangle = true
offset = 30
eas = "linear"
mult = 0.026
ag = 6
iiii = true
agSpeed = 0.5
notes = {'Dodge Note','Bullet Note','note1','note2'}

xC = 1900
yC = 1000

function goodNoteHit(_, d, t,s)
    if iiii then
    follow(d,true,t)
    end
end
function opponentNoteHit(_, d, t,s)
    if iiii then
    follow(d,false,t)
    end
end

function noteMiss(_, _, t,s)
    if iiii then
    follow(nil,false,t)
    end
end


function follow(d,mt,t)
	for _, n in ipairs(notes) do
		if mustHitSection == mt and t ~= n then
			secs = mult *  getProperty("cameraSpeed") * getPropertyFromClass("flixel.FlxG", "sound.music.pitch")
		
			a = (d == 0 and -ag or d == 3 and ag)
			doTweenAngle("camGameAngle", "camGame",a, agSpeed, eas)
		

			x = (d == 0 and -offset or d == 3 and offset)
			y = (d == 1 and offset or d == 2 and -offset)
			doTweenX("camX", "camGame.targetOffset",x, secs, eas)
			doTweenY("camY", "camGame.targetOffset",y, secs, eas)
		end
	end
end


function onUpdate()

if target == 'bf' then
    cameraSetTarget('boyfriend')
    elseif target == 'dad' then
    cameraSetTarget('dad')
    elseif target == 'bf2' then
    cameraSetTarget('bf')
    elseif target == 'dad2' then
    cameraSetTarget('dad')
end

if mustHitSection == false then
        if getProperty('dad.animation.curAnim.name') == 'idle' and getProperty('Jake.animation.curAnim.name') == 'idle' or getProperty('JakeNoRTX.animation.curAnim.name') == 'idle' then

secs = mult *  getProperty("cameraSpeed") * getPropertyFromClass("flixel.FlxG", "sound.music.pitch")

doTweenAngle('camGameAngle','camGame',0,agSpeed,'linear')
doTweenX("camX", "camGame.targetOffset",0, secs, eas)
doTweenY("camY", "camGame.targetOffset",0, secs, eas)

        end
else
        if getProperty('boyfriend.animation.curAnim.name') == 'idle' and getProperty('gf.animation.curAnim.name') == 'idle' then

secs = mult *  getProperty("cameraSpeed") * getPropertyFromClass("flixel.FlxG", "sound.music.pitch")

doTweenAngle('camGameAngle','camGame',0,agSpeed,'linear')
doTweenX("camX", "camGame.targetOffset",0, secs, eas)
doTweenY("camY", "camGame.targetOffset",0, secs, eas)

        end
    end
end


    target = false
function onEvent(n,v1)

if n == '' then
    if v1 == 'center' then
iiii = false
    elseif v1 == 'normal' then
iiii = true
        end
end

if n == 'camera_target' then
    target = v1
if v1 == 'gf' then
    setProperty('defaultCamZoom',0.73)
    triggerEvent('Camera Follow Pos',xC,yC)
        elseif v1 == '' then
    triggerEvent('Camera Follow Pos')
    setProperty('defaultCamZoom',0.8)
        elseif v1 == 'bf' then
    setProperty('defaultCamZoom',1)
        elseif v1 == 'dad' then
        setProperty('defaultCamZoom',0.89)
        elseif v1 == 'bf2' then
        elseif v1 == 'dad2' then
        elseif v1 == 'nor' then
    triggerEvent('Camera Follow Pos')
        elseif v1 == 'gf2' then
    triggerEvent('Camera Follow Pos',xC,yC)
end

end

end





-- XD