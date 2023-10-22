#ifndef ISLAND_H
#define ISLAND_H
#include <ufo/state.h>
#include <ufo/game.h>
#include <ufo/cellmap.h>
#include <ufo/camera.h>
#include <ufo/ufo_load.h>
#include "state_load.h"
#include "state_play.h"

class CustomTypeRegistry;
class Island : public Game{
public:
    Camera camera;
    CellMap map;
    StatePlay play;
    State inventory;
    State menu;
    StateLoad load;
    CustomTypeRegistry *registry;
    Island();
    void LoadResources();
};

#endif