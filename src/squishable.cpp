#include "squishable.h"
#include <ufo/cell_actor.h>
#include "island.h"
#include <ufo/camera.h>
#include <ufo/layer_actor.h>

Squishable::Squishable(olc::vf2d _position, Island* _game) : CellActor(_position, _game), game{static_cast<Island*>(_game)}{
    mask = "squishable";
    mask_decal = game->asset_manager.GetDecal(mask);
    solid_layer = "solid";
    is_already_in_semi_solid = false;
    snap_to_ground = 6;
    snap_up_range = 4;
}

void
Squishable::Update(){
    LayerActor* act_layer;

    for(auto layer : game->map.layers){
        if(layer->name == "dynamic_solids"){
            act_layer = dynamic_cast<LayerActor*>(layer);
            if(act_layer == nullptr){
                std::cout << "dummy.cpp cast failed" << std::endl;
            }
        }
    }

    if(IsOverlapping(&(game->map),mask_decal,solid_layer,{position.x,position.y+1.0f}) ||
        IsOverlapping(&(game->map),mask_decal,solid_layer,{position.x,position.y+1.0f}, olc::RED)){
        is_grounded = true;        
    }

    velocity.x = 1.0f;

    if(on_dynamic_solid){
        for(auto act : act_layer->actors){

            //These checks are for making sure the player has moved out of the DynamicSolid before checking for player-movement
            //Checking 2 pixles below player to see if still on the ground. Might not be necessary
            if(IsOverlappingOtherDecal(mask_decal, olc::vf2d(position.x, position.y + 2.0f), game->asset_manager.GetDecal(act->mask),act->position)){

                position.x += act->velocity.x; //This is to move the player relative to the DynamicSolid you collided with
                //These checks are for making sure the player has moved out of the DynamicSolid before checking for player-movement
                if(IsOverlappingOtherDecal(mask_decal, position, game->asset_manager.GetDecal(act->mask), {act->position.x+act->velocity.x,act->position.y})){
                    
                    if(IsOverlappingOtherDecal(mask_decal, {position.x+1.0f, position.y}, game->asset_manager.GetDecal(act->mask), {act->position.x+act->velocity.x,act->position.y})){
                        position.x -= 1.0f;
                        while(IsOverlappingOtherDecal(mask_decal, {position.x, position.y}, game->asset_manager.GetDecal(act->mask), {act->position.x+act->velocity.x,act->position.y})){
                            position.x -= 1.0f;
                        }
                    }
                    else if(IsOverlappingOtherDecal(mask_decal, {position.x-1.0f, position.y}, game->asset_manager.GetDecal(act->mask), {act->position.x+act->velocity.x,act->position.y})){
                        position.x += 1.0f;
                        while(IsOverlappingOtherDecal(mask_decal, {position.x, position.y}, game->asset_manager.GetDecal(act->mask), {act->position.x+act->velocity.x,act->position.y})){
                            position.x += 1.0f;
                        }
                    }
                }

                position.y += act->velocity.y; //This is to move the player relative to the DynamicSolid you collided with
                //This is where things go wrong. This was mainly for the cases where you aren't quite resolved after DynamicSolid is moved

                if(IsOverlappingOtherDecal(mask_decal, position, game->asset_manager.GetDecal(act->mask), act->position+act->velocity)){
                    
                    if(IsOverlappingOtherDecal(mask_decal, {position.x, position.y+1.0f}, game->asset_manager.GetDecal(act->mask), act->position+act->velocity)){
                        position.y -= 1.0f;
                        while(IsOverlappingOtherDecal(mask_decal, {position.x, position.y}, game->asset_manager.GetDecal(act->mask), act->position+act->velocity)){
                            position.y -= 1.0f;
                        }
                    }
                    else if(IsOverlappingOtherDecal(mask_decal, {position.x, position.y-1.0f}, game->asset_manager.GetDecal(act->mask), act->position+act->velocity)){ //added the if statements,dint do anything
                        position.y += 1.0f;
                        while(IsOverlappingOtherDecal(mask_decal, {position.x, position.y}, game->asset_manager.GetDecal(act->mask), act->position+act->velocity)){
                            position.y += 1.0f;
                        }
                    }
                }
            }
        }
    }

    former_position = position;

    if(!on_dynamic_solid) AdjustEnteredDynamicSolidX(act_layer);

    position.x += velocity.x;
    velocity.x *= 0.85f;

    if(on_dynamic_solid) AdjustEnterPseudoStaticSolidX(act_layer);

    //HEIGHT ADJUSTMENT OVERLAP
    AdjustUpSlope(&(game->map));
    // COLLISION ADJUSTMENT X-AXIS
    AdjustCollisionX(&(game->map));
    //ThisVsDynamicSolid
    if(!on_dynamic_solid) AdjustEnterDynamicSolidX(act_layer);

    // ADJUSTMENT ALONG Y-AXIS
    is_already_in_semi_solid = false;
    is_already_in_semi_solid = IsOverlapping(&(game->map), mask_decal, solid_layer, position, olc::RED);

    //Checking before we intend to move along the Y-Axis

    if(!on_dynamic_solid) AdjustEnteredDynamicSolidY(act_layer);

    //std::cout << is_grounded << std::endl;

    velocity.y += 0.7f;
    position.y += velocity.y;
    velocity.y *= 0.99f;
    if(on_dynamic_solid) AdjustEnterPseudoStaticSolidY(act_layer);
    AdjustCollisionY(&(game->map));

    if(!on_dynamic_solid) AdjustEnterDynamicSolidY(act_layer);

    was_grounded = is_grounded;
    is_grounded = false;
    AdjustDownSlope(&(game->map));

    for(auto act : act_layer->actors){

        olc::vf2d act_new_position = act->position+act->velocity;
        on_dynamic_solid = false;
        if(IsOverlappingOtherDecal(mask_decal, olc::vf2d(position.x, position.y + 2.0), game->asset_manager.GetDecal(act->mask), act_new_position)){
            on_dynamic_solid = true;
            is_grounded = true;
        }
    }
    
}

void
Squishable::Draw(Camera* _camera){
    _camera->DrawDecal(
        position,
        game->asset_manager.GetDecal("squishable"));
}