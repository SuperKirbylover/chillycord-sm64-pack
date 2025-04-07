-- name: [CS] \\#f8e080\\Pizza \\#b07898\\Pack \\#ffffff\\
-- description: A Pizza Tower Character Select pack featuring Peppino, Gustavo, The Noise and Noisette.\n\nVoiced by Devilredd, skullduggery918, ZAIDORZ, and SKL respectively.\n\nModels & programming by SKL, with programming & porting help from Quotation. Mixing by ZAIDORZ and SKL.\nCourse Select texture template by Mike.\n\n\\#808080\\Version 1.4.2
-- deluxe: true

local modName = "Pizza Pack";
local packVers = "1.4.2";

local CHARA_PROPERTIES = {
	[1] = {
		modName = "Peppino Spaghetti",
		modDescription = {"The fast, middle-aged fat italian chef", "known for destroying towers and", "running his own pizzeria."},
		internalName = "peppino",
		fallbackVoice = CT_WARIO,
		selectColor = {r = 136, g = 168, b = 200},
		voiceActor = "Devilredd"
	}, 	[2] = {
		modName = "Gustavo",
		modDescription = {"A jolly, short italian chef that goes", "adventuring on occasion who's best", "friends with Peppino and a Stupid Rat."},
		internalName = "gustavo",
		fallbackVoice = CT_MARIO,
		selectColor = {r = 160, g = 56, b = 0},
		voiceActor = "skullduggery918"
	}, [3] = {
		modName = "The Noise",
		modDescription = {"Popular, rowdy and annoying TV host", "who's favorite activities include", "annoying Peppino and throwing bombs."},
		internalName = "noise",
		fallbackVoice = CT_LUIGI,
		selectColor = {r = 248, g = 224, b = 128},
		voiceActor = "ZAIDORZ"
	}, [4] = {
		modName = "Noisette",
		modDescription = {"Silly girlfriend to The Noise, and", "a baker known for her weird creations", "like the chocolate corncob."},
		internalName = "noisette",
		fallbackVoice = CT_TOAD,
		selectColor = {r = 232, g = 80, b = 91},
		voiceActor = "SKL"
	}
}
local CHARA_SOUNDBANK = {
	["peppino"] = {
	--MAIN SOUNDS
		[CHAR_SOUND_OKEY_DOKEY] = 'PeppinoOKIEDOKIE.ogg', -- Starting game
		[CHAR_SOUND_LETS_A_GO] = 'PeppinoLETSAGO.ogg', -- Starting level
		[CHAR_SOUND_PUNCH_YAH] = 'PeppinoPUNCHYAH.ogg', -- Punch 1
		[CHAR_SOUND_PUNCH_WAH] = 'PeppinoPUNCHWAH.ogg', -- Punch 2
		[CHAR_SOUND_PUNCH_HOO] = 'PeppinoPUNCHHOO.ogg', -- Punch 3
		[CHAR_SOUND_YAH_WAH_HOO] = {'PeppinoJUMPYAH.ogg', 'PeppinoJUMPWAH.ogg', 'PeppinoJUMPHOO.ogg'}, -- First/Second jump sounds
		[CHAR_SOUND_HOOHOO] = 'PeppinoJUMPYAH.ogg', -- Third jump sound
		[CHAR_SOUND_YAHOO_WAHA_YIPPEE] = {'PeppinoWAHA.ogg', 'PeppinoYIPPEE.ogg'}, -- Triple jump sounds
		[CHAR_SOUND_UH] = 'PeppinoUH.ogg', -- Wall bonk
		[CHAR_SOUND_UH2] = 'PeppinoUH2.ogg', -- Landing after long jump
		[CHAR_SOUND_UH2_2] = 'PeppinoUH2.ogg', -- Same sound as UH2; jumping onto ledge
		[CHAR_SOUND_OOOF] = 'PeppinoOOOF.ogg', -- Pushed by a bully
		[CHAR_SOUND_OOOF2] = 'PeppinoOOOF.ogg', -- Same as OOOF, landing after ejected from painting
		[CHAR_SOUND_HAHA] = 'PeppinoHAHA.ogg', -- Landing triple jump
		[CHAR_SOUND_YAHOO] = 'PeppinoYAHOO.ogg', -- Long jump
		[CHAR_SOUND_DOH] = 'PeppinoDOH.ogg', -- Long jump wall bonk
		[CHAR_SOUND_WHOA] = 'PeppinoWHOA.ogg', -- Grabbing ledge
		[CHAR_SOUND_EEUH] = 'PeppinoEEUH.ogg', -- Climbing over ledge
		[CHAR_SOUND_WAAAOOOW] = 'PeppinoWAAAOOOW.ogg', -- Falling a long distance
		[CHAR_SOUND_TWIRL_BOUNCE] = 'PeppinoTWIRLBOUNCE.ogg', -- Bouncing off of a flower spring
		[CHAR_SOUND_GROUND_POUND_WAH] = 'PeppinoGROUNDPOUNDWAH.ogg', 
		[CHAR_SOUND_HRMM] = 'PeppinoHRMM.ogg', -- Lifting something
		[CHAR_SOUND_HERE_WE_GO] = 'PeppinoHEREWEGO.ogg', -- Star get
		[CHAR_SOUND_SO_LONGA_BOWSER] = 'PeppinoSOLONGABOWSER.ogg', -- Throwing Bowser
	--DAMAGE
		[CHAR_SOUND_ATTACKED] = 'PeppinoATTACKED.ogg', -- Damaged
		[CHAR_SOUND_PANTING] = 'PeppinoPANTING.ogg', -- Low health
		[CHAR_SOUND_ON_FIRE] = 'PeppinoONFIRE.ogg', -- Burned
	--SLEEP SOUNDS
		[CHAR_SOUND_IMA_TIRED] = 'PeppinoIMATIRED.ogg', -- Mario feeling tired
		[CHAR_SOUND_YAWNING] = 'PeppinoYAWN.ogg', -- Mario yawning before he sits down to sleep
		[CHAR_SOUND_SNORING1] = 'PeppinoSNORING1.ogg', -- Snore Inhale
		[CHAR_SOUND_SNORING2] = 'PeppinoSNORING2.ogg', -- Exhale
		[CHAR_SOUND_SNORING3] = 'PeppinoSNORING3.ogg', -- Sleep talking / mumbling
	--COUGHING (USED IN THE GAS MAZE)
		[CHAR_SOUND_COUGHING1] = 'PeppinoCOUGHING.ogg', -- Cough take 1
		[CHAR_SOUND_COUGHING2] = 'PeppinoCOUGHING.ogg', -- Cough take 2
		[CHAR_SOUND_COUGHING3] = 'PeppinoCOUGHING.ogg', -- Cough take 3
	--DEATH
		[CHAR_SOUND_DYING] = 'PeppinoDYING.ogg', -- Dying from damage
		[CHAR_SOUND_DROWNING] = 'PeppinoDROWNING.ogg', -- Running out of air underwater
		[CHAR_SOUND_GAME_OVER] = 'PeppinoGAMEOVER.ogg', -- Game over
		[CHAR_SOUND_MAMA_MIA] = 'PeppinoMAMMAMIA.ogg' -- Booted out of level
	}, 	["gustavo"] = {
	--MAIN SOUNDS
		[CHAR_SOUND_OKEY_DOKEY] = 'GustavoOKIEDOKIE.ogg', -- Starting game
		[CHAR_SOUND_LETS_A_GO] = 'GustavoLETSAGO.ogg', -- Starting level
		[CHAR_SOUND_PUNCH_YAH] = 'GustavoPUNCHYAH.ogg', -- Punch 1
		[CHAR_SOUND_PUNCH_WAH] = 'GustavoPUNCHWAH.ogg', -- Punch 2
		[CHAR_SOUND_PUNCH_HOO] = 'GustavoPUNCHHOO.ogg', -- Punch 3
		[CHAR_SOUND_YAH_WAH_HOO] = {'GustavoJUMPYAH.ogg', 'GustavoJUMPWAH.ogg', 'GustavoJUMPHOO.ogg'}, -- First/Second jump sounds
		[CHAR_SOUND_HOOHOO] = 'GustavoJUMPHOOHOO.ogg', -- Third jump sound
		[CHAR_SOUND_YAHOO_WAHA_YIPPEE] = {'GustavoWAHA.ogg', 'GustavoYIPPEE.ogg'}, -- Triple jump sounds
		[CHAR_SOUND_UH] = 'GustavoUH.ogg', -- Wall bonk
		[CHAR_SOUND_UH2] = 'GustavoUH2.ogg', -- Landing after long jump
		[CHAR_SOUND_UH2_2] = 'GustavoUH2.ogg', -- Same sound as UH2; jumping onto ledge
		[CHAR_SOUND_OOOF] = 'GustavoOOOF.ogg', -- Pushed by a bully
		[CHAR_SOUND_OOOF2] = 'GustavoOOOF.ogg', -- Same as OOOF, landing after ejected from painting
		[CHAR_SOUND_HAHA] = 'GustavoHAHA.ogg', -- Landing triple jump
		[CHAR_SOUND_YAHOO] = 'GustavoYAHOO.ogg', -- Long jump
		[CHAR_SOUND_DOH] = 'GustavoDOH.ogg', -- Long jump wall bonk
		[CHAR_SOUND_WHOA] = 'GustavoWHOA.ogg', -- Grabbing ledge
		[CHAR_SOUND_EEUH] = 'GustavoEEUH.ogg', -- Climbing over ledge
		[CHAR_SOUND_WAAAOOOW] = 'GustavoWAAAOOOW.ogg', -- Falling a long distance
		[CHAR_SOUND_TWIRL_BOUNCE] = 'GustavoTWIRLBOUNCE.ogg', -- Bouncing off of a flower spring
		[CHAR_SOUND_GROUND_POUND_WAH] = 'GustavoGROUNDPOUNDWAH.ogg', 
		[CHAR_SOUND_HRMM] = 'GustavoHRMM.ogg', -- Lifting something
		[CHAR_SOUND_HERE_WE_GO] = 'GustavoHEREWEGO.ogg', -- Star get
		[CHAR_SOUND_SO_LONGA_BOWSER] = 'GustavoSOLONGABOWSER.ogg', -- Throwing Bowser
	--DAMAGE
		[CHAR_SOUND_ATTACKED] = 'GustavoATTACKED.ogg', -- Damaged
		[CHAR_SOUND_PANTING] = 'GustavoPANTING.ogg', -- Low health
		[CHAR_SOUND_ON_FIRE] = 'GustavoONFIRE.ogg', -- Burned
	--SLEEP SOUNDS
		[CHAR_SOUND_IMA_TIRED] = 'GustavoIMATIRED.ogg', -- Mario feeling tired
		[CHAR_SOUND_YAWNING] = 'GustavoYAWN.ogg', -- Mario yawning before he sits down to sleep
		[CHAR_SOUND_SNORING1] = 'GustavoSNORING1.ogg', -- Snore Inhale
		[CHAR_SOUND_SNORING2] = 'GustavoSNORING2.ogg', -- Exhale
		[CHAR_SOUND_SNORING3] = 'GustavoSNORING3.ogg', -- Sleep talking / mumbling
	--COUGHING (USED IN THE GAS MAZE)
		[CHAR_SOUND_COUGHING1] = 'GustavoCOUGHING.ogg', -- Cough take 1
		[CHAR_SOUND_COUGHING2] = 'GustavoCOUGHING.ogg', -- Cough take 2
		[CHAR_SOUND_COUGHING3] = 'GustavoCOUGHING.ogg', -- Cough take 3
	--DEATH
		[CHAR_SOUND_DYING] = 'GustavoDYING.ogg', -- Dying from damage
		[CHAR_SOUND_DROWNING] = 'GustavoDROWNING.ogg', -- Running out of air underwater
		[CHAR_SOUND_GAME_OVER] = 'GustavoGAMEOVER.ogg', -- Game over
		[CHAR_SOUND_MAMA_MIA] = 'GustavoMAMMAMIA.ogg' -- Booted out of level
	}, ["noise"] = {
		[CHAR_SOUND_OKEY_DOKEY] = 'NoiseOKIEDOKIE.ogg', -- Starting game
		[CHAR_SOUND_LETS_A_GO] = 'NoiseLETSAGO.ogg', -- Starting level
		[CHAR_SOUND_PUNCH_YAH] = 'NoisePUNCHYAH.ogg', -- Punch 1
		[CHAR_SOUND_PUNCH_WAH] = 'NoisePUNCHWAH.ogg', -- Punch 2
		[CHAR_SOUND_PUNCH_HOO] = 'NoisePUNCHHOO.ogg', -- Punch 3
		[CHAR_SOUND_YAH_WAH_HOO] = {'NoiseJUMPYAH.ogg', 'NoiseJUMPWAH.ogg', 'NoiseJUMPHOO.ogg'}, -- First/Second jump sounds
		[CHAR_SOUND_HOOHOO] = 'NoiseJUMPHOOHOO.ogg', -- Third jump sound
		[CHAR_SOUND_YAHOO_WAHA_YIPPEE] = {'NoiseWAHA.ogg', 'NoiseYIPPEE.ogg'}, -- Triple jump sounds
		[CHAR_SOUND_UH] = 'NoiseUH.ogg', -- Wall bonk
		[CHAR_SOUND_UH2] = 'NoiseUH2.ogg', -- Landing after long jump
		[CHAR_SOUND_UH2_2] = 'NoiseUH2.ogg', -- Same sound as UH2; jumping onto ledge
		[CHAR_SOUND_OOOF] = 'NoiseOOOF.ogg', -- Pushed by a bully
		[CHAR_SOUND_OOOF2] = 'NoiseOOOF.ogg', -- Same as OOOF, landing after ejected from painting
		[CHAR_SOUND_HAHA] = 'NoiseHAHA.ogg', -- Landing triple jump
		[CHAR_SOUND_YAHOO] = 'NoiseYAHOO.ogg', -- Long jump
		[CHAR_SOUND_DOH] = 'NoiseDOH.ogg', -- Long jump wall bonk
		[CHAR_SOUND_WHOA] = 'NoiseWHOA.ogg', -- Grabbing ledge
		[CHAR_SOUND_EEUH] = 'NoiseEEUH.ogg', -- Climbing over ledge
		[CHAR_SOUND_WAAAOOOW] = 'NoiseWAAAOOOW.ogg', -- Falling a long distance
		[CHAR_SOUND_TWIRL_BOUNCE] = 'NoiseTWIRLBOUNCE.ogg', -- Bouncing off of a flower spring
		[CHAR_SOUND_GROUND_POUND_WAH] = 'NoiseGROUNDPOUNDWAH.ogg', 
		[CHAR_SOUND_HRMM] = 'NoiseHRMM.ogg', -- Lifting something
		[CHAR_SOUND_HERE_WE_GO] = 'NoiseHEREWEGO.ogg', -- Star get
		[CHAR_SOUND_SO_LONGA_BOWSER] = 'NoiseSOLONGABOWSER.ogg', -- Throwing Bowser
	--DAMAGE
		[CHAR_SOUND_ATTACKED] = 'NoiseATTACKED.ogg', -- Damaged
		[CHAR_SOUND_PANTING] = 'NoisePANTING.ogg', -- Low health
		[CHAR_SOUND_ON_FIRE] = 'NoiseONFIRE.ogg', -- Burned
	--SLEEP SOUNDS
		[CHAR_SOUND_IMA_TIRED] = 'NoiseIMATIRED.ogg', -- Mario feeling tired
		[CHAR_SOUND_YAWNING] = 'NoiseYAWN.ogg', -- Mario yawning before he sits down to sleep
		[CHAR_SOUND_SNORING1] = 'NoiseSNORING1.ogg', -- Snore Inhale
		[CHAR_SOUND_SNORING2] = 'NoiseSNORING2.ogg', -- Exhale
		[CHAR_SOUND_SNORING3] = 'NoiseSNORING3.ogg', -- Sleep talking / mumbling
	--COUGHING (USED IN THE GAS MAZE)
		[CHAR_SOUND_COUGHING1] = 'NoiseCOUGHING.ogg', -- Cough take 1
		[CHAR_SOUND_COUGHING2] = 'NoiseCOUGHING.ogg', -- Cough take 2
		[CHAR_SOUND_COUGHING3] = 'NoiseCOUGHING.ogg', -- Cough take 3
	--DEATH
		[CHAR_SOUND_DYING] = 'NoiseDYING.ogg', -- Dying from damage
		[CHAR_SOUND_DROWNING] = 'NoiseDROWNING.ogg', -- Running out of air underwater
		[CHAR_SOUND_GAME_OVER] = 'NoiseGAMEOVER.ogg', -- Game over
		[CHAR_SOUND_MAMA_MIA] = 'NoiseMAMMAMIA.ogg' -- Booted out of level
	}, ["noisette"] = {
		[CHAR_SOUND_OKEY_DOKEY] = 'NoisetteOKIEDOKIE.ogg', -- Starting game
		[CHAR_SOUND_LETS_A_GO] = 'NoisetteLETSAGO.ogg', -- Starting level
		[CHAR_SOUND_PUNCH_YAH] = 'NoisettePUNCHYAH.ogg', -- Punch 1
		[CHAR_SOUND_PUNCH_WAH] = 'NoisettePUNCHWAH.ogg', -- Punch 2
		[CHAR_SOUND_PUNCH_HOO] = 'NoisettePUNCHHOO.ogg', -- Punch 3
		[CHAR_SOUND_YAH_WAH_HOO] = {'NoisetteJUMPYAH.ogg', 'NoisetteJUMPWAH.ogg', 'NoisetteJUMPHOO.ogg'}, -- First/Second jump sounds
		[CHAR_SOUND_HOOHOO] = 'NoisetteJUMPYAH.ogg', -- Third jump sound
		[CHAR_SOUND_YAHOO_WAHA_YIPPEE] = {'NoisetteWAHA.ogg', 'NoisetteYIPPEE.ogg'}, -- Triple jump sounds
		[CHAR_SOUND_UH] = 'NoisetteUH.ogg', -- Wall bonk
		[CHAR_SOUND_UH2] = 'NoisetteUH2.ogg', -- Landing after long jump
		[CHAR_SOUND_UH2_2] = 'NoisetteUH2.ogg', -- Same sound as UH2; jumping onto ledge
		[CHAR_SOUND_OOOF] = 'NoisetteOOOF.ogg', -- Pushed by a bully
		[CHAR_SOUND_OOOF2] = 'NoisetteOOOF.ogg', -- Same as OOOF, landing after ejected from painting
		[CHAR_SOUND_HAHA] = 'NoisetteHAHA.ogg', -- Landing triple jump
		[CHAR_SOUND_YAHOO] = 'NoisetteYAHOO.ogg', -- Long jump
		[CHAR_SOUND_DOH] = 'NoisetteDOH.ogg', -- Long jump wall bonk
		[CHAR_SOUND_WHOA] = 'NoisetteWHOA.ogg', -- Grabbing ledge
		[CHAR_SOUND_EEUH] = 'NoisetteEEUH.ogg', -- Climbing over ledge
		[CHAR_SOUND_WAAAOOOW] = 'NoisetteWAAAOOOW.ogg', -- Falling a long distance
		[CHAR_SOUND_TWIRL_BOUNCE] = 'NoisetteTWIRLBOUNCE.ogg', -- Bouncing off of a flower spring
		[CHAR_SOUND_GROUND_POUND_WAH] = 'NoisetteGROUNDPOUNDWAH.ogg', 
		[CHAR_SOUND_HRMM] = 'NoisetteHRMM.ogg', -- Lifting something
		[CHAR_SOUND_HERE_WE_GO] = 'NoisetteHEREWEGO.ogg', -- Star get
		[CHAR_SOUND_SO_LONGA_BOWSER] = 'NoisetteSOLONGABOWSER.ogg', -- Throwing Bowser
	--DAMAGE
		[CHAR_SOUND_ATTACKED] = 'NoisetteATTACKED.ogg', -- Damaged
		[CHAR_SOUND_PANTING] = 'NoisettePANTING.ogg', -- Low health
		[CHAR_SOUND_ON_FIRE] = 'NoisetteONFIRE.ogg', -- Burned
	--SLEEP SOUNDS
		[CHAR_SOUND_IMA_TIRED] = 'NoisetteIMATIRED.ogg', -- Mario feeling tired
		[CHAR_SOUND_YAWNING] = 'NoisetteYAWN.ogg', -- Mario yawning before he sits down to sleep
		[CHAR_SOUND_SNORING1] = 'NoisetteSNORING1.ogg', -- Snore Inhale
		[CHAR_SOUND_SNORING2] = 'NoisetteSNORING2.ogg', -- Exhale
		[CHAR_SOUND_SNORING3] = 'NoisetteSNORING3.ogg', -- Sleep talking / mumbling
	--COUGHING (USED IN THE GAS MAZE)
		[CHAR_SOUND_COUGHING1] = 'NoisetteCOUGHING.ogg', -- Cough take 1
		[CHAR_SOUND_COUGHING2] = 'NoisetteCOUGHING.ogg', -- Cough take 2
		[CHAR_SOUND_COUGHING3] = 'NoisetteCOUGHING.ogg', -- Cough take 3
	--DEATH
		[CHAR_SOUND_DYING] = 'NoisetteDYING.ogg', -- Dying from damage
		[CHAR_SOUND_DROWNING] = 'NoisetteDROWNING.ogg', -- Running out of air underwater
		[CHAR_SOUND_GAME_OVER] = 'NoisetteGAMEOVER.ogg', -- Game over
		[CHAR_SOUND_MAMA_MIA] = 'NoisetteMAMMAMIA.ogg' -- Booted out of level
	}
}

local healthHUDTex = {
	label = {
		left = get_texture_info("PP-healthhudback-left"),
		right = get_texture_info("PP-healthhudback-right"),
	},	pie = {
		[8] = get_texture_info("PP-slice8"),
		[7] = get_texture_info("PP-slice7"),
		[6] = get_texture_info("PP-slice6"),
		[5] = get_texture_info("PP-slice5"),
		[4] = get_texture_info("PP-slice4"),
		[3] = get_texture_info("PP-slice3"),
		[2] = get_texture_info("PP-slice2"),
		[1] = get_texture_info("PP-slice1")
	}
}
local courseTex = {
	top = get_texture_info("PP-course-top"),
	bottom = get_texture_info("PP-course-bottom")
}

hook_event(HOOK_ON_MODS_LOADED, function()
	if _G.charSelectExists then
		if _G.charSelect.get_version_full and _G.charSelect.get_version_full().major < 12 then
			djui_chat_message_create("\\#ffffa0\\"..modName.."can only run on the latest version of Character Select. Please update.");
		else
			_G.charSelect.credit_add(modName, "SuperKirbylover", "Programmer, Artist, Mixing, Voice of Noisette");
			_G.charSelect.credit_add(modName, "Quotation", "Porting");
			_G.charSelect.credit_add(modName, "ZAIDORZ", "Mixing, Voice of The Noise");
			_G.charSelect.credit_add(modName, "DevilRedd", "Voice of Peppino");
			_G.charSelect.credit_add(modName, "Skullduggery918", "Voice of Gustavo");
			_G.charSelect.credit_add(modName, "Mike", "Course Select texture template");
			
			for i, chara in ipairs(CHARA_PROPERTIES) do
				local model = smlua_model_util_get_id(chara.internalName.."_skl_geo");
				local CHARA_CAPMODELS = { -- cap code
					normal = smlua_model_util_get_id(chara.internalName.."_skl_cap_geo"),
					wing = smlua_model_util_get_id(chara.internalName.."_skl_cap_wing_geo"),
					metal = smlua_model_util_get_id(chara.internalName.."_skl_cap_metal_geo"),
					metalWing = smlua_model_util_get_id(chara.internalName.."_skl_cap_metal_wing_geo"),
				}
				-- DESCRIPTION & CREDITS
				table.insert(chara.modDescription, "");
				table.insert(chara.modDescription, "Voiced by "..chara.voiceActor);
				table.insert(chara.modDescription, "");
				table.insert(chara.modDescription, "Model by SKL");
				table.insert(chara.modDescription, "Ported by Quotation");
				table.insert(chara.modDescription, "Mixing by ZAIDORZ & SKL");
				table.insert(chara.modDescription, "Course texture template by Mike");
				table.insert(chara.modDescription, "Version "..packVers);
				
				local charNum = _G.charSelect.character_add(chara.modName, chara.modDescription, "SKL, Quotation, ZAIDORZ", chara.selectColor, model, chara.fallbackVoice, get_texture_info(chara.internalName.."_skl_icon"));
				
				_G.charSelect.character_add_caps(model, CHARA_CAPMODELS);
				
				djui_chat_message_create(tostring(PP_PALETTES.peppino[EMBLEM]));
				for i = 1, #PP_PALETTES[chara.internalName] do
					_G.charSelect.character_add_palette_preset(model, PP_PALETTES[chara.internalName][i]);
				end
				_G.charSelect.character_add_health_meter(charNum, healthHUDTex);
				_G.charSelect.character_add_course_texture(charNum, courseTex);
				
				_G.charSelect.character_add_voice(model, CHARA_SOUNDBANK[chara.internalName]);
			end
			_G.charSelect.config_character_sounds();
		end
	else
		djui_chat_message_create("\\#ffffa0\\"..modName.."requires the Character Select Mod. Please turn on Character Select and restart the room."); -- partially stole this from extra charas ultimate pack. love you
	end
end)