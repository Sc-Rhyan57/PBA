function onUpdate(elapsed)
setTextFont('scoreTxt', 'Gumball.ttf')
end

    function onTweenCompleted(tag)
    if tag =='scoreAngleF' then
    setProperty('scoreTxt.x',scoreX)
                setPtoperty('scoreTxt.y',scoreY)
                doTweenAngle('scoreAngle','scoreTxt',0,scoreTimeAngle,'cubeOut')
                end
                end
                
                function onHUDUpdate()
              if scoreGF then
 setProperty('scoreTxt.color', getIconColor('gf')) 
 if songName =='Suffering-Siblings' or songName =='Forgotten-World'  then
               else
               if fix1 == true  and fix == false then
 triggerEvent('IconChange',getProperty('gf.curCharacter'),'')
 fix1 = false
 fix = true
end
end

elseif not scoreGF then
 setProperty('scoreTxt.color', getIconColor('boyfriend')) 
 if songName =='Suffering-Siblings' or songName =='Forgotten-World' then
               else
               if fix == true and fix1 == false then
 triggerEvent('IconChange',getProperty('boyfriend.curCharacter'),'')
 fix = false
 fix1 = true
 end
end
end
end


function getIconColor(chr)
	local chr = chr or "dad"
	return getColorFromHex(rgbToHex(getProperty(chr .. ".healthColorArray")))
	end
	
	function rgbToHex(array)
	return string.format('%.2x%.2x%.2x', array[1], array[2], array[3])
end