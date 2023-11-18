#ifndef PENGUIN_H
#define PENGUIN_H

#include <ufo/cell_actor.h>
#include "../external/UFO-Cells/external/olcPixelGameEngine.h"
#include "anim_penguin_walk.h"
class Island;

class Penguin : public CellActor{
public:
    Island* game;
    const float ACCELERATION_X = 0.4f;
    const float FRICTION_X = 0.6f;
    const float FRICTION_Y = 0.8f;
    float direction;
    int blow_up;
    AnimPenguinWalk anim_walk;
    Penguin(olc::vf2d _position, Island* _game);
    void Update();
    void Draw(Camera* _camera);
};
#endif