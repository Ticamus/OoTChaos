#include "chaos.h"
#include "global.h"

// CHAOS_DYING
int chaos_dying(PlayState *play) {
    gSaveContext.healthAccumulator -= 1;
    return 0;
}
