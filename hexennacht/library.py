import abjad
import trinton
import evans
from abjadext import rmakers
from abjadext import microtones

ritual_pitches = [0, 1, 3, 8, 3, 0, 7, 5, 3, 11, 6, 7, 2, 1, 3, 8, 3, 3, 2, 3, 3, 5, 0, 6]

dance_pitches = [4, 6, 7, 10, 8, 8, 4, 10, 0, 10, 10, 11, 4, 8, 7, 9, 6, 8, 5, 5, 7, 3]

violin1_ghost_pitches = [12, 12.5, 19, 18.5, 14, 15.5, 14, 11.5, 19, 22.5, 24, 21.5, 19, 21.5, 17, 18.5]

violin2_ghost_pitches = [0.5, 3, 5.5, 6, 0.5, 3, 2.5, 5, 6.5, 6, 7.5, 10, 10.5, 8, 5.5, 5, 3.5]

viola_ghost_pitches = [-9, -3.5, -9, -1.5, -9, -3.5, -9, -8.5, -4, -7.5, -1, -8.5, -4]

cello_ghost_pitches = [-23, -22.5, -16, -16.5, -21, -19.5, -21, -23.5, -16, -12.5, -11, -13.5, -16, -13.5, -18, -16.5]

def pitch_flute_flourishes(score, voice, start_index, leaves):
    pitches = trinton.rotated_sequence(
        pitch_list=trinton.transpose(
            [9, 13, 15, 18, 19, 16, 5, 10, 15, 16, 6, 7, 10, 17, 18, 0, 8, 12, 14, 16, 11, 5, 4, 14, 17, 13, 7],
            12
        ),
        start_index=start_index
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

def warble(score, voice, accel_durations, rit_durations, rit_first):
    accelerando = rmakers.stack(
        rmakers.accelerando([(1, 8), (1, 20), (1, 32)]),
        rmakers.force_rest(lambda _: abjad.select(_).leaves().get([0, -1])),
        rmakers.feather_beam(
            beam_rests=True,
            stemlet_length=0.75,
        ),
        rmakers.duration_bracket(),
    )

    ritardando = rmakers.stack(
        rmakers.accelerando([(1, 20), (1, 8), (1, 32)]),
        rmakers.force_rest(lambda _: abjad.select(_).leaves().get([0, -1])),
        rmakers.feather_beam(
            beam_rests=True,
            stemlet_length=0.75,
        ),
        rmakers.duration_bracket(),
    )

    if accel_durations == None:
        trinton.append_rhythm_selections(
            stack=ritardando,
            durations=rit_durations,
            voice_name=voice,
            score=score,
        )

    elif rit_durations == None:
        trinton.append_rhythm_selections(
            stack=accelerando,
            durations=accel_durations,
            voice_name=voice,
            score=score,
        )

    elif rit_first == True:
        trinton.append_rhythm_selections(
            stack=ritardando,
            durations=rit_durations,
            voice_name=voice,
            score=score,
        )

        trinton.append_rhythm_selections(
            stack=accelerando,
            durations=accel_durations,
            voice_name=voice,
            score=score,
        )

    else:
        trinton.append_rhythm_selections(
            stack=accelerando,
            durations=accel_durations,
            voice_name=voice,
            score=score,
        )

        trinton.append_rhythm_selections(
            stack=ritardando,
            durations=rit_durations,
            voice_name=voice,
            score=score,
        )

    handler = evans.PitchHandler(
        pitch_list=[20, 20.5, 19.5, 20, 21, 21.5, 20.5],
        forget=False
    )
    handler(abjad.select(score[voice]).leaves(pitched=True))

def incantation(score, voice, bunch_1_tuplet, bunch_1_durations, talea, smooth_durations, bunch_2_tuplet, bunch_2_durations, pitch_index, transpose):
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
    )
    smooth = rmakers.stack(
        rmakers.talea([4, 5, 7, 5, 4, 7, 5, 7], talea),
        rmakers.trivialize(abjad.select().tuplets()),
        rmakers.extract_trivial(abjad.select().tuplets()),
        rmakers.rewrite_rest_filled(abjad.select().tuplets()),
        rmakers.rewrite_sustained(abjad.select().tuplets()),
    )

    if pitch_index is None:
        trinton.append_rhythm_selections(
            stack=bunch_1,
            durations=bunch_1_durations,
            voice_name=voice,
            score=score,
        )

        trinton.append_rhythm_selections(
            stack=smooth,
            durations=smooth_durations,
            voice_name=voice,
            score=score,
        )

        trinton.append_rhythm_selections(
            stack=bunch_2,
            durations=bunch_2_durations,
            voice_name=voice,
            score=score,
        )

    elif transpose is None:
        trinton.append_rhythm_selections(
            stack=bunch_1,
            durations=bunch_1_durations,
            voice_name=voice,
            score=score,
        )

        trinton.append_rhythm_selections(
            stack=smooth,
            durations=smooth_durations,
            voice_name=voice,
            score=score,
        )

        trinton.append_rhythm_selections(
            stack=bunch_2,
            durations=bunch_2_durations,
            voice_name=voice,
            score=score,
        )

        handler = evans.PitchHandler(
            pitch_list=pitches,
            forget=False
        )

        handler(abjad.select(score[voice]).leaves(pitched=True))

    else:
        trinton.append_rhythm_selections(
            stack=bunch_1,
            durations=bunch_1_durations,
            voice_name=voice,
            score=score,
        )

        trinton.append_rhythm_selections(
            stack=smooth,
            durations=smooth_durations,
            voice_name=voice,
            score=score,
        )

        trinton.append_rhythm_selections(
            stack=bunch_2,
            durations=bunch_2_durations,
            voice_name=voice,
            score=score,
        )

        transposed_ritual = trinton.transpose(pitches, transpose)

        handler = evans.PitchHandler(
            pitch_list=transposed_ritual,
            forget=False
        )

        handler(abjad.select(score[voice]).leaves(pitched=True))

def handwrite(score, voice, durations, pitch_list):
    stack = rmakers.stack(
        rmakers.NoteRhythmMaker(),
    )

    trinton.append_rhythm_selections(
        stack=stack,
        durations=durations,
        voice_name=voice,
        score=score)

    if pitch_list is not None:
        handler = evans.PitchHandler(
            pitch_list=pitch_list,
            forget=False
        )

        handler(abjad.select(score[voice]).leaves(pitched=True))

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
    )

    if pitch_index is None:
        trinton.append_rhythm_selections(
            stack=stack,
            durations=durations,
            voice_name=voice,
            score=score,
        )

    elif transpose is None:
        trinton.append_rhythm_selections(
            stack=stack,
            durations=durations,
            voice_name=voice,
            score=score,
        )

        handler = evans.PitchHandler(
            pitch_list=pitches,
            forget=False
        )

        handler(abjad.select(score[voice]).leaves(pitched=True))

    else:
        trinton.append_rhythm_selections(
            stack=stack,
            durations=durations,
            voice_name=voice,
            score=score,
        )

        transposed_pitches = trinton.transpose(pitches, transpose)

        handler = evans.PitchHandler(
            pitch_list=transposed_pitches,
            forget=False
        )

        handler(abjad.select(score[voice]).leaves(pitched=True))

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

        trinton.append_rhythm_selections(
            stack=stack,
            durations=durations,
            voice_name=voice,
            score=score,
        )

        handler = evans.PitchHandler(
            pitch_list=pitches,
            forget=False
        )

        handler(abjad.select(score[voice]))

        ratio_segment = trinton.rotated_sequence(
            ["89/55", "89/55", "89/55", "7/4", "7/4", "7/4", "7/5", "7/5", "7/5", "13/5", "13/5", "13/5", "34/21", "34/21", "34/21", "13/8", "13/8", "13/8", "89/55", "89/55", "89/55",],
            start_index=pitch_index
        )

        ratio_handler = evans.PitchHandler(
            pitch_list=[_ for _ in ratio_segment],
            forget=False,
            as_ratios=True,
        )

        ratio_leaves = abjad.select(score[voice]).leaves(pitched=True)

        ratio_handler(ratio_leaves)

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

        trinton.append_rhythm_selections(
            stack=stack,
            durations=durations,
            voice_name=voice,
            score=score,
        )

        handler = evans.PitchHandler(
            pitch_list=[pitches],
            forget=False
        )

        handler = evans.PitchHandler(
            pitch_list=pitches,
            forget=False
        )

        handler(abjad.select(score[voice]))

        ratio_segment = trinton.rotated_sequence(
            ["5/3", "5/3", "5/3", "8/5", "8/5", "8/5", "3/5", "3/5", "3/5", "89/55", "89/55", "89/55", "7/3", "7/3", "7/3", "3/2", "3/2", "3/2", "5/3", "5/3", "5/3",],
            start_index=pitch_index
        )

        ratio_handler = evans.PitchHandler(
            pitch_list=[_ for _ in ratio_segment],
            forget=False,
            as_ratios=True,
        )

        ratio_leaves = abjad.select(score[voice]).leaves(pitched=True)

        ratio_handler(ratio_leaves)

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

        trinton.append_rhythm_selections(
            stack=stack,
            durations=durations,
            voice_name=voice,
            score=score,
        )

        handler = evans.PitchHandler(
            pitch_list=[pitches],
            forget=False
        )

        handler = evans.PitchHandler(
            pitch_list=pitches,
            forget=False
        )

        handler(abjad.select(score[voice]))

        ratio_segment = trinton.rotated_sequence(
            ["8/5", "8/5", "8/5", "3/5", "3/5", "3/5", "89/55", "89/55", "89/55", "4/3", "4/3", "4/3", "5/3", "5/3", "5/3", "5/3", "5/3", "5/3", "8/5", "8/5", "8/5",],
            start_index=pitch_index
        )

        ratio_handler = evans.PitchHandler(
            pitch_list=[_ for _ in ratio_segment],
            forget=False,
            as_ratios=True,
        )

        ratio_leaves = abjad.select(score[voice]).leaves(pitched=True)

        ratio_handler(ratio_leaves)

    else:
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

        trinton.append_rhythm_selections(
            stack=stack,
            durations=durations,
            voice_name=voice,
            score=score,
        )

        handler = evans.PitchHandler(
            pitch_list=[pitches],
            forget=False
        )

        ratio_segment = trinton.rotated_sequence(
            ["89/55", "89/55", "89/55", "7/4", "7/4", "7/4", "7/5", "7/5", "7/5", "13/5", "13/5", "13/5", "34/21", "34/21", "34/21", "13/8", "13/8", "13/8", "89/55", "89/55", "89/55",],
            start_index=pitch_index
        )

        ratio_handler = evans.PitchHandler(
            pitch_list=[_ for _ in ratio_segment],
            forget=False,
            as_ratios=True,
        )

        ratio_leaves = abjad.select(score[voice]).leaves(pitched=True)

        ratio_handler(ratio_leaves)

def drone(score, voice, talea, pitch_index, durations):
    if voice == "tuba voice":
        transposed = trinton.transpose(hexennacht.dance_pitches, -24)

        pitches = trinton.rotated_sequence(
            pitch_list=transposed,
            start_index=pitch_index
        )

        stack = rmakers.stack(
            rmakers.talea([4, 5, 7, 5, 4, 7, 5, 7], talea),
            rmakers.trivialize(abjad.select().tuplets()),
            rmakers.extract_trivial(abjad.select().tuplets()),
            rmakers.rewrite_rest_filled(abjad.select().tuplets()),
            rmakers.rewrite_sustained(abjad.select().tuplets()),
        )

        trinton.append_rhythm_selections(
            stack=stack,
            durations=durations,
            voice_name=voice,
            score=score,
        )

        handler = evans.PitchHandler(
            pitch_list=pitches,
            forget=False,
        )

        handler(abjad.select(score[voice]).leaves(pitched=True))

    else:
        transposed = trinton.transpose(hexennacht.dance_pitches, -35)

        pitches = trinton.rotated_sequence(
            pitch_list=transposed,
            start_index=pitch_index
        )

        stack = rmakers.stack(
            rmakers.talea([5, 7, 5, 4, 7, 5, 7, 4], talea),
            rmakers.trivialize(abjad.select().tuplets()),
            rmakers.extract_trivial(abjad.select().tuplets()),
            rmakers.rewrite_rest_filled(abjad.select().tuplets()),
            rmakers.rewrite_sustained(abjad.select().tuplets()),
        )

        trinton.append_rhythm_selections(
            stack=stack,
            durations=durations,
            voice_name=voice,
            score=score,
        )

        handler = evans.PitchHandler(
            pitch_list=pitches,
            forget=False,
        )

        handler(abjad.select(score[voice]).leaves(pitched=True))

        hexennacht.transpose_contrabass(score=score, voice=voice)

def flute_solo(score, voice, tuplet_index, flourish_durations, talea, talea_index, talea_durations):
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
    )

    stack2 = rmakers.stack(
        rmakers.talea(taleas, talea),
        rmakers.trivialize(abjad.select().tuplets()),
        rmakers.extract_trivial(abjad.select().tuplets()),
        rmakers.rewrite_rest_filled(abjad.select().tuplets()),
        rmakers.rewrite_sustained(abjad.select().tuplets()),
    )

    if tuplet_index == None:
        trinton.append_rhythm_selections(
            score=score,
            voice_name=voice,
            stack=stack2,
            durations=talea_durations,
        )

    elif talea_index == None:
        trinton.append_rhythm_selections(
            score=score,
            voice_name=voice,
            stack=stack1,
            durations=flourish_durations,
        )

    else:
        trinton.append_rhythm_selections(
            score=score,
            voice_name=voice,
            stack=stack1,
            durations=flourish_durations,
        )

        trinton.append_rhythm_selections(
            score=score,
            voice_name=voice,
            stack=stack2,
            durations=talea_durations,
        )


tempo_1 = abjad.MetronomeMark((1, 4), 47)
tempo_2 = abjad.MetronomeMark((1, 4), 60)
tempo_3 = abjad.MetronomeMark((1, 4), 69)
tempo_4 = abjad.MetronomeMark((1, 4), 105)
tempo_5 = abjad.MetronomeMark((1, 4), 130)

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

        elif leaf.written_pitch.number == 0:
            abjad.mutate.transpose(leaf, 1)

        elif leaf.written_pitch.number == 5:
            abjad.mutate.transpose(leaf, 1)

        elif leaf.written_pitch.number == 9:
            abjad.mutate.transpose(leaf, -1)

        else:
            abjad.mutate.transpose(leaf, 0)

def treble_clef(score_and_voice, leaves):
    trinton.attach(
        voice=score_and_voice,
        leaves=leaves,
        attachment=abjad.Clef("treble")
    )

def alto_clef(score_and_voice, leaves):
    trinton.attach(
        voice=score_and_voice,
        leaves=leaves,
        attachment=abjad.Clef("alto")
    )

def bass_clef(score_and_voice, leaves):
    trinton.attach(
        voice=score_and_voice,
        leaves=leaves,
        attachment=abjad.Clef("bass")
    )

def append_rests(score, voice, rests):
    for rest in rests:
        score[voice].append(rest)
