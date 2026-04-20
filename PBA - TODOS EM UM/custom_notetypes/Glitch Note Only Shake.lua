resetOffset = false
function onSongStart()
if songName =='Forgotten-World' then
resetOffset = true
end
end

function opponentNoteHit(id, noteData, noteType, isSustainNote)
if noteType == 'Glitch Note Only Shake' then
cameraShake('camGame',0.01,0.1)
if math.random(1,2) == 1 then
cameraShake('camHUD',0.01,0.1)
end
end
end