-- name: [CS] Brian Griffin
-- description: Model from Family Guy: Video Game! (PSP), edited by SKL\nMixing by ZAIDORZ\n\nWoah, ass ahoy.\nv1.2.2
-- deluxe: true
local modName = "Brian Griffin";
local packVers = "1.2.2";
local E_MODEL_BRIAN = smlua_model_util_get_id("brian_skl_geo");
local BRIAN_SOUNDBANK = {
	[CHAR_SOUND_OKEY_DOKEY] = 'BrianOKEYDOKEY.ogg', -- Starting game
	[CHAR_SOUND_LETS_A_GO] = 'BrianLETSAGO.ogg', -- Starting level
	[CHAR_SOUND_PUNCH_YAH] = 'BrianPUNCHYAH.ogg', -- Punch 1
	[CHAR_SOUND_PUNCH_WAH] = 'BrianPUNCHWAH.ogg', -- Punch 2
	[CHAR_SOUND_PUNCH_HOO] = 'BrianPUNCHHOO.ogg', -- Punch 3
	[CHAR_SOUND_YAH_WAH_HOO] = {'BrianJUMPYAH.ogg', 'BrianJUMPWAH.ogg', 'BrianJUMPHOO.ogg'}, -- First/Second jump sounds
	[CHAR_SOUND_HOOHOO] = 'BrianJUMPHOOHOO.ogg', -- Third jump sound
	[CHAR_SOUND_YAHOO_WAHA_YIPPEE] = {'BrianWAHA.ogg', 'BrianYIPPEE.ogg'}, -- Triple jump sounds
	[CHAR_SOUND_UH] = 'BrianUH.ogg', -- Wall bonk
	[CHAR_SOUND_UH2] = 'BrianPUNCHYAH.ogg', -- Landing after long jump
	[CHAR_SOUND_UH2_2] = 'BrianPUNCHYAH.ogg', -- Same sound as UH2; jumping onto ledge
	[CHAR_SOUND_HAHA] = 'BrianHAHA.ogg', -- Landing triple jump
	[CHAR_SOUND_YAHOO] = 'BrianYAHOO.ogg', -- Long jump
	[CHAR_SOUND_DOH] = 'BrianDOH.ogg', -- Long jump wall bonk
	[CHAR_SOUND_WHOA] = 'BrianWHOA.ogg', -- Grabbing ledge
	[CHAR_SOUND_EEUH] = 'BrianEEUH.ogg', -- Climbing over ledge
	[CHAR_SOUND_WAAAOOOW] = 'BrianWAAAOOOW.ogg', -- Falling a long distance
	[CHAR_SOUND_TWIRL_BOUNCE] = 'BrianTWIRLBOUNCE.ogg', -- Bouncing off of a flower spring
	[CHAR_SOUND_GROUND_POUND_WAH] = 'BrianGROUNDPOUNDWAH.ogg', 
	[CHAR_SOUND_HRMM] = 'BrianHRMM.ogg', -- Lifting something
	[CHAR_SOUND_HERE_WE_GO] = 'BrianHEREWEGO.ogg', -- Star get
	[CHAR_SOUND_SO_LONGA_BOWSER] = 'BrianSOLONGABOWSER.ogg', -- Throwing Bowser
--DAMAGE
	[CHAR_SOUND_ATTACKED] = 'BrianATTACKED.ogg', -- Damaged
	[CHAR_SOUND_PANTING] = 'BrianPANTING.ogg', -- Low health
	[CHAR_SOUND_ON_FIRE] = 'BrianONFIRE.ogg', -- Burned
--SLEEP SOUNDS
	--[CHAR_SOUND_IMA_TIRED] = 'BrianIMATIRED.ogg', -- Mario feeling tired
	--[CHAR_SOUND_YAWNING] = 'BrianYAWN.ogg', -- Mario yawning before he sits down to sleep
	--[CHAR_SOUND_SNORING1] = 'BrianSNORING1.ogg', -- Snore Inhale
	[CHAR_SOUND_SNORING2] = 'BrianSNORING2.ogg', -- Exhale
	--[CHAR_SOUND_SNORING3] = 'BrianSNORING3.ogg', -- Sleep talking / mumbling
--COUGHING (USED IN THE GAS MAZE)
	--[CHAR_SOUND_COUGHING1] = 'BrianCOUGHING.ogg', -- Cough take 1
	--[CHAR_SOUND_COUGHING2] = 'BrianCOUGHING.ogg', -- Cough take 2
	--[CHAR_SOUND_COUGHING3] = 'BrianCOUGHING.ogg', -- Cough take 3
--DEATH
	[CHAR_SOUND_DYING] = 'BrianDYING.ogg', -- Dying from damage
	[CHAR_SOUND_DROWNING] = 'BrianDROWNING.ogg', -- Running out of air underwater
	[CHAR_SOUND_MAMA_MIA] = 'BrianMAMAMIA.ogg' -- Booted out of level
}

local BRIAN_CAPMODELS = { -- cap code
	normal = smlua_model_util_get_id("brian_skl_cap_geo"),
	wing = smlua_model_util_get_id("brian_skl_cap_wing_geo"),
	metal = smlua_model_util_get_id("brian_skl_cap_metal_geo"),
	metalWing = smlua_model_util_get_id("brian_skl_cap_metal_wing_geo"),
}
local BRIAN_PALETTE = {
	[PANTS] = "ffffff",
	[SHIRT] = "ffffff",
	[GLOVES] = "ffa019", -- collar yellow
	[SHOES] = "ffffff",
	[HAIR] = "000000", -- nose
	[SKIN] = "ffffff",
	[CAP] = "b70730" -- collar
}

hook_event(HOOK_ON_MODS_LOADED, function()
	if _G.charSelectExists then
		if _G.charSelect.get_version_full and _G.charSelect.get_version_full().major < 12 then
			djui_chat_message_create("\\#ffffa0\\"..modName.."can only run on the latest version of Character Select. Please update.");
		else
		-- DESCRIPTION & CREDITS
			_G.charSelect.credit_add(modName, "SuperKirbylover", "Programmer");
			_G.charSelect.credit_add(modName, "ZAIDORZ", "Mixing");
			
			local charNum = _G.charSelect.character_add("Brian", {"Woah, ass ahoy.", "", "Version "..packVers}, "SKL, ZAIDORZ", { r = 183, g = 7, b = 48 }, E_MODEL_BRIAN, CT_MARIO, get_texture_info("brian_skl_icon"));
			_G.charSelect.character_add_caps(E_MODEL_BRIAN, BRIAN_CAPMODELS); -- cap code
		
			_G.charSelect.character_add_palette_preset(E_MODEL_BRIAN, BRIAN_PALETTE);
			
			_G.charSelect.character_add_voice(E_MODEL_BRIAN, BRIAN_SOUNDBANK);
			_G.charSelect.config_character_sounds();
		end
	else
		djui_chat_message_create("\\#ffffa0\\"..modName.."requires the Character Select Mod. Please turn on Character Select and restart the room."); -- partially stole this from extra charas ultimate pack. love you
	end
end)