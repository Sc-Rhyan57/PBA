singName = {'singLEFT', 'singDOWN', 'singUP', 'singRIGHT'}
local hudItems = {'scoreTxt','botplayTxt','healthBarScript','timeBar','timeTxt','iconP1','iconP2','iconJake','iconPibby'}
chatSize = 80
chatSizeValueLerp = chatSize - 20
chatSizeLerp = true
glitchZoom = false
function onCreatePost()
	makeLuaText('Chat Text','',1900,-350,500)
	setTextAlignment('Chat Text','center')
	addLuaText('Chat Text')
	setTextSize('Chat Text',60)
	setObjectCamera('Chat Text','camOther')
	setTextFont('Chat Text','Thunderman.ttf')
end
 
function onUpdate(elapsed)
    if getProperty('cpuControlled') == true then 
        setProperty('scoreTxt.visible',false)
        setProperty('botplayTxt.visible',false)
    else 
        setProperty('scoreTxt.visible',true)
    end
end


function onEvent(name, value1, value2)
    if name == '' then
        if value1 == 'ChatLerpOff' then
            chatSizeLerp = false
            --debugPrint('ChatLerpOff')
        elseif value1 == 'ChatLerpOn' then
            chatSizeLerp = true
            --debugPrint('ChatLerpOn')
        end
        if string.lower(value1) == 'ognz' then -- OGNZ = OnGlitchNoteZoom 
            glitchZoom = string.upper(value2) == 'true'
            debugPrint('OGNZ: ' .. tostring(glitchZoom))
        end
    end
end


function goodNoteHit(id,data,type,sus)
    if type == 'Attack Note' then
        triggerEvent('Change Character', 'dad', 'finn-hurting')

        characterPlayAnim('dad', singName[data+1], true)
        callOnScripts('glitchCharacters', {'dad', false, sus})
        setProperty('dad.specialAnim', true)
        setProperty('dad.holdTimer', 0)
        runTimer('finn-normal', 0.24)

        cancelTween('camHUDXFight')
        setProperty('camHUD.x', -30)
        doTweenX('camHUDXFight', 'camHUD', 0, 0.5, 'cubeOut')

        cancelTween('camHUDAngleFight')
        setProperty('camHUD.angle', -2)
        doTweenAngle('camHUDAngleFight', 'camHUD', 0, 0.5, 'cubeOut')

        setProperty('dadGroup.x', getProperty('dadGroup.x') - 40)
    end

    if type == 'Dodge Note' then
        triggerEvent('Change Character', 'dad', 'finn-slash')

        characterPlayAnim('dad', singName[data+1], true)
        setProperty('dad.specialAnim', true)
        setProperty('dad.holdTimer', 0)
        runTimer('finn-normal', 1)

        cancelTween('camHUDXFight')
        setProperty('camHUD.x', 30)
        doTweenX('camHUDXFight', 'camHUD', 0, 0.5, 'cubeOut')

        cancelTween('camHUDAngleFight')
        setProperty('camHUD.angle', 2)
        doTweenAngle('camHUDAngleFight', 'camHUD', 0, 0.5, 'cubeOut')

        setProperty('dadGroup.x', getProperty('boyfriendGroup.x')- 1000)
        --setProperty('dadGroup.y', getProperty('boyfriendGroup.y'))
    end
end


function opponentNoteHit(id,data,type,sus)
    if type == 'Glitch Note' or type == 'Second Char Glitch' then
        if glitchZoom then
            if (curStep > 1610 and curStep < 1840) then
                triggerEvent('Add Camera Zoom',0.03,0)
            else
                triggerEvent('Add Camera Zoom',0.05,0)
            end
        end
    end
end

function onTimerCompleted(tag)
    if tag == 'finn-normal' then
        triggerEvent('Change Character', 'dad', 'finn-sword')
    end
    if tag =='remove' then
        --setTextString("Chat Text", "lmao")
        doTweenAlpha('Chat Text Alpha', 'Chat Text', 0, 0.5, 'cubeIn')
    end
end

function string.split(value, delimiter)
    local result = {}
    local from = 1
    local delim_from, delim_to = string.find(value, delimiter, from)

    while delim_from do
        table.insert(result, string.sub(value, from, delim_from-1))
        from = delim_to + 1
        delim_from, delim_to = string.find(value, delimiter, from)
    end
    table.insert(result, string.sub(value, from))
    return result
end

function boundTo(value,min,max)
    return math.max(min,math.min(max,value))
end

function math.lerp(from,to,i)
    return from+(to-from)*i
end