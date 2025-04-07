-- AntonBlast Font
local fontInfoAnton = { -- Maps textures in a spritesheet to letters
    ["0"] = {x = 1,  y = 1,  width = 7, height = 14},
    ["1"] = {x = 9,  y = 1,  width = 6, height = 14},
    ["2"] = {x = 16, y = 1,  width = 7, height = 14},
    ["3"] = {x = 24, y = 1,  width = 7, height = 14},
    ["4"] = {x = 32, y = 1,  width = 8, height = 14},
    ["5"] = {x = 41, y = 1,  width = 7, height = 14},
    ["6"] = {x = 49, y = 1,  width = 7, height = 14},
    ["7"] = {x = 57, y = 1,  width = 7, height = 14},
    ["8"] = {x = 65, y = 1,  width = 7, height = 14},
    ["9"] = {x = 73, y = 1,  width = 7, height = 14},

    ["A"] = {x = 1,   y = 17, width = 7,  height = 14},
    ["B"] = {x = 9,   y = 17, width = 8,  height = 14},
    ["C"] = {x = 18,  y = 17, width = 7,  height = 14},
    ["D"] = {x = 26,  y = 17, width = 8,  height = 14},
    ["E"] = {x = 35,  y = 17, width = 7,  height = 14},
    ["F"] = {x = 43,  y = 17, width = 7,  height = 14},
    ["G"] = {x = 51,  y = 17, width = 8,  height = 14},
    ["H"] = {x = 60,  y = 17, width = 8,  height = 14},
    ["I"] = {x = 69,  y = 17, width = 4,  height = 14},
    ["J"] = {x = 74,  y = 17, width = 7,  height = 14},
    ["K"] = {x = 82,  y = 17, width = 7,  height = 14},
    ["L"] = {x = 90,  y = 17, width = 7,  height = 14},
    ["M"] = {x = 98,  y = 17, width = 10, height = 14},
    ["N"] = {x = 109, y = 17, width = 8,  height = 14},
    ["O"] = {x = 118, y = 17, width = 8,  height = 14},

    ["P"] = {x = 1,  y = 33,  width = 7, height = 14},
    ["Q"] = {x = 9,  y = 33,  width = 8, height = 14},
    ["R"] = {x = 18, y = 33,  width = 8, height = 14},
    ["S"] = {x = 27, y = 33,  width = 8, height = 14},
    ["T"] = {x = 36, y = 33,  width = 9, height = 14},
    ["U"] = {x = 46, y = 33,  width = 7, height = 14},
    ["V"] = {x = 54, y = 33,  width = 7, height = 14},
    ["W"] = {x = 62, y = 33,  width = 10, height = 14},
    ["X"] = {x = 73, y = 33,  width = 7, height = 14},
    ["Y"] = {x = 81, y = 33,  width = 8, height = 14},
    ["Z"] = {x = 90, y = 33,  width = 7, height = 14},
    
    ["a"] = {x = 1,   y = 17, width = 7,  height = 14},
    ["b"] = {x = 9,   y = 17, width = 8,  height = 14},
    ["c"] = {x = 18,  y = 17, width = 7,  height = 14},
    ["d"] = {x = 26,  y = 17, width = 8,  height = 14},
    ["e"] = {x = 35,  y = 17, width = 7,  height = 14},
    ["f"] = {x = 43,  y = 17, width = 7,  height = 14},
    ["g"] = {x = 51,  y = 17, width = 8,  height = 14},
    ["h"] = {x = 60,  y = 17, width = 8,  height = 14},
    ["i"] = {x = 69,  y = 17, width = 4,  height = 14},
    ["j"] = {x = 74,  y = 17, width = 7,  height = 14},
    ["k"] = {x = 82,  y = 17, width = 7,  height = 14},
    ["l"] = {x = 90,  y = 17, width = 7,  height = 14},
    ["m"] = {x = 98,  y = 17, width = 10, height = 14},
    ["n"] = {x = 109, y = 17, width = 8,  height = 14},
    ["o"] = {x = 118, y = 17, width = 8,  height = 14},

    ["p"] = {x = 1,  y = 33,  width = 7, height = 14},
    ["q"] = {x = 9,  y = 33,  width = 8, height = 14},
    ["r"] = {x = 18, y = 33,  width = 8, height = 14},
    ["s"] = {x = 27, y = 33,  width = 8, height = 14},
    ["t"] = {x = 36, y = 33,  width = 9, height = 14},
    ["u"] = {x = 46, y = 33,  width = 7, height = 14},
    ["v"] = {x = 54, y = 33,  width = 7, height = 14},
    ["w"] = {x = 62, y = 33,  width = 10, height = 14},
    ["x"] = {x = 73, y = 33,  width = 7, height = 14},
    ["y"] = {x = 81, y = 33,  width = 8, height = 14},
    ["z"] = {x = 90, y = 33,  width = 7, height = 14},

    ["."] = {x = 1,  y = 49,  width = 4, height = 14},
    ["&"] = {x = 6,  y = 49,  width = 8, height = 14},
    [","] = {x = 15, y = 49,  width = 5, height = 14},
    ["-"] = {x = 21, y = 49,  width = 6, height = 14},
    ["~"] = {x = 28, y = 49,  width = 10, height = 14},
    ["@"] = {x = 39, y = 49,  width = 13, height = 14},
    ["!"] = {x = 53, y = 49,  width = 6, height = 14},
    ["?"] = {x = 60, y = 49,  width = 8, height = 14},
    ["("] = {x = 69, y = 49,  width = 5, height = 14},
    [")"] = {x = 75, y = 49,  width = 5, height = 14},
    ["["] = {x = 81, y = 49,  width = 5, height = 14},
    ["]"] = {x = 87, y = 49,  width = 5, height = 14},
    [":"] = {x = 93, y = 49,  width = 4, height = 14},
    ["'"] = {x = 98, y = 49,  width = 5, height = 14},
    ["/"] = {x = 104, y = 49, width = 10, height = 14},
    ["_"] = {x = 115, y = 49, width = 12, height = 14},
    -- Custom Sprited
    ["<"] = {x = 104, y = 33,  width = 9, height = 14},
    [">"] = {x = 114, y = 33,  width = 9, height = 14},
}

FONT_ANTON = djui_hud_add_font(get_texture_info("antonfont"), fontInfoAnton, -1, 2, "X", 2)

local TEX_ANTON_FACE = get_texture_info("ab-charSelect-antonFace")
local TEX_ANTON_BODY = get_texture_info("ab-charSelect-antonBody")
local TEX_ANNIE_FACE = get_texture_info("ab-charSelect-annieFace")
local TEX_ANNIE_BODY = get_texture_info("ab-charSelect-annieBody")
local TEX_HAMMER = get_texture_info("ab-charSelect-hammer")
local TEX_TEXT = get_texture_info("ab-charSelect-text")
local TEX_ANTON_PALETTE = get_texture_info("ab-charSelect-antonPalette")
local TEX_ANNIE_PALETTE = get_texture_info("ab-charSelect-anniePalette")
local TEX_PALETTE_BG = get_texture_info("ab-charSelect-paletteBg")
local TEX_PALETTE_BUTTON = get_texture_info("ab-charSelect-paletteButton")

local flickerTimer = 0
local flickerEnd = 60
local charFlicker = 0
local charPaletteFrame = 0
local prevAlt = 1
local prevPalette = 1
local paletteMenuAnim = 200
local paletteMenuTimer = 0
local function hud_render()
    local charNum = _G.charSelect.character_get_current_number()
    local charAlt = _G.charSelect.character_get_current_costume()
    local currPalette = _G.charSelect.character_get_current_palette_number()
    if charNum ~= BP_GLOBALS.CHARA_INDEX.ANTON then
        flickerTimer = 0
        charFlicker = 0
        paletteMenuTimer = 0
        paletteMenuAnim = 200
        return
    end

    if prevPalette ~= currPalette then
        prevPalette = currPalette
        if prevAlt == charAlt then
            paletteMenuTimer = 210
        end
    end
    prevAlt = charAlt

    if paletteMenuTimer > 0 then
        paletteMenuTimer = paletteMenuTimer - 1
        paletteMenuAnim = math.max(paletteMenuAnim*0.85, 1)
    else
        paletteMenuAnim = math.min(paletteMenuAnim*1.15, 200)
    end

    djui_hud_set_resolution(RESOLUTION_N64)
    local width = djui_hud_get_screen_width() + 1
    local halfWidth = math.floor(width*0.5)
    local height = 240

    djui_hud_set_color(0, 0, 0, 255)
    djui_hud_render_rect(0, 0, width, height)
    
    flickerTimer = flickerTimer + 1
    local flickering = false
    if flickerTimer < flickerEnd then
        if flickerTimer%2 == 0 then
            charFlicker = math.random(-2, 2)
        end
        if charFlicker < 1 then
            return
        end
        flickering = true
    else
        charFlicker = 0
    end

    djui_hud_set_color(255, 0, 0, 255)
    djui_hud_render_texture(TEX_HAMMER, halfWidth - TEX_HAMMER.width*0.5, height - TEX_HAMMER.height, 1, 1)
    -- Choose.

    if (not flickering and charAlt == BP_GLOBALS.ALT.ANTON) or charFlicker == 1 then
        djui_hud_set_color(255, 0, 0, 255)
        djui_hud_render_texture(TEX_ANTON_BODY, halfWidth - TEX_ANTON_BODY.width + 16, height - TEX_ANTON_BODY.height, 1, 1)
        if not flickering then
            djui_hud_render_texture_tile(TEX_TEXT, halfWidth + 57, 9, 76/129, 1, 0, 0, 129, 76)
            djui_hud_render_texture_tile(TEX_TEXT, halfWidth - 87, 14, 22/24, 1, 160, 81, 24, 22)
        end
    end
    if (not flickering and charAlt == BP_GLOBALS.ALT.ANNIE) or charFlicker == 2 then
        djui_hud_set_color(170, 255, 0, 255)
        djui_hud_render_texture(TEX_ANNIE_BODY, halfWidth - 12, height - TEX_ANNIE_BODY.height, 1, 1)
        if not flickering then
            djui_hud_render_texture_tile(TEX_TEXT, halfWidth - 65 - 119, 9, 66/119, 1, 137, 0, 119, 66)
            djui_hud_render_texture_tile(TEX_TEXT, halfWidth + 53, 14, 22/25, 1, 128, 81, 25, 22)
        end
    end
    if not flickering then
        djui_hud_render_texture_tile(TEX_TEXT, halfWidth - 51, 7, 33/97, 1, 0, 81, 97, 33)
    end

    djui_hud_set_color(170, 255, 0, 255)
    djui_hud_render_texture(TEX_ANTON_FACE, halfWidth - 99, height - 154, 1, 1)
    djui_hud_set_color(255, 0, 0, 255)
    djui_hud_render_texture(TEX_ANNIE_FACE, halfWidth + 45, height - 129, 1, 1)

    -- Palette Menu
    if paletteMenuAnim < 200 then
        local np = gNetworkPlayers[0]
		for i, chara in pairs({"ANTON", "ANNIE"}) do
			BP_PALETTES[chara][0][SHIRT] = network_player_get_palette_color(np, SHIRT)
			BP_PALETTES[chara][0][SKIN] = network_player_get_palette_color(np, SKIN)
			BP_PALETTES[chara][0][HAIR] = network_player_get_palette_color(np, HAIR)
			BP_PALETTES[chara][0][PANTS] = network_player_get_palette_color(np, PANTS)
			BP_PALETTES[chara][0][GLOVES] = network_player_get_palette_color(np, GLOVES)
			BP_PALETTES[chara][0][SHOES] = network_player_get_palette_color(np, SHOES)
		end

        local palette = (charAlt == BP_GLOBALS.ALT.ANNIE and BP_PALETTES.ANNIE or BP_PALETTES.ANTON)
		local colors = {
            [0] = palette[currPalette][SHIRT], -- FOR ANTON, SHARES WITH CAP
            [1] = palette[currPalette][SKIN], -- FOR ANNIE, SHARES WITH CAP
            [2] = palette[currPalette][HAIR], -- FOR ANNIE, SHARES WITH SHIRT. OUTLINE
            [3] = palette[currPalette][PANTS], -- FOR ANTON, SHARES WITH HAIR. FOR ANNIE, SHARES WITH SHOES
            [4] = palette[currPalette][GLOVES], -- TEETH AND EYES ????
            [5] = palette[currPalette][SHOES], -- TEETH LINES AND ANTON EYEBROWS
        }
		if charAlt == BP_GLOBALS.ALT.ANNIE then -- due to a glitch where her outline is her hair color
			colors[2] = palette[currPalette][SHOES];
            --colors[5] = palette[currPalette][HAIR];
		end
        
        djui_hud_set_color(255, 255, 255, 255*(math.abs(paletteMenuAnim - 200)/200))
        djui_hud_render_texture(TEX_PALETTE_BG, 0, 0, width/384, height/216)

        -- Render dumb idiot
        charPaletteFrame = (charPaletteFrame + 1)%6
        local lineBoil = math.floor(charPaletteFrame/3)
        local lineBoilHead = (math.random(0, 3) == 3 and 2 or lineBoil)
        djui_hud_set_color(100, 100, 100, 255)
        local x = width - 158 + paletteMenuAnim
        local y = height - 174
        local charSprites = (charAlt == BP_GLOBALS.ALT.ANNIE and TEX_ANNIE_PALETTE or TEX_ANTON_PALETTE)
        djui_hud_set_color(255, 255, 255, 255)
        djui_hud_render_texture_tile(charSprites, x, y+2, 1, 1, 144*lineBoil + 688, 6, 144, 144)
        for i = 0, 5 do
            local colorPart = colors[i]
            djui_hud_set_color(colorPart.r, colorPart.g, colorPart.b, 255)
            djui_hud_render_texture_tile(charSprites, x, y, 1, 1, 144*lineBoil, 144*i + 4, 144, 144)
        end
        for i = 0, 5 do
            local colorPart = colors[i]
            djui_hud_set_color(colorPart.r, colorPart.g, colorPart.b, 255)
            djui_hud_render_texture_tile(charSprites, x, y, 1, 1, 128*lineBoil + 288, 144*i + 4, 128, 128)
        end

        -- Buttons
        djui_hud_set_font(FONT_ANTON)
        for i = -3, 3 do
            local paletteNum = (currPalette + i)%(#palette + 1)
            if i == 0 then
                djui_hud_set_color(255, 0, 0, 255)
            else
                djui_hud_set_color(138, 101, 101, 255)
            end
            djui_hud_render_texture(TEX_PALETTE_BUTTON, 30 - 7*math.abs(i) - paletteMenuAnim, height*0.5 - 10 + 50*i, 1, 1)
            if i == 0 then
                djui_hud_set_color(255, 255, 255, 255)
            else
                djui_hud_set_color(177, 177, 177, 255)
            end
            djui_hud_print_text(palette[paletteNum].name, 89 - 7*math.abs(i) - paletteMenuAnim - djui_hud_measure_text(palette[paletteNum].name)*0.25, height*0.5 - 2 + 50*i, 0.5)
        end
        djui_hud_set_font(FONT_NORMAL)
        djui_hud_set_color(255, 255, 255, 255)
		if type(palette[currPalette].description) == "table" then
			for i, line in ipairs(palette[currPalette].description) do
				djui_hud_print_text(palette[currPalette].description[i], 150, (20 - paletteMenuAnim) + ((i - 1)* 12), 0.4);
			end
		else
			djui_hud_print_text(palette[currPalette].description, 150, 20 - paletteMenuAnim, 0.4);
		end
    end
end

_G.charSelect.hook_render_in_menu(hud_render)

local SOUND_LIGHTS = audio_sample_load("lights.ogg")
local SOUND_OLD_TITLE_SCREEN = audio_stream_load("old-title-screen.ogg")
audio_stream_set_looping(SOUND_OLD_TITLE_SCREEN, true)

local prevCharNum = _G.charSelect.character_get_current_number()
local musicOn = false
local function sound_update(m)
    if m.playerIndex ~= 0 then return end
    local charNum = _G.charSelect.character_get_current_number()
    local charAlt = _G.charSelect.character_get_current_costume()
    if (prevCharNum ~= charNum and (charNum == BP_GLOBALS.CHARA_INDEX.ANTON or prevCharNum == BP_GLOBALS.CHARA_INDEX.ANTON)) then
        if _G.charSelect.is_menu_open() then
            audio_sample_play(SOUND_LIGHTS, m.pos, 1)
        end
        prevCharNum = charNum
    end
    if charNum == BP_GLOBALS.CHARA_INDEX.ANTON and _G.charSelect.is_menu_open() and not musicOn then
        audio_stream_play(SOUND_OLD_TITLE_SCREEN, true, 1)
        musicOn = true
    end
    if not _G.charSelect.is_menu_open() or charNum ~= BP_GLOBALS.CHARA_INDEX.ANTON then
        audio_stream_stop(SOUND_OLD_TITLE_SCREEN)
        musicOn = false
        flickerTimer = 0
        paletteMenuTimer = 0
        paletteMenuAnim = 200
        prevAlt = charAlt
    end
end

hook_event(HOOK_MARIO_UPDATE, sound_update)