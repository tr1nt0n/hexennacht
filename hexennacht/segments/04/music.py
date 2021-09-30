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
        (4, 4),
        (7, 8),
        (3, 4),
        (7, 8),
        (3, 4),
    ],
    score["Global Context"],
)

# piano

hexennacht.incantation(
    score=score,
    voice="piano 2 voice",
    bunch_1_tuplet=0,
    bunch_1_durations=[(2, 4)],
    talea=8,
    smooth_durations=[(5, 8)],
    bunch_2_tuplet=29,
    bunch_2_durations=[(1, 4)],
    pitch_index=5,
    transpose=-10
)

hexennacht.incantation(
    score=score,
    voice="piano 2 voice",
    bunch_1_tuplet=27,
    bunch_1_durations=[(1, 4)],
    talea=8,
    smooth_durations=[(3, 4)],
    bunch_2_tuplet=28,
    bunch_2_durations=[(1, 4)],
    pitch_index=14,
    transpose=-11
)

trinton.append_rests(
    score=score,
    voice="piano 1 voice",
    rests=[abjad.Rest("r4")]
)

hexennacht.incantation(
    score=score,
    voice="piano 1 voice",
    bunch_1_tuplet=1,
    bunch_1_durations=[(1, 4)],
    talea=16,
    smooth_durations=[(7, 8)],
    bunch_2_tuplet=17,
    bunch_2_durations=[(1, 4)],
    pitch_index=18,
    transpose=8
)

hexennacht.incantation(
    score=score,
    voice="piano 1 voice",
    bunch_1_tuplet=2,
    bunch_1_durations=[(1, 4)],
    talea=16,
    smooth_durations=[(1, 2)],
    bunch_2_tuplet=18,
    bunch_2_durations=[(1, 4)],
    pitch_index=5,
    transpose=10
)

# harp

hexennacht.incantation(
    score=score,
    voice="harp voice",
    bunch_1_tuplet=17,
    bunch_1_durations=[(1, 4)],
    talea=16,
    smooth_durations=[(11, 8)],
    bunch_2_tuplet=25,
    bunch_2_durations=[(1, 4)],
    pitch_index=11,
    transpose=1
)

hexennacht.incantation(
    score=score,
    voice="harp voice",
    bunch_1_tuplet=1,
    bunch_1_durations=[(1, 8)],
    talea=16,
    smooth_durations=[(3, 8)],
    bunch_2_tuplet=14,
    bunch_2_durations=[(1, 4)],
    pitch_index=2,
    transpose=-3
)

hexennacht.transpose_harp(
    score=score,
    voice="harp voice"
)

# remember to transpose stragglers by hand!!!

for voice in ["piano 1 voice", "piano 2 voice", "harp voice"]:
    trinton.append_rests(
        score=score,
        voice=voice,
        rests=[abjad.Rest("r4."), abjad.Rest("r2"), abjad.Rest("r2."), abjad.Rest("r4."), abjad.Rest("r2"), abjad.Rest("r2."),]
    )

# flute

for voice in ["flute voice", "oboe voice"]:
    trinton.append_rests(
        score=score,
        voice=voice,
        rests=[abjad.Rest("r4.")],
    )

    hexennacht.woodwind_swells(
        score=score,
        voice=voice,
        durations=[(3, 8),]
    )

    trinton.append_rests(
        score=score,
        voice=voice,
        rests=[abjad.Rest("r8"), abjad.Rest("r2"), abjad.Rest("r8"),],
    )

    hexennacht.woodwind_swells(
        score=score,
        voice=voice,
        durations=[(1, 4),]
    )

    trinton.append_rests(
        score=score,
        voice=voice,
        rests=[abjad.Rest("r8"), abjad.Rest("r2."),],
    )

# oboe



# clarinet

for voice in ["bass clarinet voice", "bassoon voice"]:
    trinton.append_rests(
        score=score,
        voice=voice,
        rests=[abjad.Rest("r2"), abjad.Rest("r4."),]
    )

    hexennacht.woodwind_swells(
        score=score,
        voice=voice,
        durations=[(5, 16),]
    )

    trinton.append_rests(
        score=score,
        voice=voice,
        rests=[abjad.Rest("r8."), abjad.Rest("r4"), abjad.Rest("r1")]
    )

# bassoon



# strings

for voice in ["violin 1 voice", "violin 2 voice", "viola voice", "cello voice", "percussion 2 voice"]:
    trinton.append_rests(
        score=score,
        voice=voice,
        rests=[abjad.Rest("r2"), abjad.Rest("r4."), abjad.Rest("r16")]
    )

for voice, tuplet in zip(["violin 1 voice", "violin 2 voice", "viola voice", "cello voice",], [0, 1, 2, 3,]):
    hexennacht.string_swells(
        score=score,
        voice=voice,
        tuplet_index=tuplet,
        durations=[(9, 16)],
        pitch_index=6
    )

hexennacht.cymbal_swells(
    score=score,
    voice="percussion 2 voice",
    durations=[(9, 16)],
    tuplet_index=4
)

for voice in ["violin 1 voice", "violin 2 voice", "viola voice", "cello voice", "percussion 2 voice"]:
    trinton.append_rests(
        score=score,
        voice=voice,
        rests=[abjad.Rest("r8"), abjad.Rest("r4")]
    )

for voice, tuplet in zip(["violin 1 voice", "violin 2 voice", "viola voice", "cello voice",], [4, 0, 1, 2,]):
    hexennacht.string_swells(
        score=score,
        voice=voice,
        tuplet_index=tuplet,
        durations=[(1, 2)],
        pitch_index=12
    )

hexennacht.cymbal_swells(
    score=score,
    voice="percussion 2 voice",
    durations=[(1, 2)],
    tuplet_index=3
)

for voice in ["violin 1 voice", "violin 2 voice", "viola voice", "cello voice", "percussion 2 voice"]:
    trinton.append_rests(
        score=score,
        voice=voice,
        rests=[abjad.Rest("r4")]
    )

# all voices

for voice in ["horn voice", "trumpet voice", "tenor trombone voice", "tuba voice", "marimba voice", "percussion 1 voice", "contrabass voice",]:
    trinton.append_rests(
        score=score,
        voice=voice,
        rests=[abjad.Rest("r2"), abjad.Rest("r4."), abjad.Rest("r2."), abjad.Rest("r1")]
    )

trinton.write_marginmarkups(
    score=score,
    voices=hexennacht.all_staves,
    markups=hexennacht.all_marginmarkups,
)

hexennacht.standard_cleffing(score=score)

# show file

trinton.render_file(
    score=score,
    segment_path="/Users/trintonprater/scores/hexennacht/hexennacht/segments/04",
    build_path="/Users/trintonprater/scores/hexennacht/hexennacht/build",
    segment_name="04",
    includes=[
        "/Users/trintonprater/scores/hexennacht/hexennacht/build/hexennacht-stylesheet.ily",
        "/Users/trintonprater/abjad/docs/source/_stylesheets/abjad.ily",
    ]
)
