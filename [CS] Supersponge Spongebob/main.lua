-- name: [CS] Supersponge Spongebob
-- description: Write blurb/description here!\n\n\\#ff7777\\This Pack requires Character Select\nto use as a Library!

--[[
    API Documentation for Character Select can be found below:
    https://github.com/Squishy6094/character-select-coop/wiki/API-Documentation

    Use this if you're curious on how anything here works >v<
	(This is an edited version of the Template File by Squishy)
]]

local TEXT_MOD_NAME = "Supersponge Spongebob"

-- Stops mod from loading if Character Select isn't on
if not _G.charSelectExists then
    djui_popup_create("\\#ffffdc\\\n"..TEXT_MOD_NAME.."\nRequires the Character Select Mod\nto use as a Library!\n\nPlease turn on the Character Select Mod\nand Restart the Room!", 6)
    return 0
end

local E_MODEL_CUSTOM_MODEL = smlua_model_util_get_id("sbob_geo") -- Located in "actors"

local TEX_CUSTOM_LIFE_ICON = get_texture_info("supespongelife_icon") -- Located in "textures"

-- All Located in "sound" Name them whatever you want. Remember to include the .ogg extension
local VOICETABLE_SSSPONGEBOB = {
    --[CHAR_SOUND_OKEY_DOKEY] = 'startlevel.ogg', -- Starting game
	[CHAR_SOUND_LETS_A_GO] = 'sbletsago.ogg', -- Starting level
	[CHAR_SOUND_PUNCH_YAH] = 'punch1.ogg', -- Punch 1
	[CHAR_SOUND_PUNCH_WAH] = 'punch2.ogg', -- Punch 2
	[CHAR_SOUND_PUNCH_HOO] = 'sbpunch3.ogg', -- Punch 3
	[CHAR_SOUND_YAH_WAH_HOO] = {'jump1.ogg', 'jump1.ogg', 'jump1.ogg'}, -- First/Second jump sounds
	[CHAR_SOUND_HOOHOO] = 'doublejump.ogg', -- Third jump sound
	[CHAR_SOUND_YAHOO_WAHA_YIPPEE] = {'tripplejump1.ogg', 'sbtripplejump2.ogg'}, -- Triple jump sounds
	[CHAR_SOUND_UH] = 'bonk.ogg', -- Wall bonk
	[CHAR_SOUND_UH2] = 'fallland.ogg', -- Landing after long jump
	[CHAR_SOUND_UH2_2] = 'fallland.ogg', -- Same sound as UH2; jumping onto ledge
	[CHAR_SOUND_HAHA] = 'tripplejumpland.ogg', -- Landing triple jump
	[CHAR_SOUND_YAHOO] = 'tripplejump1.ogg', -- Long jump
	[CHAR_SOUND_DOH] = 'bonk.ogg', -- Long jump wall bonk
	[CHAR_SOUND_WHOA] = 'ledgegrab.ogg', -- Grabbing ledge
	[CHAR_SOUND_EEUH] = 'ledgeclimb.ogg', -- Climbing over ledge
	[CHAR_SOUND_WAAAOOOW] = 'falling.ogg', -- Falling a long distance
	[CHAR_SOUND_TWIRL_BOUNCE] = 'jump1.ogg', -- Bouncing off of a flower spring
	[CHAR_SOUND_GROUND_POUND_WAH] = 'Silent.ogg', 
	[CHAR_SOUND_HRMM] = 'ledgeclimb.ogg', -- Lifting something
	[CHAR_SOUND_HERE_WE_GO] = 'getstar.ogg', -- Star get
	[CHAR_SOUND_SO_LONGA_BOWSER] = 'solonggaybowser.ogg', -- Throwing Bowser
--DAMAGE
	[CHAR_SOUND_ATTACKED] = 'damaged.ogg', -- Damaged
	[CHAR_SOUND_PANTING] = 'spongelowhealth.ogg', -- Low health
	[CHAR_SOUND_ON_FIRE] = 'burned.ogg', -- Burned
--SLEEP SOUNDS
	[CHAR_SOUND_IMA_TIRED] = 'imatired.ogg', -- Mario feeling tired
	[CHAR_SOUND_YAWNING] = 'yawning.ogg', -- Mario yawning before he sits down to sleep
	[CHAR_SOUND_SNORING1] = 'sleepinhale.ogg', -- Snore Inhale
	[CHAR_SOUND_SNORING2] = 'sleepexhale.ogg', -- Exhale
	[CHAR_SOUND_SNORING3] = 'Silent.ogg', -- Sleep talking / mumbling
--COUGHING (USED IN THE GAS MAZE)
	[CHAR_SOUND_COUGHING1] = 'cough.ogg', -- Cough take 1
	[CHAR_SOUND_COUGHING2] = 'sbcough2.ogg', -- Cough take 2
	[CHAR_SOUND_COUGHING3] = 'sbcough3.ogg', -- Cough take 3
--DEATH
	[CHAR_SOUND_DYING] = 'dying.ogg', -- Dying from damage
	[CHAR_SOUND_DROWNING] = 'dying.ogg', -- Running out of air underwater
	[CHAR_SOUND_MAMA_MIA] = 'newmamamia.ogg' -- Booted out of level
}

-- All Located in "actors"
local CAPTABLE_CHAR = {
    normal = smlua_model_util_get_id("sbobnormal_geo"),
    wing = smlua_model_util_get_id("sbobwing_geo"),
    metal = smlua_model_util_get_id("sbobmetal_geo"),
}

local PALETTE_CHAR = {
    [PANTS]  = "984d00",
    [SHIRT]  = "898e00",
    [GLOVES] = "ffffff",
    [SHOES]  = "ffffff",
    [HAIR]   = "a1c200",
    [SKIN]   = "ffff3d",
    [CAP]    = "85ab01",
	[EMBLEM] = "ffffff"
}

local HM_SSSPONGEBOB= {
    label = {
        left = get_texture_info("spongehealthleft"),
        right = get_texture_info("spongehealthright"),
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
    CT_CHARNAME2 = _G.charSelect.character_add("Supersponge Spongebob", {"DESC", "Who live in a pineaple under the sea?"}, "Codyfox655", {r = 255, g = 200, b = 200}, E_MODEL_CUSTOM_MODEL, CT_CHARNAME2, TEX_CUSTOM_LIFE_ICON)
    _G.charSelect.character_add_caps(E_MODEL_CUSTOM_MODEL, CAPTABLE_CHAR)
    _G.charSelect.character_add_voice(E_MODEL_CUSTOM_MODEL, VOICETABLE_SSSPONGEBOB)
    _G.charSelect.character_add_celebration_star(E_MODEL_CUSTOM_MODEL, E_MODEL_CUSTOM_STAR, TEX_CUSTOM_STAR_ICON)
    _G.charSelect.character_add_palette_preset(E_MODEL_CUSTOM_MODEL, PALETTE_CHAR)
    _G.charSelect.character_add_health_meter(CT_SSSPONGEBOB, HM_SSSPONGEBOB)

    CSloaded = true
end

local function on_character_sound(m, sound)
    if not CSloaded then return end
    if _G.charSelect.character_get_voice(m) == VOICETABLE_SSSPONGEBOB then return _G.charSelect.voice.sound(m, sound) end
end

local function on_character_snore(m)
    if not CSloaded then return end
    if _G.charSelect.character_get_voice(m) == VOICETABLE_SSSPONGEBOB then return _G.charSelect.voice.snore(m) end
end

hook_event(HOOK_ON_MODS_LOADED, on_character_select_load)
hook_event(HOOK_CHARACTER_SOUND, on_character_sound)
hook_event(HOOK_MARIO_UPDATE, on_character_snore)