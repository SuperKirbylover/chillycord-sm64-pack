-- name: [CS] Carl Wheezer
-- description: Write blurb/description here!\n\n\\#ff7777\\This Pack requires Character Select\nto use as a Library!

--[[
    API Documentation for Character Select can be found below:
    https://github.com/Squishy6094/character-select-coop/wiki/API-Documentation

    Use this if you're curious on how anything here works >v<
	(This is an edited version of the Template File by Squishy)
]]

local TEXT_MOD_NAME = "Carl Wheezer"

-- Stops mod from loading if Character Select isn't on
if not _G.charSelectExists then
    djui_popup_create("\\#ffffdc\\\n"..TEXT_MOD_NAME.."\nRequires the Character Select Mod\nto use as a Library!\n\nPlease turn on the Character Select Mod\nand Restart the Room!", 6)
    return 0
end

local E_MODEL_CUSTOM_MODEL = smlua_model_util_get_id("crustycarl_geo") -- Located in "actors"

local TEX_CUSTOM_LIFE_ICON = get_texture_info("crustycarl_icon") -- Located in "textures"

-- All Located in "sound" Name them whatever you want. Remember to include the .ogg extension
local VOICETABLE_CRUSTYCARL = {
    --[CHAR_SOUND_OKEY_DOKEY] = 'StartLevel.ogg', -- Starting game
	[CHAR_SOUND_LETS_A_GO] = 'CW_HereWeGo.ogg', -- Starting level
	[CHAR_SOUND_PUNCH_YAH] = 'CW_Hup.ogg', -- Punch 1
	[CHAR_SOUND_PUNCH_WAH] = 'CW_Hup.ogg', -- Punch 2
	[CHAR_SOUND_PUNCH_HOO] = 'CW_Huh.ogg', -- Punch 3
	[CHAR_SOUND_YAH_WAH_HOO] = {'CW_Jump1.ogg', 'CW_Jump2.ogg', 'CW_Jump3.ogg'}, -- First/Second jump sounds
	[CHAR_SOUND_HOOHOO] = 'CW_Whoa.ogg', -- Third jump sound
	[CHAR_SOUND_YAHOO_WAHA_YIPPEE] = {'CW_CheckThisOut.ogg', 'CW_CheckThisOut.ogg'}, -- Triple jump sounds
	[CHAR_SOUND_UH] = 'CW_Uhh.ogg', -- Wall bonk
	[CHAR_SOUND_UH2] = 'CW_Silent.ogg', -- Landing after long jump
	[CHAR_SOUND_UH2_2] = 'CW_Silent.ogg', -- Same sound as UH2; jumping onto ledge
	[CHAR_SOUND_HAHA] = 'CW_Silent.ogg', -- Landing triple jump
	[CHAR_SOUND_YAHOO] = 'CW_Betcha.ogg', -- Long jump
	[CHAR_SOUND_DOH] = 'CW_Uhh.ogg', -- Long jump wall bonk
	[CHAR_SOUND_WHOA] = 'CW_IsItSafe.ogg', -- Grabbing ledge
	[CHAR_SOUND_EEUH] = 'CW_Silent.ogg', -- Climbing over ledge
	[CHAR_SOUND_WAAAOOOW] = 'CW_CantStop.ogg', -- Falling a long distance
	[CHAR_SOUND_TWIRL_BOUNCE] = 'Jump3.ogg', -- Bouncing off of a flower spring
	[CHAR_SOUND_GROUND_POUND_WAH] = 'CW_Silent.ogg', 
	[CHAR_SOUND_HRMM] = 'CW_OhHoHo.ogg', -- Lifting something
	[CHAR_SOUND_HERE_WE_GO] = 'CW_Better.ogg', -- Star get
	[CHAR_SOUND_SO_LONGA_BOWSER] = 'CW_Alien.ogg', -- Throwing Bowser
--DAMAGE
	[CHAR_SOUND_ATTACKED] = 'CW_Ough.ogg', -- Damaged
	[CHAR_SOUND_PANTING] = 'CW_Silent.ogg', -- Low health
	[CHAR_SOUND_ON_FIRE] = 'CW_Yow.ogg', -- Burned
--SLEEP SOUNDS
	[CHAR_SOUND_IMA_TIRED] = 'CW_Silent.ogg', -- Mario feeling tired
	[CHAR_SOUND_YAWNING] = 'CW_Silent.ogg', -- Mario yawning before he sits down to sleep
	[CHAR_SOUND_SNORING1] = 'CW_Inhaler.ogg', -- Snore Inhale
	[CHAR_SOUND_SNORING2] = 'CW_Silent.ogg', -- Exhale
	[CHAR_SOUND_SNORING3] = 'CW_Silent.ogg', -- Sleep talking / mumbling
--COUGHING (USED IN THE GAS MAZE)
	[CHAR_SOUND_COUGHING1] = 'CW_Wheeze.ogg', -- Cough take 1
	[CHAR_SOUND_COUGHING2] = 'CW_Silent.ogg', -- Cough take 2
	[CHAR_SOUND_COUGHING3] = 'CW_Silent.ogg', -- Cough take 3
--DEATH
	[CHAR_SOUND_DYING] = 'CW_Doomed.ogg', -- Dying from damage
	[CHAR_SOUND_DROWNING] = 'CW_Inhaler.ogg', -- Running out of air underwater
	[CHAR_SOUND_MAMA_MIA] = 'CW_AwDarn.ogg' -- Booted out of level
}

-- All Located in "actors"
local CAPTABLE_CHAR = {
    normal = smlua_model_util_get_id("crustycarl_geo"),
    wing = smlua_model_util_get_id("crustycarl_geo"),
    metal = smlua_model_util_get_id("crustycarl_geo"),
}

local PALETTE_CHAR = {
    [PANTS]  = "ffffff",
    [SHIRT]  = "ffffff",
    [GLOVES] = "ffffff",
    [SHOES]  = "ffffff",
    [HAIR]   = "7B2C18",
    [SKIN]   = "E7AE8C",
    [CAP]    = "ffffff",
	[EMBLEM] = "ffffff"
}

local HM_CRUSTYCARL= {
    label = {
        left = get_texture_info("HealthLeft"),
        right = get_texture_info("HealthRight"),
    },
    pie = {
        [1] = get_texture_info("Pie1"),
        [2] = get_texture_info("Pie2"),
        [3] = get_texture_info("Pie3"),
        [4] = get_texture_info("Pie4"),
        [5] = get_texture_info("Pie5"),
        [6] = get_texture_info("Pie6"),
        [7] = get_texture_info("Pie7"),
        [8] = get_texture_info("Pie8"),
    }
}

local CSloaded = false
local function on_character_select_load()
    CT_CRUSTYCARL = _G.charSelect.character_add("Carl Wheezer", {"Local Jimmy's Mom Afficionado and Consumer of Unfinished Croissants", "Lives icon by daneeklu on OpenGameArt"}, "CornObjects", {r = 255, g = 200, b = 200}, E_MODEL_CUSTOM_MODEL, CT_CRUSTYCARL, TEX_CUSTOM_LIFE_ICON)
    _G.charSelect.character_add_caps(E_MODEL_CUSTOM_MODEL, CAPTABLE_CHAR)
    _G.charSelect.character_add_voice(E_MODEL_CUSTOM_MODEL, VOICETABLE_CRUSTYCARL)
    _G.charSelect.character_add_celebration_star(E_MODEL_CUSTOM_MODEL, E_MODEL_CUSTOM_STAR, TEX_CUSTOM_STAR_ICON)
    _G.charSelect.character_add_palette_preset(E_MODEL_CUSTOM_MODEL, PALETTE_CHAR)
    _G.charSelect.character_add_health_meter(CT_CRUSTYCARL, HM_CRUSTYCARL)

    CSloaded = true
end

local function on_character_sound(m, sound)
    if not CSloaded then return end
    if _G.charSelect.character_get_voice(m) == VOICETABLE_CRUSTYCARL then return _G.charSelect.voice.sound(m, sound) end
end

local function on_character_snore(m)
    if not CSloaded then return end
    if _G.charSelect.character_get_voice(m) == VOICETABLE_CRUSTYCARL then return _G.charSelect.voice.snore(m) end
end

hook_event(HOOK_ON_MODS_LOADED, on_character_select_load)
hook_event(HOOK_CHARACTER_SOUND, on_character_sound)
hook_event(HOOK_MARIO_UPDATE, on_character_snore)