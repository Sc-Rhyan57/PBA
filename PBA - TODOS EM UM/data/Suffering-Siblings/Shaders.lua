--{{ Codigo Hecho por Platinum Alpha }}--

speedUpGlitch0 = false
speedUpGlitch1 = false
speedUpGlitch2 = false
speedUpGlitch3 = false
 
function onCreatePost()
    if shadersEnabled then
        shaderCoordFix()
    
            initLuaShader('Glitchy')
            initLuaShader('CA')
            initLuaShader('grey')
    
            makeLuaSprite('Glitchy')
            makeLuaSprite('grey')
            makeLuaSprite('CA',0,0)
    
            setSpriteShader('Glitchy', 'Glitchy')
            setSpriteShader('CA', 'CA')
            setSpriteShader('grey', 'grey')
    
            addHaxeLibrary('ShaderFilter', 'openfl.filters')
    
            runHaxeCode([[
            game.camGame.setFilters([
            new ShaderFilter(game.getLuaObject('Glitchy').shader)
            ]);
            game.camHUD.setFilters([]);
            ]])
    
            setShaderFloat('Glitchy', 'AMT', 0.1)
            setShaderFloat('Glitchy', 'SPEED', 0.1)
    end
end

function onUpdate(elapsed)
    if shadersEnabled then
        setShaderFloat('Glitchy', 'iTime', os.clock())
    end
end



function Glich()
    if shadersEnabled then
            setShaderFloat('Glitchy', 'AMT', 0.6)
    
    end
            setProperty('h.alpha',1)
            doTweenAlpha('vkhaidxk','h',0,0.3)
    
        NoteGl()
            runTimer('yuyu',0.1)
    end

function Glich2()
    if shadersEnabled then
            setShaderFloat('Glitchy', 'AMT', 0.3)
    
    end
            setProperty('h.alpha',1)
            doTweenAlpha('vkhaidxk','h',0,0.3)
    
            runTimer('yuyu',0.1)
end





function onSongStart()
    if shadersEnabled then
            setShaderInt('dad', 'invert', 0)
            setShaderInt('boyfriend', 'invert', 0)
            setShaderInt('gf', 'invert', 0)
            setShaderInt('Jake', 'invert', 0)
    end
noteX0 = getPropertyFromGroup('strumLineNotes','0','x')
noteX1 = getPropertyFromGroup('strumLineNotes','1','x')
noteX2 = getPropertyFromGroup('strumLineNotes','2','x')
noteX3 = getPropertyFromGroup('strumLineNotes','3','x')
noteX4 = getPropertyFromGroup('strumLineNotes','4','x')
noteX5 = getPropertyFromGroup('strumLineNotes','5','x')
noteX6 = getPropertyFromGroup('strumLineNotes','6','x')
noteX7 = getPropertyFromGroup('strumLineNotes','7','x')

noteA0 = getPropertyFromGroup('strumLineNotes','0','angle')
noteA1 = getPropertyFromGroup('strumLineNotes','1','angle')
noteA2 = getPropertyFromGroup('strumLineNotes','2','angle')
noteA3 = getPropertyFromGroup('strumLineNotes','3','angle')
noteA4 = getPropertyFromGroup('strumLineNotes','4','angle')
noteA5 = getPropertyFromGroup('strumLineNotes','5','angle')
noteA6 = getPropertyFromGroup('strumLineNotes','6','angle')
noteA7 = getPropertyFromGroup('strumLineNotes','7','angle')

noteY4 = getPropertyFromGroup('strumLineNotes','4','y')
noteY5 = getPropertyFromGroup('strumLineNotes','5','y')
noteY6 = getPropertyFromGroup('strumLineNotes','6','y')
noteY7 = getPropertyFromGroup('strumLineNotes','7','y')
end



function onEvent(n,v1,v2)
    if shadersEnabled then
    if n == 'Change Character' then
        initLuaShader('INV')
    if v1 == 'dad' then
        setSpriteShader('dad', 'INV')
        setSpriteShader('Jake', 'INV')
    elseif v1 == 'gf' then
        setSpriteShader('gf', 'INV')
    elseif v1 == 'bf'then
        setSpriteShader('boyfriend', 'INV')
    end
        setShaderInt('dad', 'invert', 0)
        setShaderInt('gf', 'invert', 0)
        setShaderInt('boyfriend', 'invert', 0)
        setShaderInt('Jake', 'invert', 0)
    end
    end
    if n == 'Glitch' then
        triggerEvent('Add Camera Zoom',0.1,0.05)
        Glich()
    end
    
end

function onStepHit()
  if shadersEnabled then
    if curStep == 2383 then
        runHaxeCode([[
        game.camGame.setFilters([
        new ShaderFilter(game.getLuaObject('Glitchy').shader),
        new ShaderFilter(game.getLuaObject('grey').shader)
        ]);
        game.camHUD.setFilters([]);
        ]])
        setShaderFloat('grey', 'strength', 1)
        doTweenAlpha('gsjshskzbz','bk',1,1)
    
    elseif curStep == 2462 then
        runHaxeCode([[
        game.camGame.setFilters([
        new ShaderFilter(game.getLuaObject('Glitchy').shader)
        ]);
        game.camHUD.setFilters([]);
        ]])
        setShaderFloat('grey', 'strength', 0)
        doTweenAlpha('gsjshskzbz','bk',0,1)
    end
    
    if curStep == 3624 then
        runHaxeCode([[
        game.camGame.setFilters([
        new ShaderFilter(game.getLuaObject('CA').shader)
        ]);
        game.camHUD.setFilters([
        new ShaderFilter(game.getLuaObject('CA').shader)
        ]);
        ]])
        setShaderFloat('CA', 'amount', 1)
    elseif curStep == 4660 then
        runHaxeCode([[
        game.camGame.setFilters([
        new ShaderFilter(game.getLuaObject('Glitchy').shader)
        ]);
        game.camHUD.setFilters([]);
        ]])
        setShaderFloat('CA', 'amount', 0)
    end
  end
end




function opponentNoteHit(id, direction, noteType, isSustainNote)
    if noteType == 'Glitch Note' or noteType == 'Second Char Glitch' then
            Glich()
    end
end

function goodNoteHit(id, noteData, noteType, isSustainNote)
    if noteType == 'Bullet Note' then
        Glich2()
    end
end


function onTimerCompleted(t)
    if shadersEnabled then
    if t == 'yuyu' then
        setShaderFloat('Glitchy', 'AMT', 0.1)
    end
    if t == 'to' then
        runHaxeCode([[
        game.camOther.setFilters([
        new ShaderFilter(game.getLuaObject('Glitchy').shader)
        ]);
        ]])
        setShaderFloat('Glitchy', 'AMT', 0.1)
    end
    end
end


function NoteGl()
noteTweenX('glitchNoteX0','0' ,math.random(noteX0- 10,noteX0+ 10),0.01,'quadInOut')
noteTweenAngle('glitchNoteA0','0' ,math.random(noteA0- 10,noteA0+ 10),0.01,'quadInOut')

noteTweenX('glitchNoteX1','1' ,math.random(noteX1- 10,noteX1+ 10),0.01,'quadInOut')
noteTweenAngle('glitchNoteA1','1' ,math.random(noteA1- 10,noteA1+ 10),0.01,'quadInOut')

noteTweenX('glitchNoteX2','2' ,math.random(noteX2- 10,noteX2+ 10),0.01,'quadInOut')
noteTweenAngle('glitchNoteA2','2' ,math.random(noteA2- 10,noteA2+ 10),0.01,'quadInOut')

noteTweenX('glitchNoteX3','3' ,math.random(noteX3- 10,noteX3+ 10),0.01,'quadInOut')
noteTweenAngle('glitchNoteA3','3' ,math.random(noteA3- 10,noteA3+ 10),0.01,'quadInOut')

noteTweenX('glitchNoteX4','4' ,math.random(noteX4- 10,noteX4+ 10),0.01,'quadInOut')
noteTweenAngle('glitchNoteA4','4' ,math.random(noteA4- 10,noteA4+ 10),0.01,'quadInOut')
noteTweenY('glitchNoteY4', '4' ,math.random(noteY4- 10,noteY4+ 10),0.01,'quadInOut')

noteTweenX('glitchNoteX5','5' ,math.random(noteX5- 10,noteX5+ 10),0.01,'quadInOut')
noteTweenAngle('glitchNoteA5','5' ,math.random(noteA5- 10,noteA5+ 10),0.01,'quadInOut')
noteTweenY('glitchNoteY5', '5' ,math.random(noteY5- 10,noteY5+ 10),0.01,'quadInOut')

noteTweenX('glitchNoteX6','6' ,math.random(noteX6- 10,noteX6+ 10),0.01,'quadInOut')
noteTweenAngle('glitchNoteA6','y' ,math.random(noteA6- 10,noteA6+ 10),0.01,'quadInOut')
noteTweenY('glitchNoteY6', '6' ,math.random(noteY6- 10,noteY6+ 10),0.01,'quadInOut')

noteTweenX('glitchNoteX7','7' ,math.random(noteX7- 10,noteX7+ 10),0.01,'quadInOut')
noteTweenAngle('glitchNoteA7','7' ,math.random(noteA7- 10,noteA7+ 10),0.01,'quadInOut')
noteTweenY('glitchNoteY7', '7' ,math.random(noteY7- 10,noteY7+ 10),0.01,'quadInOut')
end

function shaderCoordFix()
if shadersEnabled then
    runHaxeCode([[
        resetCamCache = function(?spr) {
            if (spr == null || spr.filters == null) return;
            spr.__cacheBitmap = null;
            spr.__cacheBitmapData = null;
        }
        
        fixShaderCoordFix = function(?_) {
            resetCamCache(game.camGame.flashSprite);
            resetCamCache(game.camHUD.flashSprite);
            resetCamCache(game.camOther.flashSprite);
        }
    
        FlxG.signals.gameResized.add(fixShaderCoordFix);
        fixShaderCoordFix();
        return;
    ]])
    
    local temp = onDestroy
    function onDestroy()
        runHaxeCode([[
            FlxG.signals.gameResized.remove(fixShaderCoordFix);
            return;
        ]])
        if (temp) then temp() end
    end
end
end

function onGameOverStart()
    if shadersEnabled then
runTimer('to',3.9)

runHaxeCode([[
game.camGame.setFilters([]);
game.camHUD.setFilters([]);
    ]])
end
end