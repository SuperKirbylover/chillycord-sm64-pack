-- name: [CS] Sackboy
-- description: Sackboy Model. Made by Visorcat.
-- description: Sackboy is a fictional character and main protagonist of the LittleBigPlanet. \n\nMade by Visorcat. \n\nRequires Character Select!


local E_MODEL_SACKBOY = smlua_model_util_get_id("Sackboy_geo")

local TEXT_MOD_NAME = "Sackboy"

local TEX_SACKBOY = get_texture_info("Sackboy_icon")

local VOICETABLE_SACKBOY = {
    [CHAR_SOUND_ATTACKED] = "vc_Shima_damage02.ogg",
    [CHAR_SOUND_GROUND_POUND_WAH] = "vc_Shima_007.ogg",
    [CHAR_SOUND_HAHA] = "vc_Shima_attack03.ogg",
    [CHAR_SOUND_HAHA_2] = "vc_Shima_attack05.ogg",
    [CHAR_SOUND_HERE_WE_GO] = "vc_Shima_win02.ogg",
    [CHAR_SOUND_HOOHOO] = "vc_Shima_jump01.ogg",
    [CHAR_SOUND_ON_FIRE] = "vc_Shima_damage_twinkle.ogg",
    [CHAR_SOUND_OOOF] = "vc_Shima_damagefly01.ogg",
    [CHAR_SOUND_OOOF2] = "vc_Shima_damagefly02.ogg",
    [CHAR_SOUND_PUNCH_HOO] = "vc_Shima_002.ogg",
    [CHAR_SOUND_PUNCH_WAH] = "vc_Shima_013.ogg",
    [CHAR_SOUND_PUNCH_YAH] = "vc_Shima_001.ogg",
    [CHAR_SOUND_SO_LONGA_BOWSER] = "vc_Shima_final01.ogg",
    [CHAR_SOUND_TWIRL_BOUNCE] = "vc_Shima_appeal02.ogg",
    [CHAR_SOUND_WAAAOOOW] = "vc_Shima_damage_twinkle.ogg",
    [CHAR_SOUND_WAH2] = "vc_Shima_attack02.ogg",
    [CHAR_SOUND_WHOA] = "vc_Shima_appeal03.ogg",
    [CHAR_SOUND_YAHOO] = "vc_Shima_attack06.ogg",
    [CHAR_SOUND_YAHOO_WAHA_YIPPEE] = {"vc_Shima_attack06.ogg", "vc_Shima_attack04.ogg"},
    [CHAR_SOUND_YAH_WAH_HOO] = {"vc_Shima_001.ogg", "vc_Shima_013.ogg", "vc_Shima_002.ogg"},
    [CHAR_SOUND_OKEY_DOKEY] = "vc_Shima_win01.ogg",
    [CHAR_SOUND_LETS_A_GO] = "vc_Shima_win02.ogg",
    [CHAR_SOUND_DYING] = "vc_Shima_missfoot01.ogg",
    [CHAR_SOUND_DROWNING] = "vc_Shima_furafura.ogg",
    [CHAR_SOUND_EEUH] = "vc_Shima_damagefly01.ogg",
    [CHAR_SOUND_MAMA_MIA] = "vc_Shima_appeal01.ogg",
    [CHAR_SOUND_DOH] = "vc_Shima_011.ogg",
    [CHAR_SOUND_HRMM] = "vc_Shima_heavyget.ogg",
    [CHAR_SOUND_PANTING] = "vc_Shima_passive.ogg",
    [CHAR_SOUND_UH] = "vc_Shima_damagefly02.ogg",
}

local PALLETE_SACKBOY = {
    [PANTS]  = {r = 0x60, g = 0x64, b = 0x64},
    [SHIRT]  = {r = 0xf7, g = 0xef, b = 0xb1},
    [GLOVES] = {r = 0xff, g = 0xff, b = 0xff},
    [SHOES]  = {r = 0x68, g = 0x40, b = 0x1b},
    [HAIR]   = {r = 0x73, g = 0x06, b = 0x00},
    [SKIN]   = {r = 0xfe, g = 0xd5, b = 0xa1},
    [CAP]    = {r = 0x76, g = 0xb4, b = 0xce},
    }


-- add it
if _G.charSelectExists then
    _G.charSelect.character_add("Sackboy", {"Sackboy is a fictional character and main protagonist of the LittleBigPlanet"}, "Visorcat", {r = 125, g = 92, b = 1}, E_MODEL_SACKBOY, CT_MARIO, TEX_SACKBOY)

    _G.charSelect.character_add_voice(E_MODEL_SACKBOY, VOICETABLE_SACKBOY)

    --taken from toadette code

    hook_event(HOOK_CHARACTER_SOUND, function (m, sound)
        if _G.charSelect.character_get_voice(m) == VOICETABLE_SACKBOY then return _G.charSelect.voice.sound(m, sound) end
    end)

    hook_event(HOOK_MARIO_UPDATE, function (m)
        if _G.charSelect.character_get_voice(m) == VOICETABLE_SACKBOY then return _G.charSelect.voice.snore(m) end
    end)

    _G.charSelect.character_add_palette_preset(E_MODEL_SACKBOY, PALLETE_SACKBOY)

else
    djui_popup_create("\\#ffffdc\\\n"..TEXT_MOD_NAME.."\nRequires the Character Select Mod\nto use as a Library!\n\nPlease turn on the Character Select Mod\nand Restart the Room!", 6)
end


