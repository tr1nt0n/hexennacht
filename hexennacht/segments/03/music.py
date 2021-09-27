import abjad
import evans
import trinton
from abjadext import rmakers
import hexennacht

# make score template

score = hexennacht.score

trinton.write_time_signatures(
    [
        (2, 4),
        (3, 8),
        (3, 4),
        (7, 8),
        (7, 8),
    ],
    score["Global Context"],
)

# piano

hexennacht.incantation(
    score=score,
    voice="piano 1 voice",
    bunch_1_tuplet=7,
    bunch_1_durations=[(1, 4)],
    talea=16,
    smooth_durations=[(9, 8)],
    bunch_2_tuplet=8,
    bunch_2_durations=[(1, 4)],
    pitch_index=8,
    transpose=2
)

trinton.append_rests(
    score=score,
    voice="piano 2 voice",
    rests=[abjad.Rest("r4.")]
)

hexennacht.incantation(
    score=score,
    voice="piano 2 voice",
    bunch_1_tuplet=9,
    bunch_1_durations=[(1, 8)],
    talea=16,
    smooth_durations=[(5, 8)],
    bunch_2_tuplet=10,
    bunch_2_durations=[(2, 4)],
    pitch_index=17,
    transpose=-5
)

# harp

trinton.append_rests(
    score=score,
    voice="harp voice",
    rests=[abjad.Rest("r8")]
)

hexennacht.incantation(
    score=score,
    voice="harp voice",
    bunch_1_tuplet=11,
    bunch_1_durations=[(3, 8)],
    talea=16,
    smooth_durations=[(5, 8)],
    bunch_2_tuplet=12,
    bunch_2_durations=[(2, 4)],
    pitch_index=17,
    transpose=None
)

hexennacht.transpose_harp(
    score=score,
    voice="harp voice",
)

for voice in ["piano 1 voice", "piano 2 voice", "harp voice"]:
    trinton.append_rests(
        score=score,
        voice=voice,
        rests=[abjad.Rest("r2"), abjad.Rest("r4.")]
    )

# flute and oboe

for voice in ["flute voice", "oboe voice",]:
    trinton.append_rests(
        score=score,
        voice=voice,
        rests=[abjad.Rest("r4")],
    )

    hexennacht.woodwind_swells(
        score=score,
        voice=voice,
        durations=[(1, 8)]
    )

    trinton.append_rests(
        score=score,
        voice=voice,
        rests=[abjad.Rest("r8"), abjad.Rest("r4."),],
    )

    hexennacht.woodwind_swells(
        score=score,
        voice=voice,
        durations=[(1, 8)]
    )

    trinton.append_rests(
        score=score,
        voice=voice,
        rests=[abjad.Rest("r8"), abjad.Rest("r2"),],
    )

# clarinet

trinton.append_rests(
    score=score,
    voice="bass clarinet voice",
    rests=[abjad.Rest("r2"), abjad.Rest("r8")],
)

hexennacht.woodwind_swells(
    score=score,
    voice="bass clarinet voice",
    durations=[(1, 8)]
)

trinton.append_rests(
    score=score,
    voice="bass clarinet voice",
    rests=[abjad.Rest("r8"), abjad.Rest("r2.")],
)

# strings

for voice in ["violin 1 voice", "violin 2 voice", "viola voice", "cello voice"]:
    trinton.append_rests(
        score=score,
        voice=voice,
        rests=[abjad.Rest("r2"), abjad.Rest("r4."), abjad.Rest("r4")]
    )

    hexennacht.string_swells(
        score=score,
        voice=voice,
        tuplet_index=3,
        durations=[(1, 2)],
        pitch_index=3,
    )

# all voices

for voice in ["bassoon voice", "horn voice", "trumpet voice", "tenor trombone voice", "tuba voice", "marimba voice", "percussion 1 voice", "percussion 2 voice", "contrabass voice",]:
    trinton.append_rests(
        score=score,
        voice=voice,
        rests=[
            abjad.Rest("r2"),
            abjad.Rest("r4."),
            abjad.Rest("r2.")
        ],
    )

# show file

trinton.render_file(
    score=score,
    segment_path="/Users/trintonprater/scores/hexennacht/hexennacht/segments/03",
    build_path="/Users/trintonprater/scores/hexennacht/hexennacht/build",
    segment_name="03",
    includes=[
        "/Users/trintonprater/scores/hexennacht/hexennacht/build/hexennacht-stylesheet.ily",
        "/Users/trintonprater/abjad/docs/source/_stylesheets/abjad.ily",
    ]
)
