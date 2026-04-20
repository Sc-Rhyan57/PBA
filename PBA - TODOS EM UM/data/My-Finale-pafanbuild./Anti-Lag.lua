function onStepHit()
-- Only Happens on the first effect of asteroids

-- Basically how it works is when an Image
-- Alpha is set to 0, Psych Engine Disables it
-- and removes it until you set it to 1 but still affects ram
if curStep == 2 then
setProperty('lightning thing.alpha', 1)
setProperty('lightning thing2.alpha', 1)
setProperty('BG1.alpha', 1)
setProperty('BG2.alpha', 1)
setProperty('BG3.alpha', 1)
setProperty('therock1.alpha', 1)
setProperty('therock2.alpha', 1)
end
end