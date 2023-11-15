#include "optimised_dummy.h"
#include "../external/UFO-Cells/external/olcPixelGameEngine.h"
#include <ufo/cell_actor.h>
#include "island.h"
#include <ufo/layer_actor.h>
#include <ufo/camera.h>
#include "squishable.h"
#include <program/ufo_global.h>

OptimisedDummy::OptimisedDummy(olc::vf2d _position, Island* _game) : CellActor(_position, _game), game{static_cast<Island*>(_game)}{
    ray = PlayerRay(_game, &(game->camera), this, {6.0f, 12.0f});
    //game->camera.SetStateMouseAndArrowKeys({0.0f, 0.0f}, game->map.map_size);
    game->camera.scale = 4.0f;
    mask = "decPin";
    mask_decal = game->asset_manager.GetDecal(mask);
    solid_layer = "solid";
    game->camera.SetStatePlatformer(this, {0.0f, 0.0f}, game->map.map_size);
    is_already_in_semi_solid = false;
    snap_to_ground = 6;
    snap_up_range = 14;
}

void
OptimisedDummy::Update(){
    std::cout << game->camera.ScreenToWorld(game->GetMousePos(), {0.0f,0.0f}) << std::endl;

    LayerActor* squishable_layer;

    for(auto layer : game->map.layers){
        if(layer->name == "squishable"){
            squishable_layer = dynamic_cast<LayerActor*>(layer);
            if(squishable_layer == nullptr){
                std::cout << "dummy.cpp cast failed" << std::endl;
            }
        }
    }

    velocity.x *= 0.85f;
    velocity.y *= 0.99f;

    // INPUT X-AXIS
    if(game->GetKey(olc::Key::D).bHeld) velocity.x += 0.5f;
    if(game->GetKey(olc::Key::A).bHeld) velocity.x -= 0.5f;
    if((game->GetKey(olc::Key::SPACE).bPressed || game->GetKey(olc::Key::W).bPressed) && is_grounded){
        velocity.y = -10.0f;
    }
    velocity.y+=0.7f;

    ApplyCollisionNaive(&(game->map));

    //std::cout << (is_grounded == !was_grounded) << std::endl;

    //############# Collision features end here ###############

    for(auto squishable : squishable_layer->actors){
        if(squishable->mask == "squishable"){
            Squishable* sq = dynamic_cast<Squishable*>(squishable);
            if(sq->IsBeingEntered(former_position, position-former_position, UfoGlobal::UP, mask)){
                velocity.y = -10.0f;
            }
        }
    }

    ray.Update();
    bool collision = ray.IsHitBitmap(game->map.map_decals[solid_layer]);
    if(collision) ray.draw_colour = olc::RED;
    else ray.draw_colour = olc::GREEN;

    bool collision_2 = ray.IsHitBitmap(game->map.map_decals[solid_layer]);
    if(collision_2){
        //std::cout << ray.GetFirstHit() << std::endl;
    }
}

void
OptimisedDummy::Draw(Camera* _camera){
    _camera->DrawDecal(
        position,
        game->asset_manager.GetDecal("decPurple"));
    ray.Draw(_camera);
}