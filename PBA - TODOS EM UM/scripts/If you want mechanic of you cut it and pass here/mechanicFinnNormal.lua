missSword = 0
Attack = 0

function onCreatePost()
runTimer('remove_miss',1)
end

function onUpdate()
if missSword == 1 then
if getProperty('health') > 1.3 then
setProperty('health',1.3)
end
end

if missSword == 2 then
if getProperty('health') > 0.6 then
setProperty('health',0.6)
end
end

if missSword >= 3 then
setProperty('health',0)
end

if Attack >= 5 then
missSword = missSword - 1 
end
end

function onTimerCompleted(tag)
if tag =='remove_miss' then
runTimer('remove_miss',10)
if missSword > 0 then
missSword = missSword - 1 
end
end

function noteMiss(id,data,type,sus)
if type =='Dodge Note' then
missSword = missSword + 1
end
end

function goodNoteHit(id,data,type,sus)
if type =='Attack Note' then
Attack = Attack + 1
end
end
