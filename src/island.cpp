#include "island.h"
#include <ufo/cellmap.h>
#include <ufo/ufo_load.h>
#include "custom_type_registry.h"
#include "state_load.h"

Island::Island() : Game(), camera{Camera(this)}, map{CellMap(this)}, play{StatePlay(this)}, menu{State(this)}{
    registry = new CustomTypeRegistry(this);
    load = StateLoad(this, &map, registry);
    game_state = &load;
    load.Set("../res/map/windmill/windmill.json");
}

void
Island::LoadResources(){
    asset_manager.LoadDecal("../res/masks/pill_small.png", "decPin");
    asset_manager.LoadDecal("../res/masks/purple.png", "decPurple");
    asset_manager.LoadDecal("../external/UFO-Cells/res/misc/new_logo_centred_ufo_cells.png", "load");
    asset_manager.LoadDecal("../res/map/windmill/dynamic_solid_1.png", "dynamic_solid");
    asset_manager.LoadDecal("../res/masks/squishable.png", "squishable");
    asset_manager.LoadDecal("../res/assets/walking animation-Sheet.png", "penguin_walking");
    asset_manager.LoadDecal("../res/assets/pingu_hitbox.png", "penguin_hitbox");
    asset_manager.LoadDecal("../res/assets/pingu_wall_detector.png", "pingu_wall_detector");
}