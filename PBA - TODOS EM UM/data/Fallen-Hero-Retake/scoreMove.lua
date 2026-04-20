ofs= 5
scoreAngle = 2
scoreTimeAngle = 0.2
fix = true 
fix1 = false
jake = false
function onCreatePost()
if songName == "Child's Play" or songName == "My Amazing World" or songName == "Retcon" then
xx2= -250
yy2= getProperty('healthBar.y')+40
else
xx2= 0
yy2= getProperty('healthBar.y')+40
end
xy = 4
end

function goodNoteHit(id,data,type,sus)
    if type =='GF Sing' and not sus then
        scoreGF = true 
        onHUDUpdate()
    elseif not sus then
        onHUDUpdate()
        scoreGF = false
    end

    if not sus then
        cancelTween('scoreTxtAngle')
        if math.random(1,2) == 1 then
            setProperty('scoreTxt.angle',scoreAngle*-1)
        else
            setProperty('scoreTxt.angle',scoreAngle*1)
        end
        doTweenAngle('scoreTxtAngle','scoreTxt',0,scoreTimeAngle)
    end
end
  
function opponentNoteHit(id,data,type,sus)
    if type ~='GF Sing' or type ~='GF Sing But Not Visible Note' then
        if type ~= 'Second Char Sing' and type ~= 'Second Char Glitch' then
            jake = false
            onHUDUpdate()
        elseif type == 'Second Char Sing' or type == 'Second Char Glitch' then
            jake = true
            onHUDUpdate()
        end
    end
end

function onUpdate()   
            
end

    function onTimerCompleted(tag)
    end
                
 --   function onTweenCompleted(tag)
 --   if tag =='scoreAngle' then
--    doTweenAngle('scoreAngle2','scoreTxt',0,scoreTimeAngle,'sineInOut')
 --   setProperty('scoreTxt.x',xx2)
   --             setProperty('scoreTxt.y',yy2)
    --           end
    --         end
                
                
    function onHUDUpdate()
        if scoreGF then
            setProperty('scoreTxt.color', getIconColor('gf')) 
            setProperty('infoCredit.color', getIconColor('gf')) 
        elseif not scoreGF then
            setProperty('scoreTxt.color', getIconColor('boyfriend')) 
            setProperty('infoCredit.color', getIconColor('boyfriend')) 
        end

        if mustHitSection == false then
            if jake == false then
                setProperty('infoCredit.color', getIconColor('dad')) 
            elseif jake == true then
                setProperty('infoCredit.color', getColorFromHex('ffd943') )
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