-- name: [CS] King Harkinian
-- description: The King of Hyrule is finally in Super Mario 64!\n\n\\#ff7777\\This Pack requires Character Select\nto use as a Library!

--[[
    API Documentation for Character Select can be found below:
    https://github.com/Squishy6094/character-select-coop/wiki/API-Documentation

    Use this if you're curious on how anything here works >v<
	(This is an edited version of the Template File by Squishy)
]]

local TEXT_MOD_NAME = "King Harkinian"

-- Stops mod from loading if Character Select isn't on
if not _G.charSelectExists then
    djui_popup_create("\\#7F3300\\\n"..TEXT_MOD_NAME.."\nRequires the Character Select Mod\nto use as a Library!\n\nPlease turn on the Character Select Mod\nand Restart the Room!", 6)
    return 0
end

local E_MODEL_CUSTOM_MODEL = smlua_model_util_get_id("king_geo") -- Located in "actors"

local TEX_CUSTOM_LIFE_ICON = get_texture_info("king-icon") -- Located in "textures"

-- All Located in "sound" Name them whatever you want. Remember to include the .ogg extension
local VOICETABLE_KING = {
    --[CHAR_SOUND_OKEY_DOKEY] = 'StartLevel.ogg', -- Starting game
	[CHAR_SOUND_LETS_A_GO] = 'iwonderwhatsfordinner.ogg', -- Starting level
	[CHAR_SOUND_PUNCH_YAH] = 'boi.ogg', -- Punch 1
	[CHAR_SOUND_PUNCH_WAH] = 'takethis.ogg', -- Punch 2
	[CHAR_SOUND_PUNCH_HOO] = 'enough.ogg', -- Punch 3
	[CHAR_SOUND_YAH_WAH_HOO] = {'mahboi.ogg', 'scrub.ogg', 'dinner.ogg'}, -- First/Second jump sounds
	[CHAR_SOUND_HOOHOO] = 'oah.ogg', -- Third jump sound
	[CHAR_SOUND_YAHOO_WAHA_YIPPEE] = 'laugh.ogg', -- Triple jump sounds
	[CHAR_SOUND_UH] = 'ay.ogg', -- Wall bonk
	[CHAR_SOUND_UH2] = 'hmm.ogg', -- Landing after long jump
	[CHAR_SOUND_UH2_2] = 'hmm.ogg', -- Same sound as UH2; jumping onto ledge
	[CHAR_SOUND_HAHA] = 'iwonderwhatsfordinner.ogg', -- Landing triple jump
	[CHAR_SOUND_YAHOO] = 'laugh.ogg', -- Long jump
	[CHAR_SOUND_DOH] = 'ay.ogg', -- Long jump wall bonk
	[CHAR_SOUND_WHOA] = 'oah.ogg', -- Grabbing ledge
	[CHAR_SOUND_EEUH] = 'mmh.ogg', -- Climbing over ledge
	[CHAR_SOUND_WAAAOOOW] = 'falling.ogg', -- Falling a long distance
	[CHAR_SOUND_TWIRL_BOUNCE] = 'dinner.ogg', -- Bouncing off of a flower spring
	[CHAR_SOUND_GROUND_POUND_WAH] = 'mercy.ogg', 
	[CHAR_SOUND_HRMM] = 'mmh.ogg', -- Lifting something
	[CHAR_SOUND_HERE_WE_GO] = 'yousavedme.ogg', -- Star get
	[CHAR_SOUND_SO_LONGA_BOWSER] = 'takehimaway.ogg', -- Throwing Bowser
--DAMAGE
	[CHAR_SOUND_ATTACKED] = {'ship.ogg', 'oah.ogg', 'ay.ogg'}, -- Damaged
	[CHAR_SOUND_PANTING] = 'lowhealth.ogg', -- Low health
	[CHAR_SOUND_ON_FIRE] = 'burning.ogg', -- Burned
--SLEEP SOUNDS
	[CHAR_SOUND_IMA_TIRED] = 'tired.ogg', -- Mario feeling tired
	[CHAR_SOUND_YAWNING] = 'mmh.ogg', -- Mario yawning before he sits down to sleep
	[CHAR_SOUND_SNORING1] = 'snore.ogg', -- Snore Inhale
	[CHAR_SOUND_SNORING2] = 'snore2.ogg', -- Exhale
	[CHAR_SOUND_SNORING3] = 'iwonderwhatsfordinner.ogg', -- Sleep talking / mumbling
--COUGHING (USED IN THE GAS MAZE)
	[CHAR_SOUND_COUGHING1] = 'cough.ogg', -- Cough take 1
	[CHAR_SOUND_COUGHING2] = 'cough.ogg', -- Cough take 2
	[CHAR_SOUND_COUGHING3] = 'cough.ogg', -- Cough take 3
--DEATH
	[CHAR_SOUND_DYING] = 'dead.ogg', -- Dying from damage
	[CHAR_SOUND_DROWNING] = 'drown.ogg', -- Running out of air underwater
	[CHAR_SOUND_MAMA_MIA] = 'pieceofshit.ogg' -- Booted out of level
}

local PALETTE_CHAR = {
    [PANTS]  = "ffffff",
    [SHIRT]  = "ffffff",
    [GLOVES] = "ffffff",
    [SHOES]  = "ffffff",
    [HAIR]   = "ffffff",
    [SKIN]   = "ffffff",
    [CAP]    = "FF0000",
	[EMBLEM] = "FF0000"
}

local CSloaded = false
local function on_character_select_load()
    CT_KING = _G.charSelect.character_add("King Harkinian", {"I wonder what's for dinner...?"}, "trainyoy", {r = 220, g = 130, b = 17}, E_MODEL_CUSTOM_MODEL, CT_KING, TEX_CUSTOM_LIFE_ICON)
    _G.charSelect.character_add_caps(E_MODEL_CUSTOM_MODEL, CAPTABLE_CHAR)
    _G.charSelect.character_add_voice(E_MODEL_CUSTOM_MODEL, VOICETABLE_KING)
    _G.charSelect.character_add_celebration_star(E_MODEL_CUSTOM_MODEL, E_MODEL_CUSTOM_STAR, TEX_CUSTOM_STAR_ICON)
    _G.charSelect.character_add_palette_preset(E_MODEL_CUSTOM_MODEL, PALETTE_CHAR)

    CSloaded = true
end

local function on_character_sound(m, sound)
    if not CSloaded then return end
    if _G.charSelect.character_get_voice(m) == VOICETABLE_KING then return _G.charSelect.voice.sound(m, sound) end
end

local function on_character_snore(m)
    if not CSloaded then return end
    if _G.charSelect.character_get_voice(m) == VOICETABLE_KING then return _G.charSelect.voice.snore(m) end
end

hook_event(HOOK_ON_MODS_LOADED, on_character_select_load)
hook_event(HOOK_CHARACTER_SOUND, on_character_sound)
hook_event(HOOK_MARIO_UPDATE, on_character_snore)