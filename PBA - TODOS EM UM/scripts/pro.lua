local lastHealth = 0
local deathLogged = false

function onUpdate(elapsed)
    local h = getProperty("health")
    if h ~= lastHealth then
        debugPrint("[HEALTH] Step: " .. curStep .. " | Health: " .. h .. " | Diff: " .. (h - lastHealth))
        lastHealth = h
    end
    if h <= 0 and not deathLogged then
        deathLogged = true
        debugPrint("[MORTE] Step: " .. curStep .. " | Beat: " .. curBeat)
    end
end

function onStepHit()
    debugPrint("[STEP] " .. curStep .. " | health: " .. getProperty("health"))
end

function onEvent(name, v1, v2)
    debugPrint("[EVENTO] " .. name .. " | v1: " .. v1 .. " | v2: " .. v2 .. " | step: " .. curStep)
end