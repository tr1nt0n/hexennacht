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
    transpose=-10,
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
    transpose=-11,
)

trinton.append_rests(score=score, voice="piano 1 voice", rests=[abjad.Rest("r4")])

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
    transpose=8,
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
    transpose=10,
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
    transpose=1,
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
    transpose=-3,
)

hexennacht.transpose_harp(score=score, voice="harp voice")

# remember to transpose stragglers by hand!!!

for voice in ["piano 1 voice", "piano 2 voice", "harp voice"]:
    trinton.append_rests(
        score=score, voice=voice, rests=[abjad.Rest("r2.."), abjad.Rest("r2.")]
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
        durations=[
            (3, 8),
        ],
    )

    trinton.append_rests(
        score=score,
        voice=voice,
        rests=[
            abjad.Rest("r8"),
            abjad.Rest("r2"),
            abjad.Rest("r8"),
        ],
    )

    hexennacht.woodwind_swells(
        score=score,
        voice=voice,
        durations=[
            (1, 4),
        ],
    )

    trinton.append_rests(
        score=score,
        voice=voice,
        rests=[
            abjad.Rest("r8"),
        ],
    )

trinton.append_rests(score=score, voice="flute voice", rests=[abjad.Rest("r2.")])

hexennacht.marimba_shakes(
    score=score,
    voice="flute voice",
    note_value=32,
    durations=[(3, 8)],
    pitched=True,
    pitch_index=4,
    high=True,
)

trinton.append_rests(score=score, voice="flute voice", rests=[abjad.Rest("r4")])

hexennacht.marimba_shakes(
    score=score,
    voice="flute voice",
    note_value=32,
    durations=[(1, 4)],
    pitched=True,
    pitch_index=16,
    high=True,
)

trinton.append_rests(score=score, voice="flute voice", rests=[abjad.Rest("r8")])

hexennacht.marimba_shakes(
    score=score,
    voice="flute voice",
    note_value=32,
    durations=[(3, 8)],
    pitched=True,
    pitch_index=24,
    high=True,
)

trinton.append_rests(score=score, voice="flute voice", rests=[abjad.Rest("r4")])

# oboe

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
    accel_durations=[(3, 4)],
    rit_durations=[(7, 8)],
    rit_first=True,
    pitched=True,
)

# clarinet

for voice in ["bass clarinet voice", "bassoon voice"]:
    trinton.append_rests(
        score=score,
        voice=voice,
        rests=[
            abjad.Rest("r2"),
            abjad.Rest("r4."),
        ],
    )

    hexennacht.woodwind_swells(
        score=score,
        voice=voice,
        durations=[
            (5, 16),
        ],
    )

    trinton.append_rests(
        score=score,
        voice=voice,
        rests=[
            abjad.Rest("r8."),
        ],
    )

trinton.append_rests(
    score=score, voice="bass clarinet voice", rests=[abjad.Rest("r4"), abjad.Rest("r1")]
)

trinton.handwrite(
    score=score,
    voice="bass clarinet voice",
    durations=[
        (1, 4),
        (1, 4),
        (1, 4),
        (1, 4),
        (1, 4),
        (1, 4),
        (1, 8),
    ],
    pitch_list=None,
)

# bassoon

hexennacht.dance(
    score=score,
    voice="bassoon voice",
    tuplet_index=1,
    durations=[(1, 4)],
    pitch_index=0,
    transpose=-24,
)

hexennacht.dance(
    score=score,
    voice="bassoon voice",
    tuplet_index=2,
    durations=[(2, 4)],
    pitch_index=3,
    transpose=-24,
)

hexennacht.dance(
    score=score,
    voice="bassoon voice",
    tuplet_index=3,
    durations=[(1, 4)],
    pitch_index=8,
    transpose=-24,
)

hexennacht.dance(
    score=score,
    voice="bassoon voice",
    tuplet_index=4,
    durations=[(1, 4)],
    pitch_index=13,
    transpose=-24,
)

hexennacht.dance(
    score=score,
    voice="bassoon voice",
    tuplet_index=5,
    durations=[(1, 2)],
    pitch_index=16,
    transpose=-24,
)

hexennacht.dance(
    score=score,
    voice="bassoon voice",
    tuplet_index=6,
    durations=[(3, 8)],
    pitch_index=19,
    transpose=-24,
)

hexennacht.dance(
    score=score,
    voice="bassoon voice",
    tuplet_index=0,
    durations=[(1, 4)],
    pitch_index=3,
    transpose=-24,
)

hexennacht.dance(
    score=score,
    voice="bassoon voice",
    tuplet_index=1,
    durations=[(1, 2)],
    pitch_index=6,
    transpose=-24,
)

# strings

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
        rests=[abjad.Rest("r2"), abjad.Rest("r4."), abjad.Rest("r16")],
    )

for voice, tuplet in zip(
    [
        "violin 1 voice",
        "violin 2 voice",
        "viola voice",
        "cello voice",
    ],
    [
        0,
        1,
        2,
        3,
    ],
):
    hexennacht.string_swells(
        score=score,
        voice=voice,
        tuplet_index=tuplet,
        durations=[(9, 16)],
        pitch_index=6,
    )

hexennacht.cymbal_swells(
    score=score, voice="percussion 2 voice", durations=[(9, 16)], tuplet_index=4
)

for voice in [
    "violin 1 voice",
    "violin 2 voice",
    "viola voice",
    "cello voice",
    "percussion 2 voice",
]:
    trinton.append_rests(
        score=score, voice=voice, rests=[abjad.Rest("r8"), abjad.Rest("r4")]
    )

for voice, tuplet in zip(
    [
        "violin 1 voice",
        "violin 2 voice",
        "viola voice",
        "cello voice",
    ],
    [
        4,
        0,
        1,
        2,
    ],
):
    hexennacht.string_swells(
        score=score,
        voice=voice,
        tuplet_index=tuplet,
        durations=[(1, 2)],
        pitch_index=12,
    )

hexennacht.cymbal_swells(
    score=score, voice="percussion 2 voice", durations=[(1, 2)], tuplet_index=3
)

for voice in [
    "violin 1 voice",
    "violin 2 voice",
    "viola voice",
    "cello voice",
    "percussion 2 voice",
]:
    trinton.append_rests(score=score, voice=voice, rests=[abjad.Rest("r4")])

for voice in ["violin 1 voice", "violin 2 voice", "viola voice", "cello voice"]:
    hexennacht.drumming(
        score=score,
        voice=voice,
        durations=[
            (1, 8),
            (1, 8),
            (1, 8),
            (1, 8),
            (1, 8),
            (1, 8),
            (1, 8),
            (1, 4),
            (1, 4),
            (1, 4),
        ],
        pitched=True,
    )

# all voices

for voice in [
    "horn voice",
    "trumpet voice",
    "tenor trombone voice",
    "tuba voice",
    "marimba voice",
    "percussion 1 voice",
    "contrabass voice",
]:
    trinton.append_rests(
        score=score,
        voice=voice,
        rests=[
            abjad.Rest("r2"),
            abjad.Rest("r4."),
        ],
    )

trinton.write_marginmarkups(
    score=score,
    voices=hexennacht.all_staves,
    markups=hexennacht.all_marginmarkups,
)

hexennacht.standard_cleffing(score=score)

# tuba

for voice in ["tuba voice", "contrabass voice"]:
    trinton.append_rests(score=score, voice=voice, rests=[abjad.Rest("r4")])

hexennacht.drone(
    score=score, voice="tuba voice", talea=16, pitch_index=5, durations=[(6, 4)]
)

hexennacht.brass_shrieks(
    score=score,
    voice="tuba voice",
    talea=16,
    talea_index=3,
    durations=[(13, 8)],
    pitched=True,
    pitch_index=0,
)

# percussion 1

trinton.append_rests(score=score, voice="percussion 1 voice", rests=[abjad.Rest("r4.")])

trinton.handwrite(
    score=score,
    voice="percussion 1 voice",
    durations=[(1, 8)],
    pitch_list=hexennacht.ratchet_pitches,
)

trinton.append_rests(
    score=score, voice="percussion 1 voice", rests=[abjad.Rest("r4"), abjad.Rest("r4.")]
)

trinton.handwrite(
    score=score,
    voice="percussion 1 voice",
    durations=[(1, 8)],
    pitch_list=trinton.rotated_sequence(hexennacht.ratchet_pitches, 1),
)

trinton.append_rests(
    score=score,
    voice="percussion 1 voice",
    rests=[
        abjad.Rest("r8"),
    ],
)

trinton.handwrite(
    score=score,
    voice="percussion 1 voice",
    durations=[(1, 8)],
    pitch_list=trinton.rotated_sequence(hexennacht.ratchet_pitches, 2),
)

trinton.append_rests(
    score=score,
    voice="percussion 1 voice",
    rests=[abjad.Rest("r4"), abjad.Rest("r2.."), abjad.Rest("r2.")],
)

trinton.transparent_accidentals(score=score, voice="percussion 1 voice", leaves=all)

trinton.append_rests(
    score=score, voice="marimba voice", rests=[abjad.Rest("r2"), abjad.Rest("r8")]
)

hexennacht.marimba_shakes(
    score=score,
    voice="marimba voice",
    note_value=32,
    durations=[(1, 8)],
    pitched=True,
    pitch_index=0,
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
    note_value=32,
    durations=[(3, 16)],
    pitched=True,
    pitch_index=4,
    high=True,
)

trinton.append_rests(
    score=score, voice="marimba voice", rests=[abjad.Rest("r8."), abjad.Rest("r4")]
)

hexennacht.marimba_shakes(
    score=score,
    voice="marimba voice",
    note_value=32,
    durations=[(3, 8)],
    pitched=True,
    pitch_index=10,
    high=True,
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
    note_value=32,
    durations=[(1, 4)],
    pitched=True,
    pitch_index=22,
    high=True,
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
    note_value=32,
    durations=[(1, 8)],
    pitched=True,
    pitch_index=30,
    high=True,
)

trinton.append_rests(
    score=score,
    voice="marimba voice",
    rests=[
        abjad.Rest("r4."),
    ],
)

hexennacht.marimba_shakes(
    score=score,
    voice="marimba voice",
    note_value=32,
    durations=[(1, 4)],
    pitched=True,
    pitch_index=34,
    high=True,
)

# trumpet and horn

for voice in ["trumpet voice", "horn voice"]:
    trinton.append_rests(
        score=score,
        voice=voice,
        rests=[abjad.Rest("r2."), abjad.Rest("r2"), abjad.Rest("r8")],
    )

for voice, index in zip(
    [
        "trumpet voice",
        "horn voice",
    ],
    [3, 5],
):
    hexennacht.brass_shrieks(
        score=score,
        voice=voice,
        talea_index=index,
        talea=16,
        durations=[(16, 8)],
        pitched=True,
        pitch_index=1,
    )

# percussion 2

hexennacht.cymbal_swells(
    score=score, voice="percussion 2 voice", durations=[(7, 8), (3, 4)], tuplet_index=2
)

# trombone

trinton.append_rests(
    score=score,
    voice="tenor trombone voice",
    rests=[abjad.Rest("r2."), abjad.Rest("r1")],
)

hexennacht.drone(
    score=score,
    voice="tenor trombone voice",
    talea=16,
    pitch_index=1,
    durations=[(13, 8)],
)

# contrabass

hexennacht.drone(
    score=score, voice="contrabass voice", talea=16, pitch_index=5, durations=[(25, 8)]
)

# all voices again

for voice in hexennacht.all_voices:
    if voice == "bassoon voice":
        pass
    elif voice == "percussion 2 voice":
        pass

    elif voice == "cello voice":
        pass
    else:
        trinton.append_rests(
            score=score, voice=voice, rests=[abjad.Rest("r2.."), abjad.Rest("r2.")]
        )

for voice in ["bassoon voice", "percussion 2 voice", "cello voice"]:
    trinton.append_rests(score=score, voice=voice, rests=[abjad.Rest("r2.")])

hexennacht.cymbal_swells(
    score=score, voice="bassoon voice", durations=[(5, 8)], tuplet_index=1
)

trinton.handwrite(
    score=score,
    voice="percussion 2 voice",
    durations=[
        (1, 4),
        (1, 8),
        (1, 4),
    ],
    pitch_list=hexennacht.ratchet_pitches,
)

hexennacht.string_swells(
    score=score, voice="cello voice", tuplet_index=1, durations=[(5, 8)], pitch_index=0
)

for voice in ["bassoon voice", "percussion 2 voice", "cello voice"]:
    trinton.append_rests(score=score, voice=voice, rests=[abjad.Rest("r4")])

trinton.rewrite_meter(score)

trinton.beam_score(score)

# trinton.annotate_leaves(score)

# tempi

trinton.attach(
    voice=score["Global Context"],
    leaves=[
        6,
    ],
    attachment=hexennacht.tempo_4,
)

# piano attachments

trinton.write_slur(
    voice=score["piano 1 voice"],
    start_slur=[
        1,
        9,
        21,
    ],
    stop_slur=[
        3,
        18,
        26,
    ],
)

trinton.write_slur(
    voice=score["piano 2 voice"],
    start_slur=[
        6,
        3,
        18,
    ],
    stop_slur=[
        15,
        5,
        22,
    ],
)

trinton.attach(
    voice=score["piano 2 voice"],
    leaves=[
        0,
        1,
        2,
        3,
        16,
        17,
    ],
    attachment=abjad.Articulation(">"),
)

trinton.attach(
    voice=score["piano 2 voice"],
    leaves=[
        3,
        6,
        18,
    ],
    attachment=abjad.Articulation("tenuto"),
)

trinton.attach(
    voice=score["piano 1 voice"],
    leaves=[
        4,
        5,
        7,
        19,
        20,
    ],
    attachment=abjad.Articulation(">"),
)

trinton.attach(
    voice=score["piano 1 voice"],
    leaves=[1, 9, 21],
    attachment=abjad.Articulation("tenuto"),
)

trinton.attach(voice=score["piano 1 voice"], leaves=[0], attachment=abjad.Dynamic("f"))

trinton.write_markup(
    voice=score["piano 2 voice"],
    leaf=[0],
    string=r"\markup { \italic Con \italic fuoco }",
    down=False,
)

trinton.attach_multiple(
    score=score,
    voice="piano 1 voice",
    leaves=[
        8,
    ],
    attachments=[abjad.Dynamic("mp"), abjad.StartHairpin("<")],
)

trinton.attach(
    voice=score["piano 1 voice"], leaves=[19], attachment=abjad.Dynamic("fff")
)

trinton.attach(
    voice=score["piano 1 voice"], leaves=[21], attachment=abjad.StartHairpin(">o")
)

trinton.attach(
    voice=score["piano 1 voice"], leaves=[26], attachment=abjad.StopHairpin()
)

# harp attachments

trinton.write_markup(
    voice=score["harp voice"],
    leaf=[0],
    string=r"\markup { \italic Con \italic fuoco }",
    down=True,
)

for leaf in [
    23,
    24,
]:
    sel = abjad.select(score["harp voice"]).leaf(leaf)
    abjad.mutate.transpose(sel, -1)
    hexennacht.with_flats(sel)

for leaf in [6, 9, 10, 11, 25]:
    sel = abjad.select(score["harp voice"]).leaf(leaf)
    hexennacht.octave_up([sel])

trinton.write_slur(
    voice=score["harp voice"],
    start_slur=[
        0,
        14,
        26,
    ],
    stop_slur=[
        5,
        22,
        29,
    ],
)

trinton.attach(
    voice=score["harp voice"],
    leaves=[
        6,
        7,
        9,
        12,
        23,
        25,
    ],
    attachment=abjad.Articulation(">"),
)

trinton.attach(voice=score["harp voice"], leaves=[0], attachment=abjad.Dynamic("f"))

trinton.attach_multiple(
    score=score,
    voice="harp voice",
    leaves=[
        14,
    ],
    attachments=[abjad.Dynamic("mp"), abjad.StartHairpin("<")],
)

trinton.attach(
    voice=score["harp voice"],
    leaves=[
        23,
    ],
    attachment=abjad.Dynamic("fff"),
)

trinton.attach(
    voice=score["harp voice"],
    leaves=[
        26,
    ],
    attachment=abjad.StartHairpin(">o"),
)

trinton.attach(
    voice=score["harp voice"],
    leaves=[
        29,
    ],
    attachment=abjad.StopHairpin(),
)

# flute attachments

for leaf, multiphonic in zip(
    [
        2,
        7,
    ],
    [
        5,
        3,
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

trinton.write_slur(
    voice=score["flute voice"],
    start_slur=[
        11,
        24,
        33,
    ],
    stop_slur=[
        22,
        31,
        44,
    ],
)

for voice in ["flute voice", "oboe voice"]:
    for leaf, dynamic in zip(
        [
            2,
            7,
        ],
        ["pp", "p"],
    ):
        trinton.attach(
            voice=score[voice], leaves=[leaf], attachment=abjad.Dynamic(dynamic)
        )

trinton.attach(
    voice=score["flute voice"],
    leaves=[
        11,
    ],
    attachment=abjad.Dynamic("ff"),
)

trinton.attach(
    voice=score["flute voice"],
    leaves=[
        11,
        24,
        33,
    ],
    attachment=abjad.Articulation(">"),
)

# oboe attachments

for leaf, multiphonic in zip(
    [
        2,
        7,
    ],
    [
        5,
        3,
    ],
):
    hexennacht.oboe_harmonies(
        score=score, voice="oboe voice", leaves=[leaf], flute_multiphonic=multiphonic
    )

trinton.write_slur(
    voice=score["oboe voice"],
    start_slur=[
        11,
        16,
        22,
        34,
    ],
    stop_slur=[
        13,
        19,
        31,
        41,
    ],
)

trinton.attach(
    voice=score["oboe voice"],
    leaves=[
        11,
    ],
    attachment=abjad.Dynamic("pp"),
)

trinton.attach(
    voice=score["oboe voice"],
    leaves=[
        22,
        34,
    ],
    attachment=abjad.Articulation(">"),
)

trinton.attach(
    voice=score["oboe voice"],
    leaves=[
        11,
        12,
        16,
        17,
        18,
        22,
        23,
        24,
        25,
        26,
        27,
        28,
        29,
        30,
        34,
        35,
        36,
        37,
        38,
        39,
        40,
    ],
    attachment=abjad.Glissando(),
)

trinton.attach(
    voice=score["oboe voice"],
    leaves=[
        11,
        12,
        13,
        16,
        17,
        18,
        19,
    ],
    attachment=abjad.Articulation("stopped"),
)

trinton.attach_multiple(
    score=score,
    voice="oboe voice",
    leaves=[
        22,
    ],
    attachments=[
        abjad.Articulation("open"),
        abjad.Dynamic("ff"),
        abjad.LilyPondLiteral(r'\boxed-markup "Overblow" 1', format_slot="after"),
    ],
)

# clarinet attachments

trinton.attach_multiple(
    score=score,
    voice="bass clarinet voice",
    leaves=[
        2,
    ],
    attachments=[
        abjad.Dynamic("pp"),
        abjad.LilyPondLiteral(r'\boxed-markup "Norm." 1', format_slot="after"),
    ],
)

for leaf, multiphonic in zip(
    [
        2,
        7,
    ],
    [
        1,
        4,
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

hexennacht.write_multiphonics(
    score=score,
    voice="bass clarinet voice",
    dict=hexennacht._clarinet_multiphonics_to_pitches,
    leaves=[
        8,
        10,
        12,
        14,
        16,
        18,
    ],
    multiphonic=4,
    markup=False,
)

trinton.attach(
    voice=score["bass clarinet voice"],
    leaves=[
        7,
    ],
    attachment=abjad.Dynamic("ff"),
)

trinton.attach(
    voice=score["bass clarinet voice"],
    leaves=[7, 8, 10, 12, 14, 16, 18],
    attachment=abjad.Articulation("marcato"),
)

# bassoon attachments

trinton.attach(
    voice=score["bassoon voice"],
    leaves=[
        41,
        42,
    ],
    attachment=abjad.Tie(),
)

hexennacht.write_multiphonics(
    score=score,
    voice="bassoon voice",
    dict=hexennacht._bassoon_multiphonics_to_pitches,
    leaves=[2, 40],
    multiphonic=4,
    markup=True,
)

trinton.attach(
    voice=score["bassoon voice"],
    leaves=[
        40,
    ],
    attachment=abjad.StartHairpin("o<|"),
)

trinton.attach_multiple(
    score=score,
    voice="bassoon voice",
    leaves=[42],
    attachments=[abjad.Dynamic("f"), abjad.StartHairpin("|>o")],
)

trinton.attach(
    voice=score["bassoon voice"],
    leaves=[
        44,
    ],
    attachment=abjad.StopHairpin(),
)

for number in [
    40,
    41,
    42,
    43,
]:
    sel = abjad.select(score["bassoon voice"]).leaf(number)
    trinton.unmeasured_stem_tremolo([sel])

trinton.attach(
    voice=score["bassoon voice"],
    leaves=[
        2,
    ],
    attachment=abjad.Dynamic("pp"),
)

trinton.write_slur(
    voice=score["bassoon voice"],
    start_slur=[
        5,
        8,
        10,
        13,
        15,
        18,
        21,
        24,
        34,
    ],
    stop_slur=[
        7,
        9,
        12,
        14,
        17,
        20,
        23,
        29,
        36,
    ],
)

trinton.attach(
    voice=score["bassoon voice"],
    leaves=[
        21,
        24,
        30,
        32,
        33,
        34,
    ],
    attachment=abjad.Articulation(">"),
)

trinton.attach(
    voice=score["bassoon voice"],
    leaves=[
        5,
    ],
    attachment=abjad.Dynamic("ppp"),
)

trinton.attach(
    voice=score["bassoon voice"],
    leaves=[
        18,
    ],
    attachment=abjad.StartHairpin("<"),
)

trinton.attach_multiple(
    score=score,
    voice="bassoon voice",
    leaves=[
        21,
    ],
    attachments=[
        abjad.Dynamic("ff"),
        abjad.LilyPondLiteral(r'\boxed-markup "Overblow" 1', format_slot="after"),
    ],
)

# horn attachments

trinton.unmeasured_stem_tremolo(abjad.select(score["horn voice"]).leaves(pitched=True))

trinton.attach_multiple(
    score=score,
    voice="horn voice",
    leaves=[
        5,
    ],
    attachments=[
        abjad.Dynamic("mf"),
        abjad.LilyPondLiteral(
            r'\boxed-markup "Fluttering valves, fluttertongue" 1', format_slot="after"
        ),
    ],
)

# trumpet attachments

trinton.write_trill_span(
    score=score,
    voice="trumpet voice",
    pitch=22,
    start_leaf=[
        5,
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
        8,
    ],
    stop_leaf=[
        11,
    ],
)

trinton.write_trill_span(
    score=score,
    voice="trumpet voice",
    pitch=19.5,
    start_leaf=[
        12,
    ],
    stop_leaf=[
        13,
    ],
)

trinton.write_trill_span(
    score=score,
    voice="trumpet voice",
    pitch=15,
    start_leaf=[
        14,
    ],
    stop_leaf=[
        16,
    ],
)

trinton.attach(
    voice=score["trumpet voice"],
    leaves=[
        5,
    ],
    attachment=abjad.Dynamic("mp"),
)

trinton.attach(
    voice=score["trumpet voice"],
    leaves=[
        7,
    ],
    attachment=abjad.Glissando(),
)

# trombone attachments

trinton.attach_multiple(
    score=score,
    voice="tenor trombone voice",
    leaves=[
        4,
    ],
    attachments=[abjad.Dynamic("mf"), abjad.Articulation(">")],
)

# tuba attachments

trinton.attach_multiple(
    score=score,
    voice="tuba voice",
    leaves=[
        3,
    ],
    attachments=[abjad.Dynamic("ppp"), abjad.StartHairpin("<")],
)

trinton.attach(
    voice=score["tuba voice"],
    leaves=[
        11,
    ],
    attachment=abjad.Dynamic("mp"),
)

trinton.attach(
    voice=score["tuba voice"],
    leaves=[
        11,
        13,
        18,
    ],
    attachment=abjad.Articulation(">"),
)

# percussion 1 attachments

trinton.write_slur(
    voice=score["marimba voice"],
    start_slur=[
        4,
        9,
        17,
        25,
        30,
        39,
        45,
    ],
    stop_slur=[
        7,
        14,
        24,
        28,
        37,
        42,
        52,
    ],
)

hexennacht.treble_clef(
    score_and_voice=score["marimba voice"],
    leaves=[
        4,
    ],
)

trinton.attach_multiple(
    score=score,
    voice="marimba voice",
    leaves=[
        4,
    ],
    attachments=[
        abjad.Dynamic("ppp"),
        abjad.LilyPondLiteral(
            r'\boxed-markup "w/ drumsticks, pitches approx." 1', format_slot="after"
        ),
    ],
)

trinton.attach(
    voice=score["marimba voice"],
    leaves=[
        17,
    ],
    attachment=abjad.StartHairpin("<"),
)

trinton.attach(
    voice=score["marimba voice"],
    leaves=[
        25,
    ],
    attachment=abjad.Dynamic("ff"),
)

trinton.attach_multiple(
    score=score,
    voice="percussion 1 voice",
    leaves=[
        4,
    ],
    attachments=[
        abjad.Dynamic("pp"),
        abjad.LilyPondLiteral(
            r'\boxed-markup "Cup gear w/ hand" 1', format_slot="after"
        ),
    ],
)

# percussion 2 attachments

trinton.transparent_accidentals(
    score=score,
    voice="percussion 2 voice",
    leaves=all,
)

trinton.attach(
    voice=score["percussion 2 voice"],
    leaves=[
        3,
    ],
    attachment=abjad.LilyPondLiteral(
        r'\boxed-markup "Ride cymbal, w/ bow" 1', format_slot="after"
    ),
)

hexennacht.three_lines(
    score=score,
    voice="percussion 2 voice",
    leaves=[
        21,
    ],
)

trinton.attach_multiple(
    score=score,
    voice="percussion 2 voice",
    leaves=[
        21,
    ],
    attachments=[
        abjad.LilyPondLiteral(
            r'\boxed-markup "Gongs, scrape w/ triangle beater" 1', format_slot="after"
        ),
        abjad.Dynamic("pp"),
        abjad.StartHairpin("<|"),
    ],
)

trinton.attach(
    voice=score["percussion 2 voice"],
    leaves=[
        24,
    ],
    attachment=abjad.Dynamic("f"),
)

for number in [
    21,
    22,
    23,
    24,
]:
    sel = abjad.select(score["percussion 2 voice"]).leaf(number)
    trinton.unmeasured_stem_tremolo([sel])

trinton.attach(
    voice=score["percussion 2 voice"],
    leaves=[
        12,
        13,
        15,
        16,
    ],
    attachment=abjad.Tie(),
)

trinton.attach(
    voice=score["percussion 2 voice"],
    leaves=[
        12,
        15,
    ],
    attachment=abjad.StartHairpin("o<"),
)

trinton.attach_multiple(
    score=score,
    voice="percussion 2 voice",
    leaves=[
        13,
        16,
    ],
    attachments=[abjad.Dynamic("ff"), abjad.StartHairpin(">o")],
)

trinton.attach(
    voice=score["percussion 2 voice"],
    leaves=[
        14,
        17,
    ],
    attachment=abjad.StopHairpin(),
)

# strings

for voice in ["violin 1 voice", "violin 2 voice", "viola voice", "cello voice"]:
    trinton.attach(
        voice=score[voice],
        leaves=[
            3,
        ],
        attachment=abjad.LilyPondLiteral(
            r'\boxed-markup "Norm." 1', format_slot="after"
        ),
    )

for voice in [
    "violin 2 voice",
    "cello voice",
    "percussion 2 voice",
]:
    trinton.attach(
        voice=score[voice],
        leaves=[
            3,
            4,
            8,
            9,
        ],
        attachment=abjad.Tie(),
    )

    trinton.attach(
        voice=score[voice],
        leaves=[
            3,
            8,
        ],
        attachment=abjad.StartHairpin("o<"),
    )

    trinton.attach_multiple(
        score=score,
        voice=voice,
        leaves=[
            4,
            9,
        ],
        attachments=[abjad.Dynamic("pp"), abjad.StartHairpin(">o")],
    )

    trinton.attach(
        voice=score[voice],
        leaves=[
            5,
            10,
        ],
        attachment=abjad.StopHairpin(),
    )

# violin 1 attachments

trinton.attach(
    voice=score["violin 1 voice"],
    leaves=[
        3,
        4,
        9,
        10,
    ],
    attachment=abjad.Tie(),
)

trinton.attach(
    voice=score["violin 1 voice"],
    leaves=[
        3,
        9,
    ],
    attachment=abjad.StartHairpin("o<"),
)

trinton.attach_multiple(
    score=score,
    voice="violin 1 voice",
    leaves=[
        4,
        10,
    ],
    attachments=[abjad.Dynamic("pp"), abjad.StartHairpin(">o")],
)

trinton.attach(
    voice=score["violin 1 voice"],
    leaves=[
        6,
        11,
    ],
    attachment=abjad.StopHairpin(),
)

for leaf in [
    13,
    14,
    15,
    16,
    17,
    18,
    19,
    20,
    21,
    22,
    23,
    24,
    25,
    26,
]:
    handler = evans.PitchHandler(
        pitch_list=[-5],
        forget=False,
    )

    sel = abjad.select(score["violin 1 voice"]).leaf(leaf)

    handler(sel)

    trinton.change_notehead(
        voice=score["violin 1 voice"], leaves=[leaf], notehead=r"#'cross"
    )

trinton.attach_multiple(
    score=score,
    voice="violin 1 voice",
    leaves=[
        13,
        15,
        17,
        20,
        23,
        25,
    ],
    attachments=[
        abjad.Dynamic("fff"),
        abjad.Articulation("downbow"),
        abjad.Articulation(">"),
    ],
)

trinton.attach_multiple(
    score=score,
    voice="violin 1 voice",
    leaves=[
        14,
        16,
        18,
        21,
        24,
        26,
    ],
    attachments=[
        abjad.Dynamic("mp"),
        abjad.Articulation("upbow"),
    ],
)

trinton.attach(
    voice=score["violin 1 voice"],
    leaves=[
        19,
        22,
    ],
    attachment=abjad.Articulation("upbow"),
)

trinton.attach(
    voice=score["violin 1 voice"],
    leaves=[
        13,
    ],
    attachment=abjad.LilyPondLiteral(r'\boxed-markup "OP" 1', format_slot="after"),
)

# violin 2 attachments

for leaf in [
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
    22,
    23,
    24,
    25,
    26,
    27,
    28,
    29,
    30,
    31,
    32,
    33,
    34,
    35,
    36,
    37,
    38,
    39,
    40,
    41,
    42,
    43,
    44,
    45,
    46,
    47,
    48,
    49,
    50,
    51,
]:
    trinton.change_notehead(
        voice=score["violin 2 voice"], leaves=[leaf], notehead=r"#'cross"
    )

trinton.attach(
    voice=score["violin 2 voice"],
    leaves=[
        15,
        23,
        31,
        39,
        47,
    ],
    attachment=abjad.Tie(),
)

trinton.attach_multiple(
    score=score,
    voice="violin 2 voice",
    leaves=[
        12,
        14,
        17,
        20,
        23,
        26,
        29,
        31,
        34,
        37,
        41,
        43,
        46,
        49,
        51,
    ],
    attachments=[
        abjad.Dynamic("fff"),
        abjad.Articulation("downbow"),
        abjad.Articulation(">"),
    ],
)

trinton.attach_multiple(
    score=score,
    voice="violin 2 voice",
    leaves=[
        13,
        15,
        18,
        21,
        24,
        27,
        30,
        35,
        38,
        42,
        44,
        47,
        50,
    ],
    attachments=[
        abjad.Dynamic("mp"),
        abjad.Articulation("upbow"),
    ],
)

trinton.attach(
    voice=score["violin 2 voice"],
    leaves=[
        19,
        22,
        25,
        28,
        33,
        36,
        39,
        45,
    ],
    attachment=abjad.Articulation("upbow"),
)

trinton.attach(
    voice=score["violin 2 voice"],
    leaves=[
        12,
    ],
    attachment=abjad.LilyPondLiteral(r'\boxed-markup "OP" 1', format_slot="after"),
)

# viola attachments

trinton.attach(
    voice=score["viola voice"],
    leaves=[
        4,
        7,
        11,
        12,
        16,
        20,
        24,
        28,
        32,
    ],
    attachment=abjad.Tie(),
)

trinton.attach(
    voice=score["viola voice"],
    leaves=[
        3,
        11,
    ],
    attachment=abjad.StartHairpin("o<"),
)

trinton.attach_multiple(
    score=score,
    voice="viola voice",
    leaves=[
        5,
        12,
    ],
    attachments=[abjad.Dynamic("pp"), abjad.StartHairpin(">o")],
)

trinton.attach(
    voice=score["viola voice"],
    leaves=[
        8,
        13,
    ],
    attachment=abjad.StopHairpin(),
)

for leaf in [
    15,
    16,
    17,
    18,
    19,
    20,
    21,
    22,
    23,
    24,
    25,
    26,
    27,
    28,
    29,
    30,
    31,
    32,
    33,
    34,
]:
    trinton.change_notehead(
        voice=score["viola voice"], leaves=[leaf], notehead=r"#'cross"
    )

trinton.attach_multiple(
    score=score,
    voice="viola voice",
    leaves=[
        15,
        18,
        20,
        24,
        28,
        31,
    ],
    attachments=[
        abjad.Dynamic("fff"),
        abjad.Articulation("downbow"),
        abjad.Articulation(">"),
    ],
)

trinton.attach_multiple(
    score=score,
    voice="viola voice",
    leaves=[
        16,
        19,
        22,
        26,
        30,
        32,
    ],
    attachments=[
        abjad.Dynamic("mp"),
        abjad.Articulation("upbow"),
    ],
)

trinton.attach(
    voice=score["viola voice"],
    leaves=[
        23,
        27,
        34,
    ],
    attachment=abjad.Articulation("upbow"),
)

trinton.attach(
    voice=score["viola voice"],
    leaves=[
        15,
    ],
    attachment=abjad.LilyPondLiteral(r'\boxed-markup "OP" 1', format_slot="after"),
)

# cello attachments

for leaf in [
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
    22,
    23,
    24,
]:
    trinton.change_notehead(
        voice=score["cello voice"], leaves=[leaf], notehead=r"#'cross"
    )

for leaf in [
    28,
    29,
    30,
    31,
]:
    trinton.change_notehead(
        voice=score["cello voice"], leaves=[leaf], notehead=r"#'harmonic"
    )

trinton.attach(
    voice=score["cello voice"],
    leaves=[
        29,
        30,
    ],
    attachment=abjad.Tie(),
)

trinton.attach_multiple(
    score=score,
    voice="cello voice",
    leaves=[28],
    attachments=[
        abjad.StartHairpin("o<|"),
        abjad.LilyPondLiteral(r'\boxed-markup "Flaut." 1', format_slot="after"),
    ],
)

trinton.attach_multiple(
    score=score,
    voice="cello voice",
    leaves=[
        30,
    ],
    attachments=[abjad.StartHairpin("|>o"), abjad.Dynamic("f")],
)

trinton.attach(
    voice=score["cello voice"],
    leaves=[
        32,
    ],
    attachment=abjad.StopHairpin(),
)

trinton.attach(
    voice=score["cello voice"],
    leaves=[
        12,
    ],
    attachment=abjad.LilyPondLiteral(r'\boxed-markup "OP" 1', format_slot="after"),
)

trinton.attach_multiple(
    score=score,
    voice="cello voice",
    leaves=[
        12,
        14,
        16,
        19,
        22,
        24,
    ],
    attachments=[
        abjad.Dynamic("fff"),
        abjad.Articulation("downbow"),
        abjad.Articulation(">"),
    ],
)

trinton.attach_multiple(
    score=score,
    voice="cello voice",
    leaves=[
        13,
        15,
        17,
        20,
        23,
    ],
    attachments=[
        abjad.Dynamic("mp"),
        abjad.Articulation("upbow"),
    ],
)

trinton.attach(
    voice=score["cello voice"],
    leaves=[
        18,
        21,
    ],
    attachment=abjad.Articulation("upbow"),
)

# contrabass attachments

trinton.attach_multiple(
    score=score,
    voice="contrabass voice",
    leaves=[
        3,
    ],
    attachments=[
        abjad.Dynamic("ppp"),
        abjad.StartHairpin("<"),
        abjad.LilyPondLiteral(r'\boxed-markup "Ord." 1', format_slot="after"),
    ],
)

trinton.attach_multiple(
    score=score,
    voice="contrabass voice",
    leaves=[
        13,
    ],
    attachments=[abjad.Dynamic("f"), abjad.Articulation(">")],
)

trinton.write_text_span(
    voice=score["contrabass voice"],
    begin_text=r"\markup Norm",
    end_text=r"\markup { Slight OP }",
    start_leaf=[
        11,
    ],
    stop_leaf=[
        13,
    ],
    padding=5,
)

hexennacht.octave_up(
    [
        trinton.make_leaf_selection(
            score=score,
            voice="contrabass voice",
            leaves=[
                9,
                10,
            ],
        )
    ]
)

# extract parts

trinton.extract_parts(score)

# whiteout empty staves

for voice in hexennacht.all_voices:
    trinton.whiteout_empty_staves(score=score, voice=voice, cutaway=True)

# show file

trinton.render_file(
    score=score,
    segment_path="/Users/trintonprater/scores/hexennacht/hexennacht/segments/04",
    build_path="/Users/trintonprater/scores/hexennacht/hexennacht/build",
    segment_name="04",
    includes=[
        "/Users/trintonprater/scores/hexennacht/hexennacht/build/hexennacht-stylesheet.ily",
        "/Users/trintonprater/abjad/docs/source/_stylesheets/abjad.ily",
    ],
)
