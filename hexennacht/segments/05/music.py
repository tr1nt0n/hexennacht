import abjad
import evans
import trinton
from abjadext import rmakers
import hexennacht

# make score template

score = hexennacht.score

trinton.write_time_signatures(
    [
        (7, 8),
        (3, 4),
        (4, 4),
        (5, 4),
        (6, 4),
        (7, 8),
        (3, 4),
        (4, 4),
    ],
    score["Global Context"],
)

# piano

hexennacht.incantation(
    score=score,
    voice="piano 1 voice",
    bunch_1_tuplet=9,
    bunch_1_durations=[(3, 8)],
    talea=16,
    smooth_durations=[(3, 4)],
    bunch_2_tuplet=3,
    bunch_2_durations=[(1, 4)],
    pitch_index=16,
    transpose=16,
)

hexennacht.incantation(
    score=score,
    voice="piano 1 voice",
    bunch_1_tuplet=9,
    bunch_1_durations=[(1, 4)],
    talea=16,
    smooth_durations=[(4, 4)],
    bunch_2_tuplet=8,
    bunch_2_durations=[(1, 4)],
    pitch_index=5,
    transpose=18,
)

hexennacht.incantation(
    score=score,
    voice="piano 1 voice",
    bunch_1_tuplet=15,
    bunch_1_durations=[(1, 4)],
    talea=16,
    smooth_durations=[(3, 4)],
    bunch_2_tuplet=2,
    bunch_2_durations=[(1, 4)],
    pitch_index=17,
    transpose=19,
)

hexennacht.incantation(
    score=score,
    voice="piano 1 voice",
    bunch_1_tuplet=0,
    bunch_1_durations=[(3, 8)],
    talea=16,
    smooth_durations=[(1, 2)],
    bunch_2_tuplet=12,
    bunch_2_durations=[(3, 8)],
    pitch_index=2,
    transpose=21,
)

# last measure displace octaves

hexennacht.incantation(
    score=score,
    voice="piano 2 voice",
    bunch_1_tuplet=3,
    bunch_1_durations=[(3, 8)],
    talea=16,
    smooth_durations=[(3, 4)],
    bunch_2_tuplet=14,
    bunch_2_durations=[(1, 4)],
    pitch_index=1,
    transpose=-15,
)

hexennacht.incantation(
    score=score,
    voice="piano 2 voice",
    bunch_1_tuplet=5,
    bunch_1_durations=[(1, 4)],
    talea=8,
    smooth_durations=[(4, 4)],
    bunch_2_tuplet=29,
    bunch_2_durations=[(1, 4)],
    pitch_index=13,
    transpose=-21,
)

hexennacht.incantation(
    score=score,
    voice="piano 2 voice",
    bunch_1_tuplet=15,
    bunch_1_durations=[(3, 8)],
    talea=16,
    smooth_durations=[(3, 8)],
    bunch_2_tuplet=30,
    bunch_2_durations=[(1, 4)],
    pitch_index=23,
    transpose=-25,
)

trinton.append_rests(
    score=score,
    voice="piano 2 voice",
    rests=[abjad.Rest("r1.")]
)

# harp

hexennacht.incantation(
    score=score,
    voice="harp voice",
    bunch_1_tuplet=2,
    bunch_1_durations=[(3, 8)],
    talea=16,
    smooth_durations=[(3, 4)],
    bunch_2_tuplet=30,
    bunch_2_durations=[(1, 4)],
    pitch_index=11,
    transpose=0,
)

hexennacht.incantation(
    score=score,
    voice="harp voice",
    bunch_1_tuplet=29,
    bunch_1_durations=[(1, 4)],
    talea=16,
    smooth_durations=[(4, 4)],
    bunch_2_tuplet=8,
    bunch_2_durations=[(3, 8)],
    pitch_index=21,
    transpose=0,
)

hexennacht.incantation(
    score=score,
    voice="harp voice",
    bunch_1_tuplet=9,
    bunch_1_durations=[(3, 8)],
    talea=16,
    smooth_durations=[(1, 4)],
    bunch_2_tuplet=7,
    bunch_2_durations=[(1, 4)],
    pitch_index=6,
    transpose=0,
)

hexennacht.incantation(
    score=score,
    voice="harp voice",
    bunch_1_tuplet=16,
    bunch_1_durations=[(3, 4)],
    talea=32,
    smooth_durations=[(1, 2)],
    bunch_2_tuplet=1,
    bunch_2_durations=[(1, 4)],
    pitch_index=16,
    transpose=0,
)

hexennacht.transpose_harp(
    score=score,
    voice="harp voice"
)

# last measure octave up

# show file

trinton.render_file(
    score=score,
    segment_path="/Users/trintonprater/scores/hexennacht/hexennacht/segments/05",
    build_path="/Users/trintonprater/scores/hexennacht/hexennacht/build",
    segment_name="05",
    includes=[
        "/Users/trintonprater/scores/hexennacht/hexennacht/build/hexennacht-stylesheet.ily",
        "/Users/trintonprater/abjad/docs/source/_stylesheets/abjad.ily",
    ]
)
