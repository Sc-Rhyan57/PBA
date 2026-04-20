function onCreate()
	
	makeLuaSprite('lightst', 'cawm/intro/light', 150, 300)
	scaleObject('lightst', 0.85, 0.85)
	setScrollFactor('lightst', 1, 1)
	addLuaSprite('lightst', true)

end

function onUpdate()

       if curStep >= 692 then
            
            setProperty('light.visible', false)
        end
end

function goodNoteHit()
    health = getProperty('health')
        setProperty('health', health+ 0.007)
end