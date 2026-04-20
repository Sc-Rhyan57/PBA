--scripts by NTH208
speedUpGlitch0 = false
speedUpGlitch1 = false
speedUpGlitch2 = false
speedUpGlitch3 = false
function onCreatePost()
if shadersEnabled then
initLuaShader("NewGlitch2")

for i=0,3 do
setSpriteShader('opponentStrums.members['..i..']', 'NewGlitch2')
--setSpriteShader('playerStrums.members['..i..']', 'NewGlitch2')
 end       
 runTimer('repeat',0.1 * getProperty('playbackRate') / (getPropertyFromClass('backend.Conductor', 'bpm')/ 100),0)       
    --    for i=0,3 do
  --      setProperty('opponentStrums.members['..i..'].useFramePixels', true)
  --      end
    for i = 0,getProperty('unspawnNotes.length')-1 do
    if getPropertyFromGroup('unspawnNotes',i,'gfNote') then
            if not getPropertyFromGroup('unspawnNotes',i,'mustPress') then
                setPropertyFromGroup('unspawnNotes', i, 'visible', false)
            end
        end
    end
  end
     end
        
        function onSongStart()
            if shadersEnabled then
        for i = 0,3 do
        noteTweenAlpha('note'..i,i,1,0.0001,'linear')
        end
     end
         end
         
        function updateNote()
            if shadersEnabled then
        for i =0,3 do
        --setShaderFloat("opponentStrums.members["..i.."]", "iTime", os.clock())
        setShaderFloat("opponentStrums.members["..i.."]", "negativity", 0.0)
    end
    --Speed Glitch
    if speedUpGlitch0 then
    --random = math.random(5,15)
    setShaderFloat('opponentStrums.members[0]', 'binaryIntensity', getRandomFloat(6,8))
    end
    
    if speedUpGlitch1 then
    setShaderFloat('opponentStrums.members[1]', 'binaryIntensity', getRandomFloat(6,8))
    end
    
    if speedUpGlitch2 then
    setShaderFloat('opponentStrums.members[2]', 'binaryIntensity', getRandomFloat(6,8))
    end
    
    if speedUpGlitch3 then
    setShaderFloat('opponentStrums.members[3]', 'binaryIntensity', getRandomFloat(6,8))
    end
    end
    end
    
    function opponentNoteHit(id,data,type,sus)
        if shadersEnabled then
    if type == 'GF Sing But Not Visible Note' or type == 'GF Sing' then
    else
    if data == 0 then
    speedUpGlitch0 = true
    runTimer('outSpeed0',0.15)
    end
    
    if data == 1 then
    speedUpGlitch1 = true
    runTimer('outSpeed1',0.15)
    end
    
    if data == 2 then
    speedUpGlitch2 = true
    runTimer('outSpeed2',0.15)
    end
    
    if data == 3 then
    speedUpGlitch3 = true
    runTimer('outSpeed3',0.15)
    end
    end

    if getPropertyFromGroup('notes',id,'gfNote') or type == 'GF Sing But Not Visible Note' then
      runHaxeCode('game.opponentStrums.members['..data..'].playAnim(\'static\', true);');
    end
        end
end
    
    function onTimerCompleted(tag)
        if shadersEnabled then
    if tag== 'outSpeed0' then
    speedUpGlitch0 = false
    end
    
    if tag== 'outSpeed1' then
    speedUpGlitch1 = false
    end
    
    if tag== 'outSpeed2' then
    speedUpGlitch2 = false
    end
    
    if tag== 'outSpeed3' then
    speedUpGlitch3 = false
    end

    if tag == 'repeat' then
      updateNote()
      runTimer('repeat',0.1 * getProperty('playbackRate') / (getPropertyFromClass('backend.Conductor', 'bpm')/ 90),0)       
    end
    end
    end
    function onStepHit()
    if shadersEnabled then
    for i=0,3 do
      random = getRandomFloat(6,8)
      setShaderFloat('opponentStrums.members['..i..']', 'binaryIntensity', random)
--setSpriteShader('playerStrums.members['..i..']', 'NewGlitch2')  
end   
end
end