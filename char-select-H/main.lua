-- name: [CS] \\#ff0000\\H
-- description: H\n\nBy SKL\n\nVersion 1.1
-- deluxe: true
local modName = "H";
local packVers = "1.1";

local E_MODEL_H = smlua_model_util_get_id("h_skl_geo");
local H_DESC = {
	"H",
	"",
	"Model by SKL",
	"Course texture template by Mike",
	"Version ".. packVers
}
local H_SOUNDBANK = {
	[CHAR_SOUND_OKEY_DOKEY] = 'h.ogg', -- Starting game
	[CHAR_SOUND_LETS_A_GO] = 'h.ogg', -- Starting level
	[CHAR_SOUND_PUNCH_YAH] = 'h.ogg', -- Punch 1
	[CHAR_SOUND_PUNCH_WAH] = 'h-high.ogg', -- Punch 2
	[CHAR_SOUND_PUNCH_HOO] = 'h-highest.ogg', -- Punch 3
	[CHAR_SOUND_YAH_WAH_HOO] = {'h.ogg', 'h-high.ogg', 'h-highest.ogg'}, -- First/Second jump sounds
	[CHAR_SOUND_HOOHOO] = 'h-high.ogg', -- Third jump sound
	[CHAR_SOUND_YAHOO_WAHA_YIPPEE] = {'h-highest.ogg', 'h-high.ogg'}, -- Triple jump sounds
	[CHAR_SOUND_UH] = 'h.ogg', -- Wall bonk
	[CHAR_SOUND_UH2] = 'ch.ogg', -- Landing after long jump
	[CHAR_SOUND_UH2_2] = 'ch.ogg', -- Same sound as UH2; jumping onto ledge
	[CHAR_SOUND_OOOF] = 'h.ogg', -- Pushed by a bully
	[CHAR_SOUND_OOOF2] = 'h.ogg', -- Same as OOOF, landing after ejected from painting
	[CHAR_SOUND_HAHA] = 'h.ogg', -- Landing triple jump
	[CHAR_SOUND_YAHOO] = 'h.ogg', -- Long jump
	[CHAR_SOUND_DOH] = 'h.ogg', -- Long jump wall bonk
	[CHAR_SOUND_WHOA] = 'h-high.ogg', -- Grabbing ledge
	[CHAR_SOUND_EEUH] = 'h.ogg', -- Climbing over ledge
	[CHAR_SOUND_WAAAOOOW] = 'h-extended.ogg', -- Falling a long distance
	[CHAR_SOUND_TWIRL_BOUNCE] = 'h.ogg', -- Bouncing off of a flower spring
	[CHAR_SOUND_GROUND_POUND_WAH] = 'h.ogg', 
	[CHAR_SOUND_HRMM] = 'h.ogg', -- Lifting something
	[CHAR_SOUND_HERE_WE_GO] = 'h.ogg', -- Star get
	[CHAR_SOUND_SO_LONGA_BOWSER] = 'h-extended.ogg', -- Throwing Bowser
--DAMAGE
	[CHAR_SOUND_ATTACKED] = 'h-high.ogg', -- Damaged
	[CHAR_SOUND_PANTING] = 'ch.ogg', -- Low health
	[CHAR_SOUND_ON_FIRE] = 'h-extended.ogg', -- Burned
--SLEEP SOUNDS
	[CHAR_SOUND_IMA_TIRED] = 'h.ogg', -- Mario feeling tired
	[CHAR_SOUND_YAWNING] = 'h-extended.ogg', -- Mario yawning before he sits down to sleep
	[CHAR_SOUND_SNORING1] = 'a.ogg', -- Snore Inhale
	[CHAR_SOUND_SNORING2] = 'ch.ogg', -- Exhale
	[CHAR_SOUND_SNORING3] = 'ch.ogg', -- Sleep talking / mumbling
--COUGHING (USED IN THE GAS MAZE)
	[CHAR_SOUND_COUGHING1] = 'ch.ogg', -- Cough take 1
	[CHAR_SOUND_COUGHING2] = 'ch.ogg', -- Cough take 2
	[CHAR_SOUND_COUGHING3] = 'ch.ogg', -- Cough take 3
--DEATH
	[CHAR_SOUND_DYING] = 'h-extended.ogg', -- Dying from damage
	[CHAR_SOUND_DROWNING] = 'h-extended.ogg', -- Running out of air underwater
	[CHAR_SOUND_MAMA_MIA] = 'h.ogg' -- Booted out of level
}
local H_CAPMODELS = { -- cap code
	normal = smlua_model_util_get_id("h_skl_cap_geo"),
	wing = smlua_model_util_get_id("h_skl_wing_cap_geo"),
	metal = smlua_model_util_get_id("h_skl_metal_cap_geo"),
	metalWing = smlua_model_util_get_id("h_skl_wing_metal_cap_geo"),
}
local H_PALETTE = {
	[PANTS] = "00F050", -- socks
	[SHIRT] = "9050C0", -- unused
	[GLOVES] = "ffffff",
	[SHOES] = "9050C0",
	[HAIR] = "00F050", -- unused
	[SKIN] = "D0801A",
	[CAP] = "F02415",
	[EMBLEM] = "F02415" -- unused, except for nametag
}
local healthHUDTex = {
	label = {
		left = get_texture_info("h_skl_healthhudback_left"),
		right = get_texture_info("h_skl_healthhudback_right"),
	},	pie = {
		[8] = get_texture_info("h_skl_slice8"),
		[7] = get_texture_info("h_skl_slice7"),
		[6] = get_texture_info("h_skl_slice6"),
		[5] = get_texture_info("h_skl_slice5"),
		[4] = get_texture_info("h_skl_slice4"),
		[3] = get_texture_info("h_skl_slice3"),
		[2] = get_texture_info("h_skl_slice2"),
		[1] = get_texture_info("h_skl_slice1"),
	}
}
local courseTex = {
	top = get_texture_info("h_skl_course_top"),
	bottom = get_texture_info("h_skl_course_bottom")
}
local H_ANIMS = {
	[CHAR_ANIM_CREDITS_WAVING] = "h_skl_starDance",
	[CHAR_ANIM_STAR_DANCE] = "h_skl_starDance",
	[CHAR_ANIM_WATER_STAR_DANCE] = "h_skl_starDance"
}

hook_event(HOOK_ON_MODS_LOADED, function()
	if _G.charSelectExists then
		if _G.charSelect.get_version_full and _G.charSelect.get_version_full().major < 12 then
			djui_chat_message_create("\\#ffffa0\\"..modName.."can only run on the latest version of Character Select. Please update.");
		else
			-- DESCRIPTION & CREDITS
			_G.charSelect.credit_add(modName, "SuperKirbylover", "Programmer, artist");
			_G.charSelect.credit_add(modName, "Mike", "Course Select texture template");
			
			local charNum = _G.charSelect.character_add("H", H_DESC, "H", H_PALETTE[CAP], E_MODEL_H, CT_MARIO, get_texture_info("h_skl_icon"));
			_G.charSelect.character_add_caps(E_MODEL_H, H_CAPMODELS); -- cap code
			_G.charSelect.character_add_voice(E_MODEL_H, H_SOUNDBANK);
			
			_G.charSelect.character_add_palette_preset(E_MODEL_H, H_PALETTE);
			_G.charSelect.character_add_health_meter(charNum, healthHUDTex);
			_G.charSelect.character_add_course_texture(charNum, courseTex);
			_G.charSelect.character_add_animations(E_MODEL_H, H_ANIMS);
			
			_G.charSelect.config_character_sounds();
			
			hook_event(HOOK_MARIO_UPDATE, function(m) -- originally set up via moveset hook, but this isn't a moveset; just changes animation appearance
				if _G.charSelect.character_get_current_table().model == E_MODEL_H then
					--local curAnim = get_character_anim(m, 
					local animName = smlua_anim_util_get_current_animation_name(m.marioObj);
					if animName == "h_skl_starDance" then
						local animFrame = m.marioObj.header.gfx.animInfo.animFrame;
						if animFrame >= (12 * 6) and animFrame < (13 * 6) then
							m.marioBodyState.handState = 2; -- peace
						else
							m.marioBodyState.handState = 1; -- open
						end
					end;
				end
			end);
		end
	else
		djui_chat_message_create("\\#ffffa0\\"..modName.."requires the Character Select Mod. Please turn on Character Select and restart the room."); -- partially stole this from extra charas ultimate pack. love you
	end
end);