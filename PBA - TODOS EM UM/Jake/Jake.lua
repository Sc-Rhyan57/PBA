idleoffsets = {'-115', '-178'}
leftoffsets = {'25', '-138'}
downoffsets = {'-115', '-255'}
upoffsets = {'15', '188'}
rightoffsets = {'-40', '-70'}
idle_xml_name = 'Idle'
left_xml_name = 'Left'
down_xml_name = 'Down'
up_xml_name = 'Up'
right_xml_name = 'Right'
name_of_character = 'Jake'
name_of_notetype = 'Second Char Sing'
name_of_notetype2 = 'Second Char Glitch'
name_of_notetype3 = 'Both Char Sing'
foreground = false

function onCreate()
	makeAnimatedLuaSprite(name_of_character, 'characters/Jake', 2000, 2000);
	addAnimationByPrefix(name_of_character, 'idle', idle_xml_name, 22, false);
	addAnimationByPrefix(name_of_character, 'singLEFT', left_xml_name, 24, false);
	addAnimationByPrefix(name_of_character, 'singDOWN', down_xml_name, 24, false);
	addAnimationByPrefix(name_of_character, 'singUP', up_xml_name, 24, false);
	addAnimationByPrefix(name_of_character, 'singRIGHT', right_xml_name, 24, false);
	scaleObject(name_of_character,2,2);
	playAnim(name_of_character, 'idle')
	addLuaSprite(name_of_character,false)
end

animationsList = {}
holdTimers = {name_of_character = -1.0};
noteDatas = {name_of_character = 0};
local singAnims = {"singLEFT", "singDOWN", "singUP", "singRIGHT"}
l = {leftoffsets,downoffsets,upoffsets,rightoffsets,idleoffsets}
function nh(d,t)
	if t == name_of_notetype or t == name_of_notetype2 or t == name_of_notetype3 then
		playAnim(name_of_character, singAnims[d+1], true)
		holdTimers= 0;
		setProperty(name_of_character .. '.offset.x',l[d+1][1]);
		setProperty(name_of_character .. '.offset.y',l[d+1][2]);
	end
end
function onSongStart()
	holdTimers = -1
end
function onUpdate(elapsed)
	holdCap = stepCrochet * 0.0025;
	if holdTimers >= 0 then
		holdTimers = holdTimers + elapsed
		if holdTimers >= holdCap then
			holdTimers = -1
		end
	end
end
function goodNoteHit(i,d,t,l)
nh(d,t)
end
function opponentNoteHit(i,d,t,l)
nh(d,t)
end
center = false

function onEvent(n,v1)
if n == '' then
    if v1 == 'center' then
center = true
    elseif v1 == 'normal' then
center = false
        end
    end
end


function onBeatHit()
setObjectOrder('Jake',getObjectOrder('gfGroup')-1)
	if curBeat % 2 == 0 then
if not center then
	    if gfName == 'pibby' then
setProperty('Jake.x', (getProperty('gf.x')-715))
setProperty('Jake.y', (getProperty('gf.y')-130))
elseif gfName == 'pibby-angy' then
setProperty('Jake.x', (getProperty('gf.x')-715))
setProperty('Jake.y', (getProperty('gf.y')-50))
end
end
		if holdTimers < 0 then
			playAnim(name_of_character, 'idle')
			setProperty(name_of_character .. '.offset.x',l[5][1])
			setProperty(name_of_character .. '.offset.y',l[5][2])
		end
	end
end

function onCreatePost()
setProperty('Jake.x', (getProperty('gf.x')-715))
setProperty('Jake.y', (getProperty('gf.y')-130))
setObjectOrder('Jake',getObjectOrder('dadGroup')-1)
end

function onCountdownTick(counter)
	if counter % 1 == 0 then
		if holdTimers < 0 then
			playAnim(name_of_character, 'idle')
			setProperty(name_of_character .. '.offset.x',l[5][1])
			setProperty(name_of_character .. '.offset.y',l[5][2])
		end
	end
end