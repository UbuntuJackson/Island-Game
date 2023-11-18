#include "anim_penguin_walk.h"
#include <ufo/animation.h>
#include "island.h"
AnimPenguinWalk::AnimPenguinWalk(Game* _game) : Animation(_game, {32.0f, 32.0f}, 0.2f, "penguin_walking"){
    current_anim = {0,1,2,3,4,5,6,7};
    Play();
}