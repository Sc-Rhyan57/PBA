Angulo = 360

Speed = 0.4
function onEvent(name,v1,v2)
if name == 'NoteSpinBv' then
    for NoteP = 0,3 do
noteTweenAngle('e'..NoteP, NoteP, Angulo, Speed, 'quartOut')
end
    for NoteOPP = 4,7 do
noteTweenAngle('a'..NoteOPP, NoteOPP, -Angulo, Speed, 'quartOut')
end
Angulo = -Angulo
end
end

function onTweenCompleted(t)
if t == 'e' then
    for NoteP2 = 0,3 do
noteTweenAngle('noteAngleOPP 1'..NoteP2, NoteP2, Angulo, 0.01, 'quartOut')
end
    for NoteOPP2 = 4,7 do
noteTweenAngle('noteAngleP 1'..NoteOPP2, NoteOPP2, -Angulo, 0.01, 'quartOut')
end
end
end