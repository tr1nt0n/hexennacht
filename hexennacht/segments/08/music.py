import abjad
import evans
import trinton
import hexennacht
from abjadext import rmakers
from abjadext import microtones

# make score template

score = hexennacht.score

trinton.write_time_signatures(
    [
        (4, 4),
        (4, 4),
        (4, 4),
        (4, 4),
        (4, 4),
        (4, 4),
        (4, 4),
        (5, 4),
    ],
    score["Global Context"],
)

# bass drum

hexennacht.drumming(
    score=score,
    voice="percussion 2 voice",
    durations=[
        (2, 1),
        (1, 4),
        (1, 2),
        (1, 4),
        (1, 2),
        (1, 4),
        (1, 4),
        (3, 4),
        (1, 4),
        (1, 4),
        (3, 4),
        (1, 4),
        (1, 4),
        (1, 4),
        (1, 4),
        (5, 4),
    ],
    pitched=False,
)

# strings

for voice in ["violin 2 voice", "viola voice", "cello voice"]:
    trinton.append_rests(
        score=score, voice=voice, rests=[abjad.Rest("r1"), abjad.Rest("r1")]
    )

    hexennacht.drumming(
        score=score,
        voice=voice,
        durations=[
            (1, 4),
            (1, 4),
            (1, 4),
            (1, 4),
            (1, 4),
            (1, 4),
            (1, 4),
            (1, 4),
            (1, 4),
            (1, 4),
            (1, 4),
            (1, 4),
            (1, 4),
            (1, 4),
            (1, 4),
            (1, 4),
            (1, 4),
            (1, 4),
            (1, 4),
            (1, 4),
            (1, 4),
            (1, 4),
            (1, 4),
            (1, 4),
            (1, 4),
        ],
        pitched=True,
    )

# violin 1

trinton.append_rests(
    score=score,
    voice="violin 1 voice",
    rests=[
        abjad.Rest("r1"),
        abjad.Rest("r1"),
        abjad.Rest("r1"),
        abjad.Rest("r2"),
        abjad.Rest("r8"),
    ],
)

hexennacht.violin_solo(
    score=score,
    voice="violin 1 voice",
    tuplet_index=4,
    durations=[
        (3, 8),
        (1, 2),
        (1, 4),
        (1, 4),
        (3, 4),
        (1, 4),
        (1, 4),
        (1, 4),
        (1, 4),
        (1, 4),
        (5, 4),
    ],
    pitched=True,
    pitch_index=9,
)

hexennacht.octave_up(abjad.select(score["violin 1 voice"]).leaves(pitched=True))

# piano

trinton.append_rests(
    score=score,
    voice="piano 1 voice",
    rests=[
        abjad.Rest("r1"),
        abjad.Rest("r1"),
        abjad.Rest("r1"),
        abjad.Rest("r1"),
        abjad.Rest("r1"),
        abjad.Rest("r1"),
        abjad.Rest("r1"),
        abjad.Rest("r2."),
        abjad.Rest("r2"),
    ],
)

trinton.append_rests(
    score=score,
    voice="piano 2 voice",
    rests=[abjad.Rest("r1"), abjad.Rest("r1"), abjad.Rest("r1"), abjad.Rest("r8")],
)

trinton.handwrite(
    score=score,
    voice="piano 2 voice",
    durations=[(7, 16), (5, 16), (1, 8)],
    pitch_list=[[-35, -36, -37, -38, -39]],
)

trinton.append_rests(score=score, voice="piano 2 voice", rests=[abjad.Rest("r4.")])

trinton.handwrite(
    score=score,
    voice="piano 2 voice",
    durations=[(1, 4), (5, 16), (1, 16)],
    pitch_list=[[-35, -36, -37, -38, -39]],
)

trinton.append_rests(
    score=score, voice="piano 2 voice", rests=[abjad.Rest("r2"), abjad.Rest("r8")]
)

trinton.handwrite(
    score=score,
    voice="piano 2 voice",
    durations=[(3, 16), (1, 16), (1, 8)],
    pitch_list=[[-35, -36, -37, -38, -39]],
)

trinton.append_rests(score=score, voice="piano 2 voice", rests=[abjad.Rest("r8")])

trinton.handwrite(
    score=score,
    voice="piano 2 voice",
    durations=[
        (3, 16),
        (3, 16),
        (3, 16),
        (3, 16),
        (3, 16),
        (3, 16),
        (3, 16),
        (3, 16),
        (3, 16),
        (3, 16),
        (3, 16),
        (1, 16),
    ],
    pitch_list=[[-35, -36, -37, -38, -39]],
)

# harp

trinton.append_rests(
    score=score,
    voice="harp voice",
    rests=[
        abjad.Rest("r1"),
        abjad.Rest("r1"),
        abjad.Rest("r1"),
        abjad.Rest("r1"),
        abjad.Rest("r1"),
        abjad.Rest("r8"),
    ],
)

trinton.handwrite(
    score=score,
    voice="harp voice",
    durations=[(25, 8)],
    pitch_list=[[-21, -22, -23, -25, -28, -29]],
)

# percussion 1

trinton.append_rests(
    score=score,
    voice="percussion 1 voice",
    rests=[
        abjad.Rest("r1"),
        abjad.Rest("r1"),
        abjad.Rest("r4."),
    ],
)

trinton.handwrite(
    score=score,
    voice="percussion 1 voice",
    durations=[(3, 8)],
    pitch_list=hexennacht.ratchet_pitches,
)

trinton.append_rests(score=score, voice="percussion 1 voice", rests=[abjad.Rest("r8")])

trinton.handwrite(
    score=score,
    voice="percussion 1 voice",
    durations=[(3, 4), (3, 8)],
    pitch_list=trinton.rotated_sequence(hexennacht.ratchet_pitches, 1),
)

trinton.append_rests(
    score=score, voice="percussion 1 voice", rests=[abjad.Rest("r2."), abjad.Rest("r8")]
)

trinton.handwrite(
    score=score,
    voice="percussion 1 voice",
    durations=[(1, 8), (5, 16)],
    pitch_list=trinton.rotated_sequence(hexennacht.ratchet_pitches, 3),
)

trinton.append_rests(
    score=score,
    voice="percussion 1 voice",
    rests=[abjad.Rest("r16"), abjad.Rest("r4.")],
)

trinton.handwrite(
    score=score,
    voice="percussion 1 voice",
    durations=[
        (1, 2),
    ],
    pitch_list=trinton.rotated_sequence(hexennacht.ratchet_pitches, 6),
)

trinton.append_rests(
    score=score,
    voice="percussion 1 voice",
    rests=[
        abjad.Rest("r4."),
    ],
)

trinton.handwrite(
    score=score,
    voice="percussion 1 voice",
    durations=[
        (1, 4),
    ],
    pitch_list=trinton.rotated_sequence(hexennacht.ratchet_pitches, 7),
)

trinton.append_rests(
    score=score,
    voice="percussion 1 voice",
    rests=[abjad.Rest("r8"), abjad.Rest("r2"), abjad.Rest("r4.")],
)

trinton.handwrite(
    score=score,
    voice="percussion 1 voice",
    durations=[
        (3, 8),
    ],
    pitch_list=hexennacht.ratchet_pitches,
)

trinton.append_rests(
    score=score,
    voice="marimba voice",
    rests=[
        abjad.Rest("r1"),
        abjad.Rest("r1"),
        abjad.Rest("r1"),
        abjad.Rest("r1"),
        abjad.Rest("r4"),
    ],
)

hexennacht.marimba_shakes(
    score=score,
    voice="marimba voice",
    note_value=16,
    durations=[(1, 2)],
    pitched=True,
    pitch_index=0,
    high=False,
)

trinton.append_rests(
    score=score, voice="marimba voice", rests=[abjad.Rest("r4"), abjad.Rest("r4.")]
)

hexennacht.marimba_shakes(
    score=score,
    voice="marimba voice",
    note_value=16,
    durations=[(5, 16)],
    pitched=True,
    pitch_index=8,
    high=True,
)

trinton.append_rests(
    score=score,
    voice="marimba voice",
    rests=[abjad.Rest("r16"), abjad.Rest("r4"), abjad.Rest("r4")],
)

hexennacht.marimba_shakes(
    score=score,
    voice="marimba voice",
    note_value=16,
    durations=[(3, 8)],
    pitched=True,
    pitch_index=13,
    high=False,
)

trinton.append_rests(
    score=score,
    voice="marimba voice",
    rests=[
        abjad.Rest("r4"),
    ],
)

hexennacht.marimba_shakes(
    score=score,
    voice="marimba voice",
    note_value=16,
    durations=[(7, 16)],
    pitched=True,
    pitch_index=19,
    high=True,
)

trinton.append_rests(
    score=score,
    voice="marimba voice",
    rests=[
        abjad.Rest("r8"),
    ],
)

hexennacht.marimba_shakes(
    score=score,
    voice="marimba voice",
    note_value=16,
    durations=[(7, 16)],
    pitched=True,
    pitch_index=26,
    high=False,
)

trinton.handwrite(
    score=score, voice="marimba voice", durations=[(3, 8)], pitch_list=[[-19, -7]]
)

for voice in ["percussion 1 voice", "percussion 2 voice"]:
    trinton.transparent_accidentals(
        score=score,
        voice=voice,
        leaves=all,
    )

# flute

trinton.append_rests(
    score=score,
    voice="flute voice",
    rests=[
        abjad.Rest("r1"),
        abjad.Rest("r1"),
        abjad.Rest("r1"),
        abjad.Rest("r1"),
        abjad.Rest("r1"),
        abjad.Rest("r4"),
    ],
)

trinton.handwrite(
    score=score,
    voice="flute voice",
    durations=[
        (1, 4),
        (1, 16),
        (1, 8),
        (1, 16),
    ],
    pitch_list=[0, 0, 2, 2],
)

trinton.append_rests(
    score=score,
    voice="flute voice",
    rests=[
        abjad.Rest("r16"),
    ],
)

hexennacht.marimba_shakes(
    score=score,
    voice="flute voice",
    note_value=16,
    durations=[(7, 16)],
    pitched=True,
    pitch_index=13,
    high=True,
)

trinton.append_rests(
    score=score,
    voice="flute voice",
    rests=[
        abjad.Rest("r16"),
    ],
)

trinton.handwrite(
    score=score,
    voice="flute voice",
    durations=[
        (1, 4),
        (1, 16),
    ],
    pitch_list=[
        0,
    ],
)

hexennacht.marimba_shakes(
    score=score,
    voice="flute voice",
    note_value=16,
    durations=[(1, 4)],
    pitched=True,
    pitch_index=20,
    high=True,
)

trinton.handwrite(
    score=score,
    voice="flute voice",
    durations=[
        (1, 16),
        (1, 16),
    ],
    pitch_list=[
        2,
    ],
)

trinton.append_rests(
    score=score,
    voice="flute voice",
    rests=[
        abjad.Rest("r4"),
    ],
)

trinton.handwrite(
    score=score,
    voice="flute voice",
    durations=[(5, 16), (1, 16), (1, 8), (1, 16), (3, 8), (1, 16)],
    pitch_list=[
        0,
        0,
        2,
        2,
    ],
)

# oboe

trinton.append_rests(
    score=score,
    voice="oboe voice",
    rests=[
        abjad.Rest("r1"),
        abjad.Rest("r1"),
        abjad.Rest("r1"),
        abjad.Rest("r1"),
        abjad.Rest("r1"),
        abjad.Rest("r1"),
    ],
)

hexennacht.warble(
    score=score,
    voice="oboe voice",
    accel_durations=[(1, 2)],
    rit_durations=[(1, 2)],
    rit_first=True,
    pitched=True,
)

hexennacht.warble(
    score=score,
    voice="oboe voice",
    accel_durations=[(5, 8)],
    rit_durations=[(5, 8)],
    rit_first=False,
    pitched=True,
)

# bass clarinet and bassoon

trinton.append_rests(
    score=score,
    voice="bass clarinet voice",
    rests=[
        abjad.Rest("r1"),
        abjad.Rest("r1"),
        abjad.Rest("r1"),
        abjad.Rest("r1"),
        abjad.Rest("r8"),
    ],
)

trinton.append_rests(
    score=score,
    voice="bassoon voice",
    rests=[
        abjad.Rest("r1"),
        abjad.Rest("r1"),
        abjad.Rest("r1"),
        abjad.Rest("r1"),
        abjad.Rest("r1"),
        abjad.Rest("r16"),
    ],
)

for voice in ["bass clarinet voice", "bassoon voice"]:
    hexennacht.woodwind_swells(score=score, voice=voice, durations=[(3, 4)])

    trinton.append_rests(
        score=score,
        voice=voice,
        rests=[abjad.Rest("r8"), abjad.Rest("r4"), abjad.Rest("r16")],
    )

    hexennacht.woodwind_swells(score=score, voice=voice, durations=[(5, 16)])

    trinton.append_rests(
        score=score,
        voice=voice,
        rests=[
            abjad.Rest("r8"),
        ],
    )

    hexennacht.woodwind_swells(score=score, voice=voice, durations=[(3, 8)])

    trinton.append_rests(
        score=score,
        voice=voice,
        rests=[
            abjad.Rest("r4."),
        ],
    )

    hexennacht.woodwind_swells(score=score, voice=voice, durations=[(7, 16)])

    trinton.append_rests(
        score=score, voice=voice, rests=[abjad.Rest("r16"), abjad.Rest("r16")]
    )

hexennacht.woodwind_swells(
    score=score, voice="bass clarinet voice", durations=[(19, 16)]
)

hexennacht.woodwind_swells(score=score, voice="bassoon voice", durations=[(1, 4)])

# tuba

trinton.append_rests(
    score=score,
    voice="tuba voice",
    rests=[abjad.Rest("r1"), abjad.Rest("r1"), abjad.Rest("r4.")],
)

hexennacht.drone(
    score=score, voice="tuba voice", talea=8, pitch_index=13, durations=[(29, 8)]
)


# brass

for voice in [
    "horn voice",
    "trumpet voice",
    "tenor trombone voice",
]:
    trinton.append_rests(
        score=score,
        voice=voice,
        rests=[
            abjad.Rest("r1"),
            abjad.Rest("r1"),
            abjad.Rest("r1"),
            abjad.Rest("r1"),
            abjad.Rest("r1"),
            abjad.Rest("r1"),
        ],
    )

for voice, index in zip(
    ["horn voice", "trumpet voice", "tenor trombone voice", "tuba voice"],
    [
        0,
        1,
        2,
        3,
    ],
):
    hexennacht.brass_shrieks(
        score=score,
        voice=voice,
        talea_index=index,
        talea=16,
        durations=[(9, 4)],
        pitched=True,
        pitch_index=0,
    )

# contrabass

trinton.append_rests(
    score=score,
    voice="contrabass voice",
    rests=[abjad.Rest("r1"), abjad.Rest("r1"), abjad.Rest("r4.")],
)

hexennacht.drone(
    score=score, voice="contrabass voice", talea=16, pitch_index=12, durations=[(47, 8)]
)

# all voices

trinton.rewrite_meter(score)

trinton.beam_score(score)

trinton.write_marginmarkups(
    score=score, voices=hexennacht.all_staves, markups=hexennacht.all_marginmarkups
)

hexennacht.standard_cleffing(score)

# trinton.annotate_leaves(score)

# global context

for leaf, attachment in zip(
    [5, 6, 7], [abjad.BarLine(".|:"), abjad.BarLine(":|."), abjad.BarLine(".|:")]
):
    trinton.attach(
        voice=score["Global Context"],
        leaves=[leaf],
        attachment=attachment,
    )

markup = abjad.Markup(r'\abs-fontsize #14 { "x8" }', direction=abjad.Up)
abjad.tweak(markup).padding = 7.15

trinton.attach(
    voice=score["Global Context"],
    leaves=[
        6,
    ],
    attachment=markup,
)

# bass drum attachments

trinton.attach_multiple(
    score=score,
    voice="percussion 2 voice",
    leaves=[
        0,
        2,
        4,
        7,
        10,
        12,
        15,
        17,
        19,
        22,
        25,
        27,
        30,
        32,
        34,
        37,
        40,
        42,
        45,
        47,
        49,
        52,
        55,
        57,
        60,
        62,
        64,
        67,
        70,
        72,
        75,
        77,
    ],
    attachments=[abjad.Dynamic("fff"), abjad.Articulation(">")],
)

trinton.attach(
    voice=score["percussion 2 voice"],
    leaves=[
        1,
        3,
        5,
        8,
        11,
        13,
        16,
        18,
        20,
        23,
        26,
        28,
        31,
        33,
        35,
        38,
        41,
        43,
        46,
        48,
        50,
        53,
        56,
        58,
        61,
        63,
        65,
        68,
        71,
        73,
        76,
    ],
    attachment=abjad.Dynamic("mp"),
)

# violin 1 attachments

trinton.write_slur(
    voice=score["violin 1 voice"],
    start_slur=[
        5,
        10,
        17,
        20,
        22,
        25,
        27,
        30,
    ],
    stop_slur=[
        7,
        16,
        19,
        21,
        24,
        26,
        29,
        32,
    ],
)

trinton.attach_multiple(
    score=score,
    voice="violin 1 voice",
    leaves=[5],
    attachments=[
        abjad.Dynamic("ff"),
        abjad.LilyPondLiteral(
            r'\boxed-markup "Crine, MSP, Slightly OP" 1', format_slot="after"
        ),
        abjad.Markup(r'\italic { "Espressivo" }', direction=abjad.Down),
    ],
)

trinton.attach(
    voice=score["violin 1 voice"],
    leaves=[5, 8, 10, 17, 20, 22, 25, 27, 30, 33, 34, 35, 36, 37],
    attachment=abjad.Articulation("tenuto"),
)

# violin 2 attachments

for voice in ["violin 2 voice", "viola voice", "cello voice"]:
    trinton.change_notehead(voice=score[voice], leaves=all, notehead=r"#'cross")

    trinton.attach(
        voice=score[voice],
        leaves=[
            2,
        ],
        attachment=abjad.LilyPondLiteral(
            r'\boxed-markup "Crine, Ord., OP" 1', format_slot="after"
        ),
    )

trinton.attach(
    voice=score["violin 2 voice"],
    leaves=[
        5,
        13,
        21,
        29,
        37,
        45,
        53,
        61,
        69,
        77,
        85,
        93,
    ],
    attachment=abjad.Tie(),
)

trinton.attach_multiple(
    score=score,
    voice="violin 2 voice",
    leaves=[
        2,
        4,
        7,
        10,
        13,
        16,
        19,
        21,
        24,
        27,
        31,
        33,
        36,
        39,
        41,
        44,
        48,
        50,
        53,
        56,
        58,
        61,
        65,
        67,
        71,
        73,
        75,
        79,
        82,
        84,
        88,
        90,
        92,
        96,
        99,
        101,
    ],
    attachments=[
        abjad.Dynamic("fff"),
        abjad.Articulation(">"),
        abjad.Articulation("downbow"),
    ],
)

trinton.attach_multiple(
    score=score,
    voice="violin 2 voice",
    leaves=[
        3,
        5,
        8,
        11,
        15,
        17,
        20,
        23,
        25,
        28,
        32,
        34,
        37,
        40,
        42,
        45,
        49,
        51,
        55,
        57,
        59,
        63,
        66,
        68,
        72,
        74,
        76,
        80,
        83,
        85,
        89,
        91,
        93,
        97,
        100,
    ],
    attachments=[abjad.Articulation("upbow"), abjad.Dynamic("mp")],
)

trinton.attach(
    voice=score["violin 2 voice"],
    leaves=[9, 12, 18, 26, 29, 35, 43, 47, 52, 60, 64, 69, 77, 81, 87, 95, 98],
    attachment=abjad.Articulation("upbow"),
)

# viola attachments

trinton.attach(
    voice=score["viola voice"],
    leaves=[
        3,
        7,
        11,
        15,
        19,
        23,
        27,
        31,
        35,
        39,
        43,
        47,
    ],
    attachment=abjad.Tie(),
)

trinton.attach_multiple(
    score=score,
    voice="viola voice",
    leaves=[2, 5, 7, 11, 15, 18, 22, 25, 27, 31, 35, 38, 42, 45, 47, 51],
    attachments=[
        abjad.Dynamic("fff"),
        abjad.Articulation(">"),
        abjad.Articulation("downbow"),
    ],
)

trinton.attach_multiple(
    score=score,
    voice="viola voice",
    leaves=[
        3,
        6,
        9,
        13,
        17,
        19,
        23,
        26,
        29,
        33,
        37,
        39,
        43,
        46,
        49,
    ],
    attachments=[abjad.Articulation("upbow"), abjad.Dynamic("mp")],
)

trinton.attach(
    voice=score["viola voice"],
    leaves=[
        10,
        14,
        21,
        30,
        34,
        41,
        50,
    ],
    attachment=abjad.Articulation("upbow"),
)

# cello attachments

trinton.attach_multiple(
    score=score,
    voice="cello voice",
    leaves=[
        2,
        4,
        6,
        9,
        12,
        14,
        17,
        19,
        21,
        24,
        27,
        29,
        32,
        34,
        36,
        39,
        42,
        44,
        47,
        49,
        51,
    ],
    attachments=[
        abjad.Dynamic("fff"),
        abjad.Articulation(">"),
        abjad.Articulation("downbow"),
    ],
)

trinton.attach_multiple(
    score=score,
    voice="cello voice",
    leaves=[
        3,
        5,
        7,
        10,
        13,
        15,
        18,
        20,
        22,
        25,
        28,
        30,
        33,
        35,
        37,
        40,
        43,
        45,
        48,
        50,
    ],
    attachments=[abjad.Articulation("upbow"), abjad.Dynamic("mp")],
)

trinton.attach(
    voice=score["cello voice"],
    leaves=[
        8,
        11,
        16,
        23,
        26,
        31,
        38,
        41,
        46,
    ],
    attachment=abjad.Articulation("upbow"),
)

# flute attachments

trinton.write_slur(
    voice=score["flute voice"],
    start_slur=[
        6,
        8,
        12,
        20,
        23,
        27,
        30,
        33,
        35,
    ],
    stop_slur=[
        7,
        10,
        18,
        22,
        26,
        28,
        32,
        34,
        37,
    ],
)

trinton.write_text_span(
    voice=score["flute voice"],
    begin_text=r"90˚",
    end_text=r"0˚",
    start_leaf=[
        6,
        8,
        20,
        27,
        30,
        33,
        35,
    ],
    stop_leaf=[
        7,
        10,
        22,
        28,
        32,
        34,
        37,
    ],
    padding=5,
)

trinton.write_markup(
    voice=score["flute voice"],
    leaf=[
        12,
        23,
    ],
    string=r"\italic 45˚",
    down=False,
)

trinton.attach(
    voice=score["flute voice"],
    leaves=[
        6,
        8,
        20,
        27,
        30,
        33,
        35,
    ],
    attachment=abjad.StartHairpin("o<|"),
)

trinton.attach(
    voice=score["flute voice"],
    leaves=[
        7,
        10,
        12,
        18,
        22,
        23,
        26,
        28,
        32,
        34,
        37,
    ],
    attachment=abjad.Dynamic("fff"),
)

trinton.attach(
    voice=score["flute voice"],
    leaves=[
        12,
        23,
    ],
    attachment=abjad.StartHairpin("|>"),
)

trinton.attach_multiple(
    score=score,
    voice="flute voice",
    leaves=[
        15,
        25,
    ],
    attachments=[
        abjad.Dynamic("mp"),
        abjad.StartHairpin("<|"),
    ],
)

# oboe attachments

trinton.write_slur(
    voice=score["oboe voice"],
    start_slur=[
        7,
        14,
        20,
        28,
    ],
    stop_slur=[
        11,
        17,
        25,
        34,
    ],
)

trinton.attach(
    voice=score["oboe voice"],
    leaves=[
        7,
        8,
        9,
        10,
        14,
        15,
        16,
        20,
        21,
        22,
        23,
        24,
        28,
        29,
        30,
        31,
        32,
        33,
    ],
    attachment=abjad.Glissando(),
)

trinton.attach_multiple(
    score=score,
    voice="oboe voice",
    leaves=[
        7,
    ],
    attachments=[
        abjad.Dynamic("ff"),
        abjad.LilyPondLiteral(r'\boxed-markup "Overblow" 1', format_slot="after"),
    ],
)

trinton.attach(
    voice=score["oboe voice"],
    leaves=[
        7,
        9,
        11,
        15,
        17,
        21,
        23,
        25,
        29,
        31,
        33,
    ],
    attachment=abjad.Articulation("open"),
)

trinton.attach(
    voice=score["oboe voice"],
    leaves=[
        8,
        10,
        14,
        16,
        20,
        22,
        24,
        28,
        30,
        32,
        34,
    ],
    attachment=abjad.Articulation("stopped"),
)

# bass clarinet attachments

for leaf, multiphonic in zip(
    [
        5,
        11,
        14,
        18,
        22,
    ],
    [5, 4, 3, 2, 1],
):
    hexennacht.clarinet_multiphonics(
        score=score,
        voice="bass clarinet voice",
        leaves=[leaf],
        multiphonic=multiphonic,
        markup=True,
    )

trinton.attach_multiple(
    score=score,
    voice="bass clarinet voice",
    leaves=[
        5,
    ],
    attachments=[
        abjad.Dynamic("ff"),
        abjad.LilyPondLiteral(r'\boxed-markup "Overblow" 1', format_slot="after"),
    ],
)

# bassoon attachments

for leaf, multiphonic in zip(
    [
        6,
        11,
        15,
        20,
        24,
    ],
    [5, 4, 3, 2, 1],
):
    hexennacht.bassoon_multiphonics(
        score=score,
        voice="bassoon voice",
        leaves=[leaf],
        multiphonic=multiphonic,
        markup=True,
    )

trinton.attach_multiple(
    score=score,
    voice="bassoon voice",
    leaves=[
        6,
    ],
    attachments=[
        abjad.Dynamic("ff"),
        abjad.LilyPondLiteral(r'\boxed-markup "Overblow" 1', format_slot="after"),
    ],
)

# horn attachments

for voice in ["horn voice", "tenor trombone voice"]:
    trinton.unmeasured_stem_tremolo(abjad.select(score[voice]).leaves(pitched=True))

trinton.attach_multiple(
    score=score,
    voice="horn voice",
    leaves=[6],
    attachments=[
        abjad.Dynamic("p"),
        abjad.LilyPondLiteral(
            r'\boxed-markup "Fluttering valves, Fluttertongue" 1', format_slot="after"
        ),
    ],
)

trinton.attach(
    voice=score["horn voice"],
    leaves=[
        13,
        18,
    ],
    attachment=abjad.Articulation(">"),
)

trinton.attach(
    voice=score["horn voice"], leaves=[13], attachment=abjad.StartHairpin("<")
)

trinton.attach(voice=score["horn voice"], leaves=[19], attachment=abjad.Dynamic("fff"))

# trumpet attachments

trinton.write_trill_span(
    score=score,
    voice="trumpet voice",
    pitch=16.5,
    start_leaf=[
        6,
    ],
    stop_leaf=[
        7,
    ],
)

trinton.write_trill_span(
    score=score,
    voice="trumpet voice",
    pitch=22,
    start_leaf=[
        9,
    ],
    stop_leaf=[
        11,
    ],
)

trinton.write_trill_span(
    score=score,
    voice="trumpet voice",
    pitch=14.5,
    start_leaf=[
        11,
    ],
    stop_leaf=[
        14,
    ],
)

trinton.write_trill_span(
    score=score,
    voice="trumpet voice",
    pitch=19.5,
    start_leaf=[
        16,
    ],
    stop_leaf=[
        18,
    ],
)

trinton.attach(
    voice=score["trumpet voice"],
    leaves=[
        6,
    ],
    attachment=abjad.Dynamic("p"),
)

trinton.attach(voice=score["trumpet voice"], leaves=[10], attachment=abjad.Glissando())

trinton.attach(
    voice=score["trumpet voice"], leaves=[16], attachment=abjad.Articulation(">")
)

trinton.attach(
    voice=score["trumpet voice"], leaves=[12], attachment=abjad.StartHairpin("<")
)

trinton.attach(
    voice=score["trumpet voice"],
    leaves=[
        17,
    ],
    attachment=abjad.Dynamic("fff"),
)

# trombone attachments

hexennacht.treble_clef(
    score["tenor trombone voice"],
    [
        7,
        15,
    ],
)

hexennacht.bass_clef(
    score["tenor trombone voice"],
    [
        10,
        18,
    ],
)

trinton.attach_multiple(
    score=score,
    voice="tenor trombone voice",
    leaves=[7],
    attachments=[
        abjad.Dynamic("f"),
        abjad.LilyPondLiteral(
            r'\boxed-markup "Fluttertongue, switch rapidly between 1st-7th" 1',
            format_slot="after",
        ),
    ],
)

trinton.attach(
    voice=score["tenor trombone voice"], leaves=[10], attachment=abjad.Dynamic("p")
)

trinton.attach(
    voice=score["tenor trombone voice"], leaves=[15], attachment=abjad.Dynamic("fff")
)

trinton.attach(
    voice=score["tenor trombone voice"],
    leaves=[
        15,
        18,
    ],
    attachment=abjad.Articulation(">"),
)

# tuba attachments

trinton.attach(
    voice=score["tuba voice"],
    leaves=[
        4,
    ],
    attachment=abjad.Dynamic("mp"),
)

for number in [
    16,
    17,
    18,
    19,
    21,
    23,
    24,
    25,
    26,
]:
    sel = abjad.select(score["tuba voice"]).leaf(number)
    trinton.unmeasured_stem_tremolo([sel])

trinton.attach(
    voice=score["tuba voice"],
    leaves=[
        16,
    ],
    attachment=abjad.Dynamic("p"),
)

trinton.attach(
    voice=score["tuba voice"],
    leaves=[
        16,
        18,
    ],
    attachment=abjad.Articulation("tenuto"),
)

trinton.attach(
    voice=score["tuba voice"],
    leaves=[
        21,
        23,
        25,
    ],
    attachment=abjad.Articulation(">"),
)

trinton.attach(
    voice=score["tuba voice"],
    leaves=[
        21,
    ],
    attachment=abjad.StartHairpin("<"),
)

trinton.attach(
    voice=score["tuba voice"],
    leaves=[
        25,
    ],
    attachment=abjad.Dynamic("fff"),
)

# piano attachments

trinton.attach(
    voice=score["piano 2 voice"],
    leaves=[
        4,
    ],
    attachment=abjad.Dynamic("f"),
)

trinton.attach(
    voice=score["piano 2 voice"],
    leaves=[
        4,
        7,
        9,
        12,
        14,
        16,
        19,
        21,
        22,
        24,
        26,
        27,
        28,
        30,
        32,
        33,
        34,
        36,
        38,
        39,
        40,
    ],
    attachment=abjad.Articulation(">"),
)

# harp attachments

hexennacht.bass_clef(
    score["harp voice"],
    [
        6,
    ],
)

trinton.unmeasured_stem_tremolo(abjad.select(score["harp voice"]).leaves(pitched=True))

trinton.attach_multiple(
    score=score,
    voice="harp voice",
    leaves=[6],
    attachments=[
        abjad.Dynamic("mp"),
        abjad.LilyPondLiteral(
            r'\boxed-markup "Circular scrape w/ plastic card" 1', format_slot="after"
        ),
        abjad.StartHairpin("<"),
    ],
)

trinton.attach(voice=score["harp voice"], leaves=[10], attachment=abjad.Dynamic("ff"))

# percussion 1 attachments

trinton.attach_multiple(
    score=score,
    voice="marimba voice",
    leaves=[5],
    attachments=[
        abjad.Dynamic("f"),
        abjad.LilyPondLiteral(
            r'\boxed-markup "w/ drumsticks, pitches approx." 1', format_slot="after"
        ),
    ],
)

trinton.write_slur(
    voice=score["marimba voice"],
    start_slur=[
        5,
        16,
        24,
        32,
        41,
    ],
    stop_slur=[
        12,
        20,
        29,
        38,
        47,
    ],
)

hexennacht.bass_clef(
    score["marimba voice"],
    [
        5,
        24,
        41,
    ],
)

hexennacht.treble_clef(
    score["marimba voice"],
    [
        16,
        32,
    ],
)

for number in [
    48,
    49,
]:
    sel = abjad.select(score["marimba voice"]).leaf(number)
    trinton.unmeasured_stem_tremolo([sel])

trinton.unmeasured_stem_tremolo(
    abjad.select(score["percussion 1 voice"]).leaves(pitched=True)
)

trinton.attach(
    voice=score["percussion 1 voice"],
    leaves=[
        4,
    ],
    attachment=abjad.Dynamic("f"),
)

# contrabass attachments

trinton.attach_multiple(
    score=score,
    voice="contrabass voice",
    leaves=[4],
    attachments=[
        abjad.Dynamic("mp"),
        abjad.LilyPondLiteral(r'\boxed-markup "MST" 1', format_slot="after"),
    ],
)

trinton.attach(
    voice=score["contrabass voice"], leaves=[16], attachment=abjad.StartHairpin("<")
)

trinton.write_text_span(
    voice=score["contrabass voice"],
    begin_text=r"MST, Norm.",
    end_text=r"MSP, OP",
    start_leaf=[16],
    stop_leaf=[29],
    padding=3,
)

trinton.attach(
    voice=score["contrabass voice"], leaves=[29], attachment=abjad.Dynamic("ff")
)

trinton.attach(
    voice=score["contrabass voice"],
    leaves=[
        30,
        32,
        35,
        37,
        40,
        42,
        44,
    ],
    attachment=abjad.Articulation("marcato"),
)

# extract parts

trinton.extract_parts(score)

# whiteout empty staves

for voice in hexennacht.all_voices:
    trinton.whiteout_empty_staves(score=score, voice=voice, cutaway=True)

# show file

trinton.render_file(
    score=score,
    segment_path="/Users/trintonprater/scores/hexennacht/hexennacht/segments/08",
    build_path="/Users/trintonprater/scores/hexennacht/hexennacht/build",
    segment_name="08",
    includes=[
        "/Users/trintonprater/scores/hexennacht/hexennacht/build/hexennacht-stylesheet.ily",
        "/Users/trintonprater/abjad/docs/source/_stylesheets/abjad.ily",
    ],
)
