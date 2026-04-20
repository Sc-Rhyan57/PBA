function onCreate()
makeLuaText("song", "Mindless Remix", 1000, 150, 300)
setTextFont('song', 'adultSwim.ttf')
setTextSize('song', 50);
addLuaText('song')
setObjectCamera('song', 'other');
setTextAlignment('song', 'center')
setProperty('song.alpha',0)
----
makeLuaText("corchet1", "[", 1000, 130, 360)
setTextFont('corchet1', 'adultSwim.ttf')
setTextSize('corchet1', 40);
addLuaText('corchet1')
setObjectCamera('corchet1', 'other');
setTextAlignment('corchet1', 'center')
setProperty('corchet1.alpha',0)
-----
makeLuaText("corchet2", "]", 1000, 160, 360)
setTextFont('corchet2', 'adultSwim.ttf')
setTextSize('corchet2', 40);
addLuaText('corchet2')
setObjectCamera('corchet2', 'other');
setTextAlignment('corchet2', 'center')
setProperty('corchet2.alpha',0)
---
makeLuaText("composer", "AsareeA340", 1000, 150, 360)
setTextFont('composer', 'adultSwim.ttf')
setTextSize('composer', 40);
addLuaText('composer')
setObjectCamera('composer', 'other');
setTextAlignment('composer', 'center')
setProperty('composer.alpha',0)
end
function onSongStart()
doTweenAlpha('AlphaCorch','corchet1','1','1','linear')
doTweenAlpha('AlphaCorch2','corchet2','1','1','linear')
runTimer('Transition',1.2)
end
function onTimerCompleted(tag)
if tag == 'Transition' then
doTweenX('MoveCorch','corchet1','29','1','cubeInOut')
doTweenX('MoveCorch2','corchet2','269','1','cubeInOut')
runTimer('AppearComp',0.6)
end
if tag == 'AppearComp' then
doTweenAlpha('AlphaComp','composer','1','1','linear')
runTimer('AppearSong',1.2)
end
if tag == 'AppearSong' then
doTweenAlpha('AlphaSong','song','1','1','linear')
runTimer('FadeSong',4)
end
if tag == 'FadeSong' then
doTweenAlpha('FadeSong','song','0','1','linear')
doTweenAlpha('FadeComposer','composer','0','1','linear')
doTweenAlpha('FadeCorch','corchet1','0','1','linear')
doTweenAlpha('FadeCorch2','corchet2','0','1','linear')
end
end
