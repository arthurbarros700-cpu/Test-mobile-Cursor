--[[ ═══════════════════════════════════════════════════════════════════════════
     ADV Mecânica – Client Minigame
     ox_lib skillcheck wrapper with configurable difficulty per part category,
     plus a fallback circle-press pattern for servers without skillcheck.
    ═══════════════════════════════════════════════════════════════════════════ ]]

local MinigameResult = {}

-- ─── Skillcheck Difficulty Map ────────────────────────────────────────────────
local DifficultyPerGroup = {
    engine       = { 'medium', 'hard', 'medium' },
    transmission = { 'hard',   'hard', 'hard'   },
    suspension   = { 'easy',   'medium'          },
    brakes       = { 'medium', 'medium'          },
    wheels       = { 'easy'                      },
    body         = { 'medium'                    },
    fluids       = { 'easy'                      },
    exhaust      = { 'easy',   'medium'          },
    lights       = { 'easy'                      },
}

local function GetGroup(partKey)
    for _, grp in ipairs(Config.PartGroups) do
        for _, p in ipairs(grp.parts) do
            if p == partKey then return grp.id end
        end
    end
    return 'engine'
end

-- ─── Run Skillcheck ──────────────────────────────────────────────────────────
local function RunSkillcheck(partKey)
    if not Config.Minigame.enabled then return true end
    if Config.Minigame.type == 'none' then return true end

    local group  = GetGroup(partKey)
    local diffs  = DifficultyPerGroup[group] or Config.Minigame.difficulty

    local success = lib.skillCheck(diffs, { 'w', 'a', 's', 'd', 'space' })
    return success
end

exports('RunMinigame', function(partKey)
    return RunSkillcheck(partKey)
end)

-- ─── Pattern Minigame (fallback) ─────────────────────────────────────────────
-- Displays 3–5 sequential button prompts on screen; player must press them in order.
local ButtonSequence = { 'E', 'R', 'F', 'G', 'T' }

local function RunPatternGame(steps)
    steps = steps or 3
    local sequence = {}
    for i = 1, steps do
        sequence[i] = ButtonSequence[math.random(1, #ButtonSequence)]
    end

    -- Show sequence to player via NUI
    SendNUIMessage({ action = 'showPattern', sequence = sequence })
    Wait(2000 + steps * 600)  -- time to read
    SendNUIMessage({ action = 'hidePattern' })

    -- Listen for inputs
    local answered = {}
    local start    = GetGameTimer()
    local timeout  = 5000 + steps * 1500

    while #answered < #sequence do
        Wait(0)
        if GetGameTimer() - start > timeout then
            SendNUIMessage({ action = 'patternFail' })
            return false
        end
        local key = nil
        if IsControlJustReleased(0, 38)  then key = 'E' end  -- E
        if IsControlJustReleased(0, 45)  then key = 'R' end  -- R (reloading)
        if IsControlJustReleased(0, 23)  then key = 'F' end  -- F (enter veh)
        if IsControlJustReleased(0, 244) then key = 'G' end  -- G (cover)
        if IsControlJustReleased(0, 22)  then key = 'T' end  -- Space

        if key then
            local expected = sequence[#answered + 1]
            if key == expected then
                answered[#answered+1] = key
                SendNUIMessage({ action = 'patternStep', index = #answered })
            else
                SendNUIMessage({ action = 'patternFail' })
                return false
            end
        end
    end

    SendNUIMessage({ action = 'patternSuccess' })
    return true
end

exports('RunPatternMinigame', function(steps)
    return RunPatternGame(steps)
end)
