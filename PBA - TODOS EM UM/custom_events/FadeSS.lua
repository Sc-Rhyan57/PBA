on = 1
off = 0.15

non = 0.3

function onEvent(n,v1,v2)
if n == 'FadeSS' then

if v2 == '' then
v2 = non
end

if v1 == 'BFxF' or v1 == 'FxBF' then
doTweenAlpha(RandomTween(),'gf',off,v2)
doTweenAlpha(RandomTween(),'Jake',off,v2)
doTweenAlpha(RandomTween(),'boyfriend',on,v2)
doTweenAlpha(RandomTween(),'dad',on,v2)
elseif v1 == 'PxF' or v1 == 'FxP' then
doTweenAlpha(RandomTween(),'boyfriend',off,v2)
doTweenAlpha(RandomTween(),'Jake',off,v2)
doTweenAlpha(RandomTween(),'gf',on,v2)
doTweenAlpha(RandomTween(),'dad',on,v2)
elseif v1 == 'BFxJ' or v1 == 'JxBF' then
doTweenAlpha(RandomTween(),'boyfriend',on,v2)
doTweenAlpha(RandomTween(),'Jake',on,v2)
doTweenAlpha(RandomTween(),'gf',off,v2)
doTweenAlpha(RandomTween(),'dad',off,v2)
elseif v1 == 'PxJ' or v1 == 'JxP' then
doTweenAlpha(RandomTween(),'boyfriend',off,v2)
doTweenAlpha(RandomTween(),'Jake',on,v2)
doTweenAlpha(RandomTween(),'gf',on,v2)
doTweenAlpha(RandomTween(),'dad',off,v2)
elseif v1 == 'PxBF' or v1 == 'BFxP' then
doTweenAlpha(RandomTween(),'boyfriend',on,v2)
doTweenAlpha(RandomTween(),'Jake',off,v2)
doTweenAlpha(RandomTween(),'gf',on,v2)
doTweenAlpha(RandomTween(),'dad',off,v2)

elseif v1 == 'FxJ' or v1 == 'JxF' then
doTweenAlpha(RandomTween(),'boyfriend',off,v2)
doTweenAlpha(RandomTween(),'Jake',on,v2)
doTweenAlpha(RandomTween(),'gf',off,v2)
doTweenAlpha(RandomTween(),'dad',on,v2)

elseif v1 == 'PxBFxF' or v1 == 'FxBFxP' or v1 == 'BFxFxP' or v1 == 'BFxPxF' or v1 == 'PxFxBF' or v1 == 'FxPxBF' then
doTweenAlpha(RandomTween(),'boyfriend',on,v2)
doTweenAlpha(RandomTween(),'Jake',off,v2)
doTweenAlpha(RandomTween(),'gf',on,v2)
doTweenAlpha(RandomTween(),'dad',on,v2)

elseif v1 == 'JxBFxF' or v1 == 'FxBFxJ' or v1 == 'BFxFxJ' or v1 == 'BFxJxF' or v1 == 'JxFxBF' or v1 == 'FxJxBF' then
doTweenAlpha(RandomTween(),'boyfriend',on,v2)
doTweenAlpha(RandomTween(),'Jake',on,v2)
doTweenAlpha(RandomTween(),'gf',off,v2)
doTweenAlpha(RandomTween(),'dad',on,v2)

elseif v1 == 'JxPxF' or v1 == 'FxPxJ' or v1 == 'PxFxJ' or v1 == 'PxJxF' or v1 == 'JxFxP' or v1 == 'FxJxP' then
doTweenAlpha(RandomTween(),'boyfriend',off,v2)
doTweenAlpha(RandomTween(),'Jake',on,v2)
doTweenAlpha(RandomTween(),'gf',on,v2)
doTweenAlpha(RandomTween(),'dad',on,v2)

elseif v1 == 'PxBFxJ' or v1 == 'JxBFxP' or v1 == 'BFxJxP' or v1 == 'BFxPxJ' or v1 == 'PxJxBF' or v1 == 'JxPxBF' then
doTweenAlpha(RandomTween(),'boyfriend',on,v2)
doTweenAlpha(RandomTween(),'Jake',on,v2)
doTweenAlpha(RandomTween(),'gf',on,v2)
doTweenAlpha(RandomTween(),'dad',off,v2)

elseif v1 == 'BF' then
doTweenAlpha(RandomTween(),'boyfriend',on,v2)
doTweenAlpha(RandomTween(),'Jake',off,v2)
doTweenAlpha(RandomTween(),'gf',off,v2)
doTweenAlpha(RandomTween(),'dad',off,v2)

elseif v1 == 'P' then
doTweenAlpha(RandomTween(),'boyfriend',off,v2)
doTweenAlpha(RandomTween(),'Jake',off,v2)
doTweenAlpha(RandomTween(),'gf',on,v2)
doTweenAlpha(RandomTween(),'dad',off,v2)

elseif v1 == 'J' then
doTweenAlpha(RandomTween(),'boyfriend',off,v2)
doTweenAlpha(RandomTween(),'Jake',on,v2)
doTweenAlpha(RandomTween(),'gf',off,v2)
doTweenAlpha(RandomTween(),'dad',off,v2)

elseif v1 == 'F' then
doTweenAlpha(RandomTween(),'boyfriend',off,v2)
doTweenAlpha(RandomTween(),'Jake',off,v2)
doTweenAlpha(RandomTween(),'gf',off,v2)
doTweenAlpha(RandomTween(),'dad',on,v2)

elseif v1 == 'Everyone' then
doTweenAlpha(RandomTween(),'boyfriend',on,v2)
doTweenAlpha(RandomTween(),'Jake',on,v2)
doTweenAlpha(RandomTween(),'gf',on,v2)
doTweenAlpha(RandomTween(),'dad',on,v2)

elseif v1 == 'non' then
doTweenAlpha(RandomTween(),'boyfriend',0,v2)
doTweenAlpha(RandomTween(),'Jake',0,v2)
doTweenAlpha(RandomTween(),'gf',0,v2)
doTweenAlpha(RandomTween(),'dad',0,v2)
end




end
end


RandomTween = function ()
	return tostring(math.random())
end