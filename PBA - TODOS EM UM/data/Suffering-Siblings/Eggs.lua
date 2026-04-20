video = 0
pausa = true
jejejejejeje = false
juasjuas = false
X = 0

function onTimerCompleted(n)
    if n == 'VideoPerron' then
        pausa = true
        setProperty('playbackRate',1)
        setProperty('inCutscene',false)
    end
    if n == 'XXX' then
        pausa = true
    end

    if n == 'JAKE AYUDAME' then
        startVideo('JAKEAYUDAMEMETIENENLOSZ')
        setProperty('playbackRate',0.00001)
        setProperty('inCutscene',true)
        runTimer('VideoPerron',5)
    end

    if n == 'JEJEJE' then
        startVideo('HayQuePapearlo')
        setProperty('playbackRate',0.00001)
        setProperty('inCutscene',true)
        runTimer('VideoPerron',24)
    end

    if n == 'HOLAPENDEJO' then
        startVideo('HOLAPENDEJO')
        setProperty('playbackRate',0.00001)
        setProperty('inCutscene',true)
        runTimer('VideoPerron',1.1)
    end

    if n == 'ABRAZAREATUMAMI' then
        startVideo('ABRAZAREATUMAMI')
        setProperty('playbackRate',0.00001)
        setProperty('inCutscene',true)
        runTimer('VideoPerron',5.2)
    end

    if n == 'SpartaFunkin77' then
        startVideo('QueTenesPaMostrarnos(FinnBailandoEpicamente)')
        setProperty('playbackRate',0.00001)
        setProperty('inCutscene',true)
        runTimer('VideoPerron',21.5)
    end

    if n == 'H' then
        video = video + 1
        if video == 1 then
            runTimer('JAKE AYUDAME',0.1)
        end
        if video == 2 then
            runTimer('JEJEJE',0.1)
        end
        if video == 3 then
            runTimer('HOLAPENDEJO',0.1)
        end
        if video == 4 then
            runTimer('ABRAZAREATUMAMI',0.1)
        end
        if video == 5 then
            runTimer('SpartaFunkin77',0.1)
        end
    end

    if n == 'vagina' then
            makeLuaSprite('Shit','bro',0,0)
            addLuaSprite('Shit',true)
            setObjectCamera('Shit','camOther')
            doTweenAlpha('ShutShitShit','Shit',0,3)
            playSound('bro',1)
            setProperty('XXXXXDDDDD.visible',true)
            setProperty('XXXXXDDDDDD.visible',false)
    end

end

function onEvent(n,v1)
    if n == '' then
        if v1 == 'end1' then
            jejejejejeje = true
        end
    end
end


function onUpdate()
if jejejejejeje and pausa then
    if keyboardJustPressed('NINE') or keyPressed('NINE') then
        runTimer('H',0.5)
        pausa = false
    end
    if keyboardJustPressed('X') or keyPressed('X') then
        pausa = false
        runTimer('XXX',0.1)
        X = X + 1
        if X == 3 then
            runTimer('vagina',0.01)
        end
    end
end
    if video >= 5 then
        video = 0
    end
    if X >= 3 then
        X = 0
    end
end


function onTweenCompleted(n)
    if n == 'ShutShitShit' then
        removeLuaSprite('Shit')
    end
end