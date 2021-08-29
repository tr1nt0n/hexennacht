import abjad
import evans
import trinton
import hexennacht
from abjadext import rmakers
from abjadext import microtones

# make score template

score = hexennacht.score

trinton.write_time_signatures([(2, 1)], score["Global Context"])

# write new material function here

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
                19,
                19,
                19,
                21,
                21,
                21,
                20,
                20,
                20,
                24,
                24,
                24,
                18,
                18,
                18,
                19,
                19,
                19,
                23,
                23,
                23,
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
            ["7/4", "7/4", "7/4", "3/2", "3/2", "3/2", "13/8", "13/8", "13/8", "13/8", "5/2", "5/2", "5/2",],
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
                20,
                20,
                20,
                22,
                22,
                22,
                21,
                21,
                21,
                25,
                25,
                25,
                19,
                19,
                19,
                20,
                20,
                20,
                24,
                24,
                24,
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
            ["7/4", "7/4", "7/4", "3/2", "3/2", "3/2", "13/8", "13/8", "13/8", "13/8", "5/2", "5/2", "5/2",],
            start_index=pitch_index
        )

        ratio_handler = evans.PitchHandler(
            pitch_list=[_ for _ in ratio_segment],
            forget=False,
            as_ratios=True,
        )

        ratio_leaves = abjad.select(score[voice]).leaves(pitched=True)

        ratio_handler(ratio_leaves)

    elif voice == "viola voice":
        pitches = trinton.rotated_sequence(
            pitch_list=[
                15,
                15,
                15,
                16,
                16,
                16,
                14,
                14,
                14,
                17,
                17,
                17,
                10,
                10,
                10,
                10,
                10,
                10,
                13,
                13,
                13,
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
            ["7/4", "7/4", "7/4", "3/2", "3/2", "3/2", "13/8", "13/8", "13/8", "13/8", "5/2", "5/2", "5/2",],
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
                4,
                4,
                4,
                4,
                4,
                4,
                1,
                1,
                1,
                3,
                3,
                3,
                -5,
                -5,
                -5,
                -6,
                -6,
                -6,
                -4,
                -4,
                -4,
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
            ["7/4", "7/4", "7/4", "3/2", "3/2", "3/2", "13/8", "13/8", "13/8", "13/8", "5/2", "5/2", "5/2",],
            start_index=pitch_index
        )

        ratio_handler = evans.PitchHandler(
            pitch_list=[_ for _ in ratio_segment],
            forget=False,
            as_ratios=True,
        )

        ratio_leaves = abjad.select(score[voice]).leaves(pitched=True)

        ratio_handler(ratio_leaves)

string_swells(
    score=score,
    voice="cello voice",
    tuplet_index=2,
    durations=[(1, 4), (1, 4), (1, 4),],
    pitch_index=2,
)

# show file

trinton.render_file(
    score=score,
    segment_path="/Users/trintonprater/scores/hexennacht/hexennacht/material_tests",
    build_path="/Users/trintonprater/scores/hexennacht/hexennacht/material_tests",
    segment_name="test",
    includes=[
        "/Users/trintonprater/scores/hexennacht/hexennacht/build/hexennacht-stylesheet.ily",
        "/Users/trintonprater/abjad/docs/source/_stylesheets/abjad.ily",
    ]
)
