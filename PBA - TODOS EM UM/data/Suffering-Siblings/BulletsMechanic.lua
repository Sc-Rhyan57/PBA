--{{ Code made by Platinum Alpha - based on the mechanics of Pibby Corrupted v1.5 }}



function onCreatePost()
if not botPlay then
    makeAnimatedLuaSprite('Bul','Bullet Ammo',50,325)
    scaleObject('Bul',0.4,0.4)
    for ammos = 0,3 do
        addAnimationByPrefix('Bul','Bullet'..ammos,'Bullet Ammo '..ammos,0,false)
    end
    playAnim('Bul','Bullet'..bullets)
    setProperty('Bul.alpha',0.7)
    setObjectCamera('Bul','camOther')
    addLuaSprite('Bul',false)
end
end
function onSongStart()
    if not botPlay then
        bullets = 3
        gun = true
    end
end

 
    gun = false
    pause = true
    bullets = 3
    reload = 1
    shootAnimations = {'shootLEFT', 'shootDOWN', 'shootUP', 'shootRIGHT'}
 

function onUpdate(elapsed)
    
                                        if gun then
    if bullets <= 0 and reload >= 1 then
        if keyboardJustPressed('R') or keyPressed('R') then
            bullets = 2
            playAnim('Bul','Bullet'..bullets)
            setProperty('Bul.x',-80)
            doTweenX('kshzhsbd','Bul',50,3,'expoOut')
            reload = reload-1
            pause = false
            runTimer('bruh',1)
            playSound('gunclick',1)
            characterPlayAnim('boyfriend', 'reload', true);
            setProperty('boyfriend.specialAnim', true);
        end
    end
    
    if bullets >= 1 then
        if keyboardJustPressed('SHIFT') or keyPressed('SHIFT') or keyboardJustPressed('T') or keyPressed('T') and pause then 
            bullets = bullets -1
            playAnim('Bul','Bullet'..bullets)
            runTimer('bruh',1.6)
            pause = false
            setProperty('Bul.scale.x',0.35)
            setProperty('Bul.scale.y',0.45)
            doTweenX('isgdjdnekd','Bul.scale',0.4,1,'backOut')
            doTweenY('isgdjdekd','Bul.scale',0.4,1,'backOut')
            playSound('gun',1)
            characterPlayAnim('boyfriend', shootAnimations[math.random(1,4)], true);
            setProperty('boyfriend.specialAnim', true);
            setProperty('health',getProperty('health')+0.35)
        end
    elseif bullets <= 0 then
        if keyboardJustPressed('SHIFT') or keyPressed('SHIFT')
        or keyboardJustPressed('T') or keyPressed('T') and pause then 
            runTimer('bruh',1)
            if reload <= 0 then
                runTimer('bruh2',2.5)
            end
            pause = false
            playSound('gunclick',1)
        end
    end
                                        end
    
end

function onEvent(n,v1)
    if n == '' then
        if v1 == 'end1' then
            gun = false
            removeLuaSprite('Bul')
        end
    end
end

function onTimerCompleted(n)
    if n == 'bruh' then
        pause = true
    end
    if n == 'bruh2' then
        doTweenX('hsgshshshshshs','Bul',-80,3,'expoIn')
        gun = false
    end
end

function onTweenCompleted(n)
    if n == 'hsgshshshshshs' then
        removeLuaSprite('Bul')
    end
end