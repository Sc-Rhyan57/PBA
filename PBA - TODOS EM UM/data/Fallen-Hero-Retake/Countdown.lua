function onCreate()
addHaxeLibrary('Application', 'lime.app')
addHaxeLibrary('Image', 'lime.graphics')
runHaxeCode("Application.current.window.setIcon(Image.fromFile(Paths.modFolders('images/PibbyApocalypseIcon.png')));")
setPropertyFromClass("openfl.Lib", "application.window.title",' FNF Pibby: Apocalypse')
end

function onCreatePost()
makeAnimatedLuaSprite('count', 'countdown', 500, 200)
setObjectCamera('count', 'other')
addAnimationByPrefix('count', '1', '1', 24, true)
addAnimationByPrefix('count', '2', '2', 24, true)
addAnimationByPrefix('count', '3', '3', 24, true)
addAnimationByPrefix('count', 'Go', 'Go', 24, true)
setProperty('count.alpha', 0)
addLuaSprite('count', true)

setProperty('timeBar.color',getColorFromHex(rgbToHex(getProperty("dad.healthColorArray"))))
end


function onCountdownTick(counter)
if counter == 0 then
setProperty('count.alpha', 1)
setProperty('count.offset.x', 100)
setProperty('count.offset.y', 50)
playAnim('count','3',true)
playSound('3')


elseif counter == 1 then
setProperty('countdownReady.visible', false)
setProperty('count.offset.x', 0)
setProperty('count.offset.y', 0)
playAnim('count','2',true)
playSound('2')


elseif counter == 2 then
setProperty('countdownSet.visible', false)
setProperty('count.offset.x', 0)
setProperty('count.offset.y', 0)
playAnim('count','1',true)
playSound('1')

elseif counter == 3 then
setProperty('countdownGo.visible', false)
setProperty('count.offset.x', 170)
setProperty('count.offset.y', 50)
playAnim('count','Go',true)
playSound('go')

else
removeLuaSprite('count', true);
end
end
function onUpdatePost(elapsed)
if pause == true then
        setPropertyFromClass('Conductor', 'songPosition', getPropertyFromClass('Conductor', 'songPosition') - elapsed * 1000  )
		setPropertyFromClass('flixel.FlxG', 'sound.music.time', getPropertyFromClass('Conductor', 'songPosition'))
		setProperty('vocals.time', getPropertyFromClass('Conductor', 'songPosition'))
		setPropertyFromClass('flixel.FlxG', 'sound.music.volume', 0)
		setProperty('vocals.volume', 0)
	end
end