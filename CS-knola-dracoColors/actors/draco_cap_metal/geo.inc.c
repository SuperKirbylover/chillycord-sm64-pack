#include "src/game/envfx_snow.h"

const GeoLayout draco_cap_metal_Metal_Cap_State_Switch_opt1[] = {
	GEO_NODE_START(),
	GEO_OPEN_NODE(),
		GEO_DISPLAY_LIST(LAYER_TRANSPARENT, draco_cap_metal_Metal_Cap_DL_mesh_layer_5),
	GEO_CLOSE_NODE(),
	GEO_RETURN(),
};
const GeoLayout draco_cap_metal_Metal_Cap_State_Switch_opt2[] = {
	GEO_NODE_START(),
	GEO_OPEN_NODE(),
		GEO_DISPLAY_LIST(LAYER_TRANSPARENT, draco_cap_metal_Metal_Cap_DL_mesh_layer_5_mat_override_Metal_0),
	GEO_CLOSE_NODE(),
	GEO_RETURN(),
};
const GeoLayout draco_cap_metal_Metal_Cap_State_Switch_opt3[] = {
	GEO_NODE_START(),
	GEO_OPEN_NODE(),
		GEO_DISPLAY_LIST(LAYER_TRANSPARENT, draco_cap_metal_Metal_Cap_DL_mesh_layer_5_mat_override_Metal_0),
	GEO_CLOSE_NODE(),
	GEO_RETURN(),
};
const GeoLayout draco_cap_metal_geo[] = {
	GEO_NODE_START(),
	GEO_OPEN_NODE(),
		GEO_SHADOW(0, 180, 75),
		GEO_OPEN_NODE(),
			GEO_SCALE(LAYER_FORCE, 16384),
			GEO_OPEN_NODE(),
				GEO_ASM(10, geo_update_layer_transparency),
				GEO_SWITCH_CASE(2, geo_switch_anim_state),
				GEO_OPEN_NODE(),
					GEO_NODE_START(),
					GEO_OPEN_NODE(),
						GEO_DISPLAY_LIST(LAYER_TRANSPARENT, draco_cap_metal_Metal_Cap_DL_mesh_layer_5),
					GEO_CLOSE_NODE(),
					GEO_BRANCH(1, draco_cap_metal_Metal_Cap_State_Switch_opt1),
					GEO_BRANCH(1, draco_cap_metal_Metal_Cap_State_Switch_opt2),
					GEO_BRANCH(1, draco_cap_metal_Metal_Cap_State_Switch_opt3),
				GEO_CLOSE_NODE(),
			GEO_CLOSE_NODE(),
		GEO_CLOSE_NODE(),
	GEO_CLOSE_NODE(),
	GEO_END(),
};
