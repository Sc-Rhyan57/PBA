function onCreate()
	--Iterate over all notes
	for i = 0, getProperty('unspawnNotes.length')-1 do
		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'Glitch Note' then --Check if the note on the chart is a Bullet Note
			if getPropertyFromGroup('unspawnNotes', i, 'mustPress') then --Doesn't let Dad/Opponent notes get ignored
				setPropertyFromGroup('unspawnNotes', i, 'ignoreNote', true); --Miss has penalties
			end
		end
	end
end
yu = 3




function opponentNoteHit(id, direction, noteType, isSustainNote)
if shadersEnabled then
glitcheffct = getRandomInt(1,3)
if noteType == 'Glitch Note' or noteType == 'Second Char Glitch' then
triggerEvent('Add Camera Zoom',0.03,0)
		setProperty('camHUD.angle',yu)
		doTweenAngle('vvvv2','camHUD',0,0.1)
		yu = -yu
initLuaShader("negative")
setSpriteShader("dad", "negative")
setShaderFloat("dad", "binaryIntensity", -0.5)

setSpriteShader("Jake", "negative")
setShaderFloat("Jake", "binaryIntensity", -0.5)

health = getProperty('health')
if getProperty('health') > 0.1 then
runTimer('nover', 0.01,20)
triggerEvent('Screen Shake', '0.1, 0.01');
if glitcheffct == 1 then
setShaderFloat("dad", "negativity", 2)
setShaderFloat("Jake", "negativity", 2)
elseif glitcheffct == 2 then
setShaderFloat("dad", "negativity", -10)
setShaderFloat("Jake", "negativity", -10)
end
runTimer('removeshader', 0.07)
end
end
n = true
function onTimerCompleted(t)
if t == 'nover' then
runTimer('remove', 0.07)
if n then
initLuaShader("INV")
setSpriteShader("dad", "INV")
setShaderInt("dad", "invert", 1)
setSpriteShader("Jake", "INV")
setShaderInt("Jake", "invert", 1)
setSpriteShader("iconP2", "INV")
setShaderInt("iconP2", "invert", 1)
n = false
else
initLuaShader("Glitchy3")
initLuaShader("glitch")
setSpriteShader("dad", "glitch")
setShaderFloat("dad", "binaryIntensity", -0.5)
setSpriteShader("Jake", "glitch")
setShaderFloat("Jake", "binaryIntensity", -0.5)
setSpriteShader("iconP2", "Glitchy3")
setShaderFloat("iconP2", "binaryIntensity", -0.5)
n = true
end

elseif t == 'remove' then
removeSpriteShader('dad')
removeSpriteShader('Jake')
removeSpriteShader('iconP2')
triggerEvent('glitchy', 0,0)
end
end

function onTimerCompleted(tag)
	if tag == 'removeshader' then
	setShaderFloat("dad", "binaryIntensity", 100)
	setShaderFloat("dad", "negativity", 0)
	setShaderFloat("Jake", "binaryIntensity", 100)
	setShaderFloat("Jake", "negativity", 0)
	setShaderFloat("bf", "binaryIntensity", 100)
	setShaderFloat("bf", "negativity", 0)
	end
	if n == 'bruh' then
        pause = true
    end
	
function onUpdate(elapsed)
setShaderFloat("dad", "iTime", os.clock())
setShaderFloat("Jake", "iTime", os.clock())
setShaderFloat("iconP2", "iTime", os.clock())
end
end
end
end