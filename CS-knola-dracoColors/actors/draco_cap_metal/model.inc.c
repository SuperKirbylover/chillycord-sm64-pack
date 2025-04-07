Lights1 draco_cap_metal_metalpuyo_lights = gdSPDefLights1(
	0xB2, 0xBC, 0xBC,
	0xFF, 0xFF, 0xFF, 0x49, 0x49, 0x49);

Lights1 draco_cap_metal_metalpuyo_eye_lights = gdSPDefLights1(
	0xB2, 0xBC, 0xBC,
	0xFF, 0xFF, 0xFF, 0x49, 0x49, 0x49);

Lights1 draco_cap_metal_Metal_lights = gdSPDefLights1(
	0x7F, 0x7F, 0x7F,
	0xFF, 0xFF, 0xFF, 0x49, 0x49, 0x49);

Gfx draco_cap_metal_puyometal_ia8_aligner[] = {gsSPEndDisplayList()};
u8 draco_cap_metal_puyometal_ia8[] = {
	#include "actors/draco_cap_metal/puyometal.ia8.inc.c"
};

Gfx draco_cap_metal_puyometaleye_ia4_aligner[] = {gsSPEndDisplayList()};
u8 draco_cap_metal_puyometaleye_ia4[] = {
	#include "actors/draco_cap_metal/puyometaleye.ia4.inc.c"
};

Gfx draco_cap_metal_Metal_Shade_rgba16_rgba16_aligner[] = {gsSPEndDisplayList()};
u8 draco_cap_metal_Metal_Shade_rgba16_rgba16[] = {
	#include "actors/draco_cap_metal/Metal_Shade.rgba16.inc.c"
};

Gfx draco_cap_metal_Metal_Light_rgba16_rgba16_aligner[] = {gsSPEndDisplayList()};
u8 draco_cap_metal_Metal_Light_rgba16_rgba16[] = {
	#include "actors/draco_cap_metal/Metal_Light.rgba16.inc.c"
};

Vtx draco_cap_metal_Metal_Cap_DL_mesh_layer_5_vtx_0[30] = {
	{{ {0, 191, -1}, 0, {-260, 1788}, {0, 125, 232, 255} }},
	{{ {-63, 162, 50}, 0, {-260, 1788}, {170, 83, 43, 255} }},
	{{ {0, 165, 84}, 0, {-260, 1788}, {0, 91, 89, 255} }},
	{{ {-71, 155, -15}, 0, {-260, 1788}, {161, 74, 216, 255} }},
	{{ {-29, 151, -58}, 0, {-260, 1788}, {216, 71, 159, 255} }},
	{{ {29, 151, -58}, 0, {-260, 1788}, {40, 71, 159, 255} }},
	{{ {71, 155, -15}, 0, {-260, 1788}, {95, 74, 216, 255} }},
	{{ {63, 162, 50}, 0, {-260, 1788}, {86, 83, 43, 255} }},
	{{ {83, 105, 66}, 0, {-260, 1788}, {110, 13, 62, 255} }},
	{{ {0, 105, 113}, 0, {-260, 1788}, {0, 14, 126, 255} }},
	{{ {-83, 105, 66}, 0, {-260, 1788}, {146, 13, 62, 255} }},
	{{ {-90, 104, -19}, 0, {-260, 1788}, {137, 11, 213, 255} }},
	{{ {-37, 103, -74}, 0, {-260, 1788}, {205, 11, 140, 255} }},
	{{ {37, 103, -74}, 0, {-260, 1788}, {51, 11, 140, 255} }},
	{{ {90, 104, -19}, 0, {-260, 1788}, {119, 11, 213, 255} }},
	{{ {86, 63, -18}, 0, {-260, 1788}, {114, 219, 213, 255} }},
	{{ {78, 59, 62}, 0, {-260, 1788}, {105, 213, 57, 255} }},
	{{ {0, 56, 106}, 0, {-260, 1788}, {0, 208, 118, 255} }},
	{{ {-78, 59, 62}, 0, {-260, 1788}, {151, 213, 57, 255} }},
	{{ {-86, 63, -18}, 0, {-260, 1788}, {142, 219, 213, 255} }},
	{{ {-35, 66, -70}, 0, {-260, 1788}, {208, 221, 144, 255} }},
	{{ {35, 66, -70}, 0, {-260, 1788}, {48, 221, 144, 255} }},
	{{ {28, 38, -58}, 0, {-260, 1788}, {39, 185, 158, 255} }},
	{{ {68, 34, -16}, 0, {-260, 1788}, {93, 181, 214, 255} }},
	{{ {62, 26, 46}, 0, {-260, 1788}, {85, 170, 39, 255} }},
	{{ {0, 21, 80}, 0, {-260, 1788}, {0, 162, 85, 255} }},
	{{ {-62, 26, 46}, 0, {-260, 1788}, {171, 170, 39, 255} }},
	{{ {-68, 34, -16}, 0, {-260, 1788}, {163, 181, 214, 255} }},
	{{ {-28, 38, -58}, 0, {-260, 1788}, {217, 185, 158, 255} }},
	{{ {0, 1, -9}, 0, {-260, 1788}, {0, 134, 222, 255} }},
};

Gfx draco_cap_metal_Metal_Cap_DL_mesh_layer_5_tri_0[] = {
	gsSPVertex(draco_cap_metal_Metal_Cap_DL_mesh_layer_5_vtx_0 + 0, 30, 0),
	gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
	gsSP2Triangles(0, 4, 3, 0, 0, 5, 4, 0),
	gsSP2Triangles(0, 6, 5, 0, 0, 7, 6, 0),
	gsSP2Triangles(0, 2, 7, 0, 8, 7, 2, 0),
	gsSP2Triangles(8, 2, 9, 0, 9, 2, 1, 0),
	gsSP2Triangles(9, 1, 10, 0, 10, 1, 3, 0),
	gsSP2Triangles(10, 3, 11, 0, 11, 3, 4, 0),
	gsSP2Triangles(11, 4, 12, 0, 12, 4, 5, 0),
	gsSP2Triangles(12, 5, 13, 0, 13, 5, 6, 0),
	gsSP2Triangles(13, 6, 14, 0, 14, 6, 7, 0),
	gsSP2Triangles(14, 7, 8, 0, 15, 14, 8, 0),
	gsSP2Triangles(15, 8, 16, 0, 16, 8, 9, 0),
	gsSP2Triangles(16, 9, 17, 0, 17, 9, 10, 0),
	gsSP2Triangles(17, 10, 18, 0, 18, 10, 11, 0),
	gsSP2Triangles(18, 11, 19, 0, 19, 11, 12, 0),
	gsSP2Triangles(19, 12, 20, 0, 20, 12, 13, 0),
	gsSP2Triangles(20, 13, 21, 0, 21, 13, 14, 0),
	gsSP2Triangles(21, 14, 15, 0, 22, 21, 15, 0),
	gsSP2Triangles(22, 15, 23, 0, 23, 15, 16, 0),
	gsSP2Triangles(23, 16, 24, 0, 24, 16, 17, 0),
	gsSP2Triangles(24, 17, 25, 0, 25, 17, 18, 0),
	gsSP2Triangles(25, 18, 26, 0, 26, 18, 19, 0),
	gsSP2Triangles(26, 19, 27, 0, 27, 19, 20, 0),
	gsSP2Triangles(27, 20, 28, 0, 28, 20, 21, 0),
	gsSP2Triangles(28, 21, 22, 0, 29, 28, 22, 0),
	gsSP2Triangles(29, 22, 23, 0, 29, 23, 24, 0),
	gsSP2Triangles(29, 24, 25, 0, 29, 25, 26, 0),
	gsSP2Triangles(29, 26, 27, 0, 29, 27, 28, 0),
	gsSPEndDisplayList(),
};

Vtx draco_cap_metal_Metal_Cap_DL_mesh_layer_5_vtx_1[10] = {
	{{ {83, 105, 66}, 0, {1021, 569}, {110, 13, 62, 255} }},
	{{ {0, 56, 106}, 0, {-33, 1002}, {0, 208, 118, 255} }},
	{{ {78, 59, 62}, 0, {1010, 1019}, {105, 213, 58, 255} }},
	{{ {0, 105, 113}, 0, {-23, 552}, {0, 14, 126, 255} }},
	{{ {63, 161, 50}, 0, {1035, -27}, {86, 83, 43, 255} }},
	{{ {0, 165, 84}, 0, {-9, -43}, {0, 90, 89, 255} }},
	{{ {-83, 105, 66}, 0, {1021, 569}, {146, 13, 62, 255} }},
	{{ {-63, 161, 50}, 0, {1035, -27}, {170, 83, 43, 255} }},
	{{ {-78, 59, 62}, 0, {1010, 1019}, {151, 213, 58, 255} }},
	{{ {0, 56, 106}, 0, {-33, 1002}, {0, 208, 118, 255} }},
};

Gfx draco_cap_metal_Metal_Cap_DL_mesh_layer_5_tri_1[] = {
	gsSPVertex(draco_cap_metal_Metal_Cap_DL_mesh_layer_5_vtx_1 + 0, 10, 0),
	gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
	gsSP2Triangles(4, 3, 0, 0, 4, 5, 3, 0),
	gsSP2Triangles(5, 6, 3, 0, 5, 7, 6, 0),
	gsSP2Triangles(3, 6, 8, 0, 3, 8, 9, 0),
	gsSPEndDisplayList(),
};


Gfx mat_draco_cap_metal_metalpuyo[] = {
	gsDPPipeSync(),
	gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 1, 0, TEXEL0, 0, TEXEL0, 0, SHADE, 0, 1, 0, TEXEL0, 0),
	gsSPGeometryMode(0, G_TEXTURE_GEN),
	gsSPTexture(4032, 4032, 0, 0, 1),
	gsSPSetLights1(draco_cap_metal_metalpuyo_lights),
	gsDPSetTextureImage(G_IM_FMT_IA, G_IM_SIZ_8b_LOAD_BLOCK, 1, draco_cap_metal_puyometal_ia8),
	gsDPSetTile(G_IM_FMT_IA, G_IM_SIZ_8b_LOAD_BLOCK, 0, 0, 7, 0, G_TX_WRAP | G_TX_NOMIRROR, 0, 0, G_TX_WRAP | G_TX_NOMIRROR, 0, 0),
	gsDPLoadBlock(7, 0, 0, 2047, 256),
	gsDPSetTile(G_IM_FMT_IA, G_IM_SIZ_8b, 8, 0, 0, 0, G_TX_CLAMP | G_TX_NOMIRROR, 6, 0, G_TX_CLAMP | G_TX_NOMIRROR, 6, 0),
	gsDPSetTileSize(0, 0, 0, 252, 252),
	gsSPEndDisplayList(),
};

Gfx mat_revert_draco_cap_metal_metalpuyo[] = {
	gsDPPipeSync(),
	gsSPGeometryMode(G_TEXTURE_GEN, 0),
	gsSPEndDisplayList(),
};

Gfx mat_draco_cap_metal_metalpuyo_eye[] = {
	gsDPPipeSync(),
	gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, TEXEL0, 0, PRIMITIVE, 0, TEXEL0, 0, SHADE, 0, TEXEL0, 0, PRIMITIVE, 0),
	gsSPTexture(65535, 65535, 0, 0, 1),
	gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
	gsSPSetLights1(draco_cap_metal_metalpuyo_eye_lights),
	gsDPSetTextureImage(G_IM_FMT_IA, G_IM_SIZ_16b, 1, draco_cap_metal_puyometaleye_ia4),
	gsDPSetTile(G_IM_FMT_IA, G_IM_SIZ_16b, 0, 0, 7, 0, G_TX_WRAP | G_TX_NOMIRROR, 0, 0, G_TX_WRAP | G_TX_NOMIRROR, 0, 0),
	gsDPLoadBlock(7, 0, 0, 255, 1024),
	gsDPSetTile(G_IM_FMT_IA, G_IM_SIZ_4b, 2, 0, 0, 0, G_TX_CLAMP | G_TX_NOMIRROR, 5, 0, G_TX_CLAMP | G_TX_NOMIRROR, 5, 0),
	gsDPSetTileSize(0, 0, 0, 124, 124),
	gsSPEndDisplayList(),
};

Gfx mat_draco_cap_metal_Metal[] = {
	gsDPPipeSync(),
	gsDPSetCombineLERP(TEXEL0, 0, SHADE, TEXEL1, 0, 0, 0, ENVIRONMENT, TEXEL0, 0, SHADE, TEXEL1, 0, 0, 0, ENVIRONMENT),
	gsSPGeometryMode(0, G_TEXTURE_GEN),
	gsSPTexture(4032, 1984, 0, 0, 1),
	gsSPSetLights1(draco_cap_metal_Metal_lights),
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b_LOAD_BLOCK, 1, draco_cap_metal_Metal_Shade_rgba16_rgba16),
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b_LOAD_BLOCK, 0, 0, 7, 0, G_TX_WRAP | G_TX_NOMIRROR, 0, 0, G_TX_WRAP | G_TX_NOMIRROR, 0, 0),
	gsDPLoadBlock(7, 0, 0, 2047, 128),
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 0, 0, 0, G_TX_WRAP | G_TX_NOMIRROR, 5, 0, G_TX_WRAP | G_TX_NOMIRROR, 6, 0),
	gsDPSetTileSize(0, 0, 0, 252, 124),
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b_LOAD_BLOCK, 1, draco_cap_metal_Metal_Light_rgba16_rgba16),
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b_LOAD_BLOCK, 0, 512, 6, 0, G_TX_WRAP | G_TX_NOMIRROR, 0, 0, G_TX_WRAP | G_TX_NOMIRROR, 0, 0),
	gsDPLoadBlock(6, 0, 0, 2047, 128),
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 512, 1, 0, G_TX_WRAP | G_TX_NOMIRROR, 5, 0, G_TX_WRAP | G_TX_NOMIRROR, 6, 0),
	gsDPSetTileSize(1, 0, 0, 252, 124),
	gsSPEndDisplayList(),
};

Gfx mat_revert_draco_cap_metal_Metal[] = {
	gsDPPipeSync(),
	gsSPGeometryMode(G_TEXTURE_GEN, 0),
	gsSPEndDisplayList(),
};

Gfx draco_cap_metal_Metal_Cap_DL_mesh_layer_5[] = {
	gsSPDisplayList(mat_draco_cap_metal_metalpuyo),
	gsSPDisplayList(draco_cap_metal_Metal_Cap_DL_mesh_layer_5_tri_0),
	gsSPDisplayList(mat_revert_draco_cap_metal_metalpuyo),
	gsSPDisplayList(mat_draco_cap_metal_metalpuyo_eye),
	gsSPDisplayList(draco_cap_metal_Metal_Cap_DL_mesh_layer_5_tri_1),
	gsSPEndDisplayList(),
};

Gfx draco_cap_metal_Metal_Cap_DL_mesh_layer_5_mat_override_Metal_0[] = {
	gsSPDisplayList(mat_draco_cap_metal_Metal),
	gsSPDisplayList(draco_cap_metal_Metal_Cap_DL_mesh_layer_5_tri_0),
	gsSPDisplayList(draco_cap_metal_Metal_Cap_DL_mesh_layer_5_tri_1),
	gsSPDisplayList(mat_revert_draco_cap_metal_Metal),
	gsDPPipeSync(),
	gsSPSetGeometryMode(G_LIGHTING),
	gsSPClearGeometryMode(G_TEXTURE_GEN),
	gsDPSetCombineLERP(0, 0, 0, SHADE, 0, 0, 0, ENVIRONMENT, 0, 0, 0, SHADE, 0, 0, 0, ENVIRONMENT),
	gsSPTexture(65535, 65535, 0, 0, 0),
	gsDPSetEnvColor(255, 255, 255, 255),
	gsDPSetAlphaCompare(G_AC_NONE),
	gsSPEndDisplayList(),
};

