function onEvent(name, value1, value2)
    if name == 'OpponentNotesDissaper' then
		if v1 == 'on' then
	Time = tonumber(value2) then
	
for i=0,3 do
noteTweenY('note1',0, downscroll and -1000 or 1000, Time,'sineOut')
noteTweenY('note2',1, downscroll and -1000 or 1000 ,Time,'sineOut')
noteTweenY('note3',2, downscroll and -1000 or 1000 ,Time,'sineOut')
noteTweenY('note4',3, downscroll and -1000 or 1000, Time,'sineOut')

noteTweenAngle('note1b',0,-100,Time,'sineOut')
noteTweenAngle('note2b',1,-50,Time,'sineOut')
noteTweenAngle('note3b',2,50,Time,'sineOut')
noteTweenAngle('note4b',3,100,Time,'sineOut')
    end

		if v1 == 'off' then
noteTweenY('note1',0, downscroll and 570 or 50, Time,'sineOut')
noteTweenY('note2',1, downscroll and 570 or 50 ,Time,'sineOut')
noteTweenY('note3',2, downscroll and 570 or 50 ,Time,'sineOut')
noteTweenY('note4',3, downscroll and 570 or 50, Time,'sineOut')

noteTweenAngle('note1b',1,0,Time,'sineOut')
noteTweenAngle('note2b',2,0,Time,'sineOut')
noteTweenAngle('note3b',3,0,Time,'sineOut')
noteTweenAngle('note4b',4,0,Time,'sineOut')
end
end
end