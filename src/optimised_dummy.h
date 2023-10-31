#ifndef OPTIMISED_DUMMY_H
#define OPTIMISED_DUMMY_H

#include <ufo/cell_actor.h>
#include <ufo/player_ray.h>
#include "../external/UFO-Cells/external/olcPixelGameEngine.h"

class Island;

class OptimisedDummy : public CellActor{
public:
    PlayerRay ray;
    Island* game;
    OptimisedDummy(olc::vf2d _position, Island* _game);
    void Update();
    void Draw(Camera* _camera);
};
#endif