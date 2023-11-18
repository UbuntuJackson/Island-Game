#ifndef ANIM_PENGUIN_WALK_H
#define ANIM_PENGUIN_WALK_H

#include <ufo/animation.h>
class AnimPenguinWalk : public Animation{
public:
    AnimPenguinWalk(Game* _game);
    void UpdateLogic();
};

#endif