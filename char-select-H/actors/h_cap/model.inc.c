Lights1 h_cap_CAP_lights = gdSPDefLights1(
	0x78, 0xC, 0x5,
	0xF0, 0x24, 0x15, 0x49, 0x49, 0x49);

Lights1 h_cap_METAL_lights = gdSPDefLights1(
	0x7F, 0x7F, 0x7F,
	0x0, 0x0, 0x0, 0x49, 0x49, 0x49);

Gfx h_cap_Metal_Shade_rgba16_rgba16_aligner[] = {gsSPEndDisplayList()};
u8 h_cap_Metal_Shade_rgba16_rgba16[] = {
	#include "actors/h/Metal_Shade.rgba16.inc.c"
};

Gfx h_cap_Metal_Light_rgba16_rgba16_aligner[] = {gsSPEndDisplayList()};
u8 h_cap_Metal_Light_rgba16_rgba16[] = {
	#include "actors/h/Metal_Light.rgba16.inc.c"
};

Vtx h_cap_Normal_Cap_DL_mesh_layer_1_vtx_0[158] = {
	{{ {48, 112, 25}, 0, {-16, 1008}, {0, 0, 127, 255} }},
	{{ {115, 69, 25}, 0, {-16, 1008}, {0, 0, 127, 255} }},
	{{ {124, 112, 25}, 0, {-16, 1008}, {0, 0, 127, 255} }},
	{{ {45, 95, 25}, 0, {-16, 1008}, {0, 0, 127, 255} }},
	{{ {24, 112, 25}, 0, {-16, 1008}, {0, 0, 127, 255} }},
	{{ {19, 95, 25}, 0, {-16, 1008}, {0, 0, 127, 255} }},
	{{ {88, 33, 25}, 0, {-16, 1008}, {0, 0, 127, 255} }},
	{{ {34, 80, 25}, 0, {-16, 1008}, {0, 0, 127, 255} }},
	{{ {47, 9, 25}, 0, {-16, 1008}, {0, 0, 127, 255} }},
	{{ {18, 71, 25}, 0, {-16, 1008}, {0, 0, 127, 255} }},
	{{ {-1, 0, 25}, 0, {-16, 1008}, {0, 0, 127, 255} }},
	{{ {-2, 67, 25}, 0, {-16, 1008}, {0, 0, 127, 255} }},
	{{ {-21, 71, 25}, 0, {-16, 1008}, {0, 0, 127, 255} }},
	{{ {-48, 9, 25}, 0, {-16, 1008}, {0, 0, 127, 255} }},
	{{ {-37, 80, 25}, 0, {-16, 1008}, {0, 0, 127, 255} }},
	{{ {-89, 33, 25}, 0, {-16, 1008}, {0, 0, 127, 255} }},
	{{ {-48, 95, 25}, 0, {-16, 1008}, {0, 0, 127, 255} }},
	{{ {-116, 69, 25}, 0, {-16, 1008}, {0, 0, 127, 255} }},
	{{ {-51, 112, 25}, 0, {-16, 1008}, {0, 0, 127, 255} }},
	{{ {-125, 112, 25}, 0, {-16, 1008}, {0, 0, 127, 255} }},
	{{ {-116, 155, 25}, 0, {-16, 1008}, {0, 0, 127, 255} }},
	{{ {-48, 129, 25}, 0, {-16, 1008}, {0, 0, 127, 255} }},
	{{ {-89, 192, 25}, 0, {-16, 1008}, {0, 0, 127, 255} }},
	{{ {-37, 144, 25}, 0, {-16, 1008}, {0, 0, 127, 255} }},
	{{ {-48, 216, 25}, 0, {-16, 1008}, {0, 0, 127, 255} }},
	{{ {-21, 154, 25}, 0, {-16, 1008}, {0, 0, 127, 255} }},
	{{ {-1, 225, 25}, 0, {-16, 1008}, {0, 0, 127, 255} }},
	{{ {-2, 157, 25}, 0, {-16, 1008}, {0, 0, 127, 255} }},
	{{ {18, 154, 25}, 0, {-16, 1008}, {0, 0, 127, 255} }},
	{{ {47, 216, 25}, 0, {-16, 1008}, {0, 0, 127, 255} }},
	{{ {34, 144, 25}, 0, {-16, 1008}, {0, 0, 127, 255} }},
	{{ {88, 192, 25}, 0, {-16, 1008}, {0, 0, 127, 255} }},
	{{ {88, 192, 25}, 0, {-16, 1008}, {0, 0, 127, 255} }},
	{{ {34, 144, 25}, 0, {-16, 1008}, {0, 0, 127, 255} }},
	{{ {45, 129, 25}, 0, {-16, 1008}, {0, 0, 127, 255} }},
	{{ {115, 155, 25}, 0, {-16, 1008}, {0, 0, 127, 255} }},
	{{ {115, 69, 25}, 0, {-16, 1008}, {116, 203, 0, 255} }},
	{{ {124, 112, -25}, 0, {-16, 1008}, {124, 229, 0, 255} }},
	{{ {124, 112, 25}, 0, {-16, 1008}, {124, 229, 0, 255} }},
	{{ {115, 69, -25}, 0, {-16, 1008}, {116, 203, 0, 255} }},
	{{ {88, 33, 25}, 0, {-16, 1008}, {85, 162, 0, 255} }},
	{{ {88, 33, -25}, 0, {-16, 1008}, {85, 162, 0, 255} }},
	{{ {47, 9, 25}, 0, {-16, 1008}, {45, 137, 0, 255} }},
	{{ {47, 9, -25}, 0, {-16, 1008}, {45, 137, 0, 255} }},
	{{ {-1, 0, 25}, 0, {-16, 1008}, {0, 129, 0, 255} }},
	{{ {-1, 0, -25}, 0, {-16, 1008}, {0, 129, 0, 255} }},
	{{ {-48, 9, 25}, 0, {-16, 1008}, {211, 137, 0, 255} }},
	{{ {-48, 9, -25}, 0, {-16, 1008}, {211, 137, 0, 255} }},
	{{ {-89, 33, 25}, 0, {-16, 1008}, {171, 162, 0, 255} }},
	{{ {-89, 33, -25}, 0, {-16, 1008}, {171, 162, 0, 255} }},
	{{ {-116, 69, 25}, 0, {-16, 1008}, {140, 203, 0, 255} }},
	{{ {-116, 69, -25}, 0, {-16, 1008}, {140, 203, 0, 255} }},
	{{ {-125, 112, -25}, 0, {-16, 1008}, {129, 0, 0, 255} }},
	{{ {-125, 112, 25}, 0, {-16, 1008}, {129, 0, 0, 255} }},
	{{ {-116, 155, -25}, 0, {-16, 1008}, {140, 53, 0, 255} }},
	{{ {-116, 155, 25}, 0, {-16, 1008}, {140, 53, 0, 255} }},
	{{ {-89, 192, 25}, 0, {-16, 1008}, {171, 94, 0, 255} }},
	{{ {-89, 192, -25}, 0, {-16, 1008}, {171, 94, 0, 255} }},
	{{ {-48, 216, 25}, 0, {-16, 1008}, {211, 119, 0, 255} }},
	{{ {-48, 216, -25}, 0, {-16, 1008}, {211, 119, 0, 255} }},
	{{ {-1, 225, 25}, 0, {-16, 1008}, {0, 127, 0, 255} }},
	{{ {-1, 225, -25}, 0, {-16, 1008}, {0, 127, 0, 255} }},
	{{ {47, 216, 25}, 0, {-16, 1008}, {45, 119, 0, 255} }},
	{{ {47, 216, -25}, 0, {-16, 1008}, {45, 119, 0, 255} }},
	{{ {88, 192, 25}, 0, {-16, 1008}, {85, 94, 0, 255} }},
	{{ {47, 216, -25}, 0, {-16, 1008}, {45, 119, 0, 255} }},
	{{ {47, 216, 25}, 0, {-16, 1008}, {45, 119, 0, 255} }},
	{{ {88, 192, -25}, 0, {-16, 1008}, {85, 94, 0, 255} }},
	{{ {115, 155, 25}, 0, {-16, 1008}, {102, 76, 0, 255} }},
	{{ {115, 155, -25}, 0, {-16, 1008}, {102, 76, 0, 255} }},
	{{ {48, 112, 25}, 0, {-16, 1008}, {0, 127, 0, 255} }},
	{{ {124, 112, 25}, 0, {-16, 1008}, {0, 127, 0, 255} }},
	{{ {124, 112, -25}, 0, {-16, 1008}, {0, 127, 0, 255} }},
	{{ {48, 112, -25}, 0, {-16, 1008}, {0, 127, 0, 255} }},
	{{ {24, 112, -25}, 0, {-16, 1008}, {1, 127, 0, 255} }},
	{{ {24, 112, 25}, 0, {-16, 1008}, {1, 127, 0, 255} }},
	{{ {45, 129, 25}, 0, {-16, 1008}, {44, 137, 0, 255} }},
	{{ {115, 155, -25}, 0, {-16, 1008}, {44, 137, 0, 255} }},
	{{ {115, 155, 25}, 0, {-16, 1008}, {44, 137, 0, 255} }},
	{{ {45, 129, -25}, 0, {-16, 1008}, {44, 137, 0, 255} }},
	{{ {19, 95, 25}, 0, {-16, 1008}, {0, 129, 0, 255} }},
	{{ {45, 95, -25}, 0, {-16, 1008}, {0, 129, 0, 255} }},
	{{ {45, 95, 25}, 0, {-16, 1008}, {0, 129, 0, 255} }},
	{{ {19, 95, -25}, 0, {-16, 1008}, {0, 129, 0, 255} }},
	{{ {45, 95, 25}, 0, {-16, 1008}, {154, 76, 0, 255} }},
	{{ {45, 95, -25}, 0, {-16, 1008}, {154, 76, 0, 255} }},
	{{ {34, 80, -25}, 0, {-16, 1008}, {171, 94, 0, 255} }},
	{{ {34, 80, 25}, 0, {-16, 1008}, {171, 94, 0, 255} }},
	{{ {18, 71, -25}, 0, {-16, 1008}, {211, 119, 0, 255} }},
	{{ {18, 71, 25}, 0, {-16, 1008}, {211, 119, 0, 255} }},
	{{ {-2, 67, -25}, 0, {-16, 1008}, {0, 127, 0, 255} }},
	{{ {-2, 67, 25}, 0, {-16, 1008}, {0, 127, 0, 255} }},
	{{ {-21, 71, 25}, 0, {-16, 1008}, {45, 119, 0, 255} }},
	{{ {-21, 71, -25}, 0, {-16, 1008}, {45, 119, 0, 255} }},
	{{ {-37, 80, -25}, 0, {-16, 1008}, {85, 94, 0, 255} }},
	{{ {-37, 80, 25}, 0, {-16, 1008}, {85, 94, 0, 255} }},
	{{ {-37, 80, 25}, 0, {-16, 1008}, {85, 94, 0, 255} }},
	{{ {-37, 80, -25}, 0, {-16, 1008}, {85, 94, 0, 255} }},
	{{ {-48, 95, -25}, 0, {-16, 1008}, {116, 53, 0, 255} }},
	{{ {-48, 95, 25}, 0, {-16, 1008}, {116, 53, 0, 255} }},
	{{ {-51, 112, -25}, 0, {-16, 1008}, {127, 0, 0, 255} }},
	{{ {-51, 112, 25}, 0, {-16, 1008}, {127, 0, 0, 255} }},
	{{ {-48, 129, -25}, 0, {-16, 1008}, {116, 203, 0, 255} }},
	{{ {-48, 129, 25}, 0, {-16, 1008}, {116, 203, 0, 255} }},
	{{ {-37, 144, -25}, 0, {-16, 1008}, {85, 162, 0, 255} }},
	{{ {-37, 144, 25}, 0, {-16, 1008}, {85, 162, 0, 255} }},
	{{ {-21, 154, -25}, 0, {-16, 1008}, {45, 137, 0, 255} }},
	{{ {-21, 154, 25}, 0, {-16, 1008}, {45, 137, 0, 255} }},
	{{ {-2, 157, -25}, 0, {-16, 1008}, {0, 129, 0, 255} }},
	{{ {-2, 157, 25}, 0, {-16, 1008}, {0, 129, 0, 255} }},
	{{ {18, 154, -25}, 0, {-16, 1008}, {211, 137, 0, 255} }},
	{{ {18, 154, 25}, 0, {-16, 1008}, {211, 137, 0, 255} }},
	{{ {34, 144, -25}, 0, {-16, 1008}, {171, 162, 0, 255} }},
	{{ {34, 144, 25}, 0, {-16, 1008}, {171, 162, 0, 255} }},
	{{ {45, 129, -25}, 0, {-16, 1008}, {154, 180, 0, 255} }},
	{{ {45, 129, 25}, 0, {-16, 1008}, {154, 180, 0, 255} }},
	{{ {24, 112, 25}, 0, {-16, 1008}, {134, 34, 0, 255} }},
	{{ {19, 95, -25}, 0, {-16, 1008}, {134, 34, 0, 255} }},
	{{ {19, 95, 25}, 0, {-16, 1008}, {134, 34, 0, 255} }},
	{{ {24, 112, -25}, 0, {-16, 1008}, {134, 34, 0, 255} }},
	{{ {115, 69, -25}, 0, {-16, 1008}, {0, 0, 129, 255} }},
	{{ {48, 112, -25}, 0, {-16, 1008}, {0, 0, 129, 255} }},
	{{ {124, 112, -25}, 0, {-16, 1008}, {0, 0, 129, 255} }},
	{{ {45, 95, -25}, 0, {-16, 1008}, {0, 0, 129, 255} }},
	{{ {88, 33, -25}, 0, {-16, 1008}, {0, 0, 129, 255} }},
	{{ {34, 80, -25}, 0, {-16, 1008}, {0, 0, 129, 255} }},
	{{ {47, 9, -25}, 0, {-16, 1008}, {0, 0, 129, 255} }},
	{{ {18, 71, -25}, 0, {-16, 1008}, {0, 0, 129, 255} }},
	{{ {-1, 0, -25}, 0, {-16, 1008}, {0, 0, 129, 255} }},
	{{ {18, 71, -25}, 0, {-16, 1008}, {0, 0, 129, 255} }},
	{{ {47, 9, -25}, 0, {-16, 1008}, {0, 0, 129, 255} }},
	{{ {-2, 67, -25}, 0, {-16, 1008}, {0, 0, 129, 255} }},
	{{ {-21, 71, -25}, 0, {-16, 1008}, {0, 0, 129, 255} }},
	{{ {-48, 9, -25}, 0, {-16, 1008}, {0, 0, 129, 255} }},
	{{ {-37, 80, -25}, 0, {-16, 1008}, {0, 0, 129, 255} }},
	{{ {-89, 33, -25}, 0, {-16, 1008}, {0, 0, 129, 255} }},
	{{ {-48, 95, -25}, 0, {-16, 1008}, {0, 0, 129, 255} }},
	{{ {-116, 69, -25}, 0, {-16, 1008}, {0, 0, 129, 255} }},
	{{ {-51, 112, -25}, 0, {-16, 1008}, {0, 0, 129, 255} }},
	{{ {-125, 112, -25}, 0, {-16, 1008}, {0, 0, 129, 255} }},
	{{ {-116, 155, -25}, 0, {-16, 1008}, {0, 0, 129, 255} }},
	{{ {-48, 129, -25}, 0, {-16, 1008}, {0, 0, 129, 255} }},
	{{ {-89, 192, -25}, 0, {-16, 1008}, {0, 0, 129, 255} }},
	{{ {-37, 144, -25}, 0, {-16, 1008}, {0, 0, 129, 255} }},
	{{ {-48, 216, -25}, 0, {-16, 1008}, {0, 0, 129, 255} }},
	{{ {-21, 154, -25}, 0, {-16, 1008}, {0, 0, 129, 255} }},
	{{ {-1, 225, -25}, 0, {-16, 1008}, {0, 0, 129, 255} }},
	{{ {-2, 157, -25}, 0, {-16, 1008}, {0, 0, 129, 255} }},
	{{ {18, 154, -25}, 0, {-16, 1008}, {0, 0, 129, 255} }},
	{{ {47, 216, -25}, 0, {-16, 1008}, {0, 0, 129, 255} }},
	{{ {34, 144, -25}, 0, {-16, 1008}, {0, 0, 129, 255} }},
	{{ {88, 192, -25}, 0, {-16, 1008}, {0, 0, 129, 255} }},
	{{ {45, 129, -25}, 0, {-16, 1008}, {0, 0, 129, 255} }},
	{{ {115, 155, -25}, 0, {-16, 1008}, {0, 0, 129, 255} }},
	{{ {45, 95, -25}, 0, {-16, 1008}, {0, 0, 129, 255} }},
	{{ {24, 112, -25}, 0, {-16, 1008}, {0, 0, 129, 255} }},
	{{ {48, 112, -25}, 0, {-16, 1008}, {0, 0, 129, 255} }},
	{{ {19, 95, -25}, 0, {-16, 1008}, {0, 0, 129, 255} }},
};

Gfx h_cap_Normal_Cap_DL_mesh_layer_1_tri_0[] = {
	gsSPVertex(h_cap_Normal_Cap_DL_mesh_layer_1_vtx_0 + 0, 32, 0),
	gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
	gsSP2Triangles(4, 3, 0, 0, 4, 5, 3, 0),
	gsSP2Triangles(3, 6, 1, 0, 3, 7, 6, 0),
	gsSP2Triangles(7, 8, 6, 0, 7, 9, 8, 0),
	gsSP2Triangles(9, 10, 8, 0, 9, 11, 10, 0),
	gsSP2Triangles(10, 11, 12, 0, 10, 12, 13, 0),
	gsSP2Triangles(13, 12, 14, 0, 13, 14, 15, 0),
	gsSP2Triangles(15, 14, 16, 0, 15, 16, 17, 0),
	gsSP2Triangles(17, 16, 18, 0, 17, 18, 19, 0),
	gsSP2Triangles(18, 20, 19, 0, 18, 21, 20, 0),
	gsSP2Triangles(21, 22, 20, 0, 21, 23, 22, 0),
	gsSP2Triangles(23, 24, 22, 0, 23, 25, 24, 0),
	gsSP2Triangles(25, 26, 24, 0, 25, 27, 26, 0),
	gsSP2Triangles(26, 27, 28, 0, 26, 28, 29, 0),
	gsSP2Triangles(29, 28, 30, 0, 29, 30, 31, 0),
	gsSPVertex(h_cap_Normal_Cap_DL_mesh_layer_1_vtx_0 + 32, 32, 0),
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
	gsSP2Triangles(4, 5, 6, 0, 4, 7, 5, 0),
	gsSP2Triangles(8, 7, 4, 0, 8, 9, 7, 0),
	gsSP2Triangles(10, 9, 8, 0, 10, 11, 9, 0),
	gsSP2Triangles(12, 11, 10, 0, 12, 13, 11, 0),
	gsSP2Triangles(14, 13, 12, 0, 14, 15, 13, 0),
	gsSP2Triangles(16, 15, 14, 0, 16, 17, 15, 0),
	gsSP2Triangles(18, 17, 16, 0, 18, 19, 17, 0),
	gsSP2Triangles(18, 20, 19, 0, 18, 21, 20, 0),
	gsSP2Triangles(21, 22, 20, 0, 21, 23, 22, 0),
	gsSP2Triangles(24, 22, 23, 0, 24, 25, 22, 0),
	gsSP2Triangles(26, 25, 24, 0, 26, 27, 25, 0),
	gsSP2Triangles(28, 27, 26, 0, 28, 29, 27, 0),
	gsSP2Triangles(30, 29, 28, 0, 30, 31, 29, 0),
	gsSPVertex(h_cap_Normal_Cap_DL_mesh_layer_1_vtx_0 + 64, 32, 0),
	gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
	gsSP2Triangles(4, 3, 0, 0, 4, 5, 3, 0),
	gsSP2Triangles(6, 7, 8, 0, 6, 8, 9, 0),
	gsSP2Triangles(6, 9, 10, 0, 6, 10, 11, 0),
	gsSP2Triangles(12, 13, 14, 0, 12, 15, 13, 0),
	gsSP2Triangles(16, 17, 18, 0, 16, 19, 17, 0),
	gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
	gsSP2Triangles(23, 22, 24, 0, 23, 24, 25, 0),
	gsSP2Triangles(25, 24, 26, 0, 25, 26, 27, 0),
	gsSP2Triangles(28, 27, 26, 0, 28, 26, 29, 0),
	gsSP2Triangles(28, 29, 30, 0, 28, 30, 31, 0),
	gsSPVertex(h_cap_Normal_Cap_DL_mesh_layer_1_vtx_0 + 96, 32, 0),
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
	gsSP2Triangles(3, 2, 4, 0, 3, 4, 5, 0),
	gsSP2Triangles(5, 4, 6, 0, 5, 6, 7, 0),
	gsSP2Triangles(7, 6, 8, 0, 7, 8, 9, 0),
	gsSP2Triangles(9, 8, 10, 0, 9, 10, 11, 0),
	gsSP2Triangles(11, 10, 12, 0, 11, 12, 13, 0),
	gsSP2Triangles(13, 12, 14, 0, 13, 14, 15, 0),
	gsSP2Triangles(15, 14, 16, 0, 15, 16, 17, 0),
	gsSP2Triangles(17, 16, 18, 0, 17, 18, 19, 0),
	gsSP2Triangles(20, 21, 22, 0, 20, 23, 21, 0),
	gsSP2Triangles(24, 25, 26, 0, 24, 27, 25, 0),
	gsSP2Triangles(28, 27, 24, 0, 28, 29, 27, 0),
	gsSP2Triangles(30, 29, 28, 0, 30, 31, 29, 0),
	gsSPVertex(h_cap_Normal_Cap_DL_mesh_layer_1_vtx_0 + 128, 30, 0),
	gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
	gsSP2Triangles(0, 4, 3, 0, 0, 5, 4, 0),
	gsSP2Triangles(5, 6, 4, 0, 5, 7, 6, 0),
	gsSP2Triangles(7, 8, 6, 0, 7, 9, 8, 0),
	gsSP2Triangles(9, 10, 8, 0, 9, 11, 10, 0),
	gsSP2Triangles(12, 10, 11, 0, 12, 13, 10, 0),
	gsSP2Triangles(14, 13, 12, 0, 14, 15, 13, 0),
	gsSP2Triangles(16, 15, 14, 0, 16, 17, 15, 0),
	gsSP2Triangles(18, 17, 16, 0, 18, 19, 17, 0),
	gsSP2Triangles(18, 20, 19, 0, 18, 21, 20, 0),
	gsSP2Triangles(21, 22, 20, 0, 21, 23, 22, 0),
	gsSP2Triangles(23, 24, 22, 0, 23, 25, 24, 0),
	gsSP2Triangles(26, 27, 28, 0, 26, 29, 27, 0),
	gsSPEndDisplayList(),
};


Gfx mat_h_cap_CAP[] = {
	gsSPCopyLightsPlayerPart(CAP),
	gsDPPipeSync(),
	gsDPSetCombineLERP(0, 0, 0, SHADE, 0, 0, 0, ENVIRONMENT, 0, 0, 0, SHADE, 0, 0, 0, ENVIRONMENT),
	gsSPTexture(65535, 65535, 0, 0, 1),
	gsSPEndDisplayList(),
};

Gfx mat_h_cap_METAL[] = {
	gsSPGeometryMode(0, G_TEXTURE_GEN),
	gsSPCopyLightsPlayerPart(CAP),
	gsDPPipeSync(),
	gsDPSetCombineLERP(TEXEL0, 0, SHADE, TEXEL1, 0, 0, 0, ENVIRONMENT, TEXEL0, 0, SHADE, TEXEL1, 0, 0, 0, ENVIRONMENT),
	gsSPTexture(4032, 1984, 0, 0, 1),
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b_LOAD_BLOCK, 1, h_cap_Metal_Shade_rgba16_rgba16),
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b_LOAD_BLOCK, 0, 0, 7, 0, G_TX_WRAP | G_TX_NOMIRROR, 0, 0, G_TX_WRAP | G_TX_NOMIRROR, 0, 0),
	gsDPLoadBlock(7, 0, 0, 2047, 128),
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 0, 0, 0, G_TX_WRAP | G_TX_NOMIRROR, 5, 0, G_TX_WRAP | G_TX_NOMIRROR, 6, 0),
	gsDPSetTileSize(0, 0, 0, 252, 124),
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b_LOAD_BLOCK, 1, h_cap_Metal_Light_rgba16_rgba16),
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b_LOAD_BLOCK, 0, 512, 6, 0, G_TX_WRAP | G_TX_NOMIRROR, 0, 0, G_TX_WRAP | G_TX_NOMIRROR, 0, 0),
	gsDPLoadBlock(6, 0, 0, 2047, 128),
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 512, 1, 0, G_TX_WRAP | G_TX_NOMIRROR, 5, 0, G_TX_WRAP | G_TX_NOMIRROR, 6, 0),
	gsDPSetTileSize(1, 0, 0, 252, 124),
	gsSPEndDisplayList(),
};

Gfx mat_revert_h_cap_METAL[] = {
	gsSPGeometryMode(G_TEXTURE_GEN, 0),
	gsDPPipeSync(),
	gsSPEndDisplayList(),
};

Gfx h_cap_Normal_Cap_DL_mesh_layer_1[] = {
	gsSPDisplayList(mat_h_cap_CAP),
	gsSPDisplayList(h_cap_Normal_Cap_DL_mesh_layer_1_tri_0),
	gsDPPipeSync(),
	gsSPSetGeometryMode(G_LIGHTING),
	gsSPClearGeometryMode(G_TEXTURE_GEN),
	gsDPSetCombineLERP(0, 0, 0, SHADE, 0, 0, 0, ENVIRONMENT, 0, 0, 0, SHADE, 0, 0, 0, ENVIRONMENT),
	gsSPTexture(65535, 65535, 0, 0, 0),
	gsDPSetEnvColor(255, 255, 255, 255),
	gsDPSetAlphaCompare(G_AC_NONE),
	gsSPEndDisplayList(),
};

Gfx h_cap_Normal_Cap_DL_mesh_layer_1_mat_override_METAL_0[] = {
	gsSPDisplayList(mat_h_cap_METAL),
	gsSPDisplayList(h_cap_Normal_Cap_DL_mesh_layer_1_tri_0),
	gsSPDisplayList(mat_revert_h_cap_METAL),
	gsDPPipeSync(),
	gsSPSetGeometryMode(G_LIGHTING),
	gsSPClearGeometryMode(G_TEXTURE_GEN),
	gsDPSetCombineLERP(0, 0, 0, SHADE, 0, 0, 0, ENVIRONMENT, 0, 0, 0, SHADE, 0, 0, 0, ENVIRONMENT),
	gsSPTexture(65535, 65535, 0, 0, 0),
	gsDPSetEnvColor(255, 255, 255, 255),
	gsDPSetAlphaCompare(G_AC_NONE),
	gsSPEndDisplayList(),
};

