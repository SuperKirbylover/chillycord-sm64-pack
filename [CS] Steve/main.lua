-- name: [CS] Steve?
-- description: The first player in a new world.

local E_MODEL_STEVE = smlua_model_util_get_id("steve_geo")
local E_MODEL_TENNIS = smlua_model_util_get_id("tennis_geo")
local E_MODEL_TUXEDO = smlua_model_util_get_id("tuxedo_geo")
local E_MODEL_ATHLETE = smlua_model_util_get_id("athlete_geo")
local E_MODEL_SCOTTISH = smlua_model_util_get_id("scottish_geo")
local E_MODEL_PRISONER = smlua_model_util_get_id("prisoner_geo")
local E_MODEL_CYCLIST = smlua_model_util_get_id("cyclist_geo")
local E_MODEL_BOXER = smlua_model_util_get_id("boxer_geo")

local E_MODEL_DIAMOND = smlua_model_util_get_id("diamond_geo")

local TEX_STEVE_LIFE_ICON = get_texture_info("s-life")
local TEX_STEVE_STAR_ICON = get_texture_info("s-star")

local TEXT_MOD_NAME = "STEVE"

if not _G.charSelectExists then
    djui_popup_create("\\#ffffdc\\\n"..TEXT_MOD_NAME.."\nRequires the Character Select Mod\nto use as a Library!\n\nPlease turn on the Character Select Mod\nand Restart the Room!", 6)
    return 0
end

local VOICETABLE_STEVE = {
    [CHAR_SOUND_ATTACKED] = 's-hit3.ogg',
    [CHAR_SOUND_DOH] = 's-fallbig.ogg',
    [CHAR_SOUND_DROWNING] = 's-drown.ogg',
    [CHAR_SOUND_DYING] = 's-break.ogg',
    [CHAR_SOUND_GROUND_POUND_WAH] = 's-knockback.ogg',
    [CHAR_SOUND_HAHA] = 's-lvlup.ogg',
    [CHAR_SOUND_HAHA_2] = 's-splash.ogg',
    [CHAR_SOUND_HERE_WE_GO] = 's-eat.ogg',
    [CHAR_SOUND_HOOHOO] = 's-stone2.ogg',
    [CHAR_SOUND_HRMM] = 's-pop.ogg',
    [CHAR_SOUND_ON_FIRE] = 's-burning.ogg',
    [CHAR_SOUND_OOOF] = 's-oof.ogg',
    [CHAR_SOUND_OOOF2] = 's-oof.ogg',
    [CHAR_SOUND_PUNCH_HOO] = 's-crit.ogg',
    [CHAR_SOUND_PUNCH_WAH] = 's-punch2.ogg',
    [CHAR_SOUND_PUNCH_YAH] = 's-punch1.ogg',
    [CHAR_SOUND_SO_LONGA_BOWSER] = 's-boom.ogg',
    [CHAR_SOUND_TWIRL_BOUNCE] = 's-launch.ogg',
    [CHAR_SOUND_WAAAOOOW] = 's-falling.ogg',
    [CHAR_SOUND_WAH2] = 's-throw.ogg',
    [CHAR_SOUND_WHOA] = 's-chest.ogg',
    [CHAR_SOUND_YAHOO] = 's-launch.ogg',
    [CHAR_SOUND_YAHOO_WAHA_YIPPEE] = 's-stone3.ogg',
    [CHAR_SOUND_YAH_WAH_HOO] = 's-stone1.ogg',
}


local HEALTH_METER_STEVE = {
    label = {
        left = get_texture_info("s-back-left"),
        right = get_texture_info("s-back-right"),
    },
    pie = {
        [1] = get_texture_info("s-pie-1"),
        [2] = get_texture_info("s-pie-2"),
        [3] = get_texture_info("s-pie-3"),
        [4] = get_texture_info("s-pie-4"),
        [5] = get_texture_info("s-pie-5"),
        [6] = get_texture_info("s-pie-6"),
        [7] = get_texture_info("s-pie-7"),
        [8] = get_texture_info("s-pie-8"),
    }
}

local CSloaded = false
local function on_character_select_load()
    CT_STEVE = _G.charSelect.character_add("Steve?", "The first player in a new world.", "Chief's Hairline", {r = 171, g = 125, b = 102}, E_MODEL_STEVE, CT_MARIO, TEX_STEVE_LIFE_ICON)

    _G.charSelect.character_add_voice(E_MODEL_STEVE, VOICETABLE_STEVE)
    _G.charSelect.character_add_voice(E_MODEL_TENNIS, VOICETABLE_STEVE)
    _G.charSelect.character_add_voice(E_MODEL_TUXEDO, VOICETABLE_STEVE)
    _G.charSelect.character_add_voice(E_MODEL_ATHLETE, VOICETABLE_STEVE)
    _G.charSelect.character_add_voice(E_MODEL_SCOTTISH, VOICETABLE_STEVE)
    _G.charSelect.character_add_voice(E_MODEL_PRISONER, VOICETABLE_STEVE)
    _G.charSelect.character_add_voice(E_MODEL_CYCLIST, VOICETABLE_STEVE)
    _G.charSelect.character_add_voice(E_MODEL_BOXER, VOICETABLE_STEVE)

    _G.charSelect.character_add_celebration_star(E_MODEL_STEVE, E_MODEL_DIAMOND, TEX_STEVE_STAR_ICON)
    _G.charSelect.character_add_celebration_star(E_MODEL_TENNIS, E_MODEL_DIAMOND, TEX_STEVE_STAR_ICON)
    _G.charSelect.character_add_celebration_star(E_MODEL_TUXEDO, E_MODEL_DIAMOND, TEX_STEVE_STAR_ICON)
    _G.charSelect.character_add_celebration_star(E_MODEL_ATHLETE, E_MODEL_DIAMOND, TEX_STEVE_STAR_ICON)
    _G.charSelect.character_add_celebration_star(E_MODEL_SCOTTISH, E_MODEL_DIAMOND, TEX_STEVE_STAR_ICON)
    _G.charSelect.character_add_celebration_star(E_MODEL_PRISONER, E_MODEL_DIAMOND, TEX_STEVE_STAR_ICON)
    _G.charSelect.character_add_celebration_star(E_MODEL_CYCLIST, E_MODEL_DIAMOND, TEX_STEVE_STAR_ICON)
    _G.charSelect.character_add_celebration_star(E_MODEL_BOXER, E_MODEL_DIAMOND, TEX_STEVE_STAR_ICON)

    _G.charSelect.character_add_health_meter(CT_STEVE, HEALTH_METER_STEVE)
    _G.charSelect.character_add_health_meter(CT_TENNIS, HEALTH_METER_STEVE)
    _G.charSelect.character_add_health_meter(CT_TUXEDO, HEALTH_METER_STEVE)
    _G.charSelect.character_add_health_meter(CT_ATHLETE, HEALTH_METER_STEVE)
    _G.charSelect.character_add_health_meter(CT_SCOTTISH, HEALTH_METER_STEVE)
    _G.charSelect.character_add_health_meter(CT_PRISONER, HEALTH_METER_STEVE)
    _G.charSelect.character_add_health_meter(CT_CYCLIST, HEALTH_METER_STEVE)
    _G.charSelect.character_add_health_meter(CT_BOXER, HEALTH_METER_STEVE)

    CSloaded = true
end

local function on_character_sound(m, sound)
    if not CSloaded then return end
    if _G.charSelect.character_get_voice(m) == VOICETABLE_STEVE then return _G.charSelect.voice.sound(m, sound) end
end

local function on_character_snore(m)
    if not CSloaded then return end
    if _G.charSelect.character_get_voice(m) == VOICETABLE_STEVE then return _G.charSelect.voice.snore(m) end
end

hook_event(HOOK_ON_MODS_LOADED, on_character_select_load)
hook_event(HOOK_CHARACTER_SOUND, on_character_sound)
hook_event(HOOK_MARIO_UPDATE, on_character_snore)

--------------------------------------------
--- Alt Costume code from Paper Partners ---
------------ Thanks, Melzinoff!! -----------
--------- Original code by Wibblus!! -------
--------------------------------------------

local CUR_SKIN_STEVE = 1
-- table of skins
local SKINTABLE_STEVE = {
    { model = E_MODEL_STEVE,  name = "Steve?", desc = "The first player in a new world.", credit = "Chief's Hairline", color = {r = 171, g = 125, b = 102}, E_MODEL_STEVE, CT_MARIO, TEX_STEVE_LIFE_ICON},
    { model = E_MODEL_TENNIS,  name = "Tennis Steve", desc = "The second player in a new world.", credit = "Chief's Hairline", color = {r = 210, g = 174, b = 47}, E_MODEL_STEVE, CT_MARIO, TEX_STEVE_LIFE_ICON},
    { model = E_MODEL_TUXEDO,  name = "Tuxedo Steve", desc = "The third player in a new world.", credit = "Chief's Hairline", color = {r = 207, g = 207, b = 207}, E_MODEL_STEVE, CT_MARIO, TEX_STEVE_LIFE_ICON},
    { model = E_MODEL_ATHLETE,  name = "Athlete Steve", desc = "The fourth player in a new world.", credit = "Chief's Hairline", color = {r = 46, g = 85, b = 137}, E_MODEL_STEVE, CT_MARIO, TEX_STEVE_LIFE_ICON},
    { model = E_MODEL_SCOTTISH,  name = "Scottish Steve", desc = "The fifth player in a new world.", credit = "Chief's Hairline", color = {r = 144, g = 94, b = 33}, E_MODEL_STEVE, CT_MARIO, TEX_STEVE_LIFE_ICON},
    { model = E_MODEL_PRISONER,  name = "Prisoner Steve", desc = "The sixth player in a new world.", credit = "Chief's Hairline", color = {r = 250, g = 142, b = 0}, E_MODEL_STEVE, CT_MARIO, TEX_STEVE_LIFE_ICON},
    { model = E_MODEL_CYCLIST,  name = "Cyclist Steve", desc = "The seventh player in a new world.", credit = "Chief's Hairline", color = {r = 221, g = 55, b = 0}, E_MODEL_STEVE, CT_MARIO, TEX_STEVE_LIFE_ICON},
    { model = E_MODEL_BOXER,  name = "Boxer Steve", desc = "The eighth player in a new world.", credit = "Chief's Hairline", color = {r = 210, g = 174, b = 47}, E_MODEL_STEVE, CT_MARIO, TEX_STEVE_LIFE_ICON},
}

local function update_character_skin()
    local curSteveSkin = SKINTABLE_STEVE[CUR_SKIN_STEVE]
    _G.charSelect.character_edit(CT_STEVE, curSteveSkin.name, curSteveSkin.desc, curSteveSkin.credit, curSteveSkin.color, curSteveSkin.model, nil, curSteveSkin[6], nil)
end
local inputLockTimer = 0
_G.charSelect.hook_render_in_menu(function()
    if _G.charSelect.character_get_current_number() == CT_STEVE then
        ---@type Controller
        local c = _G.charSelect.controller

        djui_hud_set_font(FONT_NORMAL)
        djui_hud_set_resolution(RESOLUTION_N64)
        local scale = 0.5
        local x1 = djui_hud_get_screen_width() * .048
        local x2 = x1 + math.max(85, djui_hud_get_screen_width() * .196)

        -- >
        if CUR_SKIN_STEVE < #SKINTABLE_STEVE then
            -- the < > icons move with inputLockTimer for very cool reactive ui
            djui_hud_print_text(">", x2 + inputLockTimer, 90, scale)

            if inputLockTimer == 0 and (c.buttonDown & R_JPAD ~= 0 or c.stickX > 0.5) then
                CUR_SKIN_STEVE = CUR_SKIN_STEVE + 1
                update_character_skin()
                inputLockTimer = 5
            end
        end
        -- <
        if CUR_SKIN_STEVE > 1 then
            djui_hud_print_text("<", x1 - inputLockTimer, 90, scale)

            if inputLockTimer == 0 and (c.buttonDown & L_JPAD ~= 0 or c.stickX < -0.5) then
                CUR_SKIN_STEVE = math.max(CUR_SKIN_STEVE - 1, 1)
                update_character_skin()
                inputLockTimer = 5
            end
        end
        -- use an input lock to prevent cycling too fast
        inputLockTimer = math.max(0, inputLockTimer - 1)
    end
end)