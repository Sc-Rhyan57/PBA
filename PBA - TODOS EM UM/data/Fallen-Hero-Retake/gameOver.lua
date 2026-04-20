function onCreate()
setPropertyFromClass('GameOverSubstate','characterName','bffinndeath')
        setPropertyFromClass('GameOverSubstate','deathSoundName','bffinndeath')
        --setPropertyFromClass('GameOverSubstate','loopSoundName','Jorsawsee_Loop')
        setPropertyFromClass('GameOverSubstate','endSoundName','gffinnrevive')
        makeAnimatedLuaSprite('bffinndeath','character/bffinndeath', 3050, 2800)

end
