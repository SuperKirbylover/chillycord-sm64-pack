-- name: [CS] Draco Colors
-- description: [CS] Draco with color compatibility
-- deluxe: true

if SM64COOPDX_VERSION == nil then
    local first = false
    hook_event(HOOK_ON_LEVEL_INIT, function()
        if not first then
            first = true
            play_sound(SOUND_MENU_CAMERA_BUZZ, gMarioStates[0].marioObj.header.gfx.cameraToObject)
            djui_chat_message_create("\\#ffa0a0\\Extra Characters is not supported with sm64ex-coop\nas it uses sm64coopdx exclusive Lua functionality.\n\\#dcdcdc\\To play this mod, try out sm64coopdx at\n\\#7f7fff\\https://sm64coopdx.com")
        end
    end)
    return
end
if not _G.charSelectExists then
    local first = false
    hook_event(HOOK_ON_LEVEL_INIT, function()
        if not first then
            first = true
            play_sound(SOUND_MENU_CAMERA_BUZZ, gGlobalSoundSource)
            djui_chat_message_create("\\#ffffa0\\Extra Characters requires Character Select to be enabled.\nPlease rehost with it enabled.")
        end
    end)
    return
end

local E_MODEL_DRACO = smlua_model_util_get_id("draco_geo")

local TEX_DRACO = get_texture_info("draco_icon")

local VOICETABLE_DRACO = {
    [CHAR_SOUND_ATTACKED] = {"Draco_Whine.ogg", "Draco_Capee.ogg"},
    [CHAR_SOUND_GROUND_POUND_WAH] = "DRAC01.ogg",
    [CHAR_SOUND_HAHA] = {"Draco_Huee.ogg", "Draco_TsuHueHue.ogg"},
    [CHAR_SOUND_HAHA_2] = {"Draco_TsuHueHue.ogg", "Draco_Huee.ogg"},
    [CHAR_SOUND_HERE_WE_GO] = "Draco_TsuGao.ogg",
    [CHAR_SOUND_HOOHOO] = {"DRAC04.ogg", "Draco_Slam.ogg"},
    [CHAR_SOUND_ON_FIRE] = {"Draco_Burning1.ogg", "Draco_Burning2.ogg"},
    [CHAR_SOUND_OOOF] = "Draco_Slam.ogg",
    [CHAR_SOUND_OOOF2] = "Draco_Slam.ogg",
    [CHAR_SOUND_PUNCH_HOO] = "Draco_Punch3.ogg",
    [CHAR_SOUND_PUNCH_WAH] = "Draco_Punch2.ogg",
    [CHAR_SOUND_PUNCH_YAH] = "Draco_Punch1.ogg",
    [CHAR_SOUND_SO_LONGA_BOWSER] = "Draco_Remark.ogg",
    [CHAR_SOUND_TWIRL_BOUNCE] = "DRAC06.ogg",
    [CHAR_SOUND_WAAAOOOW] = {"Draco_Hit.ogg", "Draco_Longfall.ogg"},
    [CHAR_SOUND_WAH2] = "Draco_Slam.ogg",
    [CHAR_SOUND_WHOA] = "Draco_Woah.ogg",
    [CHAR_SOUND_YAHOO] = "Draco_Gao.ogg",
    [CHAR_SOUND_YAHOO_WAHA_YIPPEE] = {"DRAC01.ogg", "DRAC02.ogg", "DRAC04.ogg"},
    [CHAR_SOUND_YAH_WAH_HOO] = {"DRAC01.ogg", "Draco_Slam.ogg", "DRAC06.ogg"},
    [CHAR_SOUND_OKEY_DOKEY] = "Draco_Remark2.ogg",
    [CHAR_SOUND_LETS_A_GO] = "Draco_Gao3.ogg",
    [CHAR_SOUND_DYING] = "Draco_Tired1.ogg",
    [CHAR_SOUND_DROWNING] = "Draco_Drown.ogg",
    [CHAR_SOUND_EEUH] = "DRAC01.ogg",
    [CHAR_SOUND_MAMA_MIA] = {"Draco_Angry1.ogg", "Draco_Angry2.ogg"},
    [CHAR_SOUND_DOH] = "Draco_Slam.ogg",
    [CHAR_SOUND_HRMM] = "Draco_Tired2.ogg",
    [CHAR_SOUND_PANTING] = "Draco_Pant.ogg",
    [CHAR_SOUND_UH] = "Draco_Slam.ogg"
}

local CAPTABLE_DRACO = {
    normal = smlua_model_util_get_id("draco_cap_geo"),
    wing = smlua_model_util_get_id("draco_cap_wing_geo"),
    metal = smlua_model_util_get_id("draco_cap_metal_geo"),
    metalWing = smlua_model_util_get_id("draco_cap_metal_wing_geo"),
}
_G.charSelect.character_add_caps(E_MODEL_DRACO,CAPTABLE_DRACO)

local PALETTE_DRACO =  {
    [PANTS]  = "e2ffff",
    [SHIRT]  = "e80000",
    [GLOVES] = "e2ffff",
    [SHOES]  = "e80000",
    [HAIR]   = "27b914",
    [SKIN]   = "e7a687",
    [CAP]    = "e8b400",
    [EMBLEM] = "e8b400",
}
_G.charSelect.character_add_palette_preset(E_MODEL_DRACO, PALETTE_DRACO)

_G.charSelect.character_add("Draco Centauros", {"Draco from hit game: ", "Madou Monogatari / Puyo Puyo Sun"}, "Knola", { r = 83, g = 209, b = 55 }, E_MODEL_DRACO, CT_MARIO, TEX_DRACO)
_G.charSelect.character_add_voice(E_MODEL_DRACO, VOICETABLE_DRACO)

hook_event(HOOK_MARIO_UPDATE, function (m)
    if _G.charSelect.character_get_voice(m) == VOICETABLE_DRACO then _G.charSelect.voice.snore(m) end
end)
hook_event(HOOK_CHARACTER_SOUND, function (m, sound)
    if _G.charSelect.character_get_voice(m) == VOICETABLE_DRACO then return _G.charSelect.voice.sound(m, sound) end
end)

local dracoID = _G.charSelect.character_get_number_from_string("Draco Centauros")

local function mario_update(m)
    if m.playerIndex == 0 then
        if dracoID == _G.charSelect.character_get_current_model_number() then
            gPlayerSyncTable[m.playerIndex].charMoveset = true
        else
            gPlayerSyncTable[m.playerIndex].charMoveset = false
        end
    end

    if gPlayerSyncTable[m.playerIndex].charMoveset then
        -- Moveset Code Here
    end
end