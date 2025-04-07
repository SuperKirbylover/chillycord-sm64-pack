-- name: [CS] \\#4782c9\\Bone \\#ff4711\\Bros.
-- description: The iconic skeleton brothers, Sans and Papyrus!\n\nModeled by SuperKirbylover.\nVoices by LiterallyNoOne and Audiospawn Sudzy Bubbles respectively.\nv1.1.2
-- deluxe: true

local globalModName = "Bone Bros.";
local packVers = "1.1.2";

local CHARA_PROPERTIES = {
	[1] = {
		modName = "sans.",
		modDescription = {"A Royal Guard sentry that doesn't", "take anything seriously and has a", "whole lot of side-jobs."},
		internalName = "sans",
		fallbackVoice = CT_LUIGI,
		selectColor = {r = 71, g = 130, b = 201},
		palette = {
			[PANTS] = "000000",
			[SHIRT] = "ffffff",
			[GLOVES] = "bdc0c9",
			[SHOES] = "4782c9",
			[HAIR] = "000000",
			[SKIN] = "ffffff",
			[CAP] = "4782c9",
			[EMBLEM] = "4782c9"
		},
		voiceActor = "LiterallyNoOne"
	}, 	[2] = {
		modName = "PAPYRUS!!",
		modDescription = {"The Underground's newest Royal Guard", "trainee with a passion for puzzles.", "He tries very hard."},
		internalName = "papyrus",
		fallbackVoice = CT_MARIO,
		selectColor = {r = 255, g = 71, b = 17},
		palette = {
			[PANTS] = "4782c9",
			[SHIRT] = "ffffff",
			[GLOVES] = "ff4711",
			[SHOES] = "ff4711",
			[HAIR] = "000000",
			[SKIN] = "ffffff",
			[CAP] = "ff4711",
			[EMBLEM] = "ffe467",
		},
		voiceActor = "Audiospawn Suzdy Bubbles"
	}
}
local CHARA_SOUNDBANK = {
	["sans"] = {
	--MAIN SOUNDS
		[CHAR_SOUND_OKEY_DOKEY] = 'SansOKEYDOKEY.ogg',
		[CHAR_SOUND_LETS_A_GO] = 'SansLETSAGO.ogg', -- Starting level
		[CHAR_SOUND_PUNCH_YAH] = 'SansPUNCHYAH.ogg', -- Punch 1
		[CHAR_SOUND_PUNCH_WAH] = 'SansPUNCHWAH.ogg', -- Punch 2
		[CHAR_SOUND_PUNCH_HOO] = 'SansPUNCHHOO.ogg', -- Punch 3
		[CHAR_SOUND_YAH_WAH_HOO] = {'SansJUMPYAH.ogg', 'SansJUMPWAH.ogg', 'SansJUMPHOO.ogg'}, -- First/Second jump sounds
		[CHAR_SOUND_HOOHOO] = 'SansJUMPHOOHOO.ogg', -- Third jump sound
		[CHAR_SOUND_YAHOO_WAHA_YIPPEE] = {'SansWAHA.ogg', 'SansYIPPEE.ogg'}, -- Triple jump sounds
		[CHAR_SOUND_UH] = 'SansUH.ogg', -- Wall bonk
		[CHAR_SOUND_UH2] = 'SansUH2.ogg', -- Landing after long jump
		[CHAR_SOUND_UH2_2] = 'SansUH2.ogg', -- Same sound as UH2; jumping onto ledge
		--[CHAR_SOUND_OOOF] = 'OOOF.ogg', -- Pushed by a bully
		--[CHAR_SOUND_OOOF2] = 'OOOF.ogg', -- Same as OOOF, landing after ejected from painting
		[CHAR_SOUND_HAHA] = 'SansHAHA.ogg', -- Landing triple jump
		[CHAR_SOUND_YAHOO] = 'SansYAHOO.ogg', -- Long jump
		[CHAR_SOUND_DOH] = 'SansDOH.ogg', -- Long jump wall bonk
		[CHAR_SOUND_WHOA] = 'SansWHOA.ogg', -- Grabbing ledge
		[CHAR_SOUND_EEUH] = 'SansEEUH.ogg', -- Climbing over ledge
		[CHAR_SOUND_WAAAOOOW] = 'SansWAAAOOOW.ogg', -- Falling a long distance
		[CHAR_SOUND_TWIRL_BOUNCE] = 'SansTWIRLBOUNCE.ogg', -- Bouncing off of a flower spring
		[CHAR_SOUND_GROUND_POUND_WAH] = 'SansGROUNDPOUNDWAH.ogg', 
		[CHAR_SOUND_HRMM] = 'SansHRMM.ogg', -- Lifting something
		[CHAR_SOUND_HERE_WE_GO] = 'SansHEREWEGO.ogg', -- Star get
		[CHAR_SOUND_SO_LONGA_BOWSER] = 'SansSOLONGABOWSER.ogg', -- Throwing Bowser
	--DAMAGE
		[CHAR_SOUND_ATTACKED] = 'SansATTACKED.ogg', -- Damaged
		[CHAR_SOUND_PANTING] = 'SansPANTING.ogg', -- Low health
		[CHAR_SOUND_ON_FIRE] = 'SansONFIRE.ogg', -- Burned
	--SLEEP SOUNDS
		[CHAR_SOUND_IMA_TIRED] = 'SansIMATIRED.ogg', -- Mario feeling tired
		[CHAR_SOUND_YAWNING] = 'SansYAWN.ogg', -- Mario yawning before he sits down to sleep
		[CHAR_SOUND_SNORING1] = 'SansSNORING1.ogg', -- Snore Inhale
		[CHAR_SOUND_SNORING2] = 'SansSNORING2.ogg', -- Exhale
		[CHAR_SOUND_SNORING3] = 'SansSNORING3.ogg', -- Sleep talking / mumbling
	--COUGHING (USED IN THE GAS MAZE)
		[CHAR_SOUND_COUGHING1] = 'SansCOUGHING.ogg', -- Cough take 1
		[CHAR_SOUND_COUGHING2] = 'SansCOUGHING.ogg', -- Cough take 2
		[CHAR_SOUND_COUGHING3] = 'SansCOUGHING.ogg', -- Cough take 3
	--DEATH
		[CHAR_SOUND_DYING] = 'SansDYING.ogg', -- Dying from damage
		[CHAR_SOUND_DROWNING] = 'SansDROWNING.ogg', -- Running out of air underwater
		[CHAR_SOUND_MAMA_MIA] = 'SansMAMMAMIA.ogg' -- Booted out of level
	}, ["papyrus"] = {
	--MAIN SOUNDS
		[CHAR_SOUND_OKEY_DOKEY] = 'PapyrusOKEYDOKEY.ogg',
		[CHAR_SOUND_LETS_A_GO] = 'PapyrusLETSAGO.ogg', -- Starting level
		[CHAR_SOUND_PUNCH_YAH] = 'PapyrusPUNCHYAH.ogg', -- Punch 1
		[CHAR_SOUND_PUNCH_WAH] = 'PapyrusPUNCHWAH.ogg', -- Punch 2
		[CHAR_SOUND_PUNCH_HOO] = 'PapyrusPUNCHHOO.ogg', -- Punch 3
		[CHAR_SOUND_YAH_WAH_HOO] = {'PapyrusJUMPYAH.ogg', 'PapyrusJUMPWAH.ogg', 'PapyrusJUMPHOO.ogg'}, -- First/Second jump sounds
		[CHAR_SOUND_HOOHOO] = 'PapyrusHOOHOO.ogg', -- Third jump sound
		[CHAR_SOUND_YAHOO_WAHA_YIPPEE] = {'PapyrusWAHA.ogg', 'PapyrusYIPPEE.ogg'}, -- Triple jump sounds
		[CHAR_SOUND_UH] = 'PapyrusUH.ogg', -- Wall bonk
		[CHAR_SOUND_UH2] = 'PapyrusUH2.ogg', -- Landing after long jump
		[CHAR_SOUND_UH2_2] = 'PapyrusUH2.ogg', -- Same sound as UH2; jumping onto ledge
		[CHAR_SOUND_OOOF] = 'PapyrusOOF.ogg', -- Pushed by a bully
		[CHAR_SOUND_OOOF2] = 'PapyrusOOF.ogg', -- Same as OOOF, landing after ejected from painting
		[CHAR_SOUND_HAHA] = 'PapyrusHAHA.ogg', -- Landing triple jump
		[CHAR_SOUND_YAHOO] = 'PapyrusYAHOO.ogg', -- Long jump
		[CHAR_SOUND_DOH] = 'PapyrusDOH.ogg', -- Long jump wall bonk
		[CHAR_SOUND_WHOA] = 'PapyrusWHOA.ogg', -- Grabbing ledge
		[CHAR_SOUND_EEUH] = 'PapyrusEEUH.ogg', -- Climbing over ledge
		[CHAR_SOUND_WAAAOOOW] = 'PapyrusWAAAOOOW.ogg', -- Falling a long distance
		[CHAR_SOUND_TWIRL_BOUNCE] = 'PapyrusTWIRLBOUNCE.ogg', -- Bouncing off of a flower spring
		[CHAR_SOUND_GROUND_POUND_WAH] = 'PapyrusGROUNDPOUNDWAH.ogg', 
		[CHAR_SOUND_HRMM] = 'PapyrusHRMM.ogg', -- Lifting something
		[CHAR_SOUND_HERE_WE_GO] = 'PapyrusHEREWEGO.ogg', -- Star get
		[CHAR_SOUND_SO_LONGA_BOWSER] = 'PapyrusSOLONGABOWSER.ogg', -- Throwing Bowser
	--DAMAGE
		[CHAR_SOUND_ATTACKED] = 'PapyrusATTACKED.ogg', -- Damaged
		[CHAR_SOUND_PANTING] = 'PapyrusPANTING.ogg', -- Low health
		[CHAR_SOUND_ON_FIRE] = 'PapyrusONFIRE.ogg', -- Burned
	--SLEEP SOUNDS
		[CHAR_SOUND_IMA_TIRED] = 'PapyrusIMATIRED.ogg', -- Mario feeling tired
		[CHAR_SOUND_YAWNING] = 'PapyrusYAWNING.ogg', -- Mario yawning before he sits down to sleep
		[CHAR_SOUND_SNORING1] = 'PapyrusSNORING1.ogg', -- Snore Inhale
		[CHAR_SOUND_SNORING2] = 'PapyrusSNORING2.ogg', -- Exhale
		[CHAR_SOUND_SNORING3] = 'PapyrusSNORING3.ogg', -- Sleep talking / mumbling
	--COUGHING (USED IN THE GAS MAZE)
		[CHAR_SOUND_COUGHING1] = 'PapyrusCOUGHING.ogg', -- Cough take 1
		[CHAR_SOUND_COUGHING2] = 'PapyrusCOUGHING.ogg', -- Cough take 2
		[CHAR_SOUND_COUGHING3] = 'PapyrusCOUGHING.ogg', -- Cough take 3
	--DEATH
		[CHAR_SOUND_DYING] = 'PapyrusDYING.ogg', -- Dying from damage
		[CHAR_SOUND_DROWNING] = 'PapyrusDROWNING.ogg', -- Running out of air underwater
		[CHAR_SOUND_MAMA_MIA] = 'PapyrusMAMAMIA.ogg' -- Booted out of level
	}
}
local healthHUDTex = {
	label = {
		left = get_texture_info("BB-healthhudback-left"),
		right = get_texture_info("BB-healthhudback-right"),
	},	pie = {
		[8] = get_texture_info("BB-slice8"),
		[7] = get_texture_info("BB-slice7"),
		[6] = get_texture_info("BB-slice6"),
		[5] = get_texture_info("BB-slice5"),
		[4] = get_texture_info("BB-slice4"),
		[3] = get_texture_info("BB-slice3"),
		[2] = get_texture_info("BB-slice2"),
		[1] = get_texture_info("BB-slice1")
	}
}

hook_event(HOOK_ON_MODS_LOADED, function()
	if _G.charSelectExists then
		if _G.charSelect.get_version_full and _G.charSelect.get_version_full().major < 12 then
			djui_chat_message_create("\\#ffffa0\\"..modName.."can only run on the latest version of Character Select. Please update.");
		else
			-- DESCRIPTION & CREDITS
			_G.charSelect.credit_add(globalModName, "SuperKirbylover", "Programmer");
			_G.charSelect.credit_add(globalModName, "ZAIDORZ", "Mixing");
			_G.charSelect.credit_add(globalModName, "LiterallyNoOne", "Voice of Sans");
			_G.charSelect.credit_add(globalModName, "Audiospawn Sudzy Bubbles", "Voice of Papyrus");
	
			for i, chara in ipairs(CHARA_PROPERTIES) do
				local model = smlua_model_util_get_id(chara.internalName.."_skl_geo");
				local CHARA_CAPMODELS = { -- cap code
					normal = smlua_model_util_get_id(chara.internalName.."_skl_cap_geo"),
					wing = smlua_model_util_get_id(chara.internalName.."_skl_cap_wing_geo"),
					metal = smlua_model_util_get_id(chara.internalName.."_skl_cap_metal_geo"),
					metalWing = smlua_model_util_get_id(chara.internalName.."_skl_cap_metal_wing_geo"),
				}
				table.insert(chara.modDescription, "");
				table.insert(chara.modDescription, "Voiced by "..chara.voiceActor);
				table.insert(chara.modDescription, "");
				table.insert(chara.modDescription, "Model by SKL");
				table.insert(chara.modDescription, "Mixing by ZAIDORZ");
				table.insert(chara.modDescription, "Version "..packVers);
				
				local charNum = _G.charSelect.character_add(chara.modName, chara.modDescription, "SKL, ZAIDORZ", chara.selectColor, model, chara.fallbackVoice, get_texture_info(chara.internalName.."_skl_icon"));
				_G.charSelect.character_add_caps(model, CHARA_CAPMODELS);
				
				_G.charSelect.character_add_palette_preset(model, chara.palette);
				_G.charSelect.character_add_health_meter(charNum, healthHUDTex);
				_G.charSelect.character_add_voice(model, CHARA_SOUNDBANK[chara.internalName]);
			end
			_G.charSelect.config_character_sounds();
		end
	
	else
		djui_chat_message_create("\\#ffffa0\\"..modName.."requires the Character Select Mod. Please turn on Character Select and restart the room."); -- partially stole this from extra charas ultimate pack. love you
	end
end)