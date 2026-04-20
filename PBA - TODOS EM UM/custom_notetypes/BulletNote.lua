function onCreate()
	--Iterate over all notes
	for i = 0, getProperty('unspawnNotes.length')-1 do
		--Check if the note is a Bullet Note
		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'Bullet Note' then
			setPropertyFromGroup('unspawnNotes', i, 'texture', 'mechanics/BULLET'); --Change texture
			setPropertyFromGroup('unspawnNotes', i, 'missHealth', 0.08); --Change amount of health to take when you miss like a fucking moron
		end
	end
	--debugPrint('Script started!')
end

-- Function called when you hit a note (after note hit calculations)
-- id: The note member id, you can get whatever variable you want from this note, example: "getPropertyFromGroup('notes', id, 'strumTime')"
-- noteData: 0 = Left, 1 = Down, 2 = Up, 3 = Right
-- noteType: The note type string/tag
-- isSustainNote: If it's a hold note, can be either true or false
-- taken from Fanmade Gunfight Hank mod

dodgeAnimations = {'shootLEFT', 'shootDOWN', 'shootUP', 'shootRIGHT'}
function goodNoteHit(id, noteData, noteType, isSustainNote)
	if noteType == 'Bullet Note' then
		characterPlayAnim('boyfriend', dodgeAnimations[noteData+1], true);
		setProperty('boyfriend.specialAnim', true);
		playSound('gun',1);

		local animToPlay = '';
		if noteData == 0 then
			animToPlay = 'idle';
		elseif noteData == 1 then
			animToPlay = 'idle';
		elseif noteData == 2 then
			animToPlay = 'idle';
		elseif noteData == 3 then
			animToPlay = 'idle';
		end
		characterPlayAnim('dad', animToPlay, true);
		setProperty('dad.specialAnim', true);
		triggerEvent('Add Camera Zoom',0.034,0.034)
	end
end