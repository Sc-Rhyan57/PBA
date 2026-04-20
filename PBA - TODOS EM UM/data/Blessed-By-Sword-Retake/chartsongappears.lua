function onCreatePost()
   setProperty('debugKeysChart', null); -- chart editer
end

function onUpdatePost()

if getPropertyFromClass('flixel.FlxG','keys.justPressed.SEVEN') then

   loadSong('tutorial') 
   setPropertyFromClass('PlayState', 'chartingMode', false)
end
end