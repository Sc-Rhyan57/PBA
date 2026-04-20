function onCreate()
	--Iterate over all notes
	for i = 0, getProperty('unspawnNotes.length')-1 do
		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'Dodge Note' then
			setPropertyFromGroup('unspawnNotes', i, 'texture', 'SwordNOTE_assets'); --Change texture
			setPropertyFromGroup('unspawnNotes', i, 'missHealth', 0.6);
		end
	end
end

dodgeAnimations = {'dodgeLEFT', 'dodgeDOWN', 'dodgeUP', 'dodgeRIGHT'}
function goodNoteHit(id, noteData, noteType, isSustainNote)
	if noteType == 'Dodge Note' then
		characterPlayAnim('boyfriend', dodgeAnimations[noteData+1], true);
		setProperty('boyfriend.specialAnim', true);
		playSound('slice',0.5);
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
		triggerEvent('Add Camera Zoom',0.034,0.034)
	end
end