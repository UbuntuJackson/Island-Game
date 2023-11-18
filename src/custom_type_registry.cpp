#include "custom_type_registry.h"
#include <ufo/cell_actor.h>
#include <string>
#include <ufo/layer.h>
#include "island.h"
#include <ufo/layer_background.h>
#include <ufo/layer_solid.h>
#include <ufo/layer_actor.h>
#include <ufo/layer_terrain.h>
#include <ufo/actor_info.h>
#include <vector>
#include "optimised_dummy.h"
#include "../external/UFO-Cells/external/olcPixelGameEngine.h"
#include <ufo/dynamic_solid.h>
#include "squishable.h"
#include "penguin.h"

CustomTypeRegistry::CustomTypeRegistry(Island* _game): game{_game}{}

CellActor*
CustomTypeRegistry::NewActor(std::string _actor, olc::vf2d _position){
    if(_actor == "Dummy"){
        return new OptimisedDummy(_position, game);
    }
    if(_actor == "DynamicSolid"){
        return new DynamicSolid(_position, game, "dynamic_solid");
    }
    if(_actor == "Squishable"){
        return new Squishable(_position, game);
    }
    if(_actor == "Penguin"){
        return new Penguin(_position, game);
    }
}