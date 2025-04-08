-- name: [CS] Jack Black Steve
-- description: He... is Steve.\n\nSteve from the movie "A Minecraft Movie" is now playable in SM64 Coop Deluxe, play as one of the greatest actors, Jack Black, in this fun little joke mod.\n\nCHICKEN JOCKEY!\n\nMade by: VioletArts\n\n\\#ff7777\\This Pack requires Character Select\nto use as a Library!

local TEXT_MOD_NAME = "Jack Black Steve"

-- Stops mod from loading if Character Select isn't on, Does not need to be touched
if not _G.charSelectExists then
    djui_popup_create("\\#ffffdc\\\n"..TEXT_MOD_NAME.."\nRequires the Character Select Mod\nto use as a Library!\n\nPlease turn on the Character Select Mod\nand Restart the Room!", 6)
    return 0
end

local E_MODEL_JACK =      smlua_model_util_get_id("jack_violet_geo")      -- Located in "actors"

local TEX_JACK_LIFE_ICON = get_texture_info("jack_violet_icon") -- Located in "textures"

local VOICETABLE_JACK = {
    [CHAR_SOUND_OKEY_DOKEY] =        'IAmSteve.ogg', -- Starting game
	[CHAR_SOUND_LETS_A_GO] =         'SteveHereItIs.ogg', -- Starting level
	[CHAR_SOUND_PUNCH_YAH] =         'SteveI.ogg', -- Punch 1
	[CHAR_SOUND_PUNCH_WAH] =         'SteveAm.ogg', -- Punch 2
	[CHAR_SOUND_PUNCH_HOO] =         'SteveSteve.ogg', -- Punch 3
	[CHAR_SOUND_YAH_WAH_HOO] =       {'SteveI.ogg', 'SteveAm.ogg', 'SteveSteve.ogg'}, -- First Jump Sounds
	[CHAR_SOUND_HOOHOO] =            'SteveHoohoo.ogg', -- Second jump sound
	[CHAR_SOUND_YAHOO_WAHA_YIPPEE] = {'SteveFlint.ogg', 'SteveCraftingTable.ogg'}, -- Triple jump sounds
	[CHAR_SOUND_UH] =                'SteveUh.ogg', -- Wall bonk
	[CHAR_SOUND_UH2] =               'SteveUh.ogg', -- Landing after long jump
	[CHAR_SOUND_UH2_2] =             'SteveUh.ogg',
	[CHAR_SOUND_HAHA] =              'SteveShaboom.ogg',
    [CHAR_SOUND_HAHA_2] =            'SteveWaterBucket.ogg', -- Landing triple jump
	[CHAR_SOUND_YAHOO] =             'SteveNether.ogg', -- Long jump
	[CHAR_SOUND_DOH] =               'SteveUh.ogg', -- Long jump wall bonk
	[CHAR_SOUND_WHOA] =              'SteveEnderPearl.ogg', -- Grabbing ledge
	[CHAR_SOUND_EEUH] =              'SteveNether.ogg', -- Climbing over ledge
	[CHAR_SOUND_WAAAOOOW] =          'SteveWaterBucket.ogg', -- Falling a long distance
	[CHAR_SOUND_TWIRL_BOUNCE] =      'SteveMinecraft.ogg', -- Bouncing off of a flower spring
	[CHAR_SOUND_GROUND_POUND_WAH] =  'SteveHot.ogg', 
	[CHAR_SOUND_HRMM] =              'SteveUhOh.ogg', -- Lifting something
	[CHAR_SOUND_HERE_WE_GO] =        'SteveChickenJockey.ogg', -- Star get
	[CHAR_SOUND_SO_LONGA_BOWSER] =   'SteveDie.ogg', -- Throwing Bowser
--DAMAGE
	[CHAR_SOUND_ATTACKED] = 'SteveUhOh.ogg', -- Damaged
	[CHAR_SOUND_ON_FIRE] = 'SteveNoNo.ogg', -- Burned
--SLEEP SOUNDS
	[CHAR_SOUND_IMA_TIRED] = 'SteveUhOh.ogg', -- Mario feeling tired
	[CHAR_SOUND_YAWNING] = 'SteveFlint.ogg', -- Mario yawning before he sits down to sleep
	[CHAR_SOUND_SNORING1] = 'Snore.ogg', -- Snore Inhale
	[CHAR_SOUND_SNORING2] = 'Exhale.ogg', -- Exhale
--COUGHING (USED IN THE GAS MAZE)
--DEATH
	[CHAR_SOUND_DYING] = 'SteveNoNo.ogg', -- Dying from damage
	[CHAR_SOUND_DROWNING] = 'SteveNoNo.ogg', -- Running out of air underwater
	[CHAR_SOUND_MAMA_MIA] = 'SteveNoBiggie.ogg' -- Booted out of level
}

local CAPTABLE_JACK = {
    normal = smlua_model_util_get_id("jack_violet_cap_geo"),
    wing = smlua_model_util_get_id("jack_violet_cap_wing_geo"),
    metal = smlua_model_util_get_id("jack_violet_cap_metal_geo"),
    metalwing = smlua_model_util_get_id("jack_violet_cap_metal_wing_geo"),
}

local PALETTE_JACK = {
    [PANTS]  = "364388",
    [SHIRT]  = "179AC5",
    [GLOVES] = "C0B6AB",
    [SHOES]  = "4C2400",
    [HAIR]   = "5A2E03",
    [SKIN]   = "FEC285",
    [CAP]    = "947256",
	[EMBLEM] = "179AC5"
}

local CSloaded = false
local function on_character_select_load()
    -- Adds the custom character to the Character Select Menu
    CT_JACK = _G.charSelect.character_add(
        "Jack Black Steve", -- Character Name
        "I... am Steve.", -- Description
        "Violet", -- Credits
        "179AC5",           -- Menu Color
        E_MODEL_JACK,       -- Character Model
        CT_MARIO,           -- Override Character
        TEX_JACK_LIFE_ICON, -- Life Icon
        1,                  -- Camera Scale
        0                   -- Vertical Offset
    )

    _G.charSelect.character_add_caps(E_MODEL_JACK, CAPTABLE_JACK)

    _G.charSelect.character_add_voice(E_MODEL_JACK, VOICETABLE_JACK)

    _G.charSelect.character_add_palette_preset(E_MODEL_JACK, PALETTE_JACK)

    _G.charSelect.credit_add(TEXT_MOD_NAME, "VioletArts", "Pack")

    CSloaded = true
end

local function on_character_sound(m, sound)
    if not CSloaded then return end
    if _G.charSelect.character_get_voice(m) == VOICETABLE_JACK then return _G.charSelect.voice.sound(m, sound) end
end

local function on_character_snore(m)
    if not CSloaded then return end
    if _G.charSelect.character_get_voice(m) == VOICETABLE_JACK then return _G.charSelect.voice.snore(m) end
end

hook_event(HOOK_ON_MODS_LOADED, on_character_select_load)
hook_event(HOOK_CHARACTER_SOUND, on_character_sound)
hook_event(HOOK_MARIO_UPDATE, on_character_snore)