Lights1 draco_cap_trashpuyo_lights = gdSPDefLights1(
	0xB2, 0xBC, 0xBC,
	0xFF, 0xFF, 0xFF, 0x49, 0x49, 0x49);

Lights1 draco_cap_trashpuyo_eye_lights = gdSPDefLights1(
	0xB2, 0xBC, 0xBC,
	0xFF, 0xFF, 0xFF, 0x49, 0x49, 0x49);

Lights1 draco_cap_Metal_lights = gdSPDefLights1(
	0x7F, 0x7F, 0x7F,
	0xFF, 0xFF, 0xFF, 0x49, 0x49, 0x49);

Gfx draco_cap_puyo_rgba16_aligner[] = {gsSPEndDisplayList()};
u8 draco_cap_puyo_rgba16[] = {
	#include "actors/draco_cap/puyo.rgba16.inc.c"
};

Gfx draco_cap_puyo_eye_ia4_aligner[] = {gsSPEndDisplayList()};
u8 draco_cap_puyo_eye_ia4[] = {
	#include "actors/draco_cap/puyo_eye.ia4.inc.c"
};

Gfx draco_cap_Metal_Shade_rgba16_rgba16_aligner[] = {gsSPEndDisplayList()};
u8 draco_cap_Metal_Shade_rgba16_rgba16[] = {
	#include "actors/draco_cap/Metal_Shade.rgba16.inc.c"
};

Gfx draco_cap_Metal_Light_rgba16_rgba16_aligner[] = {gsSPEndDisplayList()};
u8 draco_cap_Metal_Light_rgba16_rgba16[] = {
	#include "actors/draco_cap/Metal_Light.rgba16.inc.c"
};

Vtx draco_cap_Normal_Cap_DL_mesh_layer_5_vtx_0[30] = {
	{{ {0, 148, 0}, 0, {-260, 1788}, {0, 127, 0, 255} }},
	{{ {-61, 125, 49}, 0, {-260, 1788}, {199, 103, 48, 255} }},
	{{ {0, 125, 78}, 0, {-260, 1788}, {0, 102, 76, 255} }},
	{{ {-76, 125, -17}, 0, {-260, 1788}, {184, 103, 239, 255} }},
	{{ {-34, 125, -70}, 0, {-260, 1788}, {224, 102, 187, 255} }},
	{{ {34, 125, -70}, 0, {-260, 1788}, {32, 102, 187, 255} }},
	{{ {76, 125, -17}, 0, {-260, 1788}, {72, 103, 239, 255} }},
	{{ {61, 125, 49}, 0, {-260, 1788}, {57, 103, 48, 255} }},
	{{ {81, 70, 65}, 0, {-260, 1788}, {97, 9, 81, 255} }},
	{{ {0, 70, 104}, 0, {-260, 1788}, {0, 9, 127, 255} }},
	{{ {-81, 70, 65}, 0, {-260, 1788}, {159, 9, 81, 255} }},
	{{ {-102, 70, -23}, 0, {-260, 1788}, {133, 9, 227, 255} }},
	{{ {-45, 70, -94}, 0, {-260, 1788}, {203, 9, 141, 255} }},
	{{ {45, 70, -94}, 0, {-260, 1788}, {53, 9, 141, 255} }},
	{{ {102, 70, -23}, 0, {-260, 1788}, {123, 9, 227, 255} }},
	{{ {95, 25, -22}, 0, {-260, 1788}, {98, 178, 233, 255} }},
	{{ {76, 25, 61}, 0, {-260, 1788}, {78, 179, 65, 255} }},
	{{ {0, 25, 97}, 0, {-260, 1788}, {0, 181, 102, 255} }},
	{{ {-76, 25, 61}, 0, {-260, 1788}, {178, 179, 65, 255} }},
	{{ {-95, 25, -22}, 0, {-260, 1788}, {158, 178, 233, 255} }},
	{{ {-42, 25, -88}, 0, {-260, 1788}, {213, 180, 163, 255} }},
	{{ {42, 25, -88}, 0, {-260, 1788}, {43, 180, 163, 255} }},
	{{ {29, 2, -60}, 0, {-260, 1788}, {27, 146, 198, 255} }},
	{{ {65, 2, -15}, 0, {-260, 1788}, {61, 145, 242, 255} }},
	{{ {52, 2, 42}, 0, {-260, 1788}, {48, 146, 40, 255} }},
	{{ {0, 2, 67}, 0, {-260, 1788}, {0, 147, 64, 255} }},
	{{ {-52, 2, 42}, 0, {-260, 1788}, {208, 146, 40, 255} }},
	{{ {-65, 2, -15}, 0, {-260, 1788}, {195, 145, 242, 255} }},
	{{ {-29, 2, -60}, 0, {-260, 1788}, {229, 146, 198, 255} }},
	{{ {0, -1, 0}, 0, {-260, 1788}, {0, 129, 0, 255} }},
};

Gfx draco_cap_Normal_Cap_DL_mesh_layer_5_tri_0[] = {
	gsSPVertex(draco_cap_Normal_Cap_DL_mesh_layer_5_vtx_0 + 0, 30, 0),
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

Vtx draco_cap_Normal_Cap_DL_mesh_layer_5_vtx_1[25] = {
	{{ {73, 99, 61}, 0, {1006, 192}, {81, 68, 71, 255} }},
	{{ {61, 125, 49}, 0, {1006, -160}, {57, 103, 48, 255} }},
	{{ {33, 128, 68}, 0, {496, -160}, {30, 105, 65, 255} }},
	{{ {39, 103, 85}, 0, {496, 192}, {42, 73, 95, 255} }},
	{{ {0, 125, 78}, 0, {-13, -160}, {0, 102, 76, 255} }},
	{{ {0, 99, 95}, 0, {-13, 192}, {0, 67, 108, 255} }},
	{{ {-39, 101, 83}, 0, {496, 192}, {214, 73, 95, 255} }},
	{{ {-32, 127, 67}, 0, {496, -160}, {226, 105, 65, 255} }},
	{{ {-73, 99, 61}, 0, {1006, 192}, {175, 68, 71, 255} }},
	{{ {-61, 125, 49}, 0, {1006, -160}, {199, 103, 48, 255} }},
	{{ {-81, 70, 65}, 0, {1006, 543}, {159, 9, 82, 255} }},
	{{ {-44, 71, 92}, 0, {496, 543}, {203, 11, 115, 255} }},
	{{ {-80, 47, 65}, 0, {1006, 809}, {164, 216, 79, 255} }},
	{{ {-43, 46, 91}, 0, {496, 809}, {207, 214, 109, 255} }},
	{{ {-76, 25, 61}, 0, {1006, 1075}, {179, 179, 65, 255} }},
	{{ {-41, 23, 86}, 0, {496, 1075}, {215, 177, 90, 255} }},
	{{ {0, 47, 103}, 0, {-13, 809}, {0, 217, 121, 255} }},
	{{ {0, 25, 98}, 0, {-13, 1075}, {0, 181, 102, 255} }},
	{{ {42, 23, 88}, 0, {496, 1075}, {41, 177, 91, 255} }},
	{{ {44, 46, 93}, 0, {496, 809}, {49, 214, 109, 255} }},
	{{ {76, 25, 61}, 0, {1006, 1075}, {77, 179, 65, 255} }},
	{{ {80, 47, 65}, 0, {1006, 809}, {92, 216, 79, 255} }},
	{{ {45, 71, 94}, 0, {496, 543}, {53, 12, 115, 255} }},
	{{ {81, 70, 65}, 0, {1006, 543}, {97, 9, 82, 255} }},
	{{ {0, 70, 105}, 0, {-13, 543}, {0, 9, 127, 255} }},
};

Gfx draco_cap_Normal_Cap_DL_mesh_layer_5_tri_1[] = {
	gsSPVertex(draco_cap_Normal_Cap_DL_mesh_layer_5_vtx_1 + 0, 25, 0),
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
	gsSP2Triangles(3, 2, 4, 0, 3, 4, 5, 0),
	gsSP2Triangles(6, 5, 4, 0, 6, 4, 7, 0),
	gsSP2Triangles(8, 6, 7, 0, 8, 7, 9, 0),
	gsSP2Triangles(10, 6, 8, 0, 10, 11, 6, 0),
	gsSP2Triangles(12, 11, 10, 0, 12, 13, 11, 0),
	gsSP2Triangles(14, 13, 12, 0, 14, 15, 13, 0),
	gsSP2Triangles(15, 16, 13, 0, 15, 17, 16, 0),
	gsSP2Triangles(18, 16, 17, 0, 18, 19, 16, 0),
	gsSP2Triangles(20, 19, 18, 0, 20, 21, 19, 0),
	gsSP2Triangles(21, 22, 19, 0, 21, 23, 22, 0),
	gsSP2Triangles(23, 3, 22, 0, 23, 0, 3, 0),
	gsSP2Triangles(22, 3, 5, 0, 22, 5, 24, 0),
	gsSP2Triangles(11, 24, 5, 0, 11, 5, 6, 0),
	gsSP2Triangles(13, 24, 11, 0, 13, 16, 24, 0),
	gsSP2Triangles(19, 24, 16, 0, 19, 22, 24, 0),
	gsSPEndDisplayList(),
};


Gfx mat_draco_cap_trashpuyo[] = {
	gsDPPipeSync(),
	gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 1, 0, TEXEL0, 0, TEXEL0, 0, SHADE, 0, 1, 0, TEXEL0, 0),
	gsSPGeometryMode(0, G_TEXTURE_GEN),
	gsSPTexture(4032, 4032, 0, 0, 1),
	gsSPSetLights1(draco_cap_trashpuyo_lights),
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b_LOAD_BLOCK, 1, draco_cap_puyo_rgba16),
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b_LOAD_BLOCK, 0, 0, 7, 0, G_TX_WRAP | G_TX_NOMIRROR, 0, 0, G_TX_WRAP | G_TX_NOMIRROR, 0, 0),
	gsDPLoadBlock(7, 0, 0, 4095, 128),
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 0, 0, 0, G_TX_CLAMP | G_TX_NOMIRROR, 6, 0, G_TX_CLAMP | G_TX_NOMIRROR, 6, 0),
	gsDPSetTileSize(0, 0, 0, 252, 252),
	gsSPEndDisplayList(),
};

Gfx mat_revert_draco_cap_trashpuyo[] = {
	gsDPPipeSync(),
	gsSPGeometryMode(G_TEXTURE_GEN, 0),
	gsSPEndDisplayList(),
};

Gfx mat_draco_cap_trashpuyo_eye[] = {
	gsDPPipeSync(),
	gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, TEXEL0, 0, PRIMITIVE, 0, TEXEL0, 0, SHADE, 0, TEXEL0, 0, PRIMITIVE, 0),
	gsSPGeometryMode(G_CULL_BACK, 0),
	gsSPTexture(65535, 65535, 0, 0, 1),
	gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
	gsSPSetLights1(draco_cap_trashpuyo_eye_lights),
	gsDPSetTextureImage(G_IM_FMT_IA, G_IM_SIZ_16b, 1, draco_cap_puyo_eye_ia4),
	gsDPSetTile(G_IM_FMT_IA, G_IM_SIZ_16b, 0, 0, 7, 0, G_TX_WRAP | G_TX_NOMIRROR, 0, 0, G_TX_WRAP | G_TX_NOMIRROR, 0, 0),
	gsDPLoadBlock(7, 0, 0, 255, 1024),
	gsDPSetTile(G_IM_FMT_IA, G_IM_SIZ_4b, 2, 0, 0, 0, G_TX_CLAMP | G_TX_NOMIRROR, 5, 0, G_TX_CLAMP | G_TX_NOMIRROR, 5, 0),
	gsDPSetTileSize(0, 0, 0, 124, 124),
	gsSPEndDisplayList(),
};

Gfx mat_revert_draco_cap_trashpuyo_eye[] = {
	gsDPPipeSync(),
	gsSPGeometryMode(0, G_CULL_BACK),
	gsSPEndDisplayList(),
};

Gfx mat_draco_cap_Metal[] = {
	gsDPPipeSync(),
	gsDPSetCombineLERP(TEXEL0, 0, SHADE, TEXEL1, 0, 0, 0, ENVIRONMENT, TEXEL0, 0, SHADE, TEXEL1, 0, 0, 0, ENVIRONMENT),
	gsSPGeometryMode(0, G_TEXTURE_GEN),
	gsSPTexture(4032, 1984, 0, 0, 1),
	gsSPSetLights1(draco_cap_Metal_lights),
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b_LOAD_BLOCK, 1, draco_cap_Metal_Shade_rgba16_rgba16),
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b_LOAD_BLOCK, 0, 0, 7, 0, G_TX_WRAP | G_TX_NOMIRROR, 0, 0, G_TX_WRAP | G_TX_NOMIRROR, 0, 0),
	gsDPLoadBlock(7, 0, 0, 2047, 128),
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 0, 0, 0, G_TX_WRAP | G_TX_NOMIRROR, 5, 0, G_TX_WRAP | G_TX_NOMIRROR, 6, 0),
	gsDPSetTileSize(0, 0, 0, 252, 124),
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b_LOAD_BLOCK, 1, draco_cap_Metal_Light_rgba16_rgba16),
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b_LOAD_BLOCK, 0, 512, 6, 0, G_TX_WRAP | G_TX_NOMIRROR, 0, 0, G_TX_WRAP | G_TX_NOMIRROR, 0, 0),
	gsDPLoadBlock(6, 0, 0, 2047, 128),
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 512, 1, 0, G_TX_WRAP | G_TX_NOMIRROR, 5, 0, G_TX_WRAP | G_TX_NOMIRROR, 6, 0),
	gsDPSetTileSize(1, 0, 0, 252, 124),
	gsSPEndDisplayList(),
};

Gfx mat_revert_draco_cap_Metal[] = {
	gsDPPipeSync(),
	gsSPGeometryMode(G_TEXTURE_GEN, 0),
	gsSPEndDisplayList(),
};

Gfx draco_cap_Normal_Cap_DL_mesh_layer_5[] = {
	gsSPDisplayList(mat_draco_cap_trashpuyo),
	gsSPDisplayList(draco_cap_Normal_Cap_DL_mesh_layer_5_tri_0),
	gsSPDisplayList(mat_revert_draco_cap_trashpuyo),
	gsSPDisplayList(mat_draco_cap_trashpuyo_eye),
	gsSPDisplayList(draco_cap_Normal_Cap_DL_mesh_layer_5_tri_1),
	gsSPDisplayList(mat_revert_draco_cap_trashpuyo_eye),
	gsSPEndDisplayList(),
};

Gfx draco_cap_Normal_Cap_DL_mesh_layer_5_mat_override_Metal_0[] = {
	gsSPDisplayList(mat_draco_cap_Metal),
	gsSPDisplayList(draco_cap_Normal_Cap_DL_mesh_layer_5_tri_0),
	gsSPDisplayList(draco_cap_Normal_Cap_DL_mesh_layer_5_tri_1),
	gsSPDisplayList(mat_revert_draco_cap_Metal),
	gsDPPipeSync(),
	gsSPSetGeometryMode(G_LIGHTING),
	gsSPClearGeometryMode(G_TEXTURE_GEN),
	gsDPSetCombineLERP(0, 0, 0, SHADE, 0, 0, 0, ENVIRONMENT, 0, 0, 0, SHADE, 0, 0, 0, ENVIRONMENT),
	gsSPTexture(65535, 65535, 0, 0, 0),
	gsDPSetEnvColor(255, 255, 255, 255),
	gsDPSetAlphaCompare(G_AC_NONE),
	gsSPEndDisplayList(),
};

