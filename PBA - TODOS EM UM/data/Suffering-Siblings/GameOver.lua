function onGameOver()
    if D then
	openCustomSubstate('gameOverJake', true)
    elseif not D then
    openCustomSubstate('gameOverFinn', true)
    end
	return Function_Stop
end
function onCreate()
precacheImage('characters/bfdeathfinn')
precacheImage('characters/bfjakedeath')
end


D = false


function onEvent(n,v1,v2)
    if not botPlay then
        if n == 'Jake Mechanic' then
        D = true
        apachurrale = true
        end
    end
end

apachurrale = false
function onUpdate(elapsed)
    if keyboardJustPressed('SPACE') or keyPressed('SPACE') then
        if apachurrale then
    
            D = false
            apachurrale = false
    
        end
    end
end



function onCustomSubstateCreate(tag)
	if tag == 'gameOverJake' then
		makeLuaSprite('void', '', 0, 0);
		makeGraphic('void', 1280, 720, '000000')
		setObjectCamera('void', 'other')
		addLuaSprite('void', false)
		gameOverName = 'bfjakedeath'
		gameOverSound = 'bfjakedeath'
		deathOffsets = {'50', '-150'} 
		deathOffsets2 = {'170', '-150'} 
		loopOffsets = {'170', '-150'}
		retryOffsets = {'170', '-150'}
		retryOffsets2 = {'170', '-250'}
		deathFrames = 85
		deathFrames2 = 96
		loopFrames = 33
		retryFrames = 19
		retryFrames2 = 47
		makeAnimatedLuaSprite('stupidIdiot','characters/'..gameOverName, 450, 0)
		addAnimationByPrefix('stupidIdiot', 'death', 'BF dies', 24)
		addAnimationByPrefix('stupidIdiot', 'loop', 'deathloop', 24)
		addAnimationByPrefix('stupidIdiot', 'retry', 'retry', 24)
		setObjectCamera('stupidIdiot', 'other')
		scaleObject('stupidIdiot', 1.5, 1.5)
		addLuaSprite('stupidIdiot', false)
		anim('deathOffsets',deathOffsets[1],deathOffsets[2],false)
		playSound(gameOverSound, 1)
	end
	if tag == 'gameOverFinn' then
		makeLuaSprite('void', '', 0, 0);
		makeGraphic('void', 1280, 720, '000000')
		setObjectCamera('void', 'other')
		addLuaSprite('void', false)
		gameOverName = 'bfdeathfinn'
		gameOverSound = 'bffinndeath'
		deathOffsets = {'43', '56'} 
		loopOffsets = {'-72', '-192'}
		retryOffsets = {'553', '33'}
		deathFrames = 95
		loopFrames = 33
		retryFrames = 63
		makeAnimatedLuaSprite('stupidIdiot','characters/'..gameOverName, 450, 0)
		addAnimationByPrefix('stupidIdiot', 'death', 'bfdies', 24)
		addAnimationByPrefix('stupidIdiot', 'loop', 'deathloop', 24)
		addAnimationByPrefix('stupidIdiot', 'retry', 'retry', 24)
		setObjectCamera('stupidIdiot', 'other')
		scaleObject('stupidIdiot', 1.5, 1.5)
		addLuaSprite('stupidIdiot', false)
		anim('deathOffsets',deathOffsets[1],deathOffsets[2],false)
		playSound(gameOverSound, 1)
	end
end
local frame = 0
local restart = false
function onCustomSubstateUpdate(tag, elapsed)
	if tag == 'gameOverJake' then
		frame = frame + (elapsed*24)
sa = getProperty('stupidIdiot.animation.curAnim.name')
if (getMouseX('camOther') > 1050 and getMouseX('camOther') < 1280) and (getMouseY('camOther') > 580 and getMouseY('camOther') < 720 and mousePressed('left')) or keyPressed('space') or keyPressed('accept') and sa ~= 'death' and sa ~= 'retry' then
			frame = 0
			anim('retry',retryOffsets[1],retryOffsets[2],false)
			stopSound('gameOver')
			playSound('../sounds/gffinnrevive', 1)
        end
	end
	if tag == 'gameOverFinn' then
		frame = frame + (elapsed*24)
sa = getProperty('stupidIdiot.animation.curAnim.name')
if (getMouseX('camOther') > 1050 and getMouseX('camOther') < 1280) and (getMouseY('camOther') > 580 and getMouseY('camOther') < 720 and mousePressed('left')) or keyPressed('space') or keyPressed('accept') and sa ~= 'death' and sa ~= 'retry' then
			frame = 0
			anim('retry',retryOffsets[1],retryOffsets[2],false)
			stopSound('gameOver')
			playSound('../sounds/gffinnrevive', 1)
        end
	end
end
function onCustomSubstateUpdatePost(tag)
	if tag == 'gameOverJake' then
		setProperty('stupidIdiot.animation.curAnim.curFrame', frame)
		if getProperty('stupidIdiot.animation.curAnim.curFrame') == deathFrames and getProperty('stupidIdiot.animation.curAnim.name') == 'death' then
			anim('deathOffsets',deathOffsets2[1],deathOffsets2[2],false)
		elseif getProperty('stupidIdiot.animation.curAnim.curFrame') == deathFrames2 and getProperty('stupidIdiot.animation.curAnim.name') == 'death' then
			frame = 0
			anim('loop',loopOffsets[1],loopOffsets[2],false)
			playSound('../music/gameOver', 1, 'gameOver')
		elseif getProperty('stupidIdiot.animation.curAnim.curFrame') == loopFrames and getProperty('stupidIdiot.animation.curAnim.name') == 'loop' then
			frame = 0
			playAnim('stupidIdiot', 'loop')
		elseif getProperty('stupidIdiot.animation.curAnim.curFrame') == retryFrames and getProperty('stupidIdiot.animation.curAnim.name') == 'retry' then
			anim('retry',retryOffsets2[1],retryOffsets2[2],false)
		elseif getProperty('stupidIdiot.animation.curAnim.curFrame') == retryFrames2 and getProperty('stupidIdiot.animation.curAnim.name') == 'retry' then
			restartSong()
		end
	end
	if tag == 'gameOverFinn' then
		setProperty('stupidIdiot.animation.curAnim.curFrame', frame)
		if getProperty('stupidIdiot.animation.curAnim.curFrame') == deathFrames and getProperty('stupidIdiot.animation.curAnim.name') == 'death' then
			frame = 0
			anim('loop',loopOffsets[1],loopOffsets[2],false)
			playSound('../music/gameOver', 1, 'gameOver')
		elseif getProperty('stupidIdiot.animation.curAnim.curFrame') == loopFrames and getProperty('stupidIdiot.animation.curAnim.name') == 'loop' then
			frame = 0
			playAnim('stupidIdiot', 'loop')
		elseif getProperty('stupidIdiot.animation.curAnim.curFrame') == retryFrames and getProperty('stupidIdiot.animation.curAnim.name') == 'retry' then
			restartSong()
		end
	end
end
function anim(a,x,y,f)
playAnim('stupidIdiot',a,f)
setProperty('stupidIdiot.offset.x',x)
setProperty('stupidIdiot.offset.y',y)
end