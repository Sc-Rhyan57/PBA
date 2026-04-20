function onCreate()  
       makeLuaSprite('flash1', '', -300, -300);
        makeGraphic('flash1',2560,1440,'000000')
        addLuaSprite('flash1', true);
        setScrollFactor('flash1',0,0)
        setProperty('flash1.visible', false) 

    end

function onBeatHit()
if curBeat == 264 then
    setProperty('flash1.visible', true) 
end
if curBeat == 276 then
    setProperty('flash1.visible', false) 
end
if curBeat == 406 then
    setProperty('flash1.visible', true) 
end
if curBeat == 410 then
    setProperty('flash1.visible', false) 

end
end