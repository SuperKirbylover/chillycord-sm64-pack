-- name: [CS] Modern Sonic Pack
-- description: \\#ffffff\\It's Modern \\#0018B6\\Sonic\\#ffffff\\, \\#F2AE00\\Tails\\#ffffff\\, \\#D80000\\Knuckles\\#ffffff\\, and \\#8F0000\\Eggman\\#ffffff\\, along with \\#635940\\Shadow the Hedgehog\\#FFFFFF\\!\n\n\\#ff7777\\This Pack requires Character Select\nto use as a Library!

local globalModName = "Modern Sonic Pack"

if not _G.charSelectExists then
    djui_popup_create("\\#ffffdc\\\n"..TEXT_MOD_NAME.."\nRequires the Character Select Mod\nto use as a Library!\n\nPlease turn on the Character Select Mod\nand Restart the Room!", 6)
    return 0
end

local E_MSONIC_MODEL = smlua_model_util_get_id("ModernSonic_geo") -- Located in "actors"
local E_MTAILS_MODEL = smlua_model_util_get_id("ModernTails_geo") -- Located in "actors"
local E_MKNUCKLES_MODEL = smlua_model_util_get_id("ModernKnuckles_geo") -- Located in "actors"
local E_SHADOW_MODEL = smlua_model_util_get_id("Shadow_geo") -- Located in "actors"
local E_MEGGMAN_MODEL = smlua_model_util_get_id("ModernEggman_geo") -- Located in "actors"
local E_MSUPERSONIC_MODEL = smlua_model_util_get_id("ModernSuperSonic_geo") -- Located in "actors"

local TEX_MSONIC_LIFE_ICON = get_texture_info("sa-sonic-life") -- Located in "textures"
local TEX_MTAILS_LIFE_ICON = get_texture_info("sa-tails-life") -- Located in "textures"
local TEX_MKNUCKLES_LIFE_ICON = get_texture_info("sa-knux-life") -- Located in "textures"
local TEX_SHADOW_LIFE_ICON = get_texture_info("shadow-life") -- Located in "textures"
local TEX_MEGGMAN_LIFE_ICON = get_texture_info("sa-eggman-life") -- Located in "textures"
local TEX_MSUPERSONIC_LIFE_ICON = get_texture_info("super-sonic-life") -- Located in "textures"

local VOICETABLE_MSONIC = {
    [CHAR_SOUND_ATTACKED] = 's-huegh.ogg',
    [CHAR_SOUND_DOH] = 's-huegh.ogg',
    [CHAR_SOUND_DROWNING] = 's-drown.ogg',
    [CHAR_SOUND_DYING] = 's-uahgh.ogg',
    [CHAR_SOUND_GROUND_POUND_WAH] = 's-go.ogg',
    [CHAR_SOUND_HAHA] = 's-yeah.ogg',
    [CHAR_SOUND_HAHA_2] = 's-yeah.ogg',
    [CHAR_SOUND_HERE_WE_GO] = 's-tooeasy.ogg',
    [CHAR_SOUND_HOOHOO] = 's-yes2.ogg',
    [CHAR_SOUND_MAMA_MIA] = 's-cmon.ogg',
    [CHAR_SOUND_OKEY_DOKEY] = 's-letsdothis.ogg',
    [CHAR_SOUND_ON_FIRE] = 's-hyagh.ogg',
    [CHAR_SOUND_OOOF] = 's-dying.ogg',
    [CHAR_SOUND_OOOF2] = 's-dying.ogg',
    [CHAR_SOUND_PUNCH_HOO] = 's-go.ogg',
    [CHAR_SOUND_PUNCH_WAH] = 's-hat.ogg',
    [CHAR_SOUND_PUNCH_YAH] = 's-hut.ogg',
    [CHAR_SOUND_SO_LONGA_BOWSER] = 's-betterlucknexttime.ogg',
    [CHAR_SOUND_TWIRL_BOUNCE] = 's-woohoo.ogg',
    [CHAR_SOUND_WAAAOOOW] = 's-whoaaa.ogg',
    [CHAR_SOUND_WAH2] = 's-hut.ogg',
    [CHAR_SOUND_WHOA] = 's-what.ogg',
    [CHAR_SOUND_YAHOO] = 's-yahoo.ogg',
    [CHAR_SOUND_YAHOO_WAHA_YIPPEE] = 's-alright.ogg',
    [CHAR_SOUND_YAH_WAH_HOO] = 's-hah.ogg',
    [CHAR_SOUND_YAWNING] = 's-spike.ogg',
}

local VOICETABLE_MTAILS = {
    [CHAR_SOUND_ATTACKED] = 't-ow.ogg',
    [CHAR_SOUND_DOH] = 't-ow2.ogg',
    [CHAR_SOUND_DROWNING] = 't-ow.ogg',
    [CHAR_SOUND_DYING] = 't-ahh.ogg',
    [CHAR_SOUND_GROUND_POUND_WAH] = 't-yeah.ogg',
    [CHAR_SOUND_HAHA] = 't-yeah.ogg',
    [CHAR_SOUND_HAHA_2] = 't-yeah.ogg',
    [CHAR_SOUND_HERE_WE_GO] = 't-ididit.ogg',
    [CHAR_SOUND_HOOHOO] = 't-go.ogg',
    [CHAR_SOUND_MAMA_MIA] = 't-oops.ogg',
    [CHAR_SOUND_OKEY_DOKEY] = 't-alright.ogg',
    [CHAR_SOUND_ON_FIRE] = 't-ahh.ogg',
    [CHAR_SOUND_OOOF] = 't-owch.ogg',
    [CHAR_SOUND_OOOF2] = 't-owch.ogg',
    [CHAR_SOUND_PUNCH_HOO] = 't-yag.ogg',
    [CHAR_SOUND_PUNCH_WAH] = 't-go.ogg',
    [CHAR_SOUND_PUNCH_YAH] = 't-hoit.ogg',
    [CHAR_SOUND_SO_LONGA_BOWSER] = 't-howsthat.ogg',
    [CHAR_SOUND_TWIRL_BOUNCE] = 't-gogo.ogg',
    [CHAR_SOUND_WAAAOOOW] = 't-ahh.ogg',
    [CHAR_SOUND_WAH2] = 't-yag.ogg',
    [CHAR_SOUND_WHOA] = 't-whuh.ogg',
    [CHAR_SOUND_YAHOO] = 't-go.ogg',
    [CHAR_SOUND_YAHOO_WAHA_YIPPEE] = 't-alright.ogg',
    [CHAR_SOUND_YAH_WAH_HOO] = 't-hut.ogg',
    [CHAR_SOUND_YAWNING] = 's-spike.ogg',
}

local VOICETABLE_MKNUCKLES = {
    [CHAR_SOUND_ATTACKED] = 'k-ohno.ogg',
    [CHAR_SOUND_DOH] = 'k-tyuh.ogg',
    [CHAR_SOUND_DROWNING] = 'k-drown.ogg',
    [CHAR_SOUND_DYING] = 'k-dying.ogg',
    [CHAR_SOUND_GROUND_POUND_WAH] = 'k-yeah.ogg',
    [CHAR_SOUND_HAHA] = 'k-yeah.ogg',
    [CHAR_SOUND_HAHA_2] = 'k-yeah.ogg',
    [CHAR_SOUND_HERE_WE_GO] = 'k-nottoobad.ogg',
    [CHAR_SOUND_HOOHOO] = 'k-hup.ogg',
    [CHAR_SOUND_MAMA_MIA] = 'k-didntuse.ogg',
    [CHAR_SOUND_OKEY_DOKEY] = 'k-awright.ogg',
    [CHAR_SOUND_ON_FIRE] = 'k-dying.ogg',
    [CHAR_SOUND_OOOF] = 'k-ouh.ogg',
    [CHAR_SOUND_OOOF2] = 'k-ouh.ogg',
    [CHAR_SOUND_PUNCH_HOO] = 'k-tyuh.ogg',
    [CHAR_SOUND_PUNCH_WAH] = 'k-hup.ogg',
    [CHAR_SOUND_PUNCH_YAH] = 'k-hoop.ogg',
    [CHAR_SOUND_SO_LONGA_BOWSER] = 'k-seeya.ogg',
    [CHAR_SOUND_TWIRL_BOUNCE] = 'k-yeah.ogg',
    [CHAR_SOUND_WAAAOOOW] = 'k-augh.ogg',
    [CHAR_SOUND_WAH2] = 'k-hoop.ogg',
    [CHAR_SOUND_WHOA] = 'k-whoa.ogg',
    [CHAR_SOUND_YAHOO] = 'k-alright.ogg',
    [CHAR_SOUND_YAHOO_WAHA_YIPPEE] = 'k-alright.ogg',
    [CHAR_SOUND_YAH_WAH_HOO] = 'k-hoop.ogg',
    [CHAR_SOUND_YAWNING] = 's-spike.ogg',
}

local VOICETABLE_SHADOW = {
    [CHAR_SOUND_ATTACKED] = 'sh-houp.ogg',
    [CHAR_SOUND_DOH] = 'sh-hnt.ogg',
    [CHAR_SOUND_DROWNING] = 'sh-death.ogg',
    [CHAR_SOUND_DYING] = 'sh-death.ogg',
    [CHAR_SOUND_GROUND_POUND_WAH] = 'sh-hm.ogg',
    [CHAR_SOUND_HAHA] = 'sh-hmp.ogg',
    [CHAR_SOUND_HAHA_2] = 'sh-hmp.ogg',
    [CHAR_SOUND_HERE_WE_GO] = 'sh-ultimatepower.ogg',
    [CHAR_SOUND_HOOHOO] = 'sh-hoop.ogg',
    [CHAR_SOUND_MAMA_MIA] = 'sh-average.ogg',
    [CHAR_SOUND_OKEY_DOKEY] = 'sh-average.ogg',
    [CHAR_SOUND_ON_FIRE] = 'sh-death.ogg',
    [CHAR_SOUND_OOOF] = 'sh-hht.ogg',
    [CHAR_SOUND_OOOF2] = 'sh-hht.ogg',
    [CHAR_SOUND_PUNCH_HOO] = 'sh-hut.ogg',
    [CHAR_SOUND_PUNCH_WAH] = 'sh-hup.ogg',
    [CHAR_SOUND_PUNCH_YAH] = 'sh-hnt.ogg',
    [CHAR_SOUND_SO_LONGA_BOWSER] = 'sh-yourweakness.ogg',
    [CHAR_SOUND_TWIRL_BOUNCE] = 'sh-what.ogg',
    [CHAR_SOUND_WAAAOOOW] = 'sh-what.ogg',
    [CHAR_SOUND_WAH2] = 'sh-hmm.ogg',
    [CHAR_SOUND_WHOA] = 'sh-what.ogg',
    [CHAR_SOUND_YAHOO] = 'sh-hmp.ogg',
    [CHAR_SOUND_YAHOO_WAHA_YIPPEE] = 'sh-tah.ogg',
    [CHAR_SOUND_YAH_WAH_HOO] = 'sh-hm.ogg',
    [CHAR_SOUND_YAWNING] = 's-spike.ogg',
}

local VOICETABLE_MEGGMAN = {
    [CHAR_SOUND_ATTACKED] = 'egg-oof.mp3',
    [CHAR_SOUND_DOH] = 'egg-hoop.mp3',
    [CHAR_SOUND_DROWNING] = 'egg-drown.mp3',
    [CHAR_SOUND_DYING] = 'egg-dying.mp3',
    [CHAR_SOUND_GROUND_POUND_WAH] = 'egg-takethis.mp3',
    [CHAR_SOUND_HAHA] = 'egg-haha.mp3',
    [CHAR_SOUND_HAHA_2] = 'egg-hahaha.mp3',
    [CHAR_SOUND_HERE_WE_GO] = 'egg-herewego.mp3',
    [CHAR_SOUND_HOOHOO] = 'egg-hup.mp3',
    [CHAR_SOUND_MAMA_MIA] = 'egg-ihatedriving.mp3',
    [CHAR_SOUND_OKEY_DOKEY] = 'egg-what.mp3',
    [CHAR_SOUND_ON_FIRE] = 'egg-fire.mp3',
    [CHAR_SOUND_OOOF] = 'egg-oof.mp3',
    [CHAR_SOUND_OOOF2] = 'egg-oof-low-energy.mp3',
    [CHAR_SOUND_PUNCH_HOO] = 'egg-hah.mp3',
    [CHAR_SOUND_PUNCH_WAH] = 'egg-hup.mp3',
    [CHAR_SOUND_PUNCH_YAH] = 'egg-yop.mp3',
    [CHAR_SOUND_SO_LONGA_BOWSER] = 'egg-takethis.mp3',
    [CHAR_SOUND_TWIRL_BOUNCE] = 'egg-yosh.mp3',
    [CHAR_SOUND_WAAAOOOW] = 'egg-noo.mp3',
    [CHAR_SOUND_WAH2] = 'egg-hah.mp3',
    [CHAR_SOUND_WHOA] = 'egg-houh.mp3',
    [CHAR_SOUND_YAHOO] = 'egg-hahaha.mp3',
    [CHAR_SOUND_YAHOO_WAHA_YIPPEE] = 'egg-hoop.mp3',
    [CHAR_SOUND_YAH_WAH_HOO] = 'egg-yop.mp3',
    [CHAR_SOUND_YAWNING] = 's-spike.ogg',
}

local PALETTE_MSONIC = {
    [PANTS]  = "FFFFFF",
    [SHIRT]  = "0E20A1",
    [GLOVES] = "FFFFFF",
    [SHOES]  = "FF0000",
    [HAIR]   = "FFFFFF",
    [SKIN]   = "F9B160",
    [CAP]    = "FFE900",
    [EMBLEM]  = "818181",
}

local PALETTE_MTAILS = {
    [PANTS]  = "FFFFFF",
    [SHIRT]  = "FD9300",
    [GLOVES] = "FFFFFF",
    [SHOES]  = "FFFFFF",
    [HAIR]   = "FF0000",
    [SKIN]   = "FFFFFF",
    [CAP]    = "FFE900",
    [EMBLEM]  = "99ACB5",
}

local PALETTE_MKNUCKLES = {
    [PANTS]  = "00A209",
    [SHIRT]  = "E0001A",
    [GLOVES] = "FFFFFF",
    [SHOES]  = "FF0000",
    [HAIR]   = "FFCA00",
    [SKIN]   = "E0A267",
    [CAP]    = "FFFFFF",
    [EMBLEM]  = "8F8F8F",
}

local PALETTE_SHADOW = {
    [PANTS]  = "181818",
    [SHIRT]  = "262626",
    [GLOVES] = "FFFFFF",
    [SHOES]  = "FFFFFF",
    [HAIR]   = "181818",
    [SKIN]   = "DD852A",
    [CAP]    = "CE0000",
    [EMBLEM]  = "FF0000",
}

local PALETTE_MEGGMAN = {
    [PANTS]  = "1A1A1A",
    [SHIRT]  = "F10A00",
    [GLOVES] = "FFFFFF",
    [SHOES]  = "1A1A1A",
    [HAIR]   = "AD5400",
    [SKIN]   = "F0AD7A",
    [CAP]    = "EEB600",
    [EMBLEM]  = "F77775",
}

local PALETTE_MSUPERSONIC = {
    [PANTS]  = "FFFFFF",
    [SHIRT]  = "FCD900",
    [GLOVES] = "FFFFFF",
    [SHOES]  = "FF0000",
    [HAIR]   = "FFFFFF",
    [SKIN]   = "F9B160",
    [CAP]    = "FFE900",
    [EMBLEM]  = "818181",
}

local CSloaded = false
local function on_character_select_load()
    CT_MSONIC = _G.charSelect.character_add("Modern Sonic", {"The blue blur in his modern form!", ""}, "MrGameAndSketch", {r = 0, g = 24, b = 182}, E_MSONIC_MODEL, CT_MSONIC, TEX_MSONIC_LIFE_ICON)
    _G.charSelect.character_add_voice(E_MSONIC_MODEL, VOICETABLE_MSONIC)
    _G.charSelect.character_add_palette_preset(E_MSONIC_MODEL, PALETTE_MSONIC)

    CT_MTAILS = _G.charSelect.character_add("Modern Tails", {"The ever-reliable flying sidekick.", ""}, "MrGameAndSketch", {r = 242, g = 174, b = 0}, E_MTAILS_MODEL, CT_MTAILS, TEX_MTAILS_LIFE_ICON)
    _G.charSelect.character_add_voice(E_MTAILS_MODEL, VOICETABLE_MTAILS)
    _G.charSelect.character_add_palette_preset(E_MTAILS_MODEL, PALETTE_MTAILS)

    CT_MKNUCKLES = _G.charSelect.character_add("Modern Knuckles", {"He's rougher than the rest of them.", ""}, "MrGameAndSketch", {r = 216, g = 0, b = 0}, E_MKNUCKLES_MODEL, CT_MKNUCKLES, TEX_MKNUCKLES_LIFE_ICON)
    _G.charSelect.character_add_voice(E_MKNUCKLES_MODEL, VOICETABLE_MKNUCKLES)
    _G.charSelect.character_add_palette_preset(E_MKNUCKLES_MODEL, PALETTE_MKNUCKLES)

    CT_SHADOW = _G.charSelect.character_add("Shadow the Hedgehog", {"The ultimate lifeform seeks vengeance in Coop DX!", ""}, "MrGameAndSketch", {r = 99, g = 89, b = 64}, E_SHADOW_MODEL, CT_SHADOW, TEX_SHADOW_LIFE_ICON)
    _G.charSelect.character_add_voice(E_SHADOW_MODEL, VOICETABLE_SHADOW)
    _G.charSelect.character_add_palette_preset(E_SHADOW_MODEL, PALETTE_SHADOW)

    CT_MEGGMAN = _G.charSelect.character_add("Modern Eggman", {"The evil Dr. Eggman, now here to take over Coop DX!", ""}, "MrGameAndSketch", {r = 143, g = 0, b = 0}, E_MEGGMAN_MODEL, CT_MEGGMAN, TEX_MEGGMAN_LIFE_ICON)
    _G.charSelect.character_add_voice(E_MEGGMAN_MODEL, VOICETABLE_MEGGMAN)
    _G.charSelect.character_add_palette_preset(E_MEGGMAN_MODEL, PALETTE_MEGGMAN)

    CT_MSUPERSONIC = _G.charSelect.character_add("Modern Super Sonic", {"The blue blur in his super form!", ""}, "MrGameAndSketch", {r = 255, g = 255, b = 0}, E_MSUPERSONIC_MODEL, CT_MSUPERSONIC, TEX_MSUPERSONIC_LIFE_ICON)
    _G.charSelect.character_add_voice(E_MSUPERSONIC_MODEL, VOICETABLE_MSONIC)
    _G.charSelect.character_add_palette_preset(E_MSUPERSONIC_MODEL, PALETTE_MSUPERSONIC)

    CSloaded = true
end

local function on_character_sound(m, sound)
    if not CSloaded then return end
    if _G.charSelect.character_get_voice(m) == VOICETABLE_MSONIC then return _G.charSelect.voice.sound(m, sound) end
    if _G.charSelect.character_get_voice(m) == VOICETABLE_MTAILS then return _G.charSelect.voice.sound(m, sound) end
    if _G.charSelect.character_get_voice(m) == VOICETABLE_MKNUCKLES then return _G.charSelect.voice.sound(m, sound) end
    if _G.charSelect.character_get_voice(m) == VOICETABLE_SHADOW then return _G.charSelect.voice.sound(m, sound) end
    if _G.charSelect.character_get_voice(m) == VOICETABLE_MEGGMAN then return _G.charSelect.voice.sound(m, sound) end
end

local function on_character_snore(m)
    if not CSloaded then return end
    if _G.charSelect.character_get_voice(m) == VOICETABLE_MSONIC then return _G.charSelect.voice.snore(m) end
end

hook_event(HOOK_ON_MODS_LOADED, on_character_select_load)
hook_event(HOOK_CHARACTER_SOUND, on_character_sound)
hook_event(HOOK_MARIO_UPDATE, on_character_snore)
