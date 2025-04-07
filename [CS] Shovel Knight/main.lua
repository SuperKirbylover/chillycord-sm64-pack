-- name: [CS] Shovel Knight
-- description: For Shovelry!\n\n\\#ff7777\\This Pack requires Character Select\nto use as a Library!

--[[
    API Documentation for Character Select can be found below:
    https://github.com/Squishy6094/character-select-coop/wiki/API-Documentation

    Use this if you're curious on how anything here works >v<
]]

local TEXT_MOD_NAME = "Shovel Knight"

-- Stops mod from loading if Character Select isn't on
if not _G.charSelectExists then
    djui_popup_create("\\#ffffdc\\\n"..TEXT_MOD_NAME.."\nRequires the Character Select Mod\nto use as a Library!\n\nPlease turn on the Character Select Mod\nand Restart the Room!", 6)
    return 0
end

local E_MODEL_CUSTOM_MODEL = smlua_model_util_get_id("shovel_geo") -- Located in "actors"

local TEX_CUSTOM_LIFE_ICON = get_texture_info("shovel_icon") -- Located in "textures"

-- All Located in "sound"
local VOICETABLE_SHOVEL = {
    --[CHAR_SOUND_OKEY_DOKEY] = 'StartLevel.ogg', -- Starting game
	[CHAR_SOUND_LETS_A_GO] = 'StartLevel.ogg', -- Starting level
	[CHAR_SOUND_PUNCH_YAH] = 'Punch1.ogg', -- Punch 1
	[CHAR_SOUND_PUNCH_WAH] = 'Punch2.ogg', -- Punch 2
	[CHAR_SOUND_PUNCH_HOO] = 'Punch3.ogg', -- Punch 3
	[CHAR_SOUND_YAH_WAH_HOO] = {'Jump1.ogg', 'Jump2.ogg', 'Jump3.ogg'}, -- First/Second jump sounds
	[CHAR_SOUND_HOOHOO] = 'DoubleJump.ogg', -- Third jump sound
	[CHAR_SOUND_YAHOO_WAHA_YIPPEE] = {'TripleJump1.ogg', 'TripleJump2.ogg'}, -- Triple jump sounds
	[CHAR_SOUND_UH] = 'Bonk.ogg', -- Wall bonk
	[CHAR_SOUND_UH2] = 'Silent.ogg', -- Landing after long jump
	[CHAR_SOUND_UH2_2] = 'Silent.ogg', -- Same sound as UH2; jumping onto ledge
	[CHAR_SOUND_HAHA] = 'GetStar.ogg', -- Landing triple jump
	[CHAR_SOUND_YAHOO] = 'Jump2.ogg', -- Long jump
	[CHAR_SOUND_DOH] = 'Bonk.ogg', -- Long jump wall bonk
	[CHAR_SOUND_WHOA] = 'Punch1.ogg', -- Grabbing ledge
	[CHAR_SOUND_EEUH] = 'Silent.ogg', -- Climbing over ledge
	[CHAR_SOUND_WAAAOOOW] = 'Falling.ogg', -- Falling a long distance
	[CHAR_SOUND_TWIRL_BOUNCE] = 'TripleJump2.ogg', -- Bouncing off of a flower spring
	[CHAR_SOUND_GROUND_POUND_WAH] = 'Silent.ogg', 
	[CHAR_SOUND_HRMM] = 'Silent.ogg', -- Lifting something
	[CHAR_SOUND_HERE_WE_GO] = 'GetStar.ogg', -- Star get
	[CHAR_SOUND_SO_LONGA_BOWSER] = 'TripleJump1.ogg', -- Throwing Bowser
--DAMAGE
	[CHAR_SOUND_ATTACKED] = 'Damage.ogg', -- Damaged
	[CHAR_SOUND_PANTING] = 'Silent.ogg', -- Low health
	[CHAR_SOUND_ON_FIRE] = 'Falling.ogg', -- Burned
--SLEEP SOUNDS
	[CHAR_SOUND_IMA_TIRED] = 'Silent.ogg', -- Mario feeling tired
	[CHAR_SOUND_YAWNING] = 'Silent.ogg', -- Mario yawning before he sits down to sleep
	[CHAR_SOUND_SNORING1] = 'Silent.ogg', -- Snore Inhale
	[CHAR_SOUND_SNORING2] = 'Silent.ogg', -- Exhale
	[CHAR_SOUND_SNORING3] = 'Silent.ogg', -- Sleep talking / mumbling
--COUGHING (USED IN THE GAS MAZE)
	[CHAR_SOUND_COUGHING1] = 'Silent.ogg', -- Cough take 1
	[CHAR_SOUND_COUGHING2] = 'Silent.ogg', -- Cough take 2
	[CHAR_SOUND_COUGHING3] = 'Silent.ogg', -- Cough take 3
--DEATH
	[CHAR_SOUND_DYING] = 'Dying.ogg', -- Dying from damage
	[CHAR_SOUND_DROWNING] = 'Dying.ogg', -- Running out of air underwater
	[CHAR_SOUND_MAMA_MIA] = 'Bonk.ogg' -- Booted out of level
}

-- All Located in "actors"
local CAPTABLE_CHAR = {
    normal = smlua_model_util_get_id("shovel_vanish_geo"),
    wing = smlua_model_util_get_id("shovel_wing_geo"),
    metal = smlua_model_util_get_id("shovel_metal_geo"),
}

local PALETTE_CHAR = {
    [PANTS]  = "2A95D7",
    [SHIRT]  = "2A95D7",
    [GLOVES] = "0A4788",
    [SHOES]  = "ffffff",
    [HAIR]   = "ffffff",
    [SKIN]   = "ffffff",
    [CAP]    = "2A95D7",
}

--[[
-- All Located in "textures"
local healthMeter = {
    label = {
        left = get_texture_info("template-hp-back-left"),
        right = get_texture_info("template-hp-back-right"),
    },
    pie = {
        [1] = get_texture_info("template-hp-pie-1"),
        [2] = get_texture_info("template-hp-pie-2"),
        [3] = get_texture_info("template-hp-pie-3"),
        [4] = get_texture_info("template-hp-pie-4"),
        [5] = get_texture_info("template-hp-pie-5"),
        [6] = get_texture_info("template-hp-pie-6"),
        [7] = get_texture_info("template-hp-pie-7"),
        [8] = get_texture_info("template-hp-pie-8"),
    }
}
]]

--[[
    Note: If there are some functionalities you don't care
    to add such as palettes, you can freely remove the function
    for it, the only function you require is character_add
]]

local CSloaded = false
local function on_character_select_load()
    CT_CHAR = _G.charSelect.character_add("Shovel Knight", {"For Shovelry!", "Custom Model by MrPr1993"}, "Garrulous64", {r = 255, g = 200, b = 200}, E_MODEL_CUSTOM_MODEL, CT_MARIO, TEX_CUSTOM_LIFE_ICON)
    _G.charSelect.character_add_caps(E_MODEL_CUSTOM_MODEL, CAPTABLE_CHAR)
    _G.charSelect.character_add_voice(E_MODEL_CUSTOM_MODEL, VOICETABLE_SHOVEL)
    _G.charSelect.character_add_celebration_star(E_MODEL_CUSTOM_MODEL, E_MODEL_CUSTOM_STAR, TEX_CUSTOM_STAR_ICON)
    _G.charSelect.character_add_palette_preset(E_MODEL_CUSTOM_MODEL, PALETTE_CHAR)
    --_G.charSelect.character_add_health_meter(CT_CHAR, healthMeter)

    CSloaded = true
end

local function on_character_sound(m, sound)
    if not CSloaded then return end
    if _G.charSelect.character_get_voice(m) == VOICETABLE_SHOVEL then return _G.charSelect.voice.sound(m, sound) end
end

local function on_character_snore(m)
    if not CSloaded then return end
    if _G.charSelect.character_get_voice(m) == VOICETABLE_SHOVEL then return _G.charSelect.voice.snore(m) end
end

hook_event(HOOK_ON_MODS_LOADED, on_character_select_load)
hook_event(HOOK_CHARACTER_SOUND, on_character_sound)
hook_event(HOOK_MARIO_UPDATE, on_character_snore)