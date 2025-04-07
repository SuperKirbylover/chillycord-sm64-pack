-- name: [CS] Sunshine Mario
-- description: Sunshine Mario for Character select!\n\n\\#ff7777\\This Pack requires Character Select\nto use as a Library!

local E_MODEL_SUNMARIO = smlua_model_util_get_id("sunshine_geo")
local E_MODEL_SUNJACK = smlua_model_util_get_id("sunshinejacket_geo")

local TEX_SUNMARIO = get_texture_info("cs-icon")

local E_MODEL_SHINESPRITE = smlua_model_util_get_id("shine_sprite_geo")
local TEX_SHINESPRITE = get_texture_info("cs-shine")

local TEXT_MOD_NAME = "Sunshine Mario"

local VOICETABLE_SUNMARIO = {
    [CHAR_SOUND_YAH_WAH_HOO] = {'mario_jump_yah.ogg','mario_jump_muh.ogg','mario_jump_wah.ogg','mario_jump_hoh.ogg','mario_jump_yah2.ogg'},
    [CHAR_SOUND_HOOHOO] = {'mario_jump_hoohoo.ogg','mario_jump_hahah.ogg'},
    [CHAR_SOUND_YAHOO] = {'mario_triple_hahah.ogg','mario_triple_hoohoo.ogg','mario_triple_horray.ogg','mario_triple_woohoo.ogg','mario_jump_whoopie.ogg','mario_triple_yahee.ogg'},
    [CHAR_SOUND_UH] = 'mario_ugh.ogg',
    [CHAR_SOUND_HRMM] = 'mario_hrmm.ogg',
    [CHAR_SOUND_WAH2] = {'mario_toss.ogg','mario_jump_hoo.ogg'},
    [CHAR_SOUND_WHOA] = 'mario_woah.ogg',
    [CHAR_SOUND_EEUH] = 'mario_slow_climb.ogg',
    [CHAR_SOUND_ATTACKED] = {'mario_pain_ouch.ogg','mario_pain_2.ogg','mario_pain_3.ogg','mario_pain_4.ogg','mario_pain_5.ogg','mario_pain_6.ogg'},
    [CHAR_SOUND_OOOF] = 'mario_oof.ogg',
    [CHAR_SOUND_OOOF2] = 'mario_oof.ogg',
    [CHAR_SOUND_HERE_WE_GO] = {'mario_triple_hahah.ogg','mario_triple_hoohoo.ogg','mario_triple_horray.ogg','mario_triple_woohoo.ogg','mario_jump_whoopie.ogg','mario_triple_yahee.ogg'},
    [CHAR_SOUND_YAWNING] = 'mario_yawn.ogg',
    [CHAR_SOUND_WAAAOOOW] = {'mario_fall_alot.ogg','mario_fall_alot2.ogg','mario_fall_alot3.ogg'},
    [CHAR_SOUND_HAHA] = {'mario_land_happy.ogg','mario_land_laugh.ogg','mario_land_teehee.ogg','mario_land_sweet.ogg','mario_land_yeah.ogg'},
    [CHAR_SOUND_HAHA_2] = {'mario_land_happy.ogg','mario_land_laugh.ogg','mario_land_teehee.ogg','mario_land_sweet.ogg','mario_land_yeah.ogg'},
    [CHAR_SOUND_UH2] = 'mario_fast_climb.ogg',
    [CHAR_SOUND_UH2_2] = 'mario_ugh_1.ogg',
    [CHAR_SOUND_ON_FIRE] = {'mario_burn_alive_lol.ogg','mario_lava_hot.ogg'},
    [CHAR_SOUND_DYING] = {'mario_dies_1.ogg','mario_dies_2.ogg','mario_dies_3.ogg'},
    [CHAR_SOUND_PANTING_COLD] = {'mario_panting.ogg','mario_panting_2.ogg'},
    [CHAR_SOUND_PANTING] = {'mario_panting.ogg','mario_panting_2.ogg'},
    [CHAR_SOUND_COUGHING1] = {'mario_cough.ogg','mario_cough_1.ogg','mario_cough_2.ogg'},
    [CHAR_SOUND_COUGHING2] = {'mario_cough.ogg','mario_cough_1.ogg','mario_cough_2.ogg'},
    [CHAR_SOUND_COUGHING3] = {'mario_cough.ogg','mario_cough_1.ogg','mario_cough_2.ogg'},
    [CHAR_SOUND_PUNCH_YAH] = 'mario_jump_yah.ogg',
    [CHAR_SOUND_PUNCH_HOO] = {'mario_toss.ogg','mario_jump_hoo.ogg'},
    [CHAR_SOUND_MAMA_MIA] = {'mario_mamamia.ogg','mario_amidoneyet.ogg','mario_ohmyhead.ogg','mario_ohman.ogg','mario_boyohboy.ogg'},
    [CHAR_SOUND_GROUND_POUND_WAH] = {'mario_toss.ogg','mario_jump_hoo.ogg'},
    [CHAR_SOUND_PUNCH_WAH] = 'mario_jump_wah.ogg',
    [CHAR_SOUND_YAHOO_WAHA_YIPPEE] = {'mario_triple_hahah.ogg','mario_triple_hoohoo.ogg','mario_triple_horray.ogg','mario_triple_woohoo.ogg','mario_jump_whoopie.ogg','mario_triple_yahee.ogg'},
    [CHAR_SOUND_DOH] = 'mario_doh.ogg',
    [CHAR_SOUND_TWIRL_BOUNCE] = 'mario_boing.ogg',
    [CHAR_SOUND_SO_LONGA_BOWSER] = 'mario_bye_bowser.ogg',
    [CHAR_SOUND_IMA_TIRED] = 'mario_eepy.ogg',
    [CHAR_SOUND_LETS_A_GO] = 'mario_letsgo.ogg',
    [CHAR_SOUND_OKEY_DOKEY] = 'mario_namedrop.ogg',
	[CHAR_SOUND_SNORING1] = 'mario_snore.ogg',
	[CHAR_SOUND_SNORING2] = 'mario_snore_1.ogg',
}

local capsun = {
    normal = smlua_model_util_get_id("suncap_geo"),
    wing = smlua_model_util_get_id("suncap_wing_geo"),
    metal = smlua_model_util_get_id("suncap_metal_geo"),
}
_G.charSelect.character_add_caps(E_MODEL_SUNMARIO, capsun)
_G.charSelect.character_add_caps(E_MODEL_SUNJACK, capsun)

local PALETTE_SUNMARIO = {
    [PANTS]  = "002770",
    [SHIRT]  = "811600",
    [GLOVES] = "efffef",
    [SHOES]  = "923300",
    [HAIR]   = "7e362e",
    [SKIN]   = "ff9769",
    [CAP]    = "811600",
}
local CUR_SKIN_SUNMAR = 1
-- table of skins
local SKINTABLE_SUNMAR = {
    {model = E_MODEL_SUNMARIO, name = "Sunshine Mario", desc = {"Another Door?!", "Sunshine Mario for Character Select!","Credits:","ThaGurlTilly for models, sounds, textures, import","FluffaMario & ExellentGamer for animations", "wibblus for the skintable code","Squishy for the HUD","Press left and right on the stick or D-Pad","to choose a costume!"}, color = {r = 255, g = 8, b = 0}, icon = TEX_SUNMARIO},
    {model = E_MODEL_SUNJACK, name = "Sunshine Mario", desc = {"Another Door?!", "Sunshine Mario for Character Select!","Credits:","ThaGurlTilly for models, sounds, textures, import","FluffaMario & ExellentGamer for animations", "wibblus for the skintable code","Squishy for the HUD","Press left and right on the stick or D-Pad","to choose a costume!"}, color = {r = 255, g = 8, b = 0}, icon = TEX_SUNMARIO},
}
local CT_SUNMAR = 0


if _G.charSelectExists then
    CT_SUNMAR = _G.charSelect.character_add("Sunshine Mario", {"Another Door?!", "Sunshine Mario for Character Select!","Credits:","ThaGurlTilly for models, sounds, textures, import","FluffaMario & ExellentGamer for animations", "wibblus for the skintable code","Squishy for the HUD","Press left and right on the stick or D-Pad","to choose a costume!"}, "Tilly & More", {r = 255, g = 8, b = 0}, E_MODEL_SUNMARIO, CT_MARIO, TEX_SUNMARIO)

    -- the following must be hooked for each character added
    for i = 1, #SKINTABLE_SUNMAR do
        _G.charSelect.character_add_voice(SKINTABLE_SUNMAR[i].model, VOICETABLE_SUNMARIO)
        _G.charSelect.character_add_palette_preset(SKINTABLE_SUNMAR[i].model, PALETTE_SUNMARIO)
		_G.charSelect.character_add_celebration_star(SKINTABLE_SUNMAR[i].model, E_MODEL_SHINESPRITE, TEX_SHINESPRITE)
    end
    hook_event(HOOK_CHARACTER_SOUND, function (m, sound)
        if _G.charSelect.character_get_voice(m) == VOICETABLE_SUNMARIO then return _G.charSelect.voice.sound(m, sound) end
    end)
    hook_event(HOOK_MARIO_UPDATE, function (m)
        if _G.charSelect.character_get_voice(m) == VOICETABLE_SUNMARIO then return _G.charSelect.voice.snore(m) end
    end)
		
	local function update_character_skin()
        local curSkin = SKINTABLE_SUNMAR[CUR_SKIN_SUNMAR]
        _G.charSelect.character_edit(CT_SUNMAR, curSkin.name, curSkin.desc, nil, curSkin.color, curSkin.model, nil, curSkin.icon)
    end
    local inputLockTimer = 0
    _G.charSelect.hook_render_in_menu(function ()
        if _G.charSelect.character_get_current_number() == CT_SUNMAR then

            ---@type Controller
            local c = _G.charSelect.controller

            djui_hud_set_font(FONT_NORMAL)
            djui_hud_set_resolution(RESOLUTION_N64)
            local scale = 0.5
            local x1 = djui_hud_get_screen_width() * .048
            local x2 = x1 + math.max(85, djui_hud_get_screen_width() * .196)

            -- >
            if CUR_SKIN_SUNMAR < #SKINTABLE_SUNMAR then
                -- the < > icons move with inputLockTimer for very cool reactive ui
                djui_hud_print_text(">", x2 + inputLockTimer, 90, scale)

                if inputLockTimer == 0 and (c.buttonDown & R_JPAD ~= 0 or c.stickX > 0.5) then
                    CUR_SKIN_SUNMAR = CUR_SKIN_SUNMAR + 1
                    update_character_skin()
                    inputLockTimer = 5
                end
            end
            -- <
            if CUR_SKIN_SUNMAR > 1 then
                djui_hud_print_text("<", x1 - inputLockTimer, 90, scale)

                if inputLockTimer == 0 and (c.buttonDown & L_JPAD ~= 0 or c.stickX < -0.5) then
                    CUR_SKIN_SUNMAR = math.max(CUR_SKIN_SUNMAR - 1, 1)
                    update_character_skin()
                    inputLockTimer = 5
                end
            end
            -- use an input lock to prevent cycling too fast
            inputLockTimer = math.max(0, inputLockTimer - 1)
        end
    end)

else
    djui_popup_create("\\#ffffdc\\\n"..TEXT_MOD_NAME.."\nRequires the Character Select Mod\nto use as a Library!\n\nPlease turn on the Character Select Mod\nand Restart the Room!", 6)
end

------------------
-- Sunshine HUD --
--- by Squishy ---
------------------

-- name: Sunshine HUD

local TEX_HEALTH_METER = get_texture_info("hud-meter")
local TEX_NUMBERS = get_texture_info("hud-numbers")
local TEX_PAINT = get_texture_info("hud-paintslide")
local TEX_SHINE = get_texture_info("hud-icon-shine")
local TEX_COIN_YELLOW = get_texture_info("hud-icon-coin-yellow")
local TEX_COIN_RED = get_texture_info("hud-icon-coin-red")
local TEX_FRACTION = get_texture_info("hud-fraction")
local TEX_NAMEPLATE = get_texture_info("hud-nameplate")
local TEX_TIME = get_texture_info("hud-time")
local TEX_REF_IMAGE = get_texture_info("reference-image")

local MATH_DIVIDE_30 = 1/30
local MATH_DIVIDE_60 = 1/60
local MATH_DIVIDE_256 = 1/256
local MATH_DIVIDE_METER_TEX = 93/107
local MATH_DIVIDE_0x800 = 1/0x800
local MATH_PI = math.pi

local gamemodeHudHide = hud_is_hidden()

local animTimerCoins = 0
local animTimerReds = 0
local animTimerTime = 0
local animTimerLives = 0
local animTimerShine = 0

local animOffsetHealthTimer = 75
local animOffsetDamageTimer = 0
local animOffsetDamageX = 0
local animOffsetDamageY = 0
local animSpeedDamageX = 0
local animSpeedDamageY = 0
local animOffsetShine = 50
local animOffsetLives = 0

local animSpeed = 0.15
local animDelay = 0.5
local animIntensity = 30
local prevLevel = 0

local castleLevels = {
    [LEVEL_CASTLE] = true,
    [LEVEL_CASTLE_COURTYARD] = true,
    [LEVEL_CASTLE_GROUNDS] = true,
}

local starActions = {
    [ACT_STAR_DANCE_EXIT] = true,
    [ACT_STAR_DANCE_NO_EXIT] = true,
    [ACT_STAR_DANCE_WATER] = true,
}

local function render_sunshine_numbers(numberString, x, y, scale, animTimer, intensity, showTrans)
    animTimer = animTimer ~= nil and animTimer or 1000
    intensity = intensity ~= nil and intensity or animIntensity
    for i = 1, #numberString do
        if i > 1 then
            x = x + 25*scale
            y = y - djui_hud_get_rotation().rotation*MATH_DIVIDE_0x800*500
        end
        local anim = math.sin(math.min(math.max(MATH_PI*0.5 + animTimer*animSpeed - animDelay*(i + 1), MATH_PI*0.5), MATH_PI*2))*intensity
        local number = numberString:sub(i,i)
        if number == "x" then
            if showTrans or MATH_PI*0.5 + animTimer*animSpeed - animDelay*(i + 1) > MATH_PI*0.5 then
                djui_hud_render_texture_tile(TEX_NUMBERS, x, y - anim, scale*0.9, scale*0.9, 385, 0, 35, 35)
            end
            x = x + 2
        elseif number == ":" then
            if showTrans or MATH_PI*0.5 + animTimer*animSpeed - animDelay*(i + 1) > MATH_PI*0.5 then
                djui_hud_render_texture_tile(TEX_NUMBERS, x, y - anim, scale, scale, 350, 0, 35, 35)
            end
        else
            if showTrans or MATH_PI*0.5 + animTimer*animSpeed - animDelay*(i + 1) > MATH_PI*0.5 then
                djui_hud_render_texture_tile(TEX_NUMBERS, x, y - anim, scale, scale, 35*tonumber(number), 0, 35, 35)
            end
        end
    end
end

local hudHidden = false
local prevHealth = 8
local function render_sunshine_hud()
    if _G.charSelect.character_get_current_number() ~= CT_SUNMAR or obj_get_first_with_behavior_id(id_bhvActSelector) ~= nil or gamemodeHudHide or _G.charSelect.is_menu_open() then
        if hudHidden then
            hudHidden = false
            animTimerCoins = 0
            animTimerLives = 0
            animTimerShine = 0
            animOffsetLives = 0
            hud_show()
        end
        return
    end

    djui_hud_set_resolution(RESOLUTION_N64)
    djui_hud_set_color(255, 255, 255, 255)
    hud_hide()
    hudHidden = true
    local width = djui_hud_get_screen_width()
    local height = 240
    local m = gMarioStates[0]

    animTimerCoins = animTimerCoins + 1
    animTimerLives = animTimerLives + 1
    local levelNum = gNetworkPlayers[0].currLevelNum
    if prevLevel ~= levelNum and gNetworkPlayers[0].currActNum ~= 99 then
        animTimerCoins = 0
        animTimerLives = 0
        animTimerShine = 0
        animOffsetLives = 0
        prevLevel = levelNum
    end

    if starActions[m.action] or castleLevels[gNetworkPlayers[0].currLevelNum] then
        animTimerShine = animTimerShine + 1
        if animTimerCoins > 91 then
            animTimerCoins = 0
        end
        animTimerCoins = math.min(animTimerCoins, 90)
        animOffsetShine = 0
    else
        if not castleLevels[gNetworkPlayers[0].currLevelNum] then
            animOffsetShine = math.min(animOffsetShine + 4, 50)
        end
    end

    if hud_get_value(HUD_DISPLAY_TIMER) > 0 and not castleLevels[gNetworkPlayers[0].currLevelNum] then
        animTimerTime = animTimerTime + 1
        if animTimerReds > 91 then
            animTimerReds = 0
        end
        animTimerReds = math.min(animTimerReds, 90)
    else
        animTimerTime = 0
    end

    if m.action == ACT_BUBBLED then
        animTimerLives = 0
        animOffsetLives = 0
    end

    --[[
    -- Render Reference Image
    local scaleX = width/911
    local scaleY = height/TEX_REF_IMAGE.height
    djui_hud_set_color(255, 255, 255, 100)
    djui_hud_render_texture(TEX_REF_IMAGE, 0, 0, scaleX, scaleY)
    ]]

    -- Health Meter
    local health = math.floor(m.health*MATH_DIVIDE_256)
    local scale = 0.6
    local x = width - 93*scale - 15
    local y = 10 - math.max(animOffsetHealthTimer, 0)

    if health < 8 then
        animOffsetHealthTimer = -120
        if prevHealth ~= health and prevHealth == 8 then
            local out = {
                x = 0,
                y = 0,
                z = 0
            }
            if math.abs(animOffsetDamageX) < 2 and math.abs(animOffsetDamageY) < 2 then
                djui_hud_world_pos_to_screen_pos(m.pos, out)
                animOffsetDamageX = out.x + 40 - x
                animOffsetDamageY = out.y - 100 - y 
                animSpeedDamageX = animOffsetDamageX*0.1
                animSpeedDamageY = animOffsetDamageY*0.1
            end
            animOffsetDamageTimer = 0
        end
    end
    prevHealth = health

    x = x + animOffsetDamageX
    y = y + animOffsetDamageY
    animOffsetDamageTimer = animOffsetDamageTimer + 1
    if animOffsetDamageTimer > 90 then
        if animOffsetDamageX ~= 0 then
            animOffsetDamageX = (animOffsetDamageX > 0) and math.max(animOffsetDamageX + animSpeedDamageX, 0) or math.min(animOffsetDamageX - animSpeedDamageX, 0)
        end
        if animOffsetDamageY ~= 0 then
            animOffsetDamageY = (animOffsetDamageY > 0) and math.max(animOffsetDamageY - animSpeedDamageY, 0) or math.min(animOffsetDamageY + animSpeedDamageY, 0)
        end
        if health == 8 and math.abs(animOffsetDamageX) < 2 and math.abs(animOffsetDamageY) < 2 then
            animOffsetHealthTimer = math.min(animOffsetHealthTimer + 4, 75)
        end
    end
    djui_hud_set_color(255, 255, 255, 255)
    djui_hud_render_texture_tile(TEX_HEALTH_METER, x, y, scale, scale*MATH_DIVIDE_METER_TEX, 0, 0, 93, 107)
    djui_hud_render_texture_tile(TEX_HEALTH_METER, x, y, scale, scale*MATH_DIVIDE_METER_TEX, 93 * (health + 1) + 1, 0, 93, 107)

    -- Shines
    local shineCount = string.format("%02d", hud_get_value(HUD_DISPLAY_STARS))
    
    local shineScale = 0.6
    local x = 20
    local y = 15
    local animShine = 0
    if animTimerShine > 0 and animOffsetShine < 50 then
        djui_hud_set_rotation(0x800, 0, 0)
        djui_hud_set_color(0, 215, 0, 255)
        animShine = math.sin(math.min(MATH_PI*0.6 + animTimerShine*animSpeed, MATH_PI*2))*animIntensity
        djui_hud_render_texture(TEX_PAINT, x - 5, y + 10 - animShine - animOffsetShine, shineScale, shineScale)
        djui_hud_set_rotation(0, 0, 0)
        djui_hud_set_color(255, 255, 255, 255)
        local animShine = math.sin(math.min(MATH_PI*0.6 + animTimerShine*animSpeed - animDelay, MATH_PI*2))*animIntensity
        djui_hud_render_texture(TEX_SHINE, x, y - animShine - animOffsetShine, shineScale, shineScale)
        djui_hud_set_rotation(0x800, 0, 0)
        render_sunshine_numbers("x"..shineCount, x + 20, y + 2 - animOffsetShine, shineScale, animTimerShine)
    else
        animTimerShine = 0
    end

    -- Coins
    local coinCount = string.format("%02d", hud_get_value(HUD_DISPLAY_COINS))

    local scale = 0.55
    
    local x = 20
    local y = 40 - math.min(animOffsetShine, 25)
    if castleLevels[gNetworkPlayers[0].currLevelNum] then
        y = -50
    end
    djui_hud_set_rotation(0x800, 0, 0)
    djui_hud_set_color(0, 215, 0, 255)
    local animIntensityCoins = (animTimerShine > 0) and 25 or animIntensity
    local anim = math.sin(math.min(MATH_PI*0.6 + animTimerCoins*animSpeed, MATH_PI*2))*animIntensityCoins
    djui_hud_render_texture(TEX_PAINT, x - 5, y + 10 - anim, shineScale, shineScale)
    djui_hud_set_rotation(0, 0, 0)
    djui_hud_set_color(255, 255, 255, 255)
    local anim = math.sin(math.min(MATH_PI*0.6 + animTimerCoins*animSpeed - animDelay, MATH_PI*2))*animIntensityCoins
    djui_hud_render_texture(TEX_COIN_YELLOW, x, y - anim, scale, scale)
    djui_hud_set_rotation(0x800, 0, 0)
    render_sunshine_numbers("x"..coinCount, x + 17, y + 2, scale, animTimerCoins, animIntensityCoins)

    -- Lives
    local lifeCount = string.format("%02d", hud_get_value(HUD_DISPLAY_LIVES))

    local scale = 0.55
    local x = width*0.5 - 40
    local y = 15
    if animTimerLives > 120 then
        animOffsetLives = math.min(animOffsetLives + 4, 50)
    end
    if animOffsetLives < 50 then
        djui_hud_set_rotation(0x800, 0, 0)
        djui_hud_set_color(0, 215, 0, 255)
        local anim = math.sin(math.min(MATH_PI*0.5 + animTimerLives*animSpeed, MATH_PI*2))*animIntensity + animOffsetLives
        djui_hud_render_texture(TEX_PAINT, x - 5, y + 10 - anim, shineScale, shineScale)
        djui_hud_set_rotation(0, 0, 0)
        djui_hud_set_color(255, 255, 255, 255)
        local anim = math.sin(math.min(MATH_PI*0.5 + animTimerLives*animSpeed - animDelay, MATH_PI*2))*animIntensity + animOffsetLives
        djui_hud_render_texture(TEX_SUNMARIO, x, y - anim, 0.65, 0.65)
        djui_hud_set_rotation(0x800, 0, 0)
        local anim = math.sin(math.min(MATH_PI*0.5 + animTimerLives*animSpeed - animDelay*2, MATH_PI*2))*animIntensity + animOffsetLives
        djui_hud_render_texture(TEX_NAMEPLATE, x - 13, y - 8 - anim, scale, scale)
        render_sunshine_numbers("x"..lifeCount, x + 17, y + 2 - animOffsetLives, scale, animTimerLives)
    end

    -- Red Coins
    if m.area.numRedCoins ~= 0 and m.area.numRedCoins - count_objects_with_behavior(get_behavior_from_id(id_bhvRedCoin)) ~= 0 then
        animTimerReds = animTimerReds + 1
    else
        animTimerReds = 0
    end

    if animTimerReds > 0 then
        local collected = m.area.numRedCoins - count_objects_with_behavior(get_behavior_from_id(id_bhvRedCoin))
        local total = m.area.numRedCoins

        local scale = 0.55
        
        local x = 20
        local y = height - (animTimerTime > 0 and 70 or 35)
        djui_hud_set_rotation(0x800, 0, 0)
        djui_hud_set_color(255, 40, 255, 255)
        local animIntensityReds = 35
        local animTimerRedsXSpeed = animTimerReds*animSpeed
        local showtrans = ((animTimerTime > 0) and animTimerReds > 90)
        local anim = math.sin(math.min(MATH_PI*0.6 + animTimerRedsXSpeed, MATH_PI*2))*animIntensityReds
        djui_hud_render_texture(TEX_PAINT, x - 5, y + 10 + anim, shineScale, shineScale)
        djui_hud_set_rotation(0, 0, 0)
        djui_hud_set_color(255, 255, 255, 255)
        local anim = math.sin(math.min(MATH_PI*0.6 + math.max(0, animTimerRedsXSpeed - animDelay), MATH_PI*2))*animIntensityReds
        if showtrans or animTimerRedsXSpeed - animDelay*4 > 0 then
            djui_hud_render_texture(TEX_COIN_RED, x, y + anim, scale, scale)
        end
        local anim = math.sin(math.min(MATH_PI*0.6 + math.max(0, animTimerRedsXSpeed - animDelay*2), MATH_PI*2))*animIntensityReds
        if showtrans or animTimerRedsXSpeed - animDelay*4 > 0 then
            render_sunshine_numbers("x", x + 17, y + 2 + anim, scale)
        end
        local anim = math.sin(math.min(MATH_PI*0.6 + math.max(0, animTimerRedsXSpeed - animDelay*3.5), MATH_PI*2))*animIntensityReds
        if showtrans or animTimerRedsXSpeed - animDelay*4 > 0 then
            djui_hud_render_texture(TEX_FRACTION, x + 40, y - 8 + anim, 0.7, 0.7)
        end
        djui_hud_set_rotation(0x800, 0, 0)
        local anim = math.sin(math.min(MATH_PI*0.6 + math.max(0, animTimerRedsXSpeed - animDelay*3), MATH_PI*2))*animIntensityReds
        if showtrans or animTimerRedsXSpeed - animDelay*4 > 0 then
            render_sunshine_numbers(tostring(collected), x + 32, y - 8 + anim, scale)
        end
        local anim = math.sin(math.min(MATH_PI*0.6 + math.max(0, animTimerRedsXSpeed - animDelay*4), MATH_PI*2))*animIntensityReds
        if showtrans or animTimerRedsXSpeed - animDelay*4 > 0 then
            render_sunshine_numbers(tostring(total), x + 56, y + 6 + anim, 0.4)
        end
    end

    -- Timer
    if animTimerTime > 0 then
        local time = hud_get_value(HUD_DISPLAY_TIMER)
        local timerString = string.format("%s:%s:%s", string.format("%02d", math.floor(time*MATH_DIVIDE_30*MATH_DIVIDE_60)%60), string.format("%02d", math.floor(time*MATH_DIVIDE_30)%60), string.format("%02d", math.floor(time*MATH_DIVIDE_30*100)%100))

        local scale = 0.50
        
        local x = 20
        local y = height - 35
        djui_hud_set_color(255, 40, 255, 255)
        local animIntensityTime = 25
        local animTimerTimeXSpeed = animTimerTime*animSpeed
        local anim = math.sin(math.min(MATH_PI*0.6 + animTimerTimeXSpeed, MATH_PI*2))*animIntensityTime
        djui_hud_set_rotation(0x800, 0, 0)
        djui_hud_render_texture(TEX_PAINT, x - 5, y + 10 + anim, 0.8, 0.8)
        djui_hud_set_color(255, 255, 255, 255)
        local anim = math.sin(math.min(MATH_PI*0.6 + math.max(0, animTimerTimeXSpeed - animDelay), MATH_PI*2))*animIntensityTime
        if animTimerTimeXSpeed - animDelay*4 > 0 then
            djui_hud_render_texture(TEX_TIME, x - 2, y - 5 + anim, scale, scale)
        end
        local anim = math.sin(math.min(MATH_PI*0.6 + math.max(0, animTimerTimeXSpeed - animDelay*2), MATH_PI*2))*animIntensityTime
        if animTimerTimeXSpeed - animDelay*4 > 0 then
            render_sunshine_numbers(timerString, x , y + 8, scale, animTimerTime, -animIntensityTime)
        end
    end
end

hook_event(HOOK_ON_HUD_RENDER_BEHIND, render_sunshine_hud)