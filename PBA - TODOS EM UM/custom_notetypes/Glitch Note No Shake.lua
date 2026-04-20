resetOffset = false
function onSongStart()
if songName =='Forgotten-World' then
resetOffset = true
end
end

function opponentNoteHit(id, noteData, noteType, isSustainNote)
if noteType == 'Glitch Note' then
cameraShake('camGame',0.00,0.0)
if math.random(1,2) == 1 then
cameraShake('camHUD',0.00,0.0)
end
end
end