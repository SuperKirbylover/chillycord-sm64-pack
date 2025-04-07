-- name: [CS] Slam
-- description: The goofy golem, made by Falli\n\n\\#ff7777\\This Pack requires Character Select\nto use as a Library!

--[[
    API Documentation for Character Select can be found below:
    https://github.com/Squishy6094/character-select-coop/wiki/API-Documentation

    Use this if you're curious on how anything here works >v<
	(This is an edited version of the Template File by Squishy)
]]

local TEXT_MOD_NAME = "Slam"

-- Stops mod from loading if Character Select isn't on
if not _G.charSelectExists then
    djui_popup_create("\\#ffffdc\\\n"..TEXT_MOD_NAME.."\nRequires the Character Select Mod\nto use as a Library!\n\nPlease turn on the Character Select Mod\nand Restart the Room!", 6)
    return 0
end

local E_MODEL_CUSTOM_MODEL = smlua_model_util_get_id("slam_geo") -- Located in "actors"

local TEX_CUSTOM_LIFE_ICON = get_texture_info("slam_icon") -- Located in "textures"

-- All Located in "sound" Name them whatever you want. Remember to include the .ogg extension
local VOICETABLE_SLAM = {
    --[CHAR_SOUND_OKEY_DOKEY] = 'Slam1letsdodis2.ogg', -- Starting game
	[CHAR_SOUND_LETS_A_GO] = 'Slam1letsdodis.ogg', -- Starting level
	[CHAR_SOUND_PUNCH_YAH] = 'Slam1huy.ogg', -- Punch 1
	[CHAR_SOUND_PUNCH_WAH] = 'Slam1ha.ogg', -- Punch 2
	[CHAR_SOUND_PUNCH_HOO] = 'Slam1ha2.ogg', -- Punch 3
	[CHAR_SOUND_YAH_WAH_HOO] = {'Slam1yuhp.ogg', 'Slam1wha.ogg', 'Slam1whoop.ogg'}, -- First/Second jump sounds
	[CHAR_SOUND_HOOHOO] = 'Slambup.ogg', -- Third jump sound
	[CHAR_SOUND_YAHOO_WAHA_YIPPEE] = {'Slam1woohoo.ogg', 'Slam1fuah.ogg'}, -- Triple jump sounds
	[CHAR_SOUND_UH] = 'Slam1doh.ogg', -- Wall bonk
	[CHAR_SOUND_UH2] = 'Slam1gpound.ogg', -- Landing after long jump
	[CHAR_SOUND_UH2_2] = 'Slam1smallland.ogg', -- Same sound as UH2; jumping onto ledge
	[CHAR_SOUND_HAHA] = 'Slam1landing.ogg', -- Landing triple jump
	[CHAR_SOUND_YAHOO] = 'Slam1woo2.ogg', -- Long jump
	[CHAR_SOUND_DOH] = 'Slam1oof.ogg', -- Long jump wall bonk
	[CHAR_SOUND_WHOA] = 'Slam1wheeze.ogg', -- Grabbing ledge
	[CHAR_SOUND_EEUH] = 'Slam1oof3.ogg', -- Climbing over ledge
	[CHAR_SOUND_WAAAOOOW] = 'Slam1scream1.ogg', -- Falling a long distance
	[CHAR_SOUND_TWIRL_BOUNCE] = 'Slam1bing.ogg', -- Bouncing off of a flower spring
	[CHAR_SOUND_GROUND_POUND_WAH] = 'Slam1gpound2.ogg', 
	[CHAR_SOUND_HRMM] = 'Slam1strain.ogg', -- Lifting something
	[CHAR_SOUND_HERE_WE_GO] = 'Slam1talkinbout.ogg', -- Star get
	[CHAR_SOUND_SO_LONGA_BOWSER] = 'Slam1catchthis.ogg', -- Throwing Bowser
--DAMAGE
	[CHAR_SOUND_ATTACKED] = 'Slam1oof2.ogg', -- Damaged
	[CHAR_SOUND_PANTING] = 'Slam1pant.ogg', -- Low health
	[CHAR_SOUND_ON_FIRE] = 'Slam1fire.ogg', -- Burned
--SLEEP SOUNDS
	[CHAR_SOUND_IMA_TIRED] = 'Slam1ex.ogg', -- Mario feeling tired
	[CHAR_SOUND_YAWNING] = 'Slam1sigh.ogg', -- Mario yawning before he sits down to sleep
	[CHAR_SOUND_SNORING1] = 'Slam1snore.ogg', -- Snore Inhale
	[CHAR_SOUND_SNORING2] = 'Slam1exhale.ogg', -- Exhale
	[CHAR_SOUND_SNORING3] = 'Slam1sleeplaugh.ogg', -- Sleep talking / mumbling
--COUGHING (USED IN THE GAS MAZE)
	[CHAR_SOUND_COUGHING1] = 'Slam1cough1.ogg', -- Cough take 1
	[CHAR_SOUND_COUGHING2] = 'Slam1cough2.ogg', -- Cough take 2
	[CHAR_SOUND_COUGHING3] = 'Slam1cough3.ogg', -- Cough take 3
--DEATH
	[CHAR_SOUND_DYING] = 'Slam1hurt3.ogg', -- Dying from damage
	[CHAR_SOUND_DROWNING] = 'Slam1mumble.ogg', -- Running out of air underwater
	[CHAR_SOUND_MAMA_MIA] = 'Slam1ugh.ogg' -- Booted out of level
}

-- All Located in "actors"
local CAPTABLE_CHAR = {
    normal = smlua_model_util_get_id("slamcap_geo"),
    wing = smlua_model_util_get_id("slamwing_geo"),
    metal = smlua_model_util_get_id("slammetal_geo"),
}

local PALETTE_CHAR = {
    [PANTS]  = "D7DAFF",
    [SHIRT]  = "94603B",
    [GLOVES] = "D7DAFF",
    [SHOES]  = "D7DAFF",
    [HAIR]   = "2F1E14",
    [SKIN]   = "676BA9",
    [CAP]    = "94603B",
	[EMBLEM] = "00CD37"
}

local HM_SLAM= {
    label = {
        left = get_texture_info("slamLeftHealth"),
        right = get_texture_info("slamRightHealth"),
    },
    pie = {
        [1] = get_texture_info("slamPie1"),
        [2] = get_texture_info("slamPie2"),
        [3] = get_texture_info("slamPie3"),
        [4] = get_texture_info("slamPie4"),
        [5] = get_texture_info("slamPie5"),
        [6] = get_texture_info("slamPie6"),
        [7] = get_texture_info("slamPie7"),
        [8] = get_texture_info("slamPie8"),
    }
}

local CSloaded = false
local function on_character_select_load()
    CT_SLAM = _G.charSelect.character_add("Slam", {"The goofy golem himself, Slam!", "(Oc belongs to woodman)"}, "Falli", {r = 148, g = 96, b = 59}, E_MODEL_CUSTOM_MODEL, CT_SLAM, TEX_CUSTOM_LIFE_ICON)
    _G.charSelect.character_add_caps(E_MODEL_CUSTOM_MODEL, CAPTABLE_CHAR)
    _G.charSelect.character_add_voice(E_MODEL_CUSTOM_MODEL, VOICETABLE_SLAM)
    _G.charSelect.character_add_celebration_star(E_MODEL_CUSTOM_MODEL, E_MODEL_CUSTOM_STAR, TEX_CUSTOM_STAR_ICON)
    _G.charSelect.character_add_palette_preset(E_MODEL_CUSTOM_MODEL, PALETTE_CHAR)
    _G.charSelect.character_add_health_meter(CT_SLAM, HM_SLAM)

    CSloaded = true
end

local function on_character_sound(m, sound)
    if not CSloaded then return end
    if _G.charSelect.character_get_voice(m) == VOICETABLE_SLAM then return _G.charSelect.voice.sound(m, sound) end
end

local function on_character_snore(m)
    if not CSloaded then return end
    if _G.charSelect.character_get_voice(m) == VOICETABLE_SLAM then return _G.charSelect.voice.snore(m) end
end

hook_event(HOOK_ON_MODS_LOADED, on_character_select_load)
hook_event(HOOK_CHARACTER_SOUND, on_character_sound)
hook_event(HOOK_MARIO_UPDATE, on_character_snore)