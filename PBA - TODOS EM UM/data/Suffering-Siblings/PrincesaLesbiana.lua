function onCreatePost()
        makeAnimatedLuaSprite('princesa', 'stages/lab/DULCE_PRINCESA_FONDO', 1900, 520);
        addAnimationByPrefix('princesa', 'Dulce princesa fondo', 'Dulce princesa fondo',24,true)
        addLuaSprite('princesa', false);
        setProperty('princesa.alpha',1)
        setObjectOrder('princesa',3)
end
function onStepHit()
    if curStep == 3624 then
        makeAnimatedLuaSprite('princesa', 'stages/lab/DULCE_PRINCESA_FONDO1', 1900, 520);
        addAnimationByPrefix('princesa', 'Dulce princesa fondo', 'Dulce princesa fondo',24,true)
        addLuaSprite('princesa', false);
    elseif curStep == 4660 then
        makeAnimatedLuaSprite('princesa', 'stages/lab/DULCE_PRINCESA_FONDO', 1900, 520);
        addAnimationByPrefix('princesa', 'Dulce princesa fondo', 'Dulce princesa fondo',24,true)
        addLuaSprite('princesa', false);
    end
end

function onUpdate()
        setProperty('princesa.alpha',getProperty('Jake.alpha'))
        setProperty('princesa.color',getProperty('Jake.color'))
end