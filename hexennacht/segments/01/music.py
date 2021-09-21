import abjad
import evans
import trinton
from abjadext import rmakers
import hexennacht

# make score template

score = hexennacht.score

trinton.write_time_signatures(
    [
        (4, 4),
        (2, 4),
        (3, 16),
        (5, 4),
        (5, 4),
        (3, 8),
        (6, 4),
        (6, 4),
        (6, 4),
        (9, 4),
        (9, 4),
        (9, 4),
    ],
    score["Global Context"],
)

# oboe

hexennacht.warble(
    score=score,
    voice="oboe voice",
    accel_durations=[(3, 8)],
    rit_durations=[(3, 8)],
    rit_first=False,
    pitched=True,
)

trinton.append_rests(
    score=score,
    voice="oboe voice",
    rests=[abjad.Rest("r4"),]
)

hexennacht.warble(
    score=score,
    voice="oboe voice",
    accel_durations=[(1, 4)],
    rit_durations=[(1, 4)],
    rit_first=False,
    pitched=True,
)

trinton.append_rests(
    score=score,
    voice="oboe voice",
    rests=[abjad.Rest("r8."),]
)

hexennacht.warble(
    score=score,
    voice="oboe voice",
    accel_durations=[(5, 8)],
    rit_durations=[(5, 8)],
    rit_first=False,
    pitched=True,
)

trinton.append_rests(
    score=score,
    voice="oboe voice",
    rests=[abjad.Rest("r2."), abjad.Rest("r2"),]
)

hexennacht.warble(
    score=score,
    voice="oboe voice",
    accel_durations=[(3, 8)],
    rit_durations=[(1, 4)],
    rit_first=True,
    pitched=True,
)

trinton.append_rests(
    score=score,
    voice="oboe voice",
    rests=[abjad.Rest("r4"),]
)

hexennacht.warble(
    score=score,
    voice="oboe voice",
    accel_durations=[(1, 4)],
    rit_durations=[(1, 4)],
    rit_first=True,
    pitched=True,
)

trinton.append_rests(
    score=score,
    voice="oboe voice",
    rests=[abjad.Rest("r2"),]
)

hexennacht.warble(
    score=score,
    voice="oboe voice",
    accel_durations=[(3, 4)],
    rit_durations=[(3, 4)],
    rit_first=True,
    pitched=True,
)

trinton.append_rests(
    score=score,
    voice="oboe voice",
    rests=[abjad.Rest("r1."), abjad.Rest("r8")]
)

hexennacht.warble(
    score=score,
    voice="oboe voice",
    accel_durations=[(3, 8)],
    rit_durations=[(1, 4)],
    rit_first=False,
    pitched=True,
)

trinton.append_rests(
    score=score,
    voice="oboe voice",
    rests=[abjad.Rest("r4")]
)

hexennacht.warble(
    score=score,
    voice="oboe voice",
    accel_durations=[(2, 4)],
    rit_durations=[(3, 4)],
    rit_first=True,
    pitched=True,
)

hexennacht.warble(
    score=score,
    voice="oboe voice",
    accel_durations=[(3, 4)],
    rit_durations=[(3, 4)],
    rit_first=False,
    pitched=True,
)

hexennacht.warble(
    score=score,
    voice="oboe voice",
    accel_durations=[(3, 8)],
    rit_durations=[(3, 8)],
    rit_first=False,
    pitched=True,
)

hexennacht.warble(
    score=score,
    voice="oboe voice",
    accel_durations=[(3, 8)],
    rit_durations=[(3, 8)],
    rit_first=True,
    pitched=True,
)

hexennacht.warble(
    score=score,
    voice="oboe voice",
    accel_durations=[(1, 2)],
    rit_durations=[(1, 4)],
    rit_first=True,
    pitched=True,
)

hexennacht.warble(
    score=score,
    voice="oboe voice",
    accel_durations=[(1, 2)],
    rit_durations=[(1, 4)],
    rit_first=False,
    pitched=True,
)

# flute

trinton.append_rests(
    score=score,
    voice="flute voice",
    rests=(
        abjad.Rest("r1"),
        abjad.Rest("r2"),
        abjad.Rest("r8."),
        abjad.Rest("r2."),
        abjad.Rest("r2"),
        abjad.Rest("r2."),
        abjad.Rest("r2"),
        abjad.Rest("r8"),
    ),
)

hexennacht.flute_solo(
    score=score,
    voice="flute voice",
    tuplet_index=0,
    flourish_durations=[(1, 8)],
    talea=32,
    talea_index=0,
    talea_durations=[(1, 8)],
)

trinton.append_rests(
    score=score,
    voice="flute voice",
    rests=[abjad.Rest("r4"),]
)

hexennacht.flute_solo(
    score=score,
    voice="flute voice",
    tuplet_index=2,
    flourish_durations=[(1, 4)],
    talea=16,
    talea_index=2,
    talea_durations=[(1, 2)],
)

trinton.append_rests(
    score=score,
    voice="flute voice",
    rests=[abjad.Rest("r2"), abjad.Rest("r2."), abjad.Rest("r4"),]
)

hexennacht.flute_solo(
    score=score,
    voice="flute voice",
    tuplet_index=1,
    flourish_durations=[(1, 8)],
    talea=16,
    talea_index=4,
    talea_durations=[(3, 8)],
)

trinton.append_rests(
    score=score,
    voice="flute voice",
    rests=[abjad.Rest("r1."),]
)

hexennacht.flute_solo(
    score=score,
    voice="flute voice",
    tuplet_index=3,
    flourish_durations=[(3, 8)],
    talea=16,
    talea_index=0,
    talea_durations=[(3, 8)],
)

trinton.append_rests(
    score=score,
    voice="flute voice",
    rests=[abjad.Rest("r4"),]
)

hexennacht.flute_solo(
    score=score,
    voice="flute voice",
    tuplet_index=4,
    flourish_durations=[(1, 8)],
    talea=16,
    talea_index=6,
    talea_durations=[(5, 8)],
)

hexennacht.flute_solo(
    score=score,
    voice="flute voice",
    tuplet_index=5,
    flourish_durations=[(1, 4)],
    talea=16,
    talea_index=1,
    talea_durations=[(1, 2)],
)

hexennacht.flute_solo(
    score=score,
    voice="flute voice",
    tuplet_index=6,
    flourish_durations=[(1, 4)],
    talea=16,
    talea_index=3,
    talea_durations=[(3, 2)],
)

hexennacht.flute_solo(
    score=score,
    voice="flute voice",
    tuplet_index=7,
    flourish_durations=[(1, 8)],
    talea=16,
    talea_index=8,
    talea_durations=[(1, 2)],
)

hexennacht.flute_solo(
    score=score,
    voice="flute voice",
    tuplet_index=8,
    flourish_durations=[(3, 8)],
    talea=16,
    talea_index=10,
    talea_durations=[(1, 4)],
)

hexennacht.flute_solo(
    score=score,
    voice="flute voice",
    tuplet_index=0,
    flourish_durations=[(1, 4)],
    talea=16,
    talea_index=0,
    talea_durations=[(5, 8)],
)

hexennacht.flute_solo(
    score=score,
    voice="flute voice",
    tuplet_index=3,
    flourish_durations=[(1, 8)],
    talea=16,
    talea_index=3,
    talea_durations=[(1, 4)],
)

# bassoon

trinton.append_rests(
    score=score,
    voice="bassoon voice",
    rests=(
        abjad.Rest("r1"),
        abjad.Rest("r2"),
        abjad.Rest("r8."),
        abjad.Rest("r2."),
        abjad.Rest("r2"),
        abjad.Rest("r2."),
        abjad.Rest("r2"),
        abjad.Rest("r4."),
        abjad.Rest("r1."),
        abjad.Rest("r1."),
        abjad.Rest("r1."),
        abjad.Rest("r2."),
        abjad.Rest("r2."),
        abjad.Rest("r2."),
        abjad.Rest("r2."),
        abjad.Rest("r2."),
        abjad.Rest("r2."),
        abjad.Rest("r2."),
        abjad.Rest("r2."),
    ),
)

hexennacht.dance(
    score=score,
    voice="bassoon voice",
    tuplet_index=2,
    durations=[(3, 4)],
    pitch_index=1,
    transpose=-24
)

# marimba

trinton.append_rests(
    score=score,
    voice="marimba voice",
    rests=(
        abjad.Rest("r1"),
        abjad.Rest("r2"),
        abjad.Rest("r8."),
        abjad.Rest("r2."),
        abjad.Rest("r2"),
        abjad.Rest("r2."),
        abjad.Rest("r2"),
        abjad.Rest("r4."),
        abjad.Rest("r1."),
        abjad.Rest("r1."),
        abjad.Rest("r1."),
        abjad.Rest("r2."),
        abjad.Rest("r2."),
        abjad.Rest("r2."),
        abjad.Rest("r2."),
        abjad.Rest("r2."),
        abjad.Rest("r2."),
        abjad.Rest("r2."),
        abjad.Rest("r2."),
    ),
)

trinton.handwrite(
    score=score,
    voice="marimba voice",
    durations=[(1, 4), (1, 4), (1, 4),],
    pitch_list=[[-10, -8,],]
)

# percussion 2

trinton.append_rests(
    score=score,
    voice="percussion 2 voice",
    rests=(
        abjad.Rest("r1"),
        abjad.Rest("r2"),
        abjad.Rest("r8."),
        abjad.Rest("r2."),
        abjad.Rest("r2"),
        abjad.Rest("r2."),
        abjad.Rest("r2"),
        abjad.Rest("r4."),
        abjad.Rest("r1."),
        abjad.Rest("r1."),
        abjad.Rest("r1."),
        abjad.Rest("r2."),
        abjad.Rest("r2."),
        abjad.Rest("r2."),
        abjad.Rest("r2."),
        abjad.Rest("r2."),
        abjad.Rest("r2."),
        abjad.Rest("r2."),
        abjad.Rest("r2"),
        abjad.Rest("r8"),
    ),
)

trinton.handwrite(
    score=score,
    voice="percussion 2 voice",
    durations=[(7, 8),],
    pitch_list=[[-3, 0]]
)

# tuba and bass

for voice in ["tuba voice", "contrabass voice"]:
    trinton.append_rests(
        score=score,
        voice=voice,
        rests=(
            abjad.Rest("r1"),
            abjad.Rest("r2"),
            abjad.Rest("r8."),
            abjad.Rest("r2."),
            abjad.Rest("r2"),
            abjad.Rest("r2."),
            abjad.Rest("r2"),
            abjad.Rest("r4."),
            abjad.Rest("r1."),
            abjad.Rest("r1."),
            abjad.Rest("r1."),
            abjad.Rest("r2."),
            abjad.Rest("r2."),
            abjad.Rest("r2."),
            abjad.Rest("r2."),
            abjad.Rest("r2."),
            abjad.Rest("r2."),
            abjad.Rest("r2."),
        ),
    )

    if voice == "tuba voice":
        hexennacht.drone(
            score=score,
            voice=voice,
            talea=8,
            pitch_index=0,
            durations=[(3, 2),],
        )

    else:
        hexennacht.drone(
            score=score,
            voice=voice,
            talea=16,
            pitch_index=1,
            durations=[(3, 2),],
        )

# trombone

trinton.append_rests(
    score=score,
    voice="tenor trombone voice",
    rests=(
        abjad.Rest("r1"),
        abjad.Rest("r2"),
        abjad.Rest("r8."),
        abjad.Rest("r2."),
        abjad.Rest("r2"),
        abjad.Rest("r2."),
        abjad.Rest("r2"),
        abjad.Rest("r4."),
        abjad.Rest("r1."),
        abjad.Rest("r1."),
        abjad.Rest("r1."),
        abjad.Rest("r2."),
        abjad.Rest("r2."),
        abjad.Rest("r2."),
        abjad.Rest("r2."),
        abjad.Rest("r2."),
        abjad.Rest("r2."),
        abjad.Rest("r2."),
        abjad.Rest("r2."),
        abjad.Rest("r4"),
        abjad.Rest("r8"),
    ),
)

hexennacht.brass_shrieks(
    score=score,
    voice="tenor trombone voice",
    talea_index=0,
    talea=16,
    durations=[(3, 8),],
    pitched=True,
    pitch_index=0
)

# all voices

for voice in ["bass clarinet voice", "horn voice", "trumpet voice", "percussion 1 voice", "piano 1 voice", "piano 2 voice", "harp voice", "violin 1 voice", "violin 2 voice", "viola voice", "cello voice",]:
    trinton.append_rests(
        score=score,
        voice=voice,
        rests=(
            abjad.Rest("r1"),
            abjad.Rest("r2"),
            abjad.Rest("r8."),
            abjad.Rest("r2."),
            abjad.Rest("r2"),
            abjad.Rest("r2."),
            abjad.Rest("r2"),
            abjad.Rest("r4."),
            abjad.Rest("r1."),
            abjad.Rest("r1."),
            abjad.Rest("r1."),
            abjad.Rest("r2."),
            abjad.Rest("r2."),
            abjad.Rest("r2."),
            abjad.Rest("r2."),
            abjad.Rest("r2."),
            abjad.Rest("r2."),
            abjad.Rest("r2."),
            abjad.Rest("r2."),
            abjad.Rest("r2."),
        ),
    )

trinton.write_startmarkups(
    score=score,
    voices=hexennacht.all_staves,
    markups=hexennacht.all_startmarkups,
)

trinton.write_marginmarkups(
    score=score,
    voices=hexennacht.all_staves,
    markups=hexennacht.all_marginmarkups,
)

hexennacht.standard_cleffing(score=score,)

trinton.rewrite_meter(score)

trinton.beam_score(score)

trinton.annotate_leaves(score)

# pitch flute

hexennacht.pitch_flute_flourishes(
    score=score,
    voice="flute voice",
    start_index=1,
    leaves=[8, 9, 10, 11, 12, 13, 17, 18, 19, 20, 27, 28, 29, 30, 31, 32, 38, 39, 40, 41, 47, 48, 49, 50, 56, 57, 58, 59, 60, 66, 67, 68, 69, 70, 71, 85, 86, 87, 88, 89, 90, 95, 96, 97, 98, 99, 100, 103, 104, 105, 106, 107, 108, 114, 115, 116, 117,]
)

hexennacht.pitch_flute_pf(
    score=score,
    voice="flute voice",
    leaves=[
        14,
        15,
        21,
        23,
        24,
        33,
        35,
        36,
        42,
        44,
        45,
        51,
        54,
        55,
        61,
        62,
        64,
        65,
        72,
        73,
        74,
        75,
        77,
        78,
        80,
        81,
        83,
        84,
        91,
        93,
        94,
        101,
        102,
        109,
        110,
        111,
        113,
        118,
        119,
    ]
)

# flute attachments

trinton.attach(
    voice=score["flute voice"],
    leaves=[0],
    attachment=hexennacht.tempo_3
)

trinton.attach(
    voice=score["flute voice"],
    leaves=[5],
    attachment=hexennacht.tempo_4
)

trinton.attach(
    voice=score["flute voice"],
    leaves=[37],
    attachment=hexennacht.tempo_5
)

trinton.attach(
    voice=score["flute voice"],
    leaves=[38],
    attachment=hexennacht.tempo_4
)

trinton.attach(
    voice=score["flute voice"],
    leaves=[112],
    attachment=hexennacht.tempo_5
)

trinton.attach(
    voice=score["flute voice"],
    leaves=[118],
    attachment=hexennacht.tempo_1
)

trinton.write_text_span(
    voice=score["flute voice"],
    begin_text=r"90",
    end_text=r"0",
    start_leaf=[109],
    stop_leaf=[110],
    padding=3
)

trinton.attach(
    voice=score["flute voice"],
    leaves=[63],
    attachment=abjad.LilyPondLiteral(
        r'\boxed-markup "Accel. poco a poco" 3', format_slot="after"
    ),
)

# oboe attachments

trinton.attach(
    voice=score["oboe voice"],
    leaves=[1, 2, 6, 7, 8, 16, 21, 22, 23, 24, 25, 29, 30, 31, 32, 33, 34, 40, 45, 46, 51, 52, 59, 60, 61, 62, 63, 64, 65, 69, 70, 71, 72, 73, 74, 75, 81, 82, 86, 87, 91, 92, 93, 94, 95, 96, 97, 101, 102, 103, 104, 107, 108, 109, 110, 111, 112, 113, 117, 118, 119, 120, 121, 122, 123, 127, 128, 132, 133, 134, 138, 139, 140, 144, 145, 149, 153, 154, 155, 159, 160, 161, 165,],
    attachment=abjad.Glissando()
)

trinton.write_slur(
    voice=score["oboe voice"],
    start_slur=[1, 6, 16, 21, 29, 40, 44, 51, 59, 69, 81, 86, 91, 101, 107, 117, 127, 132, 138, 144, 149, 153, 159, 165,],
    stop_slur=[3, 9, 17, 26, 35, 41, 47, 52, 66, 76, 83, 87, 98, 104, 114, 124, 129, 135, 141, 146, 150, 156, 162, 166,],
)

trinton.attach(
    voice=score["oboe voice"],
    leaves=[1, 21, 40, 59, 81, 91, 107, 127, 138, 149, 159, ],
    attachment=abjad.StartHairpin("o<"),
)

trinton.attach(
    voice=score["oboe voice"],
    leaves=[6, 16, 44, 55, 132,],
    attachment=abjad.Dynamic("mp"),
)

trinton.attach(
    voice=score["oboe voice"],
    leaves=[29, 51, 69,],
    attachment=abjad.Dynamic("mf"),
)

trinton.attach(
    voice=score["oboe voice"],
    leaves=[13, 86, 101, 117, 144, 153, 165,],
    attachment=abjad.Dynamic("ff"),
)

trinton.attach(
    voice=score["oboe voice"],
    leaves=[6, 16, 29, 44, 51, 69, 86, 101, 117, 132, 144, 153, ],
    attachment=abjad.StartHairpin(">o")
)

trinton.attach(
    voice=score["oboe voice"],
    leaves=[10, 18, 36, 48, 53, 77, 88, 105, 125, 136, 147, 157, ],
    attachment=abjad.StopHairpin()
)

# show file

trinton.render_file(
    score=score,
    segment_path="/Users/trintonprater/scores/hexennacht/hexennacht/segments/01",
    build_path="/Users/trintonprater/scores/hexennacht/hexennacht/build",
    segment_name="01",
    includes=[
        "/Users/trintonprater/scores/hexennacht/hexennacht/build/hexennacht-stylesheet.ily",
        "/Users/trintonprater/abjad/docs/source/_stylesheets/abjad.ily",
    ]
)
