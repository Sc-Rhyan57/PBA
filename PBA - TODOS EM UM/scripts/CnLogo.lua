
x = 1050

function onCreate()
    makeLuaSprite('CN', 'cnlogo', x+600, 580)
    scaleObject('CN', 0.43, 0.43);
    setObjectCamera("CN", 'other')
    addLuaSprite('CN', true)
    if not botPlay then
        print("PAUSE DISABLED!")
        setProperty('canPause',false)
	   end
end

function onSongStart()
    doTweenX('CN','CN',x,1,'backOut')
end

function onTweenCompleted(t)
    if t == 'CN' then
        doTweenAlpha('NC','CN',0.4,1)
    end
end

function onGameOver()
    setProperty('CN.scale.y',0)
    doTweenY('mariomadness','CN',0.43)
    makeLuaSprite('CN', 'Res', x, 580)
    scaleObject('CN', 0.43, 0.43);
    setObjectCamera("CN", 'other')
    addLuaSprite('CN', true)
end
function opponentNoteHit(noteType)
    if botPlay then return end
    health = getProperty('health')
    if health > 0.40 then
        setProperty('health', health - 0.02)
    end
end