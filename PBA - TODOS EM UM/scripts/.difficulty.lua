local blockedDifficulties = {
    ['Retcon'] = {
        ['retake'] = true,
        ['pafanbuild'] = true,
        ['eyeburive'] = true
    },
    ['Childs-Play'] = {
        ['eyeburive'] = true
    },
    ['My Amazing World'] = {
        ['retake'] = true,
        ['pafanbuild'] = true
    },
    ['Forgotten-World'] = {
        ['retake'] = true,
        ['eyeburive'] = true
    },
    ['Blessed-By-Swords'] = {
        ['recreate'] = true
    },
    ['blessed-By-Swords-old'] = {
        ['recreate'] = true
    },
    ['Brotherly-Love'] = {
        ['recreate'] = true
    },
    ['Test'] = {
        ['recreate' ] = true
    },
    ['Suffering-Siblings'] = {
        ['recreate'] = true
    },
    ['Forgotten-World-pafanbuild'] = {
        ['retake' ] = true
    },
    ['My-Finale-pafanbuild'] = {
        ['retake' ] = true
    }
}

function onCreate()
    if blockedDifficulties[songName] then
        if blockedDifficulties[songName][difficultyName] then
            makeLuaSprite('blockBg', '', -500, -500)
            makeGraphic('blockBg', 3000, 3000, '000000')
            setProperty('blockBg.alpha', 0.8)
            setObjectCamera('blockBg', 'camOther')
            setObjectOrder('blockBg', 9999)
            addLuaSprite('blockBg', true)
            
            makeLuaSprite('alertImg', 'warning', screenWidth/2 - 100, 80)
            scaleObject('alertImg', 0.8, 0.8)
            setObjectCamera('alertImg', 'camOther')
            setObjectOrder('alertImg', 10000)
            addLuaSprite('alertImg', true)
            
            makeLuaText('alertTitle', 'DIFFICULTY BLOCKED', screenWidth, 0, 250)
            setTextSize('alertTitle', 45)
            setTextBorder('alertTitle', 2, '000000')
            setTextAlignment('alertTitle', 'center')
            setTextColor('alertTitle', 'FF0000')
            setObjectCamera('alertTitle', 'camOther')
            setObjectOrder('alertTitle', 10001)
            addLuaText('alertTitle')
            
            local descText = string.format(
                "Difficulty %s is not available\nfor the song %s.",
                difficultyName,
                songName
            )
            makeLuaText('alertDesc', descText, screenWidth - 100, 0, 350)
            setTextSize('alertDesc', 26)
            setTextBorder('alertDesc', 2, '000000')
            setTextAlignment('alertDesc', 'center')
            setTextColor('alertDesc', 'FFFFFF')
            setObjectCamera('alertDesc', 'camOther')
            setObjectOrder('alertDesc', 10001)
            addLuaText('alertDesc')
            
            makeLuaSprite('returnBtnBg', '', screenWidth/2 - 125, 450)
            makeGraphic('returnBtnBg', 250, 55, '000000')
            setObjectCamera('returnBtnBg', 'camOther')
            setObjectOrder('returnBtnBg', 10002)
            addLuaSprite('returnBtnBg', true)

            makeLuaSprite('returnBtnBorder', '', screenWidth/2 - 125, 450)
            makeGraphic('returnBtnBorder', 250, 55, 'FFFFFF')
            setProperty('returnBtnBorder.alpha', 0.3)
            setObjectCamera('returnBtnBorder', 'camOther')
            setObjectOrder('returnBtnBorder', 10001)
            addLuaSprite('returnBtnBorder', true)
            
            makeLuaText('returnText', 'Voltar ao Menu', 250, screenWidth/2 - 125, 460)
            setTextSize('returnText', 26)
            setTextBorder('returnText', 2, '000000')
            setTextAlignment('returnText', 'center')
            setTextColor('returnText', 'FFFFFF')
            setObjectCamera('returnText', 'camOther')
            setObjectOrder('returnText', 10003)
            addLuaText('returnText')
            
            setProperty('vocals.volume', 0)
            playMusic('breakfast', 0, true)
        end
    end
end

local function isOverButton()
    local mouseX = getMouseX('camOther')
    local mouseY = getMouseY('camOther')
    local btnX = screenWidth/2 - 125
    local btnY = 450
    
    return mouseX >= btnX and mouseX <= btnX + 250 and
           mouseY >= btnY and mouseY <= btnY + 55
end

function onUpdate()
    if blockedDifficulties[songName] and blockedDifficulties[songName][difficultyName] then
        if isOverButton() then
            setProperty('returnBtnBg.alpha', 0.9)
            setProperty('returnBtnBorder.alpha', 0.5)
        else
            setProperty('returnBtnBg.alpha', 0.7)
            setProperty('returnBtnBorder.alpha', 0.3)
        end
        
        if mouseClicked() or keyJustPressed('accept') then
            if isOverButton() then
                exitSong(true)
            end
        end
        
        setPropertyFromClass('Conductor', 'songPosition', 0)
        setPropertyFromClass('flixel.FlxG', 'sound.music.time', 0)
        setPropertyFromClass('flixel.FlxG', 'sound.music.volume', 0)
        setProperty('vocals.time', 0)
        setProperty('vocals.volume', 0)
    end
end
