-- name: [CS] Maurice
-- description: [CS] Maurice\nBy Quotation & SKL\n\nGoddamnit.\nVersion 1.3
-- deluxe: true
local modName = "Maurice";
local packVers = "1.3.1";

local E_MODEL_MAURICE = smlua_model_util_get_id("maurice_geo");
local MAURICE_SOUNDBANK = {
	[CHAR_SOUND_OKEY_DOKEY] = 'MauriceOKIEDOKIE.ogg', -- Starting game
	[CHAR_SOUND_LETS_A_GO] = 'MauriceLETSAGO.ogg', -- Starting level
	[CHAR_SOUND_PUNCH_YAH] = 'MauricePUNCHYAH.ogg', -- Punch 1
	[CHAR_SOUND_PUNCH_WAH] = 'MauricePUNCHWAH.ogg', -- Punch 2
	[CHAR_SOUND_PUNCH_HOO] = 'MauricePUNCHHOO.ogg', -- Punch 3
	[CHAR_SOUND_YAH_WAH_HOO] = {'MauriceJUMPYAH.ogg', 'MauriceJUMPWAH.ogg', 'MauriceJUMPHOO.ogg'}, -- First/Second jump sounds
	[CHAR_SOUND_HOOHOO] = 'MauriceJUMPHOOHOO.ogg', -- Third jump sound
	[CHAR_SOUND_YAHOO_WAHA_YIPPEE] = {'MauriceWAHA.ogg', 'MauriceYIPPEE.ogg'}, -- Triple jump sounds
	[CHAR_SOUND_UH] = 'MauriceUH.ogg', -- Wall bonk
	[CHAR_SOUND_UH2] = 'MauriceUH2.ogg', -- Landing after long jump
	[CHAR_SOUND_UH2_2] = 'MauriceUH2.ogg', -- Same sound as UH2; jumping onto ledge
	[CHAR_SOUND_OOOF] = 'MauriceOOOF.ogg', -- Pushed by a bully
	[CHAR_SOUND_OOOF2] = 'MauriceOOOF.ogg', -- Same as OOOF, landing after ejected from painting
	[CHAR_SOUND_HAHA] = 'MauriceHAHA.ogg', -- Landing triple jump
	[CHAR_SOUND_YAHOO] = 'MauriceYAHOO.ogg', -- Long jump
	[CHAR_SOUND_DOH] = 'MauriceDOH.ogg', -- Long jump wall bonk
	[CHAR_SOUND_WHOA] = 'MauriceWHOA.ogg', -- Grabbing ledge
	[CHAR_SOUND_EEUH] = 'MauriceEEUH.ogg', -- Climbing over ledge
	[CHAR_SOUND_WAAAOOOW] = 'MauriceWAAAOOOW.ogg', -- Falling a long distance
	[CHAR_SOUND_TWIRL_BOUNCE] = 'MauriceTWIRLBOUNCE.ogg', -- Bouncing off of a flower spring
	[CHAR_SOUND_GROUND_POUND_WAH] = 'MauriceGROUNDPOUNDWAH.ogg', 
	[CHAR_SOUND_HRMM] = 'MauriceHRMM.ogg', -- Lifting something
	[CHAR_SOUND_HERE_WE_GO] = 'MauriceHEREWEGO.ogg', -- Star get
	[CHAR_SOUND_SO_LONGA_BOWSER] = 'MauriceSOLONGABOWSER.ogg', -- Throwing Bowser
--DAMAGE
	[CHAR_SOUND_ATTACKED] = 'MauriceATTACKED.ogg', -- Damaged
	[CHAR_SOUND_PANTING] = 'MauricePANTING.ogg', -- Low health
	[CHAR_SOUND_ON_FIRE] = 'MauriceONFIRE.ogg', -- Burned
--SLEEP SOUNDS
	[CHAR_SOUND_IMA_TIRED] = 'MauriceIMATIRED.ogg', -- Mario feeling tired
	[CHAR_SOUND_YAWNING] = 'MauriceYAWN.ogg', -- Mario yawning before he sits down to sleep
	[CHAR_SOUND_SNORING1] = 'MauriceSNORING1.ogg', -- Snore Inhale
	[CHAR_SOUND_SNORING2] = 'MauriceSNORING2.ogg', -- Exhale
	[CHAR_SOUND_SNORING3] = 'MauriceSNORING3.ogg', -- Sleep talking / mumbling
--COUGHING (USED IN THE GAS MAZE)
	[CHAR_SOUND_COUGHING1] = 'MauriceCOUGHING.ogg', -- Cough take 1
	[CHAR_SOUND_COUGHING2] = 'MauriceCOUGHING.ogg', -- Cough take 2
	[CHAR_SOUND_COUGHING3] = 'MauriceCOUGHING.ogg', -- Cough take 3
--DEATH
	[CHAR_SOUND_DYING] = 'MauriceDYING.ogg', -- Dying from damage
	[CHAR_SOUND_DROWNING] = 'MauriceDROWNING.ogg', -- Running out of air underwater
	[CHAR_SOUND_MAMA_MIA] = 'MauriceMAMMAMIA.ogg' -- Booted out of level
}
local MAURICE_DESC = {
	"Peppino's older, garbage brother.",
	"Works at a garbage factory and",
	"has a gambling addiction.",
	"",
	"Model by SKL & Quotation",
	"Mixing by ZAIDORZ",
	"Voiced by ChipPotato",
	"Course texture template by Mike",
	"Version ".. packVers
}
local MAURICE_CAPMODELS = { -- cap code
	normal = smlua_model_util_get_id("maurice_cap_geo"),
	wing = smlua_model_util_get_id("maurice_cap_wing_geo"),
	metal = smlua_model_util_get_id("maurice_cap_metal_geo"),
	metalWing = smlua_model_util_get_id("maurice_cap_metal_wing_geo"),
}
local MAURICE_PALETTE = {
	[PANTS] = "000000",
	[SHIRT] = "5bbf4f",
	[GLOVES] = "000000",
	[SHOES] = "000000",
	[HAIR] = "000000",
	[SKIN] = "ffaa83",
	[CAP] = "5bbf4f",
	[EMBLEM] = "5bbf4f"
}

local healthHUDTex = {
	label = {
		left = get_texture_info("M-healthhudback-left"),
		right = get_texture_info("M-healthhudback-right"),
	},	pie = {
		[8] = get_texture_info("M-slice8"),
		[7] = get_texture_info("M-slice7"),
		[6] = get_texture_info("M-slice6"),
		[5] = get_texture_info("M-slice5"),
		[4] = get_texture_info("M-slice4"),
		[3] = get_texture_info("M-slice3"),
		[2] = get_texture_info("M-slice2"),
		[1] = get_texture_info("M-slice1"),
	}
}
local courseTex = {
	top = get_texture_info("M-course-top"),
	bottom = get_texture_info("M-course-bottom")
}

hook_event(HOOK_ON_MODS_LOADED, function()
	if _G.charSelectExists then
		if _G.charSelect.get_version_full and _G.charSelect.get_version_full().major < 12 then
			djui_chat_message_create("\\#ffffa0\\"..modName.."can only run on the latest version of Character Select. Please update.");
		else
			-- DESCRIPTION & CREDITS
			_G.charSelect.credit_add(modName, "Quotation", "Programmer, modified model");
			_G.charSelect.credit_add(modName, "SuperKirbylover", "Programmer, original model");
			_G.charSelect.credit_add(modName, "ZAIDORZ", "Mixing");
			_G.charSelect.credit_add(modName, "ChipPotato", "Voice of Maurice");
			_G.charSelect.credit_add(modName, "Mike", "Course Select texture template");
			
			local charNum = _G.charSelect.character_add("Maurice", MAURICE_DESC, "Maurice", {r = 91, g = 191, b = 79}, E_MODEL_MAURICE, CT_WARIO, get_texture_info("maurice_icon"));
			_G.charSelect.character_add_caps(E_MODEL_MAURICE, MAURICE_CAPMODELS); -- cap code
			
			_G.charSelect.character_add_palette_preset(E_MODEL_MAURICE, MAURICE_PALETTE);
			_G.charSelect.character_add_health_meter(charNum, healthHUDTex);
			_G.charSelect.character_add_course_texture(charNum, courseTex);
			
			_G.charSelect.character_add_voice(E_MODEL_MAURICE, MAURICE_SOUNDBANK);
			
			_G.charSelect.config_character_sounds();
		end
	else
		djui_chat_message_create("\\#ffffa0\\"..modName.."requires the Character Select Mod. Please turn on Character Select and restart the room."); -- partially stole this from extra charas ultimate pack. love you
	end
end);