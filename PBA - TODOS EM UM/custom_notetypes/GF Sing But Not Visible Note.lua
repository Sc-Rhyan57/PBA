local singName = {
	{'singLEFT'},
	{'singDOWN'},
	{'singUP'},
	{'singRIGHT'},
	}
	
function onCreate()
safeZoneOffset = getPropertyFromClass('Conductor', 'safeZoneOffset')/10

      for i = 0, getProperty('unspawnNotes.length')-1 do
		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'GF Sing But Not Visible Note' then
            setPropertyFromGroup('unspawnNotes', i, "colorSwap.saturation", -10)
            setPropertyFromGroup('unspawnNotes', i, 'noteSplashSat', -10);
			setPropertyFromGroup('unspawnNotes', i, 'hitHealth', '0'); --Default value is: 0.023, health gained on hit
			setPropertyFromGroup('unspawnNotes', i, 'missHealth', '0'); --Default value is: 0.0475, health lost on miss
			setPropertyFromGroup('unspawnNotes', i, 'hitCausesMiss', false);
            setPropertyFromGroup('unspawnNotes', i, 'noAnimation', true);

			if getPropertyFromGroup('unspawnNotes', i, 'mustPress') then --Doesn't let Dad/Opponent notes get ignored
                setPropertyFromGroup('unspawnNotes', i, 'ignoreNote', true); --Miss has no penalties
			end
		end
	end
end

function opponentNoteHit(id,dir,type,sus)
if type == 'GF Sing But Not Visible Note' then
		characterPlayAnim('gf',singName[dir+1][1] , true)
		setProperty('gf.holdTimer', 0)
	end
	end
	
function onUpdatePost()
    for i = 0, getProperty('notes.length') do
		if getPropertyFromGroup('notes', i, 'noteType') == 'GF Sing But Not Visible Note' then
            setPropertyFromGroup('notes', i, 'alpha', 0)   

            if getPropertyFromGroup('notes',i,'isSustainNote') then
		    setPropertyFromGroup('notes', i, 'offset.x', -30)
		end
		end
		end

for notesLength=0, getProperty('notes.length')-1 do
		if getPropertyFromGroup('notes', notesLength, 'noteType') == 'GF Sing But Not Visible Note' then

			if not isStrummin then
				return
			end

			local noteXgf = getPropertyFromGroup('notes', notesLength, 'x');
			local noteYgf = getPropertyFromGroup('notes', notesLength, 'y');

			setPropertyFromGroup('notes', notesLength, 'ignoreNote', true)

			local isSustainNote = getPropertyFromGroup('notes', notesLength, 'isSustainNote');
			
			local noteData = getPropertyFromGroup('notes', notesLength, 'noteData');
			
			local strumY = getProperty('strum'..directions[noteData + 1]..'.y')	

			noteX = getProperty('strum'..directions[noteData + 1]..'.x')
			local noteStrumTime = getPropertyFromGroup('notes', notesLength, 'strumTime')
			
			local hitMult = 1
			if isSustainNote then
				noteXgf = noteXgf + 37;
				hitMult = 0.5
			end

			if downscroll then
				noteYgf = strumYgf + 0.45 * (songPosition - noteStrumTime) * getProperty('songSpeed')
			else
				noteYgf = strumYgf - 0.45 * (songPosition - noteStrumTime) * getProperty('songSpeed')
			end
			
			setPropertyFromGroup('notes', notesLength, 'x', noteXgf)
			setPropertyFromGroup('notes', notesLength, 'y', noteYgf)
			
			if (noteStrumTime >= songPosition - safeZoneOffset and noteStrumTime <= songPosition + (safeZoneOffset * hitMult) and not isSustainNote) then
				removeFromGroup('notes', notesLength)
        end
    end
end
end
