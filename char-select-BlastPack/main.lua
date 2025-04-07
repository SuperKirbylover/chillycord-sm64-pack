-- name: [CS] \\#FF0000\\Blast \\#AAFF00\\Pack
-- description: An Antonblast Character Select pack featuring Dynamite Anton and Dynamite Annie of blasting fame. \n\nModels made by SKL.\nCustom menu by Squishy6094.\nAnton and Annie voiced by Shawnster and Abicadabr respectively.\nPack version 1.2.1.
-- deluxe: true

local globalModName = "Blast Pack";
local packVers = "1.2.1";

BP_GLOBALS = {
	ALT = {
		ANTON = 1,
		ANNIE = 2
	},
	CHARA_INDEX = {
		ANTON = nil,
		ANNIE = nil
	}
};

local CHARA_PROPERTIES = {
	[1] = {
		modName = "Dynamite Anton",
		modDescription = {"The rough'n'tumbling destruction", "worker blasting his way through!", "He's a wreck."},
		internalName = "anton",
		fallbackVoice = CT_WARIO,
		selectColor = {r = 255, g = 0, b = 0},
		voiceActor = "Shawnster"
	},
	[2] = {
		modName = "Dynamite Annie",
		modDescription = {"Anton's loud and destructve roomate", "and co-worker. Vain, headstrong and", "a troublemaker."},
		internalName = "annie",
		fallbackVoice = CT_TOAD,
		selectColor = {r = 170, g = 255, b = 0},
		voiceActor = "Abicadabr"		
	}
}
local CHARA_SOUNDBANK = {
	["anton"] = {
	--MAIN SOUNDS
		[CHAR_SOUND_LETS_A_GO] = 'AntonLETSAGO.ogg', -- Starting level
		[CHAR_SOUND_OKEY_DOKEY] = 'AntonOKEYDOKEY.ogg', -- Starting game
		[CHAR_SOUND_PUNCH_YAH] = 'AntonPUNCHYAH.ogg', -- Punch 1
		[CHAR_SOUND_PUNCH_WAH] = 'AntonPUNCHWAH.ogg', -- Punch 2
		[CHAR_SOUND_PUNCH_HOO] = 'AntonPUNCHHOO.ogg', -- Punch 3
		[CHAR_SOUND_YAH_WAH_HOO] = {'AntonJUMPYAH.ogg', 'AntonJUMPWAH.ogg', 'AntonJUMPHOO.ogg'}, -- First/Second jump sounds
		[CHAR_SOUND_HOOHOO] = 'AntonJUMPHOOHOO.ogg', -- Third jump sound
		[CHAR_SOUND_YAHOO_WAHA_YIPPEE] = {'AntonWAHA.ogg', 'AntonYIPPEE.ogg'}, -- Triple jump sounds
		[CHAR_SOUND_UH] = 'AntonUH.ogg', -- Wall bonk
		[CHAR_SOUND_UH2] = 'AntonUH2.ogg', -- Landing long jump
		[CHAR_SOUND_OOOF] = 'AntonOOOF.ogg', -- being pushed by a bully
		[CHAR_SOUND_OOOF2] = 'AntonOOOF.ogg', -- same as OOOF, landing from being ejected via painting
		[CHAR_SOUND_HAHA] = 'AntonHAHA.ogg', -- Landing triple jump
		[CHAR_SOUND_YAHOO] = 'AntonYAHOO.ogg', -- Long jump
		[CHAR_SOUND_DOH] = 'AntonDOH.ogg', -- Long jump wall bonk
		[CHAR_SOUND_WHOA] = 'AntonWHOA.ogg', -- Grabbing ledge
		[CHAR_SOUND_EEUH] = 'AntonEEUH.ogg', -- Climbing over ledge
		[CHAR_SOUND_WAAAOOOW] = 'AntonWAAAOOOW.ogg', -- Falling a long distance
		[CHAR_SOUND_TWIRL_BOUNCE] = 'AntonTWIRLBOUNCE.ogg', -- Bouncing off of a flower spring
		[CHAR_SOUND_GROUND_POUND_WAH] = 'AntonGROUNDPOUNDWAH.ogg', 
		[CHAR_SOUND_HRMM] = 'AntonHRMM.ogg', -- Lifting something
		[CHAR_SOUND_HERE_WE_GO] = 'AntonHEREWEGO.ogg', -- Star get
		[CHAR_SOUND_SO_LONGA_BOWSER] = 'AntonSOLONGABOWSER.ogg', -- Throwing Bowser
	--DAMAGE
		[CHAR_SOUND_ATTACKED] = 'AntonATTACKED.ogg', -- Damaged
		[CHAR_SOUND_PANTING] = 'AntonPANTING.ogg', -- Low health
		[CHAR_SOUND_ON_FIRE] = 'AntonONFIRE.ogg', -- Burned
	--SLEEP SOUNDS
		[CHAR_SOUND_IMA_TIRED] = 'AntonIMATIRED.ogg', -- Mario feeling tired
		[CHAR_SOUND_YAWNING] = 'AntonYAWN.ogg', -- Mario yawning before he sits down to sleep
		[CHAR_SOUND_SNORING1] = 'AntonSNORING1.ogg', -- Snore Inhale
		[CHAR_SOUND_SNORING2] = 'AntonSNORING2.ogg', -- Exhale
		[CHAR_SOUND_SNORING3] = 'AntonSNORING3.ogg', -- Sleep talking / mumbling
	--COUGHING (USED IN THE GAS MAZE)
		[CHAR_SOUND_COUGHING1] = 'AntonCOUGHING.ogg', -- Cough take 1
		[CHAR_SOUND_COUGHING2] = 'AntonCOUGHING.ogg', -- Cough take 2
		[CHAR_SOUND_COUGHING3] = 'AntonCOUGHING.ogg', -- Cough take 3
	--DEATH
		[CHAR_SOUND_DYING] = 'AntonDYING.ogg', -- Dying from damage
		[CHAR_SOUND_DROWNING] = 'AntonDROWN.ogg', -- Running out of air underwater
		[CHAR_SOUND_MAMA_MIA] = 'AntonMAMMAMIA.ogg' -- Booted out of level
	}, ["annie"] = {
	--MAIN SOUNDS
		[CHAR_SOUND_LETS_A_GO] = 'AnnieLETSAGO.ogg', -- Starting level
		[CHAR_SOUND_OKEY_DOKEY] = 'AnnieOKEYDOKEY.ogg', -- Starting game
		[CHAR_SOUND_PUNCH_YAH] = 'AnniePUNCHYAH.ogg', -- Punch 1
		[CHAR_SOUND_PUNCH_WAH] = 'AnniePUNCHWAH.ogg', -- Punch 2
		[CHAR_SOUND_PUNCH_HOO] = 'AnniePUNCHHOO.ogg', -- Punch 3
		[CHAR_SOUND_YAH_WAH_HOO] = {'AnnieJUMPYAH.ogg', 'AnnieJUMPWAH.ogg', 'AnnieJUMPHOO.ogg'}, -- First/Second jump sounds
		[CHAR_SOUND_HOOHOO] = 'AnnieHOOHOO.ogg', -- Third jump sound
		[CHAR_SOUND_YAHOO_WAHA_YIPPEE] = {'AnnieWAHA.ogg', 'AnnieYIPPEE.ogg'}, -- Triple jump sounds
		[CHAR_SOUND_UH] = 'AnnieUH.ogg', -- Wall bonk
		[CHAR_SOUND_UH2] = 'AnnieUH2.ogg', -- Landing long jump
		[CHAR_SOUND_OOOF] = 'AnnieOOOF.ogg', -- being pushed by a bully
		[CHAR_SOUND_OOOF2] = 'AnnieOOOF.ogg', -- same as OOOF, landing from being ejected via painting
		[CHAR_SOUND_HAHA] = 'AnnieHAHA.ogg', -- Landing triple jump
		[CHAR_SOUND_YAHOO] = 'AnnieYAHOO.ogg', -- Long jump
		[CHAR_SOUND_DOH] = 'AnnieDOH.ogg', -- Long jump wall bonk
		[CHAR_SOUND_WHOA] = 'AnnieWOAH.ogg', -- Grabbing ledge
		[CHAR_SOUND_EEUH] = 'AnnieEEUH.ogg', -- Climbing over ledge
		[CHAR_SOUND_WAAAOOOW] = 'AnnieWAAAOOOW.ogg', -- Falling a long distance
		[CHAR_SOUND_TWIRL_BOUNCE] = 'AnnieTWIRLBOUNCE.ogg', -- Bouncing off of a flower spring
		[CHAR_SOUND_GROUND_POUND_WAH] = 'AnnieGROUNDPOUNDWAH.ogg', 
		[CHAR_SOUND_HRMM] = 'AnnieHRMM.ogg', -- Lifting something
		[CHAR_SOUND_HERE_WE_GO] = 'AnnieHEREWEGO.ogg', -- Star get
		[CHAR_SOUND_SO_LONGA_BOWSER] = 'AnnieSOLONGABOWSER.ogg', -- Throwing Bowser
	--DAMAGE
		[CHAR_SOUND_ATTACKED] = 'AnnieATTACKED.ogg', -- Damaged
		[CHAR_SOUND_PANTING] = 'AnniePANTING.ogg', -- Low health
		[CHAR_SOUND_ON_FIRE] = 'AnnieONFIRE.ogg', -- Burned
	--SLEEP SOUNDS
		[CHAR_SOUND_IMA_TIRED] = 'AnnieIMATIRED.ogg', -- Mario feeling tired
		[CHAR_SOUND_YAWNING] = 'AnnieYAWN.ogg', -- Mario yawning before he sits down to sleep
		[CHAR_SOUND_SNORING1] = 'AnnieSNORING1.ogg', -- Snore Inhale
		[CHAR_SOUND_SNORING2] = 'AnnieSNORING2.ogg', -- Exhale
		[CHAR_SOUND_SNORING3] = 'AnnieSNORING3.ogg', -- Sleep talking / mumbling
	--COUGHING (USED IN THE GAS MAZE)
		[CHAR_SOUND_COUGHING1] = 'AnnieCOUGHING.ogg', -- Cough take 1
		[CHAR_SOUND_COUGHING2] = 'AnnieCOUGHING.ogg', -- Cough take 2
		[CHAR_SOUND_COUGHING3] = 'AnnieCOUGHING.ogg', -- Cough take 3
	--DEATH
		[CHAR_SOUND_DYING] = 'AnnieDYING.ogg', -- Dying from damage
		[CHAR_SOUND_DROWNING] = 'AnnieDROWN.ogg', -- Running out of air underwater
		[CHAR_SOUND_MAMA_MIA] = 'AnnieMAMAMIA.ogg' -- Booted out of level
	}
}

local healthHUDTex = {
	label = {
		left = get_texture_info("BP-healthhudback-left"),
		right = get_texture_info("BP-healthhudback-right")
	},	pie = {
		[8] = get_texture_info("BP-slice8"),
		[7] = get_texture_info("BP-slice7"),
		[6] = get_texture_info("BP-slice6"),
		[5] = get_texture_info("BP-slice5"),
		[4] = get_texture_info("BP-slice4"),
		[3] = get_texture_info("BP-slice3"),
		[2] = get_texture_info("BP-slice2"),
		[1] = get_texture_info("BP-slice1")
	}
}
local courseTex = {
	top = get_texture_info("BP-coursetop"),
	bottom = get_texture_info("BP-coursebottom")
}

hook_event(HOOK_ON_MODS_LOADED, function()
	if _G.charSelectExists then
		if _G.charSelect.get_version_full and _G.charSelect.get_version_full().major < 12 then
			djui_chat_message_create("\\#ffffa0\\"..modName.."can only run on the latest version of Character Select. Please update.");
		else
			_G.charSelect.credit_add(globalModName, "SuperKirbylover", "Programmer, Artist");
			_G.charSelect.credit_add(globalModName, "ZAIDORZ", "Mixing");
			_G.charSelect.credit_add(globalModName, "Shawnster", "Voice of Anton");
			_G.charSelect.credit_add(globalModName, "Abicadabr", "Voice of Annie");
			_G.charSelect.credit_add(globalModName, "Mike", "Health & Course Select texture template");
			_G.charSelect.credit_add(globalModName, "Squishy6094", "Custom menu");
			
			for i, chara in ipairs(CHARA_PROPERTIES) do
				table.insert(chara.modDescription, "");
				table.insert(chara.modDescription, "Voiced by "..chara.voiceActor);
				table.insert(chara.modDescription, "");
				table.insert(chara.modDescription, "Model by SKL");
				table.insert(chara.modDescription, "Ported by Quotation");
				table.insert(chara.modDescription, "Mixing by ZAIDORZ");
				table.insert(chara.modDescription, "Hud templates by Mike");
				table.insert(chara.modDescription, "Custom menu by Squishy6094");
			end
			-- MODELS
			local antonModel = smlua_model_util_get_id(CHARA_PROPERTIES[1].internalName.."_skl_geo");
			local annieModel = smlua_model_util_get_id(CHARA_PROPERTIES[2].internalName.."_skl_geo");local antonHats = { -- annie and anton share the same hat
				normal = smlua_model_util_get_id("anton_skl_cap_normal_geo"),
				wing = smlua_model_util_get_id("anton_skl_cap_wing_geo"),
				metal = smlua_model_util_get_id("anton_skl_cap_metal_geo"),
				metalWing = smlua_model_util_get_id("anton_skl_cap_metal_wing_geo")
			}
			-- INSERTING INTO CHARACTER MENU
			BP_GLOBALS.CHARA_INDEX.ANTON = _G.charSelect.character_add(
				CHARA_PROPERTIES[1].modName,
				CHARA_PROPERTIES[1].modDescription,
				"SKL, Squishy, ZAIDORZ",
				CHARA_PROPERTIES[1].selectColor,
				antonModel,
				CHARA_PROPERTIES[1].fallbackVoice,
				get_texture_info(CHARA_PROPERTIES[1].internalName.."_skl_icon")
			);
			BP_GLOBALS.CHARA_INDEX.ANNIE = _G.charSelect.character_add_costume(
				BP_GLOBALS.CHARA_INDEX.ANTON,
				CHARA_PROPERTIES[2].modName,
				CHARA_PROPERTIES[2].modDescription,
				"SKL, Squishy, ZAIDORZ",
				CHARA_PROPERTIES[2].selectColor,
				annieModel,
				CHARA_PROPERTIES[2].fallbackVoice,
				get_texture_info(CHARA_PROPERTIES[2].internalName.."_skl_icon")
			);
			
			-- ADDING PALETTES AND CAPS
			local function addAttributes(model, paletteList, soundbank)
				for i = 1, #paletteList do
					_G.charSelect.character_add_palette_preset(model, paletteList[i]);
				end
				_G.charSelect.character_add_caps(model, antonHats);
				_G.charSelect.character_add_voice(model, soundbank);
			end
			addAttributes(antonModel, BP_PALETTES.ANTON, CHARA_SOUNDBANK.anton);
			addAttributes(annieModel, BP_PALETTES.ANNIE, CHARA_SOUNDBANK.annie);
			
			_G.charSelect.character_add_health_meter(BP_GLOBALS.CHARA_INDEX.ANTON, healthHUDTex);
			_G.charSelect.character_add_costume_health_meter(BP_GLOBALS.CHARA_INDEX.ANTON, BP_GLOBALS.ALT.ANNIE, healthHUDTex);
			
			_G.charSelect.character_add_course_texture(BP_GLOBALS.CHARA_INDEX.ANTON, courseTex);
			
			_G.charSelect.config_character_sounds();
		end
	else
		djui_popup_create("\\#ffffdc\\\n"..globalModName.."\nRequires the Character Select Mod\nto use as a Library!\n\nPlease turn on the Character Select Mod\nand Restart the Room!", 6)
	end
end)