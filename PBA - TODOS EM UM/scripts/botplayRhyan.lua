local animText = "Rhyan Mods"
local animIndex = 1
local colorIndex = 0
local colorSpeed = 0.01

function toHex(red, green, blue)
    return string.format('%02x%02x%02x', red, green, blue)
end

function updateGradientColors()
    colorIndex = (colorIndex + colorSpeed) % 1.0
    
    local red = math.floor(127.5 * (1 + math.sin(2 * math.pi * colorIndex)))
    local green = math.floor(127.5 * (1 + math.sin(2 * math.pi * colorIndex + 2 * math.pi / 3)))
    local blue = math.floor(127.5 * (1 + math.sin(2 * math.pi * colorIndex + 4 * math.pi / 3)))
    
    return toHex(red, green, blue)
end

function onUpdatePost(elapsed)
    if animIndex <= #animText then
        local displayedText = string.sub(animText, 1, animIndex)
        setTextString('botplayTxt', displayedText)
        animIndex = animIndex + 1
    end
    
    local gradientColor = updateGradientColors()
    setTextColor('botplayTxt', gradientColor)
end

function goodNoteHit(id, direction, noteType, isSustainNote)
    if isSustainNote then
        local gradientColor = updateGradientColors()
        setTextColor('botplayTxt', gradientColor)
    end
end