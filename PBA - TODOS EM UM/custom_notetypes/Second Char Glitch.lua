function onCreate()
	--Iterate over all notes
	for i = 0, getProperty('unspawnNotes.length')-1 do
		--Check if the note is an Instakill Note
		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'Second Char Glitch' then
			        setPropertyFromGroup('unspawnNotes', i, 'noAnimation', true); -- make it so original character doesn't sing these notes
				setPropertyFromGroup('unspawnNotes', i, 'ignoreNote', false); --Miss has penalties

			end
		end
end

yu = 3

function opponentNoteHit(id, direction, noteType, isSustainNote)
if noteType == 'Second Char Glitch' then
NoteGl()
triggerEvent('Add Camera Zoom',0.03,0)
		setProperty('camHUD.angle',yu)
		setProperty('camGame.angle',yu)
		doTweenAngle('vvvv2','camHUD',0,0.1)
		doTweenAngle('vvvv1','camGame',0,0.1)
		yu = -yu
    end
end

function NoteGl()
     noteTweenX('glitchNoteX0','0' ,math.random(noteX0- 10,noteX0+ 10),0.01,'quadInOut')     
    noteTweenAngle('glitchNoteA0','0' ,math.random(noteA0- 10,noteA0+ 10),0.01,'quadInOut')     

     noteTweenX('glitchNoteX1','1' ,math.random(noteX1- 10,noteX1+ 10),0.01,'quadInOut')     
    noteTweenAngle('glitchNoteA1','1' ,math.random(noteA1- 10,noteA1+ 10),0.01,'quadInOut')     

    noteTweenX('glitchNoteX2','2' ,math.random(noteX2- 10,noteX2+ 10),0.01,'quadInOut')     
    noteTweenAngle('glitchNoteA2','2' ,math.random(noteA2- 10,noteA2+ 10),0.01,'quadInOut')     

     noteTweenX('glitchNoteX3','3' ,math.random(noteX3- 10,noteX3+ 10),0.01,'quadInOut')     
    noteTweenAngle('glitchNoteA3','3' ,math.random(noteA3- 10,noteA3+ 10),0.01,'quadInOut')     

     noteTweenX('glitchNoteX4','4' ,math.random(noteX4- 10,noteX4+ 10),0.01,'quadInOut')     
    noteTweenAngle('glitchNoteA4','4' ,math.random(noteA4- 10,noteA4+ 10),0.01,'quadInOut')     
     noteTweenY('glitchNoteY4', '4' ,math.random(noteY4- 10,noteY4+ 10),0.01,'quadInOut')
     
     noteTweenX('glitchNoteX5','5' ,math.random(noteX5- 10,noteX5+ 10),0.01,'quadInOut')     
    noteTweenAngle('glitchNoteA5','5' ,math.random(noteA5- 10,noteA5+ 10),0.01,'quadInOut')     
     noteTweenY('glitchNoteY5', '5' ,math.random(noteY5- 10,noteY5+ 10),0.01,'quadInOut')
     
     noteTweenX('glitchNoteX6','6' ,math.random(noteX6- 10,noteX6+ 10),0.01,'quadInOut')     
    noteTweenAngle('glitchNoteA6','y' ,math.random(noteA6- 10,noteA6+ 10),0.01,'quadInOut')     
     noteTweenY('glitchNoteY6', '6' ,math.random(noteY6- 10,noteY6+ 10),0.01,'quadInOut')
     
     noteTweenX('glitchNoteX7','7' ,math.random(noteX7- 10,noteX7+ 10),0.01,'quadInOut')     
    noteTweenAngle('glitchNoteA7','7' ,math.random(noteA7- 10,noteA7+ 10),0.01,'quadInOut')     
     noteTweenY('glitchNoteY7', '7' ,math.random(noteY7- 10,noteY7+ 10),0.01,'quadInOut')
end


resetOffset = false
function onSongStart()
noteX0 = getPropertyFromGroup('strumLineNotes','0','x')
noteX1 = getPropertyFromGroup('strumLineNotes','1','x')
noteX2 = getPropertyFromGroup('strumLineNotes','2','x')
noteX3 = getPropertyFromGroup('strumLineNotes','3','x')
noteX4 = getPropertyFromGroup('strumLineNotes','4','x')
noteX5 = getPropertyFromGroup('strumLineNotes','5','x')
noteX6 = getPropertyFromGroup('strumLineNotes','6','x')
noteX7 = getPropertyFromGroup('strumLineNotes','7','x')

noteA0 = getPropertyFromGroup('strumLineNotes','0','angle')
noteA1 = getPropertyFromGroup('strumLineNotes','1','angle')
noteA2 = getPropertyFromGroup('strumLineNotes','2','angle')
noteA3 = getPropertyFromGroup('strumLineNotes','3','angle')
noteA4 = getPropertyFromGroup('strumLineNotes','4','angle')
noteA5 = getPropertyFromGroup('strumLineNotes','5','angle')
noteA6 = getPropertyFromGroup('strumLineNotes','6','angle')
noteA7 = getPropertyFromGroup('strumLineNotes','7','angle')

noteY4 = getPropertyFromGroup('strumLineNotes','4','y')
noteY5 = getPropertyFromGroup('strumLineNotes','5','y')
noteY6 = getPropertyFromGroup('strumLineNotes','6','y')
noteY7 = getPropertyFromGroup('strumLineNotes','7','y')
end

