function onCreate()

	--Iterate over all notes
	for i = 0, getProperty('unspawnNotes.length')-1 do
		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'Glitch Note' then --Check if the note on the chart is a Bullet Note
			if getPropertyFromGroup('unspawnNotes', i, 'mustPress') then --Doesn't let gf notes get ignored
				setPropertyFromGroup('unspawnNotes', i, 'ignoreNote', true); --Miss has penalties
			end
		end
	end
end


function opponentNoteHit(id, direction, noteType, isSustainNote)
if noteType == 'Glitch Note' then
runTimer('nover', 0.01,20)
triggerEvent('glitchy',0.3, 0.3)
end
end

n = true
function onTimerCompleted(t)
if t == 'nover' then
runTimer('remove', 0.1)
if n then
initLuaShader("INV")
setSpriteShader("gf", "INV")
setShaderInt("gf", "invert", 1)
n = false
else
initLuaShader("glitch")
setSpriteShader("gf", "glitch")
setShaderFloat("gf", "binaryIntensity", -0.5)
n = true
end

elseif t == 'remove' then
removeSpriteShader('gf')
triggerEvent('glitchy', 0,0)


end
end
function onUpdate()
setShaderFloat("gf", "iTime", os.clock())
end
