#ifndef SQUISHABLE_H
#define SQUISHABLE_H

#include <ufo/cell_actor.h>
#include "../external/UFO-Cells/external/olcPixelGameEngine.h"

class Camera;
class Island;

class Squishable : public CellActor{
public:
    Island* game;
    Squishable(olc::vf2d _position, Island* _game);
    void Update();
    void Draw(Camera* _camera);
};

#endif