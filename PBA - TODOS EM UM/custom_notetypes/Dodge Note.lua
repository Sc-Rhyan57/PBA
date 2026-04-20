function onCreate()
--Iterate over all notes
for i = 0, getProperty('unspawnNotes.length')-1 do
if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'Dodge Note' then
setPropertyFromGroup('unspawnNotes', i, 'texture', 'SwordNOTE_assets'); --Change texture
setPropertyFromGroup('unspawnNotes', i, 'missHealth', 0.3);
end
end
end

dodgeAnimations = {
    'dodgeLEFT', 'dodgeDOWN', 'dodgeUP', 'dodgeRIGHT'
}
function goodNoteHit(id, noteData, noteType, isSustainNote)
if noteType == 'Dodge Note' then
characterPlayAnim('boyfriend', dodgeAnimations[noteData+1], true);
setProperty('boyfriend.specialAnim', true);

end
end

--- Warning

-- original by: Piggyfriend1792

-- I just modified it a bit (dummy)



local offsetX = 12
local offsetY = 150
local objWidth = 400
local note_Name = "Sword Note"
local what_it_does = "this kill you"
local explaining = "DON'T MISS THIS SHIT!"

function onCreatePost()
    makeLuaSprite('box', 'empty', 0 - objWidth, offsetY)
    makeGraphic('box', objWidth, 150, 'A58F00')
    setObjectCamera('box', 'other')
    setProperty("box.alpha", 0.7)
    addLuaSprite('box', true)

    makeLuaText('note_name', note_Name, objWidth, offsetX - objWidth, offsetY+10)
    setTextSize('note_name', 35)
    setTextAlignment('note_name', 'left')
    setObjectCamera('note_name', 'other')
    addLuaText("note_name",true)

    makeLuaText('what_it_does', what_it_does, objWidth, offsetX - objWidth, offsetY+60)
    setTextSize('what_it_does', 25)
    setTextAlignment('what_it_does', 'left')
    setObjectCamera('what_it_does', 'other')
    addLuaText("what_it_does",true)

    makeLuaText('explaining', ''..explaining, 250, offsetX - objWidth, offsetY+95)
    setTextSize('explaining', 30)
    setTextAlignment('explaining', 'left')
    setObjectCamera('explaining', 'other')
    addLuaText("explaining",true)

    makeLuaSprite('arrow', 'arrow', -150, 160)
    setObjectCamera('arrow', 'other')
    addLuaSprite('arrow', true)
    scaleObject('arrow', 0.45, 0.45);
end

function onStepHit()
    
    if curStep == 136 then
        doTweenX("boxTween", "box", getProperty("box.x") + objWidth, 1.8, "expoOut")
        doTweenX("note_nameTween", "note_name", getProperty("note_name.x") + objWidth, 1.8, "expoOut")
        doTweenX("what_it_doesTween", "what_it_does", getProperty("what_it_does.x") + objWidth, 1.8, "expoOut")
        doTweenX("explainingTween", "explaining", getProperty("explaining.x") + objWidth, 1.8, "expoOut")
        doTweenX("arrowTween", "arrow", getProperty("arrow.x") + objWidth, 1.8, "expoOut")
        runTimer("boxDisplay",4.8)
    end
end

function onTimerCompleted(timerName)

    if timerName == "boxDisplay" then
        doTweenX("boxTween", "box", getProperty("box.x") - objWidth, 1.8, "sineIn")
        doTweenX("note_nameTween", "note_name", getProperty("note_name.x") - objWidth, 1.8, "sineIn")
        doTweenX("what_it_doesTween", "what_it_does", getProperty("what_it_does.x") - objWidth, 1.8, "sineIn")
        doTweenX("explainingTween", "explaining", getProperty("explaining.x") - objWidth, 1.8, "sineIn")
        doTweenX("arrowTween2", "arrow", getProperty("arrow.x") - objWidth, 1.8, "sineIn")

    end
end
function onTweenCompleted(t)
if t == 'arrowTween2' then
removeLuaSprite('box')
removeLuaSprite('note_name')
removeLuaSprite('what_it_does')
removeLuaSprite('explaining')
removeLuaSprite('arrow')
end
end