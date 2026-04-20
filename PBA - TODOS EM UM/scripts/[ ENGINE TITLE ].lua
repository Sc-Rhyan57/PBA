local fps = 30	

function onCreatePost()
fps = getPropertyFromClass('flixel.FlxG','updateFramerate')	
setPropertyFromClass("openfl.Lib", "application.window.title", "Pibby: Apocalypse - All in one - by rhyanMods")
end

function onResume() 
fps = 30	
setPropertyFromClass("openfl.Lib", "application.window.title", "Pibby: Apocalypse - All in one - by rhyanMods")
setPropertyFromClass('ClientPrefs', 'framerate', 30)
end

function onEndSong()
fps = 60	
setPropertyFromClass("openfl.Lib", "application.window.title", "Pibby: Apocalypse - All in one - by rhyanMods")
setPropertyFromClass('ClientPrefs', 'framerate', 60)
end

function onDestroy()
fps = 60	
setPropertyFromClass("openfl.Lib", "application.window.title", "Pibby: Apocalypse")
setPropertyFromClass('ClientPrefs', 'framerate', 60)
end

function onPause()
fps = 60
setPropertyFromClass("openfl.Lib", "application.window.title", "Pibby: Apocalypse - All in one - by rhyanMods - Paused")
setPropertyFromClass('ClientPrefs', 'framerate', 60)
end

function onGameOver()
fps = 60
setPropertyFromClass("openfl.Lib", "application.window.title", "Pibby: Apocalypse - All in one - by rhyanMods - Dead")
setPropertyFromClass('ClientPrefs', 'framerate', 60)
end