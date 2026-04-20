--Esto nose que ._ .
local noteXPos = {}
local targetXPos = {}
local targetYPos = {}
local noteYPos = {}
local noteAngle = {}
local defaultX = {}
local defaultY = {}
local defaultScale = 1
local modcharts = true
local opponentPlay = false
----------


function onCreatePost()
	if modcharts then
		defaultScale = getPropertyFromGroup('strumLineNotes',0,'scale.x')
		for i = 0, 7 do
			table.insert(defaultX,getPropertyFromGroup('strumLineNotes',i,'x'))
			table.insert(defaultY,getPropertyFromGroup('strumLineNotes',i,'y'))
			table.insert(targetXPos,getPropertyFromGroup('strumLineNotes',i,'x'))
			table.insert(targetYPos,getPropertyFromGroup('strumLineNotes',i,'y'))
			table.insert(noteAngle, 1000)

			table.insert(noteXPos,getPropertyFromGroup('strumLineNotes',i,'x'))
			table.insert(noteYPos,getPropertyFromGroup('strumLineNotes',i,'y'))

		end
	end
end

local noteScale = 0.7
function lerp(a, b, ratio)
	return a + ratio * (b - a); --the funny lerp
end

--Esto Tampoco ._  .
local lerpX = true
local lerpY = false
local lerpAngle = false
local lerpScale = true

local perlinX = 0
local perlinY = 0
local perlinZ = 0

local perlinSpeed = 0.5
local songPos = 0
local perlinXRange = 0.01
local perlinYRange = 0.01
local perlinZRange = 0.1
----------

function onUpdate(elapsed)
	songPos = getSongPosition()
	if not modcharts then
		return
	end
	if lerpScale and noteScale ~= defaultScale then
		noteScale = lerp(noteScale, defaultScale, elapsed*5)
	end

	for i = 0,7 do

		if noteScale ~= defaultScale then
			setPropertyFromGroup('strumLineNotes',i,'scale.x',noteScale)
			setPropertyFromGroup('strumLineNotes',i,'scale.y',noteScale)
		end
	end
end

function onEvent(name,v1,v2)
if name == 'VoidBoom' then
noteScale = noteScale+0.2

end
end