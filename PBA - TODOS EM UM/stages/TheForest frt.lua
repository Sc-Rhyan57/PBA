makeLuaSprite('bg2', 'bg2', 100, 1600)
scaleObject('bg2', 1.5, 1.5)
addLuaSprite('bg2')


makeLuaSprite('vrf', 'light/light',650, 2100)
scaleObject('vrf', 1.2 ,1.2)
setObjectOrder('vrf', 50)
addLuaSprite('vrf', false)

makeLuaSprite('vrf', 'light/lightning',110, 2100)
scaleObject('vrf', 2 ,2)
setObjectOrder('vrf', 50)
addLuaSprite('vrf', true)


function onUpdatePost (elapsed) 
	setTextFont('scoreTxt','AT.ttf')
	setTextFont('timeTxt','AT.ttf')
	setTextFont('botplayTxt','AT.ttf')

end
