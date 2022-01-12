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

# new rests

for voice in [
    "piano 1 voice",
    "piano 2 voice",
    "harp voice",
    "flute voice",
    "oboe voice",
    "bass clarinet voice",
    "horn voice",
    "trumpet voice",
    "tenor trombone voice",
    "tuba voice",
    "marimba voice",
    "percussion 1 voice",
    "violin 1 voice",
    "violin 2 voice",
    "viola voice",
    "contrabass voice",
]:
    trinton.append_rests(score=score, voice=voice, rests=[abjad.Rest("r2")])

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

trinton.append_rests(score=score, voice="piano 2 voice", rests=[abjad.Rest("r1.")])

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

hexennacht.transpose_harp(score=score, voice="harp voice")

# last measure octave up

# bassoon

trinton.handwrite(
    score=score,
    voice="bassoon voice",
    durations=[
        (1, 4),
        (1, 8),
        (1, 8),
    ],
    pitch_list=None,
)

# woodwinds

for voice in ["flute voice", "oboe voice"]:
    trinton.append_rests(
        score=score,
        voice=voice,
        rests=[
            abjad.Rest("r4."),
            abjad.Rest("r2"),
            abjad.Rest("r2."),
            abjad.Rest("r2"),
        ],
    )

trinton.append_rests(
    score=score,
    voice="bass clarinet voice",
    rests=[abjad.Rest("r4."), abjad.Rest("r2"), abjad.Rest("r4.")],
)

trinton.append_rests(
    score=score,
    voice="bassoon voice",
    rests=[
        abjad.Rest("r4."),
        abjad.Rest("r2"),
        abjad.Rest("r2."),
        abjad.Rest("r1"),
        abjad.Rest("r2."),
    ],
)

for voice, duration in zip(
    ["flute voice", "oboe voice", "bass clarinet voice", "bassoon voice"],
    [(1, 2), (1, 2), (3, 8), (1, 2)],
):
    hexennacht.woodwind_swells(score=score, voice=voice, durations=[duration])

# flute

for voice in ["flute voice", "oboe voice"]:
    trinton.append_rests(
        score=score,
        voice=voice,
        rests=[abjad.Rest("r2."), abjad.Rest("r2"), abjad.Rest("r4.")],
    )

    hexennacht.woodwind_swells(score=score, voice=voice, durations=[(9, 8)])

    hexennacht.woodwind_swells(
        score=score,
        voice=voice,
        durations=[(5, 8)],
    )

    trinton.append_rests(
        score=score, voice=voice, rests=[abjad.Rest("r4"), abjad.Rest("r8")]
    )

    hexennacht.woodwind_swells(
        score=score,
        voice=voice,
        durations=[(5, 8)],
    )

    trinton.append_rests(
        score=score,
        voice=voice,
        rests=[
            abjad.Rest("r4."),
        ],
    )

    hexennacht.woodwind_swells(
        score=score,
        voice=voice,
        durations=[(5, 8)],
    )

# bass clarinet

trinton.append_rests(
    score=score,
    voice="bass clarinet voice",
    rests=[abjad.Rest("r1"), abjad.Rest("r2."), abjad.Rest("r2"), abjad.Rest("r2.")],
)

hexennacht.woodwind_swells(score=score, voice="bass clarinet voice", durations=[(3, 4)])

trinton.append_rests(score=score, voice="bass clarinet voice", rests=[abjad.Rest("r8")])

hexennacht.woodwind_swells(score=score, voice="bass clarinet voice", durations=[(3, 4)])

trinton.append_rests(
    score=score, voice="bass clarinet voice", rests=[abjad.Rest("r4.")]
)

hexennacht.woodwind_swells(score=score, voice="bass clarinet voice", durations=[(3, 4)])

trinton.append_rests(score=score, voice="bass clarinet voice", rests=[abjad.Rest("r8")])

hexennacht.woodwind_swells(score=score, voice="bass clarinet voice", durations=[(1, 2)])

# bassoon

trinton.append_rests(score=score, voice="bassoon voice", rests=[abjad.Rest("r1")])

hexennacht.woodwind_swells(score=score, voice="bassoon voice", durations=[(1, 2)])

trinton.append_rests(score=score, voice="bassoon voice", rests=[abjad.Rest("r4.")])

hexennacht.woodwind_swells(score=score, voice="bassoon voice", durations=[(1, 4)])

trinton.append_rests(score=score, voice="bassoon voice", rests=[abjad.Rest("r8")])

hexennacht.woodwind_swells(score=score, voice="bassoon voice", durations=[(1, 4)])

trinton.append_rests(score=score, voice="bassoon voice", rests=[abjad.Rest("r2")])

hexennacht.woodwind_swells(score=score, voice="bassoon voice", durations=[(1, 4)])

trinton.append_rests(
    score=score, voice="bassoon voice", rests=[abjad.Rest("r2"), abjad.Rest("r8")]
)

hexennacht.woodwind_swells(score=score, voice="bassoon voice", durations=[(1, 4)])

# percussion

trinton.handwrite(
    score=score,
    voice="percussion 2 voice",
    durations=[(1, 8), (1, 8), (1, 4)],
    pitch_list=hexennacht.ratchet_pitches,
)

for voice in ["percussion 2 voice", "marimba voice"]:
    hexennacht.cymbal_swells(
        score=score, voice=voice, tuplet_index=0, durations=[(1, 2)]
    )

trinton.append_rests(
    score=score,
    voice="marimba voice",
    rests=[abjad.Rest("r4."), abjad.Rest("r2."), abjad.Rest("r8")],
)

hexennacht.cymbal_swells(
    score=score, voice="marimba voice", tuplet_index=1, durations=[(7, 8)]
)

trinton.append_rests(
    score=score,
    voice="marimba voice",
    rests=[
        abjad.Rest("r2."),
        abjad.Rest("r8"),
    ],
)

hexennacht.cymbal_swells(
    score=score, voice="marimba voice", tuplet_index=2, durations=[(3, 4)]
)

trinton.append_rests(
    score=score,
    voice="marimba voice",
    rests=[
        abjad.Rest("r8"),
        abjad.Rest("r1"),
    ],
)

hexennacht.cymbal_swells(
    score=score, voice="marimba voice", tuplet_index=3, durations=[(7, 8)]
)

hexennacht.cymbal_swells(
    score=score, voice="marimba voice", tuplet_index=2, durations=[(3, 4)]
)

trinton.append_rests(
    score=score,
    voice="marimba voice",
    rests=[
        abjad.Rest("r2."),
    ],
)

hexennacht.cymbal_swells(
    score=score, voice="marimba voice", tuplet_index=1, durations=[(1, 4)]
)

trinton.append_rests(
    score=score, voice="percussion 1 voice", rests=[abjad.Rest("r2"), abjad.Rest("r4")]
)

trinton.handwrite(
    score=score,
    voice="percussion 1 voice",
    durations=[(1, 8)],
    pitch_list=hexennacht.ratchet_pitches,
)

trinton.append_rests(
    score=score, voice="percussion 1 voice", rests=[abjad.Rest("r2"), abjad.Rest("r8")]
)

trinton.handwrite(
    score=score,
    voice="percussion 1 voice",
    durations=[(1, 8)],
    pitch_list=trinton.rotated_sequence(hexennacht.ratchet_pitches, 1),
)

trinton.append_rests(
    score=score, voice="percussion 1 voice", rests=[abjad.Rest("r1"), abjad.Rest("r4")]
)

trinton.handwrite(
    score=score,
    voice="percussion 1 voice",
    durations=[
        (1, 8),
        (1, 8),
        (1, 8),
    ],
    pitch_list=trinton.rotated_sequence(hexennacht.ratchet_pitches, 2),
)

trinton.append_rests(
    score=score,
    voice="percussion 1 voice",
    rests=[abjad.Rest("r8"), abjad.Rest("r2"), abjad.Rest("r2")],
)

trinton.handwrite(
    score=score,
    voice="percussion 1 voice",
    durations=[
        (1, 8),
        (1, 8),
        (1, 8),
        (1, 8),
        (1, 8),
    ],
    pitch_list=trinton.rotated_sequence(hexennacht.ratchet_pitches, 5),
)

trinton.append_rests(
    score=score,
    voice="percussion 1 voice",
    rests=[
        abjad.Rest("r8"),
        abjad.Rest("r4"),
    ],
)

# strings

hexennacht.marimba_shakes(
    score=score,
    voice="cello voice",
    note_value=16,
    durations=[(1, 2)],
    pitched=False,
    pitch_index=None,
    high=False,
)

for voice, index in zip(
    [
        "violin 1 voice",
        "violin 2 voice",
        "viola voice",
        "cello voice",
    ],
    [
        1,
        4,
        3,
        2,
    ],
):
    hexennacht.string_swells(
        score=score, voice=voice, tuplet_index=index, durations=[(1, 2)], pitch_index=18
    )

for voice in [
    "violin 1 voice",
    "violin 2 voice",
    "viola voice",
    "cello voice",
    "percussion 2 voice",
]:
    trinton.append_rests(
        score=score,
        voice=voice,
        rests=[
            abjad.Rest("r4."),
            abjad.Rest("r2."),
            abjad.Rest("r1"),
            abjad.Rest("r2."),
            abjad.Rest("r2"),
            abjad.Rest("r4"),
        ],
    )

for voice, index in zip(
    [
        "violin 1 voice",
        "violin 2 voice",
        "viola voice",
        "cello voice",
    ],
    [
        2,
        3,
        4,
        0,
    ],
):
    hexennacht.string_swells(
        score=score, voice=voice, tuplet_index=index, durations=[(5, 4)], pitch_index=15
    )

tuplet = abjad.select(score["violin 1 voice"]).tuplet(1)
string = r"\italic 6:5"
markup = abjad.Markup(
    rf"\markup \scale #'(1 . 1) {string}",
)
abjad.override(tuplet).TupletNumber.text = markup

tuplet = abjad.select(score["violin 2 voice"]).tuplet(0)
string = r"\italic 7:10"
markup = abjad.Markup(
    rf"\markup \scale #'(1 . 1) {string}",
)
abjad.override(tuplet).TupletNumber.text = markup

tuplet = abjad.select(score["viola voice"]).tuplet(1)
string = r"\italic 4:5"
markup = abjad.Markup(
    rf"\markup \scale #'(1 . 1) {string}",
)
abjad.override(tuplet).TupletNumber.text = markup

tuplet = abjad.select(score["cello voice"]).tuplet(1)
string = r"\italic 6:5"
markup = abjad.Markup(
    rf"\markup \scale #'(1 . 1) {string}",
)
abjad.override(tuplet).TupletNumber.text = markup

for voice in [
    "violin 1 voice",
    "violin 2 voice",
    "viola voice",
    "cello voice",
]:
    trinton.append_rests(
        score=score,
        voice=voice,
        rests=[
            abjad.Rest("r2"),
        ],
    )

for voice, index in zip(
    [
        "violin 1 voice",
        "violin 2 voice",
        "viola voice",
        "cello voice",
    ],
    [
        0,
        4,
        3,
        2,
    ],
):
    hexennacht.string_swells(
        score=score, voice=voice, tuplet_index=index, durations=[(3, 8)], pitch_index=12
    )

for voice, index in zip(
    [
        "violin 1 voice",
        "violin 2 voice",
        "viola voice",
        "cello voice",
    ],
    [
        1,
        0,
        2,
        3,
    ],
):
    hexennacht.string_swells(
        score=score, voice=voice, tuplet_index=index, durations=[(3, 8)], pitch_index=9
    )

for voice in [
    "violin 1 voice",
    "violin 2 voice",
    "viola voice",
    "cello voice",
]:
    trinton.append_rests(
        score=score,
        voice=voice,
        rests=[
            abjad.Rest("r4."),
        ],
    )

for voice, index in zip(
    [
        "violin 1 voice",
        "violin 2 voice",
        "viola voice",
        "cello voice",
    ],
    [4, 3, 2, 1],
):
    hexennacht.string_swells(
        score=score, voice=voice, tuplet_index=index, durations=[(1, 1)], pitch_index=18
    )

# percussion 2

hexennacht.cymbal_swells(
    score=score,
    voice="percussion 2 voice",
    tuplet_index=1,
    durations=[(5, 4)],
)

trinton.append_rests(
    score=score,
    voice="percussion 2 voice",
    rests=[abjad.Rest("r2.."), abjad.Rest("r2.")],
)

trinton.handwrite(
    score=score,
    voice="percussion 2 voice",
    durations=[
        (1, 4),
        (1, 4),
        (1, 4),
        (1, 4),
    ],
    pitch_list=[-3],
)

for voice in ["percussion 1 voice", "percussion 2 voice"]:
    trinton.transparent_accidentals(score=score, voice=voice, leaves=all)

# bass and tuba

for voice, talea in zip(["contrabass voice", "tuba voice"], [8, 16]):
    hexennacht.drone(
        score=score, voice=voice, talea=talea, pitch_index=9, durations=[(43, 8)]
    )

# horn

trinton.append_rests(
    score=score, voice="horn voice", rests=[abjad.Rest("r2.."), abjad.Rest("r2.")]
)

hexennacht.brass_shrieks(
    score=score,
    voice="horn voice",
    talea_index=0,
    talea=8,
    durations=[(1, 1)],
    pitched=True,
    pitch_index=3,
)

trinton.append_rests(
    score=score,
    voice="horn voice",
    rests=[abjad.Rest("r2."), abjad.Rest("r2"), abjad.Rest("r4")],
)

# brass

for voice in ["trumpet voice", "tenor trombone voice"]:
    trinton.append_rests(
        score=score,
        voice=voice,
        rests=[
            abjad.Rest("r2.."),
            abjad.Rest("r2."),
            abjad.Rest("r1"),
            abjad.Rest("r2."),
            abjad.Rest("r2"),
            abjad.Rest("r4"),
        ],
    )

for voice, index in zip(
    ["horn voice", "trumpet voice", "tenor trombone voice"], [0, 1, 2]
):
    hexennacht.brass_shrieks(
        score=score,
        voice=voice,
        talea_index=index,
        talea=16,
        pitched=True,
        pitch_index=1,
        durations=[(5, 4)],
    )

# all voices

for voice in [
    "piano 1 voice",
    "piano 2 voice",
    "harp voice",
    "horn voice",
    "trumpet voice",
    "tenor trombone voice",
    "tuba voice",
    "percussion 1 voice",
    "contrabass voice",
]:
    trinton.append_rests(
        score=score,
        voice=voice,
        rests=[abjad.Rest("r2.."), abjad.Rest("r2."), abjad.Rest("r1")],
    )

hexennacht.standard_cleffing(score=score)

trinton.write_marginmarkups(
    score=score,
    voices=hexennacht.all_staves,
    markups=hexennacht.all_marginmarkups,
)

trinton.rewrite_meter(score)

trinton.beam_score(score)

# trinton.annotate_leaves(score)

# tempi

markup = abjad.Markup(
    r'\markup \italic \abs-fontsize #14 { "Rall." }', direction=abjad.Up
)

abjad.tweak(markup).padding = 8

trinton.attach(voice=score["Global Context"], leaves=[8], attachment=markup)

# piano attachments

trinton.write_slur(
    voice=score["piano 1 voice"],
    start_slur=[
        1,
        7,
        11,
        22,
        27,
        34,
    ],
    stop_slur=[
        6,
        10,
        21,
        26,
        33,
        37,
    ],
)

trinton.write_slur(
    voice=score["piano 2 voice"],
    start_slur=[
        1,
        6,
        10,
        20,
        24,
        32,
    ],
    stop_slur=[
        5,
        9,
        17,
        23,
        31,
        35,
    ],
)

trinton.attach(
    voice=score["piano 1 voice"],
    leaves=[1, 11, 27, 38],
    attachment=abjad.Dynamic("fff"),
)

trinton.attach(
    voice=score["piano 1 voice"],
    leaves=[
        1,
        2,
        3,
        4,
        5,
        6,
        11,
        12,
        13,
        14,
        15,
        16,
        17,
        18,
        19,
        20,
        21,
        27,
        28,
        29,
        30,
        31,
        32,
        33,
        38,
        39,
        41,
        42,
        43,
        44,
        45,
        47,
        49,
        50,
        51,
        52,
        53,
    ],
    attachment=abjad.Articulation(">"),
)

trinton.attach(
    voice=score["piano 2 voice"],
    leaves=[
        1,
        2,
        3,
        4,
        5,
        10,
        11,
        12,
        13,
        14,
        15,
        16,
        17,
        20,
        21,
        22,
        23,
        32,
        33,
        34,
        35,
    ],
    attachment=abjad.Articulation(">"),
)

trinton.attach(
    voice=score["piano 1 voice"],
    leaves=[
        7,
        22,
        34,
    ],
    attachment=abjad.Dynamic("mp"),
)

trinton.attach(
    voice=score["piano 2 voice"],
    leaves=[
        24,
    ],
    attachment=abjad.Dynamic("mp"),
)

trinton.attach(
    voice=score["piano 2 voice"],
    leaves=[
        32,
    ],
    attachment=abjad.Dynamic("fff"),
)

for number in [
    38,
    42,
    45,
    46,
    50,
    53,
]:
    sel = abjad.select(score["piano 1 voice"]).leaf(number)
    hexennacht.octave_down([sel])

for number in [
    1,
    2,
    3,
    4,
    5,
    6,
    11,
    12,
    13,
    14,
    15,
    16,
    17,
    18,
    19,
    20,
    21,
    27,
    28,
    29,
    30,
    31,
    32,
    33,
    41,
    44,
    49,
    52,
]:
    sel = abjad.select(score["piano 1 voice"]).leaf(number)
    hexennacht.double_octave_down([sel])

for number in [41, 44, 49, 52]:
    sel = abjad.select(score["piano 1 voice"]).leaf(number)
    hexennacht.octave_down([sel])

hexennacht.bass_clef(score["piano 1 voice"], [1, 11, 41, 44, 49, 52])

hexennacht.treble_clef(score["piano 1 voice"], [7, 22, 42, 45, 50, 53])

# harp attachments

trinton.write_slur(
    voice=score["harp voice"],
    start_slur=[
        1,
        6,
        10,
        18,
        23,
        33,
    ],
    stop_slur=[
        5,
        9,
        17,
        22,
        31,
        35,
    ],
)

trinton.attach(
    voice=score["harp voice"],
    leaves=[
        1,
        2,
        5,
        10,
        11,
        12,
        13,
        14,
        15,
        16,
        17,
        23,
        24,
        25,
        26,
        27,
        28,
        29,
        30,
        31,
        33,
        34,
        35,
    ],
    attachment=abjad.Articulation(">"),
)

trinton.attach(
    voice=score["harp voice"],
    leaves=[
        1,
        10,
        23,
        33,
    ],
    attachment=abjad.Dynamic("fff"),
)

trinton.attach(
    voice=score["harp voice"],
    leaves=[
        6,
        18,
        32,
    ],
    attachment=abjad.Dynamic("mp"),
)

for number in [36, 39, 42, 46, 49]:
    sel = abjad.select(score["harp voice"]).leaf(number)
    hexennacht.double_octave_up([sel])

for number in [37, 40, 43, 47]:
    sel = abjad.select(score["harp voice"]).leaf(number)
    hexennacht.double_octave_down([sel])

for number in [
    1,
    2,
    3,
    4,
    5,
    10,
    11,
    12,
    13,
    14,
    15,
    16,
    17,
    23,
    24,
    25,
    26,
    27,
    28,
    29,
    30,
    31,
]:
    sel = abjad.select(score["harp voice"]).leaf(number)
    hexennacht.octave_up([sel])

hexennacht.bass_clef(
    score["harp voice"],
    [
        37,
        40,
        43,
        47,
    ],
)

hexennacht.treble_clef(
    score["harp voice"],
    [
        38,
        41,
        44,
        48,
    ],
)

# flute and oboe attachments

for leaf, multiphonic in zip(
    [
        4,
        9,
        12,
        16,
        20,
    ],
    [
        1,
        2,
        3,
        4,
        5,
    ],
):
    hexennacht.write_multiphonics(
        score=score,
        voice="flute voice",
        dict=hexennacht._flute_multiphonic_to_pitches,
        leaves=[leaf],
        multiphonic=multiphonic,
        markup=True,
    )

for leaf, multiphonic in zip(
    [
        4,
        9,
        12,
        16,
        20,
    ],
    [
        1,
        2,
        3,
        4,
        5,
    ],
):
    hexennacht.oboe_harmonies(
        score=score,
        voice="oboe voice",
        leaves=[leaf],
        flute_multiphonic=multiphonic,
    )

for voice in ["flute voice", "oboe voice"]:
    trinton.attach(
        voice=score[voice],
        leaves=[
            4,
        ],
        attachment=abjad.Dynamic("p"),
    )

    trinton.attach(
        voice=score[voice],
        leaves=[
            12,
        ],
        attachment=abjad.Dynamic("f"),
    )

    trinton.attach(
        voice=score[voice],
        leaves=[
            4,
            9,
            12,
            16,
            20,
        ],
        attachment=abjad.Articulation("tenuto"),
    )

    trinton.attach(
        voice=score[voice],
        leaves=[
            9,
        ],
        attachment=abjad.StartHairpin("<"),
    )

trinton.attach(
    voice=score["oboe voice"],
    leaves=[
        4,
    ],
    attachment=abjad.LilyPondLiteral(r'\boxed-markup "Norm." 1', format_slot="after"),
)


# clarinet attachments

for leaf, multiphonic in zip(
    [
        4,
        10,
        12,
        16,
        21,
    ],
    [
        1,
        2,
        3,
        4,
        5,
    ],
):
    hexennacht.write_multiphonics(
        score=score,
        voice="bass clarinet voice",
        dict=hexennacht._clarinet_multiphonics_to_pitches,
        leaves=[leaf],
        multiphonic=multiphonic,
        markup=True,
    )

trinton.attach(
    voice=score["bass clarinet voice"], leaves=[4], attachment=abjad.Dynamic("p")
)

trinton.attach(
    voice=score["bass clarinet voice"],
    leaves=[
        12,
    ],
    attachment=abjad.Dynamic("f"),
)

trinton.attach(
    voice=score["bass clarinet voice"],
    leaves=[
        4,
        10,
        12,
        16,
        21,
    ],
    attachment=abjad.Articulation("tenuto"),
)

trinton.attach(
    voice=score["bass clarinet voice"], leaves=[10], attachment=abjad.StartHairpin("<")
)

# bassoon attachments

trinton.attach(
    voice=score["bassoon voice"],
    leaves=[
        0,
        1,
    ],
    attachment=abjad.Tie(),
)

for number in [0, 1, 2]:
    sel = abjad.select(score["bassoon voice"]).leaf(number)
    trinton.unmeasured_stem_tremolo([sel])

for leaf, multiphonic in zip(
    [
        0,
        7,
        9,
        11,
        13,
        18,
        22,
    ],
    [1, 2, 3, 4, 5, 1, 2],
):
    hexennacht.write_multiphonics(
        score=score,
        voice="bassoon voice",
        dict=hexennacht._bassoon_multiphonics_to_pitches,
        leaves=[leaf],
        multiphonic=multiphonic,
        markup=True,
    )

trinton.attach(
    voice=score["bassoon voice"],
    leaves=[
        0,
    ],
    attachment=abjad.StartHairpin("o<|"),
)

trinton.attach_multiple(
    score=score,
    voice="bassoon voice",
    leaves=[1],
    attachments=[abjad.Dynamic("f"), abjad.StartHairpin("|>o")],
)

trinton.attach(
    voice=score["bassoon voice"],
    leaves=[
        3,
    ],
    attachment=abjad.StopHairpin(),
)

trinton.attach(
    voice=score["bassoon voice"],
    leaves=[
        7,
    ],
    attachment=abjad.Dynamic("p"),
)

trinton.attach(
    voice=score["bassoon voice"],
    leaves=[
        11,
    ],
    attachment=abjad.Dynamic("f"),
)

trinton.attach(
    voice=score["bassoon voice"],
    leaves=[
        7,
        9,
        11,
        13,
        18,
        22,
    ],
    attachment=abjad.Articulation("tenuto"),
)

trinton.attach(
    voice=score["bassoon voice"], leaves=[9], attachment=abjad.StartHairpin("<")
)

# horn attachments

trinton.unmeasured_stem_tremolo(abjad.select(score["horn voice"]).leaves(pitched=True))

trinton.attach_multiple(
    score=score,
    voice="horn voice",
    leaves=[
        3,
    ],
    attachments=[
        abjad.Dynamic("p"),
        abjad.LilyPondLiteral(
            r'\boxed-markup "Fluttering valves, fluttertongue" 1', format_slot="after"
        ),
        abjad.StartHairpin(">o"),
    ],
)

trinton.attach(
    voice=score["horn voice"],
    leaves=[
        5,
    ],
    attachment=abjad.StopHairpin(),
)

trinton.attach_multiple(
    score=score,
    voice="horn voice",
    leaves=[
        10,
    ],
    attachments=[abjad.Dynamic("pp"), abjad.StartHairpin("<")],
)

trinton.attach(
    voice=score["horn voice"],
    leaves=[
        16,
    ],
    attachment=abjad.Dynamic("mf"),
)

# trumpet attachments

trinton.write_trill_span(
    score=score,
    voice="trumpet voice",
    pitch=20,
    start_leaf=[
        7,
    ],
    stop_leaf=[
        8,
    ],
)

trinton.write_trill_span(
    score=score,
    voice="trumpet voice",
    pitch=14.5,
    start_leaf=[
        10,
    ],
    stop_leaf=[
        12,
    ],
)

trinton.attach_multiple(
    score=score,
    voice="trumpet voice",
    leaves=[
        7,
    ],
    attachments=[abjad.Dynamic("pp"), abjad.StartHairpin("<")],
)

trinton.attach(
    voice=score["trumpet voice"],
    leaves=[
        11,
    ],
    attachment=abjad.Dynamic("mf"),
)

# trombone attachments

trinton.unmeasured_stem_tremolo(
    abjad.select(score["tenor trombone voice"]).leaves(pitched=True)
)

trinton.attach_multiple(
    score=score,
    voice="tenor trombone voice",
    leaves=[
        8,
    ],
    attachments=[
        abjad.Dynamic("pp"),
        abjad.LilyPondLiteral(
            r'\boxed-markup "Fluttertongue, rapidly switch between 1st-7th" 1',
            format_slot="after",
        ),
        abjad.StartHairpin("<"),
    ],
)

hexennacht.treble_clef(
    score["tenor trombone voice"],
    [
        11,
    ],
)

trinton.attach(
    voice=score["tenor trombone voice"],
    leaves=[
        13,
    ],
    attachment=abjad.Dynamic("mf"),
)

# tuba attachments

for voice in ["tuba voice", "contrabass voice"]:
    trinton.attach(
        voice=score[voice],
        leaves=[
            1,
        ],
        attachment=abjad.Dynamic("pp"),
    )

trinton.attach(
    voice=score["tuba voice"],
    leaves=[
        30,
    ],
    attachment=abjad.StartHairpin("<"),
)

trinton.attach(
    voice=score["tuba voice"],
    leaves=[
        36,
    ],
    attachment=abjad.Dynamic("mf"),
)

# percussion 1 attachments

trinton.attach(
    voice=score["marimba voice"],
    leaves=[
        1,
        2,
        8,
        9,
        13,
        15,
        21,
        22,
        24,
        27,
        30,
        31,
    ],
    attachment=abjad.Tie(),
)

handler = evans.PitchHandler(
    pitch_list=[
        [-7, -9],
        [
            -9,
            -10,
        ],
        [-12, -14],
        [-5, -3],
        [-15, -17],
    ],
    forget=False,
)

handler(abjad.select(score["marimba voice"]).leaves(pitched=True))

hexennacht.bass_clef(
    score["marimba voice"],
    [
        1,
    ],
)

trinton.attach(
    voice=score["marimba voice"],
    leaves=[
        1,
        8,
        13,
        20,
        24,
        30,
    ],
    attachment=abjad.StartHairpin("o<"),
)

trinton.attach_multiple(
    score=score,
    voice="marimba voice",
    leaves=[
        2,
        9,
        14,
    ],
    attachments=[abjad.Dynamic("p"), abjad.StartHairpin(">o")],
)

trinton.attach_multiple(
    score=score,
    voice="marimba voice",
    leaves=[
        21,
        25,
        31,
    ],
    attachments=[abjad.Dynamic("f"), abjad.StartHairpin(">o")],
)

trinton.attach(
    voice=score["marimba voice"],
    leaves=[3, 10, 16, 23, 28, 30, 32],
    attachment=abjad.StopHairpin(),
)

hexennacht.with_bow(score=score, voice="marimba voice", leaves=[1])

trinton.attach(
    voice=score["percussion 1 voice"], leaves=[4], attachment=abjad.Dynamic("pp")
)

trinton.attach(
    voice=score["percussion 1 voice"], leaves=all, attachment=abjad.Articulation(">")
)

# percussion 2 attachments

trinton.attach(
    voice=score["percussion 2 voice"],
    leaves=[
        0,
        1,
        2,
    ],
    attachment=abjad.Articulation("tenuto"),
)

trinton.attach(
    voice=score["percussion 2 voice"], leaves=[0], attachment=abjad.Dynamic("p")
)

hexennacht.one_line(
    score=score,
    voice="percussion 2 voice",
    leaves=[
        3,
    ],
)

trinton.attach(
    voice=score["percussion 2 voice"],
    leaves=[
        3,
        4,
        14,
        15,
    ],
    attachment=abjad.Tie(),
)

trinton.attach(
    voice=score["percussion 2 voice"],
    leaves=[
        3,
    ],
    attachment=abjad.LilyPondLiteral(
        r'\boxed-markup "Ride Cymbal, w/ bow" 1', format_slot="after"
    ),
)

trinton.attach(
    voice=score["percussion 2 voice"],
    leaves=[
        3,
        13,
    ],
    attachment=abjad.StartHairpin("o<"),
)

trinton.attach_multiple(
    score=score,
    voice="percussion 2 voice",
    leaves=[
        4,
        15,
    ],
    attachments=[abjad.Dynamic("p"), abjad.StartHairpin(">o")],
)

trinton.attach(
    voice=score["percussion 2 voice"],
    leaves=[
        5,
        16,
    ],
    attachment=abjad.StopHairpin(),
)

hexennacht.three_lines(
    score=score,
    voice="percussion 2 voice",
    leaves=[
        19,
    ],
)

hexennacht.gongs(
    score=score,
    voice="percussion 2 voice",
    leaves=[
        19,
    ],
)

trinton.attach_multiple(
    score=score,
    voice="percussion 2 voice",
    leaves=[
        19,
    ],
    attachments=[abjad.Dynamic("mp"), abjad.StartHairpin("<")],
)

trinton.attach(
    voice=score["percussion 2 voice"],
    leaves=[
        20,
        22,
    ],
    attachment=abjad.LilyPondLiteral(r'\boxed-markup "w/ bow" 1', format_slot="after"),
)

trinton.attach(
    voice=score["percussion 2 voice"],
    leaves=[
        21,
    ],
    attachment=abjad.LilyPondLiteral(
        r'\boxed-markup "w/ mallet" 1', format_slot="after"
    ),
)

trinton.attach(
    voice=score["percussion 2 voice"],
    leaves=[
        22,
    ],
    attachment=abjad.Dynamic("ff"),
)

# violin 1 attachments

for voice in ["violin 1 voice", "violin 2 voice", "viola voice"]:
    trinton.attach(
        voice=score[voice],
        leaves=[
            1,
        ],
        attachment=abjad.LilyPondLiteral(
            r'\boxed-markup "Norm." 1', format_slot="after"
        ),
    )

    trinton.attach(
        voice=score[voice],
        leaves=[
            1,
            2,
            11,
            12,
        ],
        attachment=abjad.Tie(),
    )

    trinton.attach(
        voice=score[voice],
        leaves=[
            1,
            11,
            16,
        ],
        attachment=abjad.StartHairpin("o<"),
    )

    trinton.attach_multiple(
        score=score,
        voice=voice,
        leaves=[
            2,
            12,
        ],
        attachments=[abjad.Dynamic("p"), abjad.StartHairpin(">o")],
    )

    trinton.attach(
        voice=score[voice],
        leaves=[
            3,
            13,
        ],
        attachment=abjad.StopHairpin(),
    )

trinton.attach(
    voice=score["violin 1 voice"],
    leaves=[
        16,
        17,
        19,
        20,
        24,
        25,
    ],
    attachment=abjad.Tie(),
)

trinton.attach(
    voice=score["violin 1 voice"],
    leaves=[
        19,
        24,
    ],
    attachment=abjad.StartHairpin("o<"),
)

trinton.attach_multiple(
    score=score,
    voice="violin 1 voice",
    leaves=[
        17,
        20,
        25,
    ],
    attachments=[abjad.Dynamic("f"), abjad.StartHairpin(">o")],
)

trinton.attach(
    voice=score["violin 1 voice"], leaves=[18, 21, 26], attachment=abjad.StopHairpin()
)

# violin 2 attachments

trinton.attach(
    voice=score["violin 2 voice"],
    leaves=[
        17,
        19,
        21,
        22,
        26,
        27,
    ],
    attachment=abjad.Tie(),
)

trinton.attach(
    voice=score["violin 2 voice"],
    leaves=[
        21,
        26,
    ],
    attachment=abjad.StartHairpin("o<"),
)

trinton.attach_multiple(
    score=score,
    voice="violin 2 voice",
    leaves=[
        18,
        22,
        27,
    ],
    attachments=[abjad.Dynamic("f"), abjad.StartHairpin(">o")],
)

trinton.attach(
    voice=score["violin 2 voice"],
    leaves=[
        20,
        23,
        28,
    ],
    attachment=abjad.StopHairpin(),
)

# viola attachments

trinton.attach(
    voice=score["viola voice"],
    leaves=[
        16,
        17,
        19,
        21,
        25,
        26,
    ],
    attachment=abjad.Tie(),
)

trinton.attach(
    voice=score["viola voice"],
    leaves=[
        19,
        25,
    ],
    attachment=abjad.StartHairpin("o<"),
)

trinton.attach_multiple(
    score=score,
    voice="viola voice",
    leaves=[
        17,
        20,
        26,
    ],
    attachments=[abjad.Dynamic("f"), abjad.StartHairpin(">o")],
)

trinton.attach(
    voice=score["viola voice"],
    leaves=[
        18,
        22,
        27,
    ],
    attachment=abjad.StopHairpin(),
)

# cello attachments

trinton.write_slur(
    voice=score["cello voice"],
    start_slur=[
        0,
        5,
    ],
    stop_slur=[
        4,
        7,
    ],
)

handler = evans.PitchHandler(
    pitch_list=trinton.transpose(
        trinton.rotated_sequence(hexennacht.dance_pitches, 22), -25
    ),
    forget=False,
)

for number in [
    0,
    1,
    2,
    3,
    4,
    5,
    6,
    7,
]:
    sel = abjad.select(score["cello voice"]).leaf(number)
    handler(sel)

for number in [
    0,
    1,
    2,
    3,
    4,
    5,
    6,
    7,
]:
    sel = abjad.select(score["cello voice"]).leaf(number)
    trinton.unmeasured_stem_tremolo([sel])

trinton.change_notehead(
    voice=score["cello voice"],
    leaves=[
        0,
        1,
        2,
        3,
        4,
        5,
        6,
        7,
    ],
    notehead=r"#'harmonic",
)

trinton.attach(
    voice=score["cello voice"], leaves=[0], attachment=abjad.StartHairpin("o<|")
)

trinton.attach_multiple(
    score=score,
    voice="cello voice",
    leaves=[
        5,
    ],
    attachments=[
        abjad.Articulation(">"),
        abjad.Dynamic("f"),
        abjad.StartHairpin("|>o"),
    ],
)

trinton.attach(
    voice=score["cello voice"],
    leaves=[
        8,
    ],
    attachment=abjad.LilyPondLiteral(r'\boxed-markup "Norm." 1', format_slot="after"),
)

trinton.attach(
    voice=score["cello voice"],
    leaves=[
        8,
        9,
        18,
        19,
        23,
        25,
        27,
        28,
        32,
        33,
    ],
    attachment=abjad.Tie(),
)

trinton.attach(
    voice=score["cello voice"],
    leaves=[
        8,
        18,
        23,
        27,
        32,
    ],
    attachment=abjad.StartHairpin("o<"),
)

trinton.attach_multiple(
    score=score,
    voice="cello voice",
    leaves=[
        9,
        19,
    ],
    attachments=[abjad.Dynamic("p"), abjad.StartHairpin(">o")],
)

trinton.attach_multiple(
    score=score,
    voice="cello voice",
    leaves=[
        24,
        28,
        33,
    ],
    attachments=[abjad.Dynamic("f"), abjad.StartHairpin(">o")],
)

trinton.attach(
    voice=score["cello voice"],
    leaves=[
        10,
        20,
        26,
        29,
        34,
    ],
    attachment=abjad.StopHairpin(),
)

# contrabass attachments

trinton.attach(
    voice=score["contrabass voice"],
    leaves=[
        1,
    ],
    attachment=abjad.LilyPondLiteral(r'\boxed-markup "Norm." 1', format_slot="after"),
)

trinton.attach(
    voice=score["contrabass voice"],
    leaves=[
        14,
    ],
    attachment=abjad.StartHairpin("<"),
)

trinton.attach(
    voice=score["contrabass voice"],
    leaves=[
        18,
    ],
    attachment=abjad.Dynamic("mf"),
)

# extract parts

trinton.extract_parts(score)

# whiteout empty staves

for voice in hexennacht.all_voices:
    trinton.whiteout_empty_staves(score=score, voice=voice, cutaway=True)

# show file

trinton.render_file(
    score=score,
    segment_path="/Users/trintonprater/scores/hexennacht/hexennacht/segments/05",
    build_path="/Users/trintonprater/scores/hexennacht/hexennacht/build",
    segment_name="05",
    includes=[
        "/Users/trintonprater/scores/hexennacht/hexennacht/build/hexennacht-stylesheet.ily",
        "/Users/trintonprater/abjad/docs/source/_stylesheets/abjad.ily",
    ],
)
