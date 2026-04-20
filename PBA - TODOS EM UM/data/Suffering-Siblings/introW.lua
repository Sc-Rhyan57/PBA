function onCreate()
    runTimer('w1',T)
    setProperty("skipCountdown", true)

    makeLuaSprite('POPEYE', '', 0, 0)
    setScrollFactor('POPEYE', 0, 0)
    scaleObject('POPEYE', 20.0, 20.0)
    makeGraphic('POPEYE', 3840, 2160, '000000')
    addLuaSprite('POPEYE', false)
    screenCenter('POPEYE', 'xy')
    setObjectCamera('POPEYE','other')

    makeLuaSprite('bk','vig',0,0)
    addLuaSprite('bk',true)
    setBlendMode('bk','subtract')
    setObjectCamera('bk','camOther')

    setPropertyFromClass("openfl.Lib", "application.window.title",'FNF Pibby Apocalypse - Suffering Siblings v3 - AWE')

    makeLuaSprite('fondo','mechanics/fondo',0,0)
    addLuaSprite('fondo',true)
    setObjectCamera('fondo','camOther')

    makeLuaSprite('1','mechanics/1',0,0)
    addLuaSprite('1',true)
    setObjectCamera('1','camOther')
    setProperty('1.alpha',0)
    doTweenAlpha('kqhzjsbsb','1',1,0.7)

    pause = true


    makeAnimatedLuaSprite('numbers','Numbers',500,200)
    addAnimationByPrefix('numbers','1','1',24,false)
    addAnimationByPrefix('numbers','2','2',24,false)
    addAnimationByPrefix('numbers','3','3',24,false)
    addAnimationByPrefix('numbers','Go','Go',24,false)
    scaleObject('numbers',0.8,0.8)
    setProperty('numbers.alpha',0)
    setObjectCamera('numbers','camOther')
    addLuaSprite('numbers',true)
    
end

T = 12
pause = true

function onTimerCompleted(tag)
    if tag=='w1' then
        runTimer('w2',T)

        makeLuaSprite('2','mechanics/2',0,0)
        addLuaSprite('2',true)
        setObjectCamera('2','camOther')
        setProperty('2.alpha',0)
        doTweenAlpha('kqhzjsbsb','2',1,0.7)

        removeLuaSprite('1')
    end

    if tag=='w2' then
        runTimer('w3',T)

        makeLuaSprite('3','mechanics/3',0,0)
        addLuaSprite('3',true)
        setObjectCamera('3','camOther')
        setProperty('3.alpha',0)
        doTweenAlpha('kqhzjsbsb','3',1,0.7)

        removeLuaSprite('2')
    end

    if tag=='w3' then
        runTimer('tres',1)

        doTweenAlpha('333333','3',0,1)
        doTweenAlpha('33333','fondo',0,1)
    end

    if tag=='tres' then
        setProperty('numbers.alpha',1)
        setProperty('numbers.offset.x',60)
        setProperty('numbers.offset.y',60)
        objectPlayAnimation('numbers','3',false)
        runTimer('dos',0.5)
        playSound('intro3')
    end

    if tag=='dos' then
        setProperty('numbers.alpha',1)
        setProperty('numbers.offset.x',0)
        setProperty('numbers.offset.y',0)
        objectPlayAnimation('numbers','2',false)
        runTimer('uno',0.5)
        playSound('intro2')
    end

    if tag=='uno' then
        setProperty('numbers.alpha',1)
        objectPlayAnimation('numbers','1',false)
        runTimer('GO',0.5)
        playSound('intro1')
    end

    if tag=='GO' then
        setProperty('numbers.alpha',1)
        setProperty('numbers.offset.x',140)
        setProperty('numbers.offset.y',50)
        objectPlayAnimation('numbers','Go',false)
        runTimer('start',0.5)
        playSound('introGo')
    end

    if tag=='start' then
        setPropertyFromClass('flixel.FlxG', 'sound.music.volume', 1)
		setProperty('vocals.volume', 1)		
        pause = false
        removeLuaSprite('numbers')
        doTweenAlpha('zzz','POPEYE',0.00001,5,'sineInOut')
        setProperty('boyfriend.alpha',0)
        setProperty('dad.alpha',0)
        setProperty('Jake.alpha',0)
        setProperty('gf.alpha',0)
        setProperty('HealthP.alpha',0.7)
    end

    if tag=='Pp' then
        pausa = true
    end
end

skip = 4
pausa = true

function onUpdatePost(elapsed)
    if pause == true then
      setPropertyFromClass('backend.Conductor', 'songPosition', getPropertyFromClass('backend.Conductor', 'songPosition') - elapsed * 1000  )
		setPropertyFromClass('flixel.FlxG', 'sound.music.time', getPropertyFromClass('Conductor', 'songPosition'))
		setProperty('vocals.time', getPropertyFromClass('Conductor', 'songPosition'))
		setPropertyFromClass('flixel.FlxG', 'sound.music.volume', 0)
		setProperty('vocals.volume', 0)
    end
    if skip >= 0 then
        if keyboardJustPressed('N') or mousePressed('left') and pausa then 
            runTimer('Pp',0.2)
            skip = skip -1
            pausa = false
            if skip == 3 then
                cancelTimer('w1')
                runTimer('w1',0.01)
            end
            if skip == 2 then
                cancelTimer('w2')
                runTimer('w2',0.01)
            end 
            if skip == 1 then
                cancelTimer('w3')
                runTimer('w3',0.01)
            end
        end
    end
end