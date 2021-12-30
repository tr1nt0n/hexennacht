import abjad
import trinton
import evans
import hexennacht
from abjadext import rmakers
from abjadext import microtones

# pitch collections and functions

ritual_pitches = eval(
    """[0, 1, 3, 8, 3, 0, 7, 5, 3, 11, 6, 7, 2, 1, 3, 8, 3, 3, 2, 3, 3, 5, 0, 6,
    ]"""
)

dance_pitches = [4, 6, 7, 10, 8, 8, 4, 10, 0, 10, 10, 11, 4, 8, 7, 9, 6, 8, 5, 5, 7, 3]

violin1_ghost_pitches = [
    12,
    12.5,
    19,
    18.5,
    14,
    15.5,
    14,
    11.5,
    19,
    22.5,
    24,
    21.5,
    19,
    21.5,
    17,
    18.5,
]

violin2_ghost_pitches = [
    0.5,
    3,
    5.5,
    6,
    0.5,
    3,
    2.5,
    5,
    6.5,
    6,
    7.5,
    10,
    10.5,
    8,
    5.5,
    5,
    3.5,
]

viola_ghost_pitches = [-9, -3.5, -9, -1.5, -9, -3.5, -9, -8.5, -4, -7.5, -1, -8.5, -4]

cello_ghost_pitches = [
    -23,
    -22.5,
    -16,
    -16.5,
    -21,
    -19.5,
    -21,
    -23.5,
    -16,
    -12.5,
    -11,
    -13.5,
    -16,
    -13.5,
    -18,
    -16.5,
]

ratchet_pitches = [
    4,
    -3,
    4,
    0,
    4,
    -3,
    -3,
    0,
    0,
]


def pitch_flute_flourishes(score, voice, start_index, leaves):
    pitches = trinton.rotated_sequence(
        pitch_list=trinton.transpose(
            [
                9,
                13,
                15,
                18,
                19,
                16,
                5,
                10,
                15,
                16,
                6,
                7,
                10,
                17,
                18,
                0,
                8,
                12,
                14,
                16,
                11,
                5,
                4,
                14,
                17,
                13,
                7,
            ],
            12,
        ),
        start_index=start_index,
    )

    handler = evans.PitchHandler(
        pitch_list=pitches,
        forget=False,
    )

    for leaf in leaves:
        sel = abjad.select(score[voice]).leaf(leaf)
        handler(sel)


def pitch_flute_pf(score, voice, leaves):
    handler = evans.PitchHandler(
        pitch_list=[0, 0, 2, 2],
        forget=False,
    )

    for leaf in leaves:
        sel = abjad.select(score[voice]).leaf(leaf)
        handler(sel)

_multiphonic_to_pitches = {
    1: ([[9.5, 21, 23, 29]], r"\markup \override #'(size . .4) { \woodwind-diagram #'flute #'((cc . (one three four six)) (lh . (b)) (rh . (cis)))}"),
    2: ([[17, 25.5]], r"\markup \override #'(size . .4) { \woodwind-diagram #'flute #'((cc . (one two three four)) (lh . (b)) (rh . (d ees)))}"),
    3: ([[11.5, 25]], r"\markup \override #'(size . .4) { \woodwind-diagram #'flute #'((cc . (one two three six)) (lh . ()) (rh . ()))}"),
    4: ([[6, 17, 19, 24.5]], r"\markup \override #'(size . .4) { \woodwind-diagram #'flute #'((cc . (one two three five six)) (lh . (b)) (rh . (c cis)))}"),
    5: ([[10, 21.5, 29]], r"\markup \override #'(size . .4) { \woodwind-diagram #'flute #'((cc . (one three four)) (lh . (b)) (rh . (ees)))}"),
}

def flute_multiphonics(score, voice, leaves, multiphonic, markup):
    pair = _multiphonic_to_pitches[multiphonic]
    pitch_list, string = pair
    handler = evans.PitchHandler(pitch_list=pitch_list, forget=False)
    if markup is True:
        for leaf in leaves:
            sel = abjad.select(score[voice]).leaf(leaf)
            handler(sel)
            markup = abjad.Markup(
                string,
                literal=True,
                direction=abjad.Up,
            )
            trinton.attach(voice=score[voice], leaves=[leaf], attachment=markup)
    else:
        for leaf in leaves:
            sel = abjad.select(score[voice]).leaf(leaf)
            handler(sel)

def oboe_harmonies(score, voice, leaves, flute_multiphonic):
    if flute_multiphonic == 1:
        handler = evans.PitchHandler(pitch_list=[19.5], forget=False)
        for leaf in leaves:
            sel = abjad.select(score[voice]).leaf(leaf)
            handler(sel)

    elif flute_multiphonic == 2:
        handler = evans.PitchHandler(pitch_list=[23], forget=False)
        for leaf in leaves:
            sel = abjad.select(score[voice]).leaf(leaf)
            handler(sel)

    elif flute_multiphonic == 3:
        handler = evans.PitchHandler(pitch_list=[17], forget=False)
        for leaf in leaves:
            sel = abjad.select(score[voice]).leaf(leaf)
            handler(sel)

    elif flute_multiphonic == 4:
        handler = evans.PitchHandler(pitch_list=[12.5], forget=False)
        for leaf in leaves:
            sel = abjad.select(score[voice]).leaf(leaf)
            handler(sel)

    else:
        handler = evans.PitchHandler(pitch_list=[12], forget=False)
        for leaf in leaves:
            sel = abjad.select(score[voice]).leaf(leaf)
            handler(sel)


def clarinet_multiphonics(score, voice, leaves, multiphonic, markup):
    if multiphonic == 1:
        handler = evans.PitchHandler(pitch_list=[[4, 25]], forget=False)
        if markup == True:
            for leaf in leaves:
                sel = abjad.select(score[voice]).leaf(leaf)
                handler(sel)

                markup = abjad.Markup(
                    r"\markup \override #'(size . .4) { \woodwind-diagram #'bass-clarinet #'((cc . (two three four five)) (lh . (thumb)) (rh . ()))}",
                    literal=True,
                    direction=abjad.Up,
                )
                trinton.attach(voice=score[voice], leaves=[leaf], attachment=markup)
        else:
            for leaf in leaves:
                sel = abjad.select(score[voice]).leaf(leaf)
                handler(sel)

    elif multiphonic == 2:
        handler = evans.PitchHandler(pitch_list=[[7.5, 29]], forget=False)
        if markup == True:
            for leaf in leaves:
                sel = abjad.select(score[voice]).leaf(leaf)
                handler(sel)

                markup = abjad.Markup(
                    r"\markup \override #'(size . .4) { \woodwind-diagram #'bass-clarinet #'((cc . (two three six)) (lh . (thumb R)) (rh . ()))}",
                    literal=True,
                    direction=abjad.Up,
                )
                trinton.attach(voice=score[voice], leaves=[leaf], attachment=markup)
        else:
            for leaf in leaves:
                sel = abjad.select(score[voice]).leaf(leaf)
                handler(sel)

    elif multiphonic == 3:
        handler = evans.PitchHandler(pitch_list=[[6, 22.5]], forget=False)
        if markup == True:
            for leaf in leaves:
                sel = abjad.select(score[voice]).leaf(leaf)
                handler(sel)

                markup = abjad.Markup(
                    r"\markup \override #'(size . .4) { \woodwind-diagram #'bass-clarinet #'((cc . (one two three four five six)) (lh . ()) (rh . (ees)))}",
                    literal=True,
                    direction=abjad.Up,
                )
                trinton.attach(voice=score[voice], leaves=[leaf], attachment=markup)
        else:
            for leaf in leaves:
                sel = abjad.select(score[voice]).leaf(leaf)
                handler(sel)

    elif multiphonic == 4:
        handler = evans.PitchHandler(pitch_list=[[5.5, 32.5]], forget=False)

        if markup == True:
            for leaf in leaves:
                sel = abjad.select(score[voice]).leaf(leaf)
                handler(sel)

                markup = abjad.Markup(
                    r"\markup \override #'(size . .4) { \woodwind-diagram #'bass-clarinet #'((cc . (one two three five six)) (lh . (thumb)) (rh . (three four e)))}",
                    literal=True,
                    direction=abjad.Up,
                )
                trinton.attach(voice=score[voice], leaves=[leaf], attachment=markup)
        else:
            for leaf in leaves:
                sel = abjad.select(score[voice]).leaf(leaf)
                handler(sel)

    else:
        handler = evans.PitchHandler(pitch_list=[[8, 27.5]], forget=False)

        if markup == True:
            for leaf in leaves:
                sel = abjad.select(score[voice]).leaf(leaf)
                handler(sel)

                markup = abjad.Markup(
                    r"\markup \override #'(size . .4) { \woodwind-diagram #'bass-clarinet #'((cc . (one two three five)) (lh . (thumb gis)) (rh . ()))}",
                    literal=True,
                    direction=abjad.Up,
                )
                trinton.attach(voice=score[voice], leaves=[leaf], attachment=markup)
        else:
            for leaf in leaves:
                sel = abjad.select(score[voice]).leaf(leaf)
                handler(sel)


def bassoon_multiphonics(score, voice, leaves, multiphonic, markup):
    if multiphonic == 1:
        handler = evans.PitchHandler(pitch_list=[[-12, -10, -8]], forget=False)
        if markup == True:
            for leaf in leaves:
                sel = abjad.select(score[voice]).leaf(leaf)
                handler(sel)

                markup = abjad.Markup(
                    r"\markup \override #'(size . .4) { \woodwind-diagram #'bassoon #'((cc . (one two three five six)) (lh . (low-d)) (rh . (cis thumb-e fis)))}",
                    literal=True,
                    direction=abjad.Up,
                )
                trinton.attach(voice=score[voice], leaves=[leaf], attachment=markup)
        else:
            for leaf in leaves:
                sel = abjad.select(score[voice]).leaf(leaf)
                handler(sel)

    elif multiphonic == 2:
        handler = evans.PitchHandler(pitch_list=[[-11.5, 0.5]], forget=False)
        if markup == True:
            for leaf in leaves:
                sel = abjad.select(score[voice]).leaf(leaf)
                handler(sel)

                markup = abjad.Markup(
                    r"\markup \override #'(size . .4) { \woodwind-diagram #'bassoon #'((cc . (one two three five six)) (lh . (low-d)) (rh . (fis f thumb-bes)))}",
                    literal=True,
                    direction=abjad.Up,
                )
                trinton.attach(voice=score[voice], leaves=[leaf], attachment=markup)
        else:
            for leaf in leaves:
                sel = abjad.select(score[voice]).leaf(leaf)
                handler(sel)

    elif multiphonic == 3:
        handler = evans.PitchHandler(pitch_list=[[-10, -8.5, -6.5]], forget=False)
        if markup == True:
            for leaf in leaves:
                sel = abjad.select(score[voice]).leaf(leaf)
                handler(sel)

                markup = abjad.Markup(
                    r"\markup \override #'(size . .4) { \woodwind-diagram #'bassoon #'((cc . (one three four five)) (lh . (w eesT cisT)) (rh . (thumb-bes)))}",
                    literal=True,
                    direction=abjad.Up,
                )
                trinton.attach(voice=score[voice], leaves=[leaf], attachment=markup)
        else:
            for leaf in leaves:
                sel = abjad.select(score[voice]).leaf(leaf)
                handler(sel)

    elif multiphonic == 4:
        handler = evans.PitchHandler(pitch_list=[[-11.5, -6, -4]], forget=False)

        if markup == True:
            for leaf in leaves:
                sel = abjad.select(score[voice]).leaf(leaf)
                handler(sel)

                markup = abjad.Markup(
                    r"\markup \override #'(size . .4) { \woodwind-diagram #'bassoon #'((cc . (two three five)) (lh . (w)) (rh . (thumb-bes)))}",
                    literal=True,
                    direction=abjad.Up,
                )
                trinton.attach(voice=score[voice], leaves=[leaf], attachment=markup)
        else:
            for leaf in leaves:
                sel = abjad.select(score[voice]).leaf(leaf)
                handler(sel)

    else:
        handler = evans.PitchHandler(pitch_list=[[-23.5, -18, -12, -4.5]], forget=False)

        if markup == True:
            for leaf in leaves:
                sel = abjad.select(score[voice]).leaf(leaf)
                handler(sel)

                markup = abjad.Markup(
                    r"\markup \override #'(size . .4) { \woodwind-diagram #'bassoon #'((cc . (one two three five)) (lh . (a cisT thumb-cis)) (rh . (thumb-e)))}",
                    literal=True,
                    direction=abjad.Up,
                )
                trinton.attach(voice=score[voice], leaves=[leaf], attachment=markup)
        else:
            for leaf in leaves:
                sel = abjad.select(score[voice]).leaf(leaf)
                handler(sel)


# score

score = trinton.make_score_template(
    [
        abjad.Flute(),
        abjad.Oboe(),
        abjad.BassClarinet(),
        abjad.Bassoon(),
        abjad.FrenchHorn(),
        abjad.Trumpet(),
        abjad.TenorTrombone(),
        abjad.Tuba(),
        abjad.Piano(),
        abjad.Piano(),
        abjad.Harp(),
        abjad.Marimba(),
        abjad.Percussion(),
        abjad.Percussion(),
        abjad.Violin(),
        abjad.Violin(),
        abjad.Viola(),
        abjad.Cello(),
        abjad.Contrabass(),
    ],
    [4, 1, 3, 2, 1, 2, 1, 5],
)


def standard_cleffing(score):
    for voice in [
        "bassoon voice",
        "tenor trombone voice",
        "tuba voice",
        "piano 2 voice",
        "cello voice",
        "contrabass voice",
    ]:
        hexennacht.bass_clef(
            score_and_voice=score[voice],
            leaves=[0],
        )

    for voice in [
        "percussion 1 voice",
        "percussion 2 voice",
    ]:
        hexennacht.percussion_clef(
            score_and_voice=score[voice],
            leaves=[0],
        )

    hexennacht.alto_clef(
        score_and_voice=score["viola voice"],
        leaves=[0],
    )


all_voices = [
    "flute voice",
    "oboe voice",
    "bass clarinet voice",
    "bassoon voice",
    "horn voice",
    "trumpet voice",
    "tenor trombone voice",
    "tuba voice",
    "piano 1 voice",
    "piano 2 voice",
    "harp voice",
    "marimba voice",
    "percussion 1 voice",
    "percussion 2 voice",
    "violin 1 voice",
    "violin 2 voice",
    "viola voice",
    "cello voice",
    "contrabass voice",
]

all_staves = [
    "flute staff",
    "oboe staff",
    "bass clarinet staff",
    "bassoon staff",
    "horn staff",
    "trumpet staff",
    "tenor trombone staff",
    "tuba staff",
    "sub group 3",
    "harp staff",
    "marimba staff",
    "percussion 1 staff",
    "percussion 2 staff",
    "violin 1 staff",
    "violin 2 staff",
    "viola staff",
    "cello staff",
    "contrabass staff",
]

all_startmarkups = [
    abjad.Markup(r"Flute"),
    abjad.Markup(r"Oboe"),
    abjad.Markup(r"Bass Clarinet"),
    abjad.Markup(r"Bassoon"),
    abjad.Markup(r"French Horn"),
    abjad.Markup(r"Trumpet in C"),
    abjad.Markup(r"Tenor Trombone"),
    abjad.Markup(r"Tuba"),
    abjad.Markup(r"Piano"),
    abjad.Markup(r"Harp"),
    abjad.Markup(r"Marimba"),
    abjad.Markup(r"Ratchets"),
    abjad.Markup(r"Percussion 2"),
    abjad.Markup(r"Violin 1"),
    abjad.Markup(r"Violin 2"),
    abjad.Markup(r"Viola"),
    abjad.Markup(r"Violoncello"),
    abjad.Markup(r"Contrabass"),
]

all_marginmarkups = [
    abjad.Markup(r"fl."),
    abjad.Markup(r"ob."),
    abjad.Markup(r"bcl."),
    abjad.Markup(r"bsn."),
    abjad.Markup(r"hrn."),
    abjad.Markup(r"tpt."),
    abjad.Markup(r"tbn."),
    abjad.Markup(r"tb."),
    abjad.Markup(r"pno."),
    abjad.Markup(r"harp"),
    abjad.Markup(r"mar."),
    abjad.Markup(r"ratch."),
    abjad.Markup(r"perc. 2"),
    abjad.Markup(r"vln. 1"),
    abjad.Markup(r"vln. 2"),
    abjad.Markup(r"vla."),
    abjad.Markup(r"vc."),
    abjad.Markup(r"cb."),
]

# material functions


def woodwind_swells(score, voice, durations):
    stack = rmakers.stack(
        rmakers.NoteRhythmMaker(),
    )

    trinton.make_and_append_rhythm_selections(
        score=score,
        voice_name=voice,
        stack=stack,
        durations=durations,
    )


def cymbal_swells(score, voice, durations, tuplet_index):
    rhythms = trinton.rotated_sequence(
        pitch_list=[
            (1, 1, 1),
            (3, 1, 1),
            (1, 4, 1),
            (4, 1, 2),
            (2, 1, 1),
        ],
        start_index=tuplet_index,
    )

    stack = rmakers.stack(
        rmakers.tuplet(rhythms),
        rmakers.trivialize(abjad.select().tuplets()),
        rmakers.extract_trivial(abjad.select().tuplets()),
        rmakers.rewrite_rest_filled(abjad.select().tuplets()),
        rmakers.rewrite_sustained(abjad.select().tuplets()),
        rmakers.rewrite_dots(),
        rmakers.beam(abjad.select().tuplets()),
    )

    trinton.make_and_append_rhythm_selections(
        score=score,
        voice_name=voice,
        stack=stack,
        durations=durations,
    )


def warble(score, voice, accel_durations, rit_durations, rit_first, pitched):
    accelerando = rmakers.stack(
        rmakers.accelerando([(1, 8), (1, 20), (1, 32)]),
        rmakers.force_rest(lambda _: abjad.select(_).leaves().get([0, -1])),
        rmakers.feather_beam(
            beam_rests=True,
            selector=abjad.select().tuplets(),
        ),
        rmakers.duration_bracket(),
        rmakers.trivialize(abjad.select().tuplets()),
        rmakers.extract_trivial(abjad.select().tuplets()),
        rmakers.rewrite_rest_filled(abjad.select().tuplets()),
        rmakers.rewrite_sustained(abjad.select().tuplets()),
    )

    ritardando = rmakers.stack(
        rmakers.accelerando([(1, 20), (1, 8), (1, 32)]),
        rmakers.force_rest(lambda _: abjad.select(_).leaves().get([0, -1])),
        rmakers.feather_beam(
            beam_rests=True,
            selector=abjad.select().tuplets(),
        ),
        rmakers.duration_bracket(),
        rmakers.trivialize(abjad.select().tuplets()),
        rmakers.extract_trivial(abjad.select().tuplets()),
        rmakers.rewrite_rest_filled(abjad.select().tuplets()),
        rmakers.rewrite_sustained(abjad.select().tuplets()),
    )

    if pitched == True:
        if accel_durations == None:
            trinton.make_and_append_rhythm_selections(
                stack=ritardando,
                durations=rit_durations,
                voice_name=voice,
                score=score,
            )

        elif rit_durations == None:
            trinton.make_and_append_rhythm_selections(
                stack=accelerando,
                durations=accel_durations,
                voice_name=voice,
                score=score,
            )

        elif rit_first == True:
            trinton.make_and_append_rhythm_selections(
                stack=ritardando,
                durations=rit_durations,
                voice_name=voice,
                score=score,
            )

            trinton.make_and_append_rhythm_selections(
                stack=accelerando,
                durations=accel_durations,
                voice_name=voice,
                score=score,
            )

        else:
            trinton.make_and_append_rhythm_selections(
                stack=accelerando,
                durations=accel_durations,
                voice_name=voice,
                score=score,
            )

            trinton.make_and_append_rhythm_selections(
                stack=ritardando,
                durations=rit_durations,
                voice_name=voice,
                score=score,
            )

        handler = evans.PitchHandler(
            pitch_list=[20, 20.5, 19.5, 20, 21, 21.5, 20.5], forget=False
        )
        handler(abjad.select(score[voice]).leaves(pitched=True))

    else:
        if accel_durations == None:
            trinton.make_and_append_rhythm_selections(
                stack=ritardando,
                durations=rit_durations,
                voice_name=voice,
                score=score,
            )

        elif rit_durations == None:
            trinton.make_and_append_rhythm_selections(
                stack=accelerando,
                durations=accel_durations,
                voice_name=voice,
                score=score,
            )

        elif rit_first == True:
            trinton.make_and_append_rhythm_selections(
                stack=ritardando,
                durations=rit_durations,
                voice_name=voice,
                score=score,
            )

            trinton.make_and_append_rhythm_selections(
                stack=accelerando,
                durations=accel_durations,
                voice_name=voice,
                score=score,
            )

        else:
            trinton.make_and_append_rhythm_selections(
                stack=accelerando,
                durations=accel_durations,
                voice_name=voice,
                score=score,
            )

            trinton.make_and_append_rhythm_selections(
                stack=ritardando,
                durations=rit_durations,
                voice_name=voice,
                score=score,
            )


def incantation(
    score,
    voice,
    bunch_1_tuplet,
    bunch_1_durations,
    talea,
    smooth_durations,
    bunch_2_tuplet,
    bunch_2_durations,
    pitch_index,
    transpose,
):
    pitches = trinton.rotated_sequence(ritual_pitches, pitch_index)
    bunch_1 = rmakers.stack(
        rmakers.tuplet(
            [
                [(1, 1, 1)],
                [(2, 1, 1)],
                [(1, 2, 1)],
                [(1, 1, 1, 1, 1)],
                [(2, 1, 1, 1)],
                [(1, 2, 1, 1)],
                [(1, 1, 2, 1)],
                [(3, 1, 1)],
                [(1, 3, 1)],
                [(1, 1, 1, 1, 1, 1)],
                [(2, 1, 1, 1, 1)],
                [(1, 2, 1, 1, 1)],
                [(1, 1, 2, 1, 1)],
                [(1, 1, 1, 2, 1)],
                [(1, 3, 1, 1)],
                [(1, 1, 3, 1)],
                [(1, 1, 1, 1, 1, 1, 1)],
                [(2, 1, 1, 1, 1, 1)],
                [(1, 2, 1, 1, 1, 1)],
                [(1, 1, 2, 1, 1, 1)],
                [(1, 1, 1, 2, 1, 1)],
                [(1, 1, 1, 1, 2, 1)],
                [(3, 1, 1, 1, 1)],
                [(1, 3, 1, 1, 1)],
                [(1, 1, 3, 1, 1)],
                [(1, 1, 1, 3, 1)],
                [(2, 3, 1, 1, 1)],
                [(1, 2, 3, 1, 1)],
                [(1, 1, 2, 3, 1)],
                [(3, 1, 2, 1)],
                [(2, 1, 3, 1)],
            ][bunch_1_tuplet]
        ),
        rmakers.trivialize(abjad.select().tuplets()),
        rmakers.extract_trivial(abjad.select().tuplets()),
        rmakers.rewrite_rest_filled(abjad.select().tuplets()),
        rmakers.rewrite_sustained(abjad.select().tuplets()),
        rmakers.rewrite_dots(),
        rmakers.beam(abjad.select().tuplets()),
    )
    bunch_2 = rmakers.stack(
        rmakers.tuplet(
            [
                [(1, 1, 1)],
                [(2, 1, 1)],
                [(1, 2, 1)],
                [(1, 1, 1, 1, 1)],
                [(2, 1, 1, 1)],
                [(1, 2, 1, 1)],
                [(1, 1, 2, 1)],
                [(3, 1, 1)],
                [(1, 3, 1)],
                [(1, 1, 1, 1, 1, 1)],
                [(2, 1, 1, 1, 1)],
                [(1, 2, 1, 1, 1)],
                [(1, 1, 2, 1, 1)],
                [(1, 1, 1, 2, 1)],
                [(1, 3, 1, 1)],
                [(1, 1, 3, 1)],
                [(1, 1, 1, 1, 1, 1, 1)],
                [(2, 1, 1, 1, 1, 1)],
                [(1, 2, 1, 1, 1, 1)],
                [(1, 1, 2, 1, 1, 1)],
                [(1, 1, 1, 2, 1, 1)],
                [(1, 1, 1, 1, 2, 1)],
                [(3, 1, 1, 1, 1)],
                [(1, 3, 1, 1, 1)],
                [(1, 1, 3, 1, 1)],
                [(1, 1, 1, 3, 1)],
                [(2, 3, 1, 1, 1)],
                [(1, 2, 3, 1, 1)],
                [(1, 1, 2, 3, 1)],
                [(3, 1, 2, 1)],
                [(2, 1, 3, 1)],
            ][bunch_2_tuplet]
        ),
        rmakers.trivialize(abjad.select().tuplets()),
        rmakers.extract_trivial(abjad.select().tuplets()),
        rmakers.rewrite_rest_filled(abjad.select().tuplets()),
        rmakers.rewrite_sustained(abjad.select().tuplets()),
        rmakers.rewrite_dots(),
        rmakers.beam(abjad.select().tuplets()),
    )
    smooth = rmakers.stack(
        rmakers.talea([4, 5, 7, 5, 4, 7, 5, 7], talea),
        rmakers.trivialize(abjad.select().tuplets()),
        rmakers.extract_trivial(abjad.select().tuplets()),
        rmakers.rewrite_rest_filled(abjad.select().tuplets()),
        rmakers.rewrite_sustained(abjad.select().tuplets()),
        rmakers.beam(abjad.select().tuplets()),
    )

    if pitch_index is None:
        trinton.make_and_append_rhythm_selections(
            stack=bunch_1,
            durations=bunch_1_durations,
            voice_name=voice,
            score=score,
        )

        trinton.make_and_append_rhythm_selections(
            stack=smooth,
            durations=smooth_durations,
            voice_name=voice,
            score=score,
        )

        trinton.make_and_append_rhythm_selections(
            stack=bunch_2,
            durations=bunch_2_durations,
            voice_name=voice,
            score=score,
        )

    elif transpose is None:
        sel1 = trinton.make_rhythm_selections(
            stack=bunch_1,
            durations=bunch_1_durations,
        )
        container1 = abjad.Container(sel1)

        sel2 = trinton.make_rhythm_selections(
            stack=smooth,
            durations=smooth_durations,
        )
        container2 = abjad.Container(sel2)

        sel3 = trinton.make_rhythm_selections(
            stack=bunch_2,
            durations=bunch_2_durations,
        )
        container3 = abjad.Container(sel3)

        handler = evans.PitchHandler(pitch_list=pitches, forget=False)

        all_containers = [container1, container2, container3]

        for container in all_containers:
            handler(abjad.select(container[:]).leaves())

        trinton.append_rhythm_selections(
            score=score, voice=voice, selections=container1[:]
        )

        trinton.append_rhythm_selections(
            score=score, voice=voice, selections=container2[:]
        )

        trinton.append_rhythm_selections(
            score=score, voice=voice, selections=container3[:]
        )

    else:
        sel1 = trinton.make_rhythm_selections(
            stack=bunch_1,
            durations=bunch_1_durations,
        )
        container1 = abjad.Container(sel1)

        sel2 = trinton.make_rhythm_selections(
            stack=smooth,
            durations=smooth_durations,
        )
        container2 = abjad.Container(sel2)

        sel3 = trinton.make_rhythm_selections(
            stack=bunch_2,
            durations=bunch_2_durations,
        )
        container3 = abjad.Container(sel3)

        all_containers = [container1, container2, container3]

        transposed_ritual = trinton.transpose(pitches, transpose)

        handler = evans.PitchHandler(pitch_list=transposed_ritual, forget=False)

        for container in all_containers:
            handler(abjad.select(container[:]).leaves())

        trinton.append_rhythm_selections(
            score=score, voice=voice, selections=container1[:]
        )

        trinton.append_rhythm_selections(
            score=score, voice=voice, selections=container2[:]
        )

        trinton.append_rhythm_selections(
            score=score, voice=voice, selections=container3[:]
        )


def dance(score, voice, tuplet_index, durations, pitch_index, transpose):
    rhythms = trinton.rotated_sequence(
        pitch_list=[
            (5, 1, 1),
            (4, 1, 1),
            (1, 1, 3, 1, 1),
            (2, 2, 1, 1, 1),
            (4, 1, 1),
            (3, 1, 1),
            (1, 1, 1, 2, 1, 1),
        ],
        start_index=tuplet_index,
    )

    pitches = trinton.rotated_sequence(
        pitch_list=dance_pitches,
        start_index=pitch_index,
    )

    stack = rmakers.stack(
        rmakers.tuplet(rhythms),
        rmakers.trivialize(abjad.select().tuplets()),
        rmakers.extract_trivial(abjad.select().tuplets()),
        rmakers.rewrite_rest_filled(abjad.select().tuplets()),
        rmakers.rewrite_sustained(abjad.select().tuplets()),
        rmakers.rewrite_dots(),
        rmakers.beam(abjad.select().tuplets()),
    )

    if pitch_index is None:
        trinton.make_and_append_rhythm_selections(
            stack=stack,
            durations=durations,
            voice_name=voice,
            score=score,
        )

    elif transpose is None:
        sel = trinton.make_rhythm_selections(
            stack=stack,
            durations=durations,
        )

        container = abjad.Container(sel)

        handler = evans.PitchHandler(pitch_list=pitches, forget=False)

        handler(abjad.select(container[:]).leaves())

        trinton.append_rhythm_selections(
            score=score, voice=voice, selections=container[:]
        )

    else:
        sel = trinton.make_rhythm_selections(
            stack=stack,
            durations=durations,
        )

        container = abjad.Container(sel)

        transposed_pitches = trinton.transpose(pitches, transpose)

        handler = evans.PitchHandler(pitch_list=transposed_pitches, forget=False)

        handler(abjad.select(container[:]).leaves())

        trinton.append_rhythm_selections(
            score=score, voice=voice, selections=container[:]
        )


def string_swells(score, voice, tuplet_index, durations, pitch_index):
    rhythms = trinton.rotated_sequence(
        pitch_list=[
            (1, 1, 1),
            (3, 1, 1),
            (1, 4, 1),
            (4, 1, 2),
            (2, 1, 1),
        ],
        start_index=tuplet_index,
    )

    stack = rmakers.stack(
        rmakers.tuplet(rhythms),
        rmakers.trivialize(abjad.select().tuplets()),
        rmakers.extract_trivial(abjad.select().tuplets()),
        rmakers.rewrite_rest_filled(abjad.select().tuplets()),
        rmakers.rewrite_sustained(abjad.select().tuplets()),
        rmakers.rewrite_dots(),
        rmakers.beam(abjad.select().tuplets()),
    )

    if voice == "violin 1 voice":
        pitches = trinton.rotated_sequence(
            pitch_list=[
                9,
                9,
                9,
                7,
                7,
                7,
                8,
                8,
                8,
                4,
                4,
                4,
                7,
                7,
                7,
                6,
                6,
                6,
                8,
                8,
                8,
            ],
            start_index=pitch_index,
        )

        rhythm_selections = trinton.make_rhythm_selections(
            stack=stack, durations=durations
        )

        container = abjad.Container(rhythm_selections)

        handler = evans.PitchHandler(pitch_list=pitches, forget=False)

        handler(abjad.select(container[:]).leaves())

        ratio_segment = trinton.rotated_sequence(
            [
                "89/55",
                "89/55",
                "89/55",
                "7/4",
                "7/4",
                "7/4",
                "7/5",
                "7/5",
                "7/5",
                "13/5",
                "13/5",
                "13/5",
                "34/21",
                "34/21",
                "34/21",
                "13/8",
                "13/8",
                "13/8",
                "89/55",
                "89/55",
                "89/55",
            ],
            start_index=pitch_index,
        )

        ratio_handler = evans.PitchHandler(
            pitch_list=[_ for _ in ratio_segment],
            forget=False,
            as_ratios=True,
        )

        ratio_handler(abjad.select(container[:]).leaves())

        trinton.append_rhythm_selections(
            score=score, voice=voice, selections=container[:]
        )

    elif voice == "violin 2 voice":
        pitches = trinton.rotated_sequence(
            pitch_list=[
                9,
                9,
                9,
                7,
                7,
                7,
                8,
                8,
                8,
                4,
                4,
                4,
                7,
                7,
                7,
                6,
                6,
                6,
                8,
                8,
                8,
            ],
            start_index=pitch_index,
        )

        rhythm_selections = trinton.make_rhythm_selections(
            stack=stack, durations=durations
        )

        container = abjad.Container(rhythm_selections)

        handler = evans.PitchHandler(pitch_list=pitches, forget=False)

        handler(abjad.select(container[:]).leaves())

        ratio_segment = trinton.rotated_sequence(
            [
                "5/3",
                "5/3",
                "5/3",
                "8/5",
                "8/5",
                "8/5",
                "3/5",
                "3/5",
                "3/5",
                "89/55",
                "89/55",
                "89/55",
                "7/3",
                "7/3",
                "7/3",
                "3/2",
                "3/2",
                "3/2",
                "5/3",
                "5/3",
                "5/3",
            ],
            start_index=pitch_index,
        )

        ratio_handler = evans.PitchHandler(
            pitch_list=[_ for _ in ratio_segment],
            forget=False,
            as_ratios=True,
        )

        ratio_handler(abjad.select(container[:]).leaves())

        trinton.append_rhythm_selections(
            score=score, voice=voice, selections=container[:]
        )

    elif voice == "cello voice":
        pitches = trinton.rotated_sequence(
            pitch_list=[
                1,
                1,
                1,
                4,
                4,
                4,
                -12,
                -12,
                -12,
                -10,
                -10,
                -10,
                -7,
                -7,
                -7,
                -5,
                -5,
                -5,
                -9,
                -9,
                -9,
            ],
            start_index=pitch_index,
        )

        rhythm_selections = trinton.make_rhythm_selections(
            stack=stack, durations=durations
        )

        container = abjad.Container(rhythm_selections)

        handler = evans.PitchHandler(pitch_list=pitches, forget=False)

        handler(abjad.select(container[:]).leaves())

        ratio_segment = trinton.rotated_sequence(
            [
                "8/5",
                "8/5",
                "8/5",
                "3/5",
                "3/5",
                "3/5",
                "89/55",
                "89/55",
                "89/55",
                "4/3",
                "4/3",
                "4/3",
                "5/3",
                "5/3",
                "5/3",
                "5/3",
                "5/3",
                "5/3",
                "8/5",
                "8/5",
                "8/5",
            ],
            start_index=pitch_index,
        )

        ratio_handler = evans.PitchHandler(
            pitch_list=[_ for _ in ratio_segment],
            forget=False,
            as_ratios=True,
        )

        ratio_handler(abjad.select(container[:]).leaves())

        trinton.append_rhythm_selections(
            score=score, voice=voice, selections=container[:]
        )

    elif voice == "viola voice":
        pitches = trinton.rotated_sequence(
            pitch_list=[
                1,
                1,
                1,
                4,
                4,
                4,
                -12,
                -12,
                -12,
                -10,
                -10,
                -10,
                -7,
                -7,
                -7,
                -5,
                -5,
                -5,
                -9,
                -9,
                -9,
            ],
            start_index=pitch_index,
        )

        rhythm_selections = trinton.make_rhythm_selections(
            stack=stack, durations=durations
        )

        container = abjad.Container(rhythm_selections)

        handler = evans.PitchHandler(pitch_list=pitches, forget=False)

        handler(abjad.select(container[:]).leaves())

        ratio_segment = trinton.rotated_sequence(
            [
                "89/55",
                "89/55",
                "89/55",
                "7/4",
                "7/4",
                "7/4",
                "7/5",
                "7/5",
                "7/5",
                "13/5",
                "13/5",
                "13/5",
                "34/21",
                "34/21",
                "34/21",
                "13/8",
                "13/8",
                "13/8",
                "89/55",
                "89/55",
                "89/55",
            ],
            start_index=pitch_index,
        )

        ratio_handler = evans.PitchHandler(
            pitch_list=[_ for _ in ratio_segment],
            forget=False,
            as_ratios=True,
        )

        ratio_handler(abjad.select(container[:]).leaves())

        trinton.append_rhythm_selections(
            score=score, voice=voice, selections=container[:]
        )


def drone(score, voice, talea, pitch_index, durations):
    if voice == "tuba voice":
        transposed = trinton.transpose(hexennacht.dance_pitches, -24)

        pitches = trinton.rotated_sequence(
            pitch_list=transposed, start_index=pitch_index
        )

        stack = rmakers.stack(
            rmakers.talea([4, 5, 7, 5, 4, 7, 5, 7], talea),
            rmakers.trivialize(abjad.select().tuplets()),
            rmakers.extract_trivial(abjad.select().tuplets()),
            rmakers.rewrite_rest_filled(abjad.select().tuplets()),
            rmakers.rewrite_sustained(abjad.select().tuplets()),
            rmakers.beam(abjad.select().tuplets()),
        )

        selections = trinton.make_rhythm_selections(
            stack=stack,
            durations=durations,
        )

        container = abjad.Container(selections)

        handler = evans.PitchHandler(
            pitch_list=pitches,
            forget=False,
        )

        handler(abjad.select(container[:]).leaves())

        trinton.append_rhythm_selections(
            score=score, voice=voice, selections=container[:]
        )

    else:
        transposed = trinton.transpose(hexennacht.dance_pitches, -35)

        pitches = trinton.rotated_sequence(
            pitch_list=transposed, start_index=pitch_index
        )

        stack = rmakers.stack(
            rmakers.talea([5, 7, 5, 4, 7, 5, 7, 4], talea),
            rmakers.trivialize(abjad.select().tuplets()),
            rmakers.extract_trivial(abjad.select().tuplets()),
            rmakers.rewrite_rest_filled(abjad.select().tuplets()),
            rmakers.rewrite_sustained(abjad.select().tuplets()),
            rmakers.beam(abjad.select().tuplets()),
        )

        selections = trinton.make_rhythm_selections(
            stack=stack,
            durations=durations,
        )

        container = abjad.Container(selections)

        handler = evans.PitchHandler(
            pitch_list=pitches,
            forget=False,
        )

        handler(abjad.select(container[:]).leaves())

        trinton.append_rhythm_selections(
            score=score, voice=voice, selections=container[:]
        )

        hexennacht.transpose_contrabass(score=score, voice=voice)


def flute_solo(
    score, voice, tuplet_index, flourish_durations, talea, talea_index, talea_durations
):
    tuplets = trinton.rotated_sequence(
        pitch_list=[
            (1, 1, 1, 1, 1, 1),
            (2, 1, 1, 1, 1, 1),
            (2, 1, 1, 1),
            (1, 1, 1, 2),
            (1, 1, 1, 1),
            (1, 1, 1, 1, 2),
        ],
        start_index=tuplet_index,
    )

    taleas = trinton.rotated_sequence(
        pitch_list=[3, 1, 5, 1, 3, 1, 7, 1, 5, 1],
        start_index=talea_index,
    )

    stack1 = rmakers.stack(
        rmakers.tuplet(tuplets),
        rmakers.trivialize(abjad.select().tuplets()),
        rmakers.extract_trivial(abjad.select().tuplets()),
        rmakers.rewrite_rest_filled(abjad.select().tuplets()),
        rmakers.rewrite_sustained(abjad.select().tuplets()),
        rmakers.rewrite_dots(),
        rmakers.beam(abjad.select().tuplets()),
    )

    stack2 = rmakers.stack(
        rmakers.talea(taleas, talea),
        rmakers.trivialize(abjad.select().tuplets()),
        rmakers.extract_trivial(abjad.select().tuplets()),
        rmakers.rewrite_rest_filled(abjad.select().tuplets()),
        rmakers.rewrite_sustained(abjad.select().tuplets()),
    )

    if tuplet_index == None:
        trinton.make_and_append_rhythm_selections(
            score=score,
            voice_name=voice,
            stack=stack2,
            durations=talea_durations,
        )

    elif talea_index == None:
        trinton.make_and_append_rhythm_selections(
            score=score,
            voice_name=voice,
            stack=stack1,
            durations=flourish_durations,
        )

    else:
        trinton.make_and_append_rhythm_selections(
            score=score,
            voice_name=voice,
            stack=stack1,
            durations=flourish_durations,
        )

        trinton.make_and_append_rhythm_selections(
            score=score,
            voice_name=voice,
            stack=stack2,
            durations=talea_durations,
        )


def drumming(score, voice, durations, pitched):
    if voice == "cello voice":
        stack = rmakers.stack(
            rmakers.even_division([8]),
            rmakers.extract_trivial(abjad.select().tuplets()),
            rmakers.rewrite_rest_filled(abjad.select().tuplets()),
            rmakers.rewrite_sustained(abjad.select().tuplets()),
            rmakers.beam(abjad.select().tuplets()),
        )

        if pitched == True:
            sel = trinton.make_rhythm_selections(
                stack=stack,
                durations=durations,
            )
            container = abjad.Container(sel)

            handler = evans.PitchHandler(
                pitch_list=[-24],
                forget=False,
            )
            handler(container[:])

            trinton.append_rhythm_selections(
                score=score,
                voice=voice,
                selections=container[:],
            )

        else:
            trinton.make_and_append_rhythm_selections(
                score=score,
                stack=stack,
                voice_name=voice,
                durations=durations,
            )

    elif voice == "viola voice":
        stack = rmakers.stack(
            rmakers.tuplet([(2, 1), (1, 2)]),
            rmakers.extract_trivial(abjad.select().tuplets()),
            rmakers.rewrite_rest_filled(abjad.select().tuplets()),
            rmakers.rewrite_sustained(abjad.select().tuplets()),
            rmakers.rewrite_dots(),
            rmakers.beam(abjad.select().tuplets()),
        )

        if pitched == True:
            sel = trinton.make_rhythm_selections(
                stack=stack,
                durations=durations,
            )
            container = abjad.Container(sel)

            handler = evans.PitchHandler(
                pitch_list=[-12],
                forget=False,
            )
            handler(container[:])

            trinton.append_rhythm_selections(
                score=score,
                voice=voice,
                selections=container[:],
            )

        else:
            trinton.make_and_append_rhythm_selections(
                score=score,
                stack=stack,
                voice_name=voice,
                durations=durations,
            )

    elif voice == "violin 2 voice":
        stack = rmakers.stack(
            rmakers.tuplet([(2, 2, 2, 1), (1, 2, 2, 2)]),
            rmakers.extract_trivial(abjad.select().tuplets()),
            rmakers.rewrite_rest_filled(abjad.select().tuplets()),
            rmakers.rewrite_sustained(abjad.select().tuplets()),
            rmakers.rewrite_dots(),
            rmakers.beam(abjad.select().tuplets()),
        )

        if pitched == True:
            sel = trinton.make_rhythm_selections(
                stack=stack,
                durations=durations,
            )
            container = abjad.Container(sel)

            handler = evans.PitchHandler(
                pitch_list=[-5],
                forget=False,
            )
            handler(container[:])

            trinton.append_rhythm_selections(
                score=score,
                voice=voice,
                selections=container[:],
            )

        else:
            trinton.make_and_append_rhythm_selections(
                score=score,
                stack=stack,
                voice_name=voice,
                durations=durations,
            )

    else:
        stack = rmakers.stack(
            rmakers.even_division([8], extra_counts=[0, 4, 3, 1]),
            rmakers.extract_trivial(abjad.select().tuplets()),
            rmakers.rewrite_rest_filled(abjad.select().tuplets()),
            rmakers.rewrite_sustained(abjad.select().tuplets()),
            rmakers.beam(abjad.select().tuplets()),
        )

        trinton.make_and_append_rhythm_selections(
            score=score,
            voice_name=voice,
            durations=durations,
            stack=stack,
        )


def violin_solo(score, voice, tuplet_index, durations, pitched, pitch_index):
    rhythms = trinton.rotated_sequence(
        [(2, 1), (3, 1), (1, 1, 1), (4, 1), (5, 1), (5, 1), (1, 1, 1, 1, 1), (3, 4)],
        tuplet_index,
    )
    pitches = trinton.rotated_sequence(
        hexennacht.violin2_ghost_pitches,
        pitch_index,
    )

    stack = rmakers.stack(
        rmakers.tuplet(rhythms),
        rmakers.extract_trivial(abjad.select().tuplets()),
        rmakers.rewrite_rest_filled(abjad.select().tuplets()),
        rmakers.rewrite_sustained(abjad.select().tuplets()),
        rmakers.rewrite_dots(),
        rmakers.beam(abjad.select().tuplets()),
    )

    if pitched == True:
        sel = trinton.make_rhythm_selections(
            stack=stack,
            durations=durations,
        )

        container = abjad.Container(sel)

        handler = evans.PitchHandler(
            pitch_list=pitches,
            forget=False,
        )

        handler(abjad.select(container[:]).leaves())

        trinton.append_rhythm_selections(
            score=score,
            voice=voice,
            selections=container[:],
        )

    else:
        trinton.make_and_append_rhythm_selections(
            score=score,
            voice_name=voice,
            stack=stack,
            durations=durations,
        )


def brass_shrieks(score, voice, talea_index, talea, durations, pitched, pitch_index):
    rhythms = trinton.rotated_sequence([5, 3, -2, 7, 9, -4, 4, -2], talea_index)

    stack = rmakers.stack(
        rmakers.talea(rhythms, talea),
        rmakers.force_rest(lambda _: abjad.select(_).logical_ties().get([-1])),
        rmakers.extract_trivial(abjad.select().tuplets()),
        rmakers.rewrite_rest_filled(abjad.select().tuplets()),
        rmakers.rewrite_sustained(abjad.select().tuplets()),
        rmakers.rewrite_dots(),
        rmakers.beam(abjad.select().tuplets()),
    )

    if voice == "trumpet voice":
        if pitched == True:
            pitches = trinton.rotated_sequence(
                [
                    15.5,
                    21,
                    13.5,
                    18.5,
                    14,
                ],
                pitch_index,
            )
            sel = trinton.make_rhythm_selections(
                stack=stack,
                durations=durations,
            )

            container = abjad.Container(sel)

            handler = evans.PitchHandler(pitch_list=pitches, forget=False)
            handler(abjad.select(container[:]).leaves(pitched=True))

            trinton.append_rhythm_selections(
                score=score,
                voice=voice,
                selections=container[:],
            )

        else:
            trinton.make_and_append_rhythm_selections(
                score=score,
                voice_name=voice,
                stack=stack,
                durations=durations,
            )

    elif voice == "horn voice":
        if pitched == True:
            pitches = trinton.rotated_sequence(
                [21, 11, 22, 13, 24],
                pitch_index,
            )

            sel = trinton.make_rhythm_selections(
                stack=stack,
                durations=durations,
            )

            container = abjad.Container(sel)

            handler = evans.PitchHandler(pitch_list=pitches, forget=False)
            handler(abjad.select(container[:]).leaves(pitched=True))

            trinton.append_rhythm_selections(
                score=score,
                voice=voice,
                selections=container[:],
            )

        else:
            trinton.make_and_append_rhythm_selections(
                score=score,
                voice_name=voice,
                stack=stack,
                durations=durations,
            )

    elif voice == "tenor trombone voice":
        if pitched == True:
            pitches = trinton.rotated_sequence(
                [22, -9, 22, -8, 22, -10, -4, 22, -25],
                pitch_index,
            )
            sel = trinton.make_rhythm_selections(
                stack=stack,
                durations=durations,
            )

            container = abjad.Container(sel)

            handler = evans.PitchHandler(pitch_list=pitches, forget=False)
            handler(abjad.select(container[:]).leaves(pitched=True))

            trinton.append_rhythm_selections(
                score=score,
                voice=voice,
                selections=container[:],
            )

        else:
            trinton.make_and_append_rhythm_selections(
                score=score,
                voice_name=voice,
                stack=stack,
                durations=durations,
            )

    elif voice == "tuba voice":
        if pitched == True:
            pitches = trinton.rotated_sequence(
                [-32],
                pitch_index,
            )
            sel = trinton.make_rhythm_selections(
                stack=stack,
                durations=durations,
            )

            container = abjad.Container(sel)

            handler = evans.PitchHandler(pitch_list=pitches, forget=False)
            handler(abjad.select(container[:]).leaves(pitched=True))

            trinton.append_rhythm_selections(
                score=score,
                voice=voice,
                selections=container[:],
            )

        else:
            trinton.make_and_append_rhythm_selections(
                score=score,
                voice_name=voice,
                stack=stack,
                durations=durations,
            )


def marimba_shakes(score, voice, note_value, durations, pitched, pitch_index, high):
    pitches = trinton.rotated_sequence(
        pitch_list=trinton.countList(
            hexennacht.ritual_pitches, hexennacht.dance_pitches
        ),
        start_index=pitch_index,
    )

    stack = rmakers.stack(
        rmakers.even_division([note_value]),
        rmakers.extract_trivial(abjad.select().tuplets()),
        rmakers.rewrite_rest_filled(abjad.select().tuplets()),
        rmakers.rewrite_sustained(abjad.select().tuplets()),
        rmakers.beam(abjad.select().tuplets()),
    )

    if pitched == True:
        if high == True:
            hi = trinton.transpose(pitches, 24)

            sel = trinton.make_rhythm_selections(
                stack=stack,
                durations=durations,
            )

            container = abjad.Container(sel)

            handler = evans.PitchHandler(pitch_list=hi, forget=False)

            handler(abjad.select(container[:]).leaves(pitched=True))

            trinton.append_rhythm_selections(
                score=score, voice=voice, selections=container[:]
            )

        else:
            low = trinton.transpose(pitches, -19)

            sel = trinton.make_rhythm_selections(
                stack=stack,
                durations=durations,
            )

            container = abjad.Container(sel)

            handler = evans.PitchHandler(pitch_list=low, forget=False)

            handler(abjad.select(container[:]).leaves(pitched=True))

            trinton.append_rhythm_selections(
                score=score, voice=voice, selections=container[:]
            )

    else:
        trinton.make_and_append_rhythm_selections(
            stack=stack,
            score=score,
            voice_name=voice,
            durations=durations,
        )


# tempi

tempo_1 = abjad.MetronomeMark((1, 4), 47)
tempo_2 = abjad.MetronomeMark((1, 4), 60)
tempo_3 = abjad.MetronomeMark((1, 4), 69)
tempo_4 = abjad.MetronomeMark((1, 4), 105)
tempo_5 = abjad.MetronomeMark((1, 4), 130)

# transposition functions


def octave_up(sel):
    for pitch in sel:
        abjad.mutate.transpose(pitch, 12)


def octave_down(sel):
    for pitch in sel:
        abjad.mutate.transpose(pitch, -12)


def double_octave_up(sel):
    for pitch in sel:
        abjad.mutate.transpose(pitch, 24)


def double_octave_down(sel):
    for pitch in sel:
        abjad.mutate.transpose(pitch, -24)


def transpose_bass_clarinet(score, voice):
    for leaf in abjad.select(score[voice]).leaves(pitched=True):
        abjad.mutate.transpose(leaf, 14)


def transpose_french_horn(score, voice):
    for leaf in abjad.select(score[voice]).leaves(pitched=True):
        abjad.mutate.transpose(leaf, 7)


def transpose_trumpet(score, voice):
    for leaf in abjad.select(score[voice]).leaves(pitched=True):
        abjad.mutate.transpose(leaf, 2)


def transpose_contrabass(score, voice):
    for leaf in abjad.select(score[voice]).leaves(pitched=True):
        abjad.mutate.transpose(leaf, 12)


def transpose_harp(score, voice):
    for leaf in abjad.select(score[voice]).leaves(pitched=True):
        if leaf.written_pitch.number == 4:
            abjad.mutate.transpose(leaf, -1)
            hexennacht.with_flats(leaf)

        elif leaf.written_pitch.number == 0:
            abjad.mutate.transpose(leaf, 1)
            hexennacht.with_sharps(leaf)

        elif leaf.written_pitch.number == 5:
            abjad.mutate.transpose(leaf, 1)
            hexennacht.with_sharps(leaf)

        elif leaf.written_pitch.number == 9:
            abjad.mutate.transpose(leaf, -1)
            hexennacht.with_flats(leaf)

        elif leaf.written_pitch.number == 10:
            abjad.mutate.transpose(leaf, 1)
            hexennacht.with_flats(leaf)

        else:
            abjad.mutate.transpose(leaf, 0)


def with_sharps(selections):
    abjad.iterpitches.respell_with_sharps(selections)


def with_flats(selections):
    abjad.iterpitches.respell_with_flats(selections)


# clef attachers


def treble_clef(score_and_voice, leaves):
    trinton.attach(
        voice=score_and_voice, leaves=leaves, attachment=abjad.Clef("treble")
    )


def alto_clef(score_and_voice, leaves):
    trinton.attach(voice=score_and_voice, leaves=leaves, attachment=abjad.Clef("alto"))


def bass_clef(score_and_voice, leaves):
    trinton.attach(voice=score_and_voice, leaves=leaves, attachment=abjad.Clef("bass"))


def percussion_clef(score_and_voice, leaves):
    trinton.attach(
        voice=score_and_voice, leaves=leaves, attachment=abjad.Clef("percussion")
    )


# percussion tools


def three_lines(score, voice, leaves):
    trinton.attach(
        voice=score[voice],
        leaves=leaves,
        attachment=abjad.LilyPondLiteral(
            r"\staff-line-count 3",
            format_slot="absolute_before",
        ),
    )


def one_line(score, voice, leaves):
    trinton.attach(
        voice=score[voice],
        leaves=leaves,
        attachment=abjad.LilyPondLiteral(
            r"\staff-line-count 1",
            format_slot="absolute_before",
        ),
    )


def ride_cymbal(score, voice, leaves):
    trinton.attach(
        voice=score[voice],
        leaves=leaves,
        attachment=abjad.LilyPondLiteral(
            r'\boxed-markup "Ride Cymbal" 1', format_slot="after"
        ),
    )


def gongs(score, voice, leaves):
    trinton.attach(
        voice=score[voice],
        leaves=leaves,
        attachment=abjad.LilyPondLiteral(
            r'\boxed-markup "Gongs" 1', format_slot="after"
        ),
    )


def bass_drum(score, voice, leaves):
    trinton.attach(
        voice=score[voice],
        leaves=leaves,
        attachment=abjad.LilyPondLiteral(
            r'\boxed-markup "Bass Drum" 1', format_slot="after"
        ),
    )


def with_drumsticks(score, voice, leaves):
    trinton.attach(
        voice=score[voice],
        leaves=leaves,
        attachment=abjad.LilyPondLiteral(
            r'\boxed-markup "w/ drumsticks" 1', format_slot="after"
        ),
    )


def with_mallets(score, voice, leaves):
    trinton.attach(
        voice=score[voice],
        leaves=leaves,
        attachment=abjad.LilyPondLiteral(
            r'\boxed-markup "w/ mallets" 1', format_slot="after"
        ),
    )


def with_bow(score, voice, leaves):
    trinton.attach(
        voice=score[voice],
        leaves=leaves,
        attachment=abjad.LilyPondLiteral(
            r'\boxed-markup "w/ bow" 1', format_slot="after"
        ),
    )


def with_hand(score, voice, leaves):
    trinton.attach(
        voice=score[voice],
        leaves=leaves,
        attachment=abjad.LilyPondLiteral(
            r'\boxed-markup "w/ hand" 1', format_slot="after"
        ),
    )
