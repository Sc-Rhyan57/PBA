function onStepHit()
    
    if curStep == 1535 then
        startVideo('1');
        setProperty('inCutscene',true)
    elseif curStep == 1840 then
        setProperty('inCutscene',false)
    end
    
    if curStep == 4764 then
        startVideo('2');
        setProperty('inCutscene',true)
    elseif curStep == 4864 then
        setProperty('inCutscene',false)
    end
    

end