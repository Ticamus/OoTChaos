#include "global.h"
#include "chaos.h"

#define SECONDS 3

void Chaos_GenerateEffect(PlayState* play) {
    Chaos_Effect* new_effect;
    static u32 randomEffect = 0x12345678;
    u32 effectId;

    randomEffect = ((osGetCount() + 0x1234567) * (randomEffect + gAudioCtx.totalTaskCount));
    effectId = randomEffect % CHAOS_MAX;

    osSyncPrintf("New Effect : %d\n", effectId);

    // first : effects that doesn't need an entry in Chaos_Effect
    switch (effectId) {
        case CHAOS_POOR:
            gSaveContext.save.info.playerData.rupees = 0;
            return;
        case CHAOS_RICH:
            gSaveContext.save.info.playerData.rupees = 99; // TODO : Change to max
            return;
        case CHAOS_DEATH:
            // gSaveContext.save.info.playerData.health = 0;
            return;
        default:
            gSaveContext.healthAccumulator -= 50;
            osSyncPrintf("UNKNOWN EFFECT %d\n", effectId);
            return;
    }

    // then : effects that needs an entry
    new_effect = ZeldaArena_Malloc(sizeof(Chaos_Effect));
    new_effect->prev_effect = NULL;
    switch (effectId) {
        case CHAOS_DYING:
            new_effect->effectId = CHAOS_DYING;
            new_effect->destroy_effect = NULL;
            new_effect->chaos_timer = CHAOS_DURATION * 20;
            new_effect->apply_effect = chaos_dying;
            break;
        default:
            osSyncPrintf("UNKNOWN EFFECT %d\n", effectId);
            return;
    }
    if (play->chaos_effects)
        play->chaos_effects->prev_effect = new_effect;
    new_effect->next_effect = play->chaos_effects;
    play->chaos_effects = new_effect;
}

void Chaos_Update(PlayState* play) {
    Player* player = GET_PLAYER(play);
    Chaos_Effect* actual_effect;
    play->chaos_frame++;

    for (actual_effect = play->chaos_effects; actual_effect != NULL; actual_effect = actual_effect->next_effect) {
        actual_effect->chaos_timer--;
        if (actual_effect->chaos_timer == 0 || actual_effect->apply_effect(play)) {
            Chaos_Effect* temp = actual_effect;

            if (actual_effect->destroy_effect) {
                actual_effect->destroy_effect(play);
            }
            if (actual_effect->prev_effect) {
                actual_effect->prev_effect->next_effect = actual_effect->next_effect;
            }
            if (actual_effect->next_effect) {
                actual_effect->next_effect->prev_effect = actual_effect->prev_effect;
            }
            ZeldaArena_Free(temp);
        }
    }

    if (play->chaos_frame % (SECONDS * 20)) {
        return;
    }

    Chaos_GenerateEffect(play);
}
