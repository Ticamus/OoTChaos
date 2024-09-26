#ifndef CHAOS_H
#define CHAOS_H

#define CHAOS_DURATION 6

typedef enum {
    CHAOS_POOR,
    CHAOS_RICH,
    CHAOS_DEATH,
    CHAOS_DYING, // Lose health during CHAOS_DURATION seconds
    CHAOS_MAX
} Chaos_EffectsId;

typedef struct _chaos_effect_ {
    Chaos_EffectsId effectId;
    int chaos_timer;
    int (*apply_effect)(struct PlayState*);
    void (*destroy_effect)(struct PlayState*);
    struct _chaos_effect_* next_effect;
    struct _chaos_effect_* prev_effect;
} Chaos_Effect;


#endif
