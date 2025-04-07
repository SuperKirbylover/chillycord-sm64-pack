
local E_MODEL_HYENARD = smlua_model_util_get_id("hyenard_geo")

local TEXT_MOD_NAME = "FlameHyenard"

local VOICETABLE_HYENARD = {
    [CHAR_SOUND_ATTACKED] = 'GAH.ogg',
    [CHAR_SOUND_DOH] = 'BAH.ogg',
    [CHAR_SOUND_DYING] = 'GAWAAHHH.ogg',
    [CHAR_SOUND_GROUND_POUND_WAH] = 'RA-.ogg',
    [CHAR_SOUND_HAHA] = 'TRI FORMATION.ogg',
    [CHAR_SOUND_HAHA_2] = 'TRI FORMATION.ogg',
    [CHAR_SOUND_HERE_WE_GO] = 'FLAMES RISE.ogg',
    [CHAR_SOUND_HOOHOO] = 'HOOO.ogg',
    [CHAR_SOUND_HRMM] = 'AAHH.ogg',
    [CHAR_SOUND_LETS_A_GO] = 'BURN.ogg',
    [CHAR_SOUND_MAMA_MIA] = 'OOOOOHH IT HURTS.ogg',
	[CHAR_SOUND_OKEY_DOKEY] = 'BURN.ogg',
    [CHAR_SOUND_ON_FIRE] = 'GAH.ogg',
    [CHAR_SOUND_OOOF] = 'GAH.ogg',
    [CHAR_SOUND_OOOF2] = 'GAH.ogg',
    [CHAR_SOUND_PUNCH_HOO] = 'BURN TO THE GROUND.ogg',
    [CHAR_SOUND_PUNCH_WAH] = 'HOOO.ogg',
    [CHAR_SOUND_PUNCH_YAH] = 'BURN.ogg',
    [CHAR_SOUND_SO_LONGA_BOWSER] = 'BURN TO THE GROUND.ogg',
    [CHAR_SOUND_TWIRL_BOUNCE] = 'ARISE.ogg',
    [CHAR_SOUND_UH] = 'BAH.ogg',
    [CHAR_SOUND_UH2] = 'BAH.ogg',
    [CHAR_SOUND_UH2_2] = 'BAH.ogg',
    [CHAR_SOUND_WAAAOOOW] = 'AAAAAAAAAHHH.ogg',
    [CHAR_SOUND_WAH2] = 'AAHH.ogg',
    [CHAR_SOUND_WHOA] = 'BAH.ogg',
    [CHAR_SOUND_YAHOO] = {'HOOO.ogg','AAHH.ogg','BURRRRN.ogg','BURN.ogg','BURN TO THE GROUND.ogg'},
    [CHAR_SOUND_YAHOO_WAHA_YIPPEE] = {'BURRRRN.ogg','BURN.ogg'},
    [CHAR_SOUND_YAH_WAH_HOO] = {'HOOO.ogg','AAHH.ogg','BURRRRN.ogg','BURN.ogg','BURN TO THE GROUND.ogg'}
}

local TEX_HYENARD = get_texture_info("hyenard-icon")

if _G.charSelectExists then
    _G.charSelect.character_add("Flame Hyenard", {"BURN TO THE GROUND!"}, "SuperPhanto", {r = 99, g = 62, b = 33}, E_MODEL_HYENARD, CT_MARIO, TEX_HYENARD)

    _G.charSelect.character_add_voice(E_MODEL_HYENARD, VOICETABLE_HYENARD)

    hook_event(HOOK_CHARACTER_SOUND, function (m, sound)
        if _G.charSelect.character_get_voice(m) == VOICETABLE_HYENARD then return _G.charSelect.voice.sound(m, sound) end
    end)
    hook_event(HOOK_MARIO_UPDATE, function (m)
        if _G.charSelect.character_get_voice(m) == VOICETABLE_HYENARD then return _G.charSelect.voice.snore(m) end
    end)
else
    djui_popup_create("\\#ffffdc\\\n"..TEXT_MOD_NAME.."\nRequires the Character Select Mod\nto use as a Library!\n\nPlease turn on the Character Select Mod\nand Restart the Room!", 6)
end

