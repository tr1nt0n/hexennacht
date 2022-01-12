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
        (3, 8),
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
    transpose=2,
)

trinton.append_rests(score=score, voice="piano 2 voice", rests=[abjad.Rest("r4.")])

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
    transpose=-5,
)

# harp

trinton.append_rests(score=score, voice="harp voice", rests=[abjad.Rest("r8")])

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
    transpose=None,
)

hexennacht.transpose_harp(
    score=score,
    voice="harp voice",
)

# flute and oboe

for voice in [
    "flute voice",
    "oboe voice",
]:
    trinton.append_rests(
        score=score,
        voice=voice,
        rests=[abjad.Rest("r4")],
    )

    hexennacht.woodwind_swells(score=score, voice=voice, durations=[(1, 8)])

    trinton.append_rests(
        score=score,
        voice=voice,
        rests=[
            abjad.Rest("r8"),
            abjad.Rest("r4."),
        ],
    )

    hexennacht.woodwind_swells(score=score, voice=voice, durations=[(1, 8)])

    trinton.append_rests(
        score=score,
        voice=voice,
        rests=[abjad.Rest("r8"), abjad.Rest("r2"), abjad.Rest("r4.")],
    )

    hexennacht.woodwind_swells(score=score, voice=voice, durations=[(7, 8)])

# clarinet

trinton.append_rests(
    score=score,
    voice="bass clarinet voice",
    rests=[abjad.Rest("r2"), abjad.Rest("r8")],
)

hexennacht.woodwind_swells(score=score, voice="bass clarinet voice", durations=[(1, 8)])

trinton.append_rests(
    score=score,
    voice="bass clarinet voice",
    rests=[abjad.Rest("r8"), abjad.Rest("r2."), abjad.Rest("r4.")],
)

hexennacht.dance(
    score=score,
    voice="bass clarinet voice",
    tuplet_index=6,
    durations=[(7, 8)],
    pitch_index=5,
    transpose=None,
)

# strings

for voice in ["violin 1 voice", "violin 2 voice", "viola voice", "cello voice"]:
    trinton.append_rests(
        score=score,
        voice=voice,
        rests=[abjad.Rest("r2"), abjad.Rest("r4."), abjad.Rest("r4")],
    )

    hexennacht.string_swells(
        score=score,
        voice=voice,
        tuplet_index=3,
        durations=[(1, 2)],
        pitch_index=3,
    )

# all voices

for voice in [
    "bassoon voice",
    "horn voice",
    "trumpet voice",
    "tenor trombone voice",
    "tuba voice",
    "marimba voice",
    "percussion 1 voice",
    "percussion 2 voice",
    "contrabass voice",
]:
    trinton.append_rests(
        score=score,
        voice=voice,
        rests=[abjad.Rest("r2"), abjad.Rest("r4."), abjad.Rest("r2.")],
    )

for voice in hexennacht.all_voices:
    if voice == "bassoon voice":
        pass
    elif voice == "percussion 2 voice":
        pass
    elif voice == "cello voice":
        pass
    elif voice == "flute voice":
        pass
    elif voice == "oboe voice":
        pass
    elif voice == "bass clarinet voice":
        pass
    else:
        trinton.append_rests(score=score, voice=voice, rests=[abjad.Rest("r4.")])

trinton.write_marginmarkups(
    score=score,
    voices=hexennacht.all_staves,
    markups=hexennacht.all_marginmarkups,
)

hexennacht.standard_cleffing(
    score=score,
)

# strings

hexennacht.string_swells(
    score=score, voice="cello voice", tuplet_index=1, durations=[(3, 8)], pitch_index=12
)

for voice in ["violin 1 voice", "violin 2 voice", "viola voice", "cello voice"]:
    hexennacht.string_swells(
        score=score, voice=voice, tuplet_index=0, durations=[(7, 8)], pitch_index=0
    )

# bassoon

hexennacht.marimba_shakes(
    score=score,
    voice="bassoon voice",
    note_value=32,
    durations=[(3, 8)],
    pitched=False,
    pitch_index=0,
    high=False,
)

hexennacht.woodwind_swells(
    score=score,
    voice="bassoon voice",
    durations=[
        (7, 8),
    ],
)

# horn

hexennacht.brass_shrieks(
    score=score,
    voice="horn voice",
    talea_index=0,
    talea=32,
    durations=[(7, 8)],
    pitched=True,
    pitch_index=9,
)

# trombone, tuba, bass

for voice, index in zip(
    ["tenor trombone voice", "tuba voice", "contrabass voice"], [0, 3, 8]
):
    hexennacht.drone(
        score=score,
        voice=voice,
        talea=16,
        pitch_index=index,
        durations=[
            (7, 8),
        ],
    )

# percussion 1

trinton.handwrite(
    score=score,
    voice="percussion 1 voice",
    durations=[
        (5, 8),
        (1, 4),
    ],
    pitch_list=trinton.rotated_sequence(
        pitch_list=hexennacht.ratchet_pitches, start_index=1
    ),
)

for voice in [
    "piano 1 voice",
    "piano 2 voice",
    "harp voice",
    "marimba voice",
    "trumpet voice",
]:
    trinton.append_rests(
        score=score,
        voice=voice,
        rests=[
            abjad.Rest("r2.."),
        ],
    )

# percussion 2

trinton.handwrite(
    score=score,
    voice="percussion 2 voice",
    durations=[(3, 16), (3, 16)],
    pitch_list=trinton.rotated_sequence(hexennacht.ratchet_pitches, 8),
)

hexennacht.drumming(
    score=score,
    voice="percussion 2 voice",
    durations=[(1, 2), (3, 8)],
    pitched=False,
)

# all voices

for voice in hexennacht.all_voices:
    trinton.append_rests(
        score=score,
        voice=voice,
        rests=[
            abjad.Rest("r2.."),
        ],
    )

trinton.rewrite_meter(score)

trinton.beam_score(score)

# trinton.annotate_leaves(score)

# tempi

trinton.attach(
    voice=score["Global Context"],
    leaves=[
        5,
    ],
    attachment=hexennacht.tempo_3,
)

# piano attachments

trinton.write_slur(
    voice=score["piano 1 voice"],
    start_slur=[
        0,
        3,
        10,
    ],
    stop_slur=[
        2,
        9,
        12,
    ],
)

trinton.write_slur(
    voice=score["piano 2 voice"],
    start_slur=[
        2,
        8,
        12,
    ],
    stop_slur=[
        7,
        11,
        16,
    ],
)

trinton.attach(
    voice=score["piano 1 voice"],
    leaves=[
        0,
        3,
        10,
    ],
    attachment=abjad.Articulation("tenuto"),
)

trinton.attach(
    voice=score["piano 2 voice"],
    leaves=[
        2,
        8,
        12,
    ],
    attachment=abjad.Articulation("tenuto"),
)

trinton.attach(voice=score["piano 1 voice"], leaves=[0], attachment=abjad.Dynamic("mf"))

trinton.attach_multiple(
    score=score,
    voice="piano 1 voice",
    leaves=[
        3,
    ],
    attachments=[abjad.Dynamic("p"), abjad.StartHairpin("<")],
)

trinton.attach(
    voice=score["piano 1 voice"],
    leaves=[
        6,
    ],
    attachment=abjad.Dynamic("mf"),
)

trinton.attach(
    voice=score["piano 1 voice"],
    leaves=[
        10,
    ],
    attachment=abjad.Dynamic("f"),
)

# harp attachments

trinton.write_slur(
    voice=score["harp voice"],
    start_slur=[
        1,
        7,
        11,
    ],
    stop_slur=[
        6,
        10,
        15,
    ],
)

trinton.attach(
    voice=score["harp voice"],
    leaves=[
        1,
        7,
        11,
    ],
    attachment=abjad.Articulation("tenuto"),
)

trinton.attach_multiple(
    score=score,
    voice="harp voice",
    leaves=[
        1,
    ],
    attachments=[abjad.Dynamic("mf"), abjad.StartHairpin("<")],
)

trinton.attach_multiple(
    score=score,
    voice="harp voice",
    leaves=[
        7,
    ],
    attachments=[abjad.Dynamic("f"), abjad.StartHairpin(">")],
)

for leaf, attachment in zip(
    [
        10,
        11,
    ],
    [abjad.Dynamic("p"), abjad.Dynamic("f")],
):
    trinton.attach(voice=score["harp voice"], leaves=[leaf], attachment=attachment)

# pitch flute and oboe

for leaf, multiphonic in zip(
    [
        1,
        4,
        8,
    ],
    [
        2,
        3,
        5,
    ],
):
    hexennacht.write_multiphonics(
        score=score,
        voice="flute voice",
        leaves=[leaf],
        dict=hexennacht._flute_multiphonic_to_pitches,
        multiphonic=multiphonic,
        markup=True,
    )

for leaf, multiphonic in zip(
    [
        1,
        4,
        8,
    ],
    [
        2,
        3,
        5,
    ],
):
    hexennacht.oboe_harmonies(
        score=score, voice="oboe voice", leaves=[leaf], flute_multiphonic=multiphonic
    )

# # flute attachments

trinton.write_markup(
    voice=score["flute voice"],
    leaf=[
        1,
    ],
    string=r"\markup { \italic 45˚ }",
    down=False,
)

for voice in [
    "flute voice",
    "oboe voice",
]:
    trinton.attach_multiple(
        score=score,
        voice=voice,
        leaves=[1],
        attachments=[abjad.Dynamic("p"), abjad.Articulation("tenuto")],
    )

    trinton.attach(
        voice=score[voice], leaves=[4], attachment=abjad.Articulation("tenuto")
    )

    trinton.attach_multiple(
        score=score,
        voice=voice,
        leaves=[
            8,
        ],
        attachments=[
            abjad.Dynamic("ff"),
            abjad.Articulation("marcato"),
        ],
    )

abjad.attach(abjad.StemTremolo(32), abjad.select(score["flute voice"]).leaf(8))

## oboe attachments

trinton.attach(
    voice=score["oboe voice"],
    leaves=[1],
    attachment=abjad.LilyPondLiteral(r'\boxed-markup "Norm." 1', format_slot="after"),
)

abjad.attach(abjad.StemTremolo(32), abjad.select(score["oboe voice"]).leaf(8))

# clarinet attachments

hexennacht.write_multiphonics(
    score=score,
    voice="bass clarinet voice",
    leaves=[
        2,
    ],
    dict=hexennacht._clarinet_multiphonics_to_pitches,
    multiphonic=5,
    markup=True,
)

trinton.attach(
    voice=score["bass clarinet voice"],
    leaves=[
        2,
    ],
    attachment=abjad.Dynamic("p"),
)

trinton.write_slur(
    voice=score["bass clarinet voice"],
    start_slur=[
        6,
        9,
    ],
    stop_slur=[
        8,
        10,
    ],
)

trinton.attach_multiple(
    score=score,
    voice="bass clarinet voice",
    leaves=[
        6,
    ],
    attachments=[
        abjad.Dynamic("ff"),
        abjad.LilyPondLiteral(r'\boxed-markup "Overblow" 1', format_slot="after"),
    ],
)

for leaf in [6, 7, 8, 9, 10, 11]:
    sel = abjad.select(score["bass clarinet voice"]).leaf(leaf)
    abjad.mutate.transpose(sel, 2)

# bassoon attachments

handler = evans.PitchHandler(
    pitch_list=trinton.transpose(
        trinton.rotated_sequence(hexennacht.dance_pitches, 10), -25
    ),
    forget=False,
)

for number in [
    3,
    4,
    5,
    6,
    7,
    8,
    9,
    10,
    11,
    12,
    13,
    14,
]:
    sel = abjad.select(score["bassoon voice"]).leaf(number)
    handler(sel)

for number in [
    3,
    4,
    5,
    6,
    7,
    8,
    9,
    10,
    11,
    12,
    13,
    14,
]:
    sel = abjad.select(score["bassoon voice"]).leaf(number)
    trinton.unmeasured_stem_tremolo([sel])

trinton.write_slur(
    voice=score["bassoon voice"],
    start_slur=[
        3,
        12,
    ],
    stop_slur=[
        11,
        14,
    ],
)

trinton.attach(
    voice=score["bassoon voice"],
    leaves=[
        3,
        12,
    ],
    attachment=abjad.Articulation(">"),
)

trinton.attach_multiple(
    score=score,
    voice="bassoon voice",
    leaves=[
        3,
    ],
    attachments=[abjad.Dynamic("fp"), abjad.StartHairpin("<|")],
)

trinton.attach_multiple(
    score=score,
    voice="bassoon voice",
    leaves=[
        9,
    ],
    attachments=[abjad.Dynamic("mf"), abjad.StartHairpin("|>o")],
)

trinton.attach(
    voice=score["bassoon voice"],
    leaves=[
        14,
    ],
    attachment=abjad.StopHairpin(),
)

hexennacht.write_multiphonics(
    score=score,
    voice="bassoon voice",
    dict=hexennacht._bassoon_multiphonics_to_pitches,
    leaves=[
        15,
    ],
    multiphonic=5,
    markup=True,
)

trinton.attach_multiple(
    score=score,
    voice="bassoon voice",
    leaves=[
        15,
    ],
    attachments=[abjad.Dynamic("ff"), abjad.Articulation("marcato")],
)

# horn attachments

trinton.unmeasured_stem_tremolo(abjad.select(score["horn voice"]).leaves(pitched=True))

trinton.attach_multiple(
    score=score,
    voice="horn voice",
    leaves=[
        4,
    ],
    attachments=[
        abjad.Dynamic("mf"),
        abjad.LilyPondLiteral(
            r'\boxed-markup "Fluttering valves, fluttertongue" 1', format_slot="after"
        ),
    ],
)

# bass and trombone attachments

for voice in ["tenor trombone voice", "contrabass voice"]:
    trinton.attach_multiple(
        score=score,
        voice=voice,
        leaves=[
            4,
        ],
        attachments=[abjad.Dynamic("p"), abjad.StartHairpin("<")],
    )

    trinton.attach_multiple(
        score=score,
        voice=voice,
        leaves=[
            7,
        ],
        attachments=[abjad.Dynamic("f"), abjad.StartHairpin(">")],
    )

    trinton.attach(
        voice=score[voice],
        leaves=[
            9,
        ],
        attachment=abjad.Dynamic("p"),
    )

    if voice == "tenor trombone voice":
        trinton.attach(
            voice=score[voice],
            leaves=[4],
            attachment=abjad.LilyPondLiteral(
                r'\boxed-markup "Ord." 1', format_slot="after"
            ),
        )

    else:
        trinton.attach(
            voice=score[voice],
            leaves=[4],
            attachment=abjad.LilyPondLiteral(
                r'\boxed-markup "Norm., ST" 1', format_slot="after"
            ),
        )

hexennacht.octave_up(
    [
        abjad.select(score["contrabass voice"]).leaf(4),
        abjad.select(score["contrabass voice"]).leaf(5),
    ]
)

# tuba attachments

trinton.attach_multiple(
    score=score,
    voice="tuba voice",
    leaves=[
        4,
    ],
    attachments=[abjad.Dynamic("p"), abjad.StartHairpin("<")],
)

trinton.attach_multiple(
    score=score,
    voice="tuba voice",
    leaves=[
        6,
    ],
    attachments=[abjad.Dynamic("f"), abjad.StartHairpin(">")],
)

trinton.attach(
    voice=score["tuba voice"],
    leaves=[
        8,
    ],
    attachment=abjad.Dynamic("p"),
)

# percussion 1 attachments

for voice in ["percussion 1 voice", "percussion 2 voice"]:
    trinton.transparent_accidentals(
        score=score,
        voice=voice,
        leaves=all,
    )

trinton.unmeasured_stem_tremolo(
    abjad.select(score["percussion 1 voice"]).leaves(pitched=True)
)

trinton.attach_multiple(
    score=score,
    voice="percussion 1 voice",
    leaves=[
        4,
    ],
    attachments=[abjad.Dynamic("ff"), abjad.Articulation(">"), abjad.StartHairpin(">")],
)

trinton.attach_multiple(
    score=score,
    voice="percussion 1 voice",
    leaves=[
        6,
    ],
    attachments=[
        abjad.Dynamic("p"),
        abjad.Articulation(">"),
    ],
)

# percussion 2 attachments

trinton.attach(
    voice=score["percussion 2 voice"],
    leaves=[
        3,
        4,
    ],
    attachment=abjad.Dynamic("fp"),
)

hexennacht.one_line(
    score=score,
    voice="percussion 2 voice",
    leaves=[
        5,
    ],
)

hexennacht.bass_drum(
    score=score,
    voice="percussion 2 voice",
    leaves=[
        5,
    ],
)

trinton.attach_multiple(
    score=score,
    voice="percussion 2 voice",
    leaves=[
        5,
        7,
        9,
        12,
    ],
    attachments=[abjad.Dynamic("ff"), abjad.Articulation(">")],
)

trinton.attach(
    voice=score["percussion 2 voice"], leaves=[6, 8, 10], attachment=abjad.Dynamic("mp")
)

# strings attachments

for voice in [
    "violin 1 voice",
    "violin 2 voice",
    "viola voice",
]:
    trinton.attach(
        voice=score[voice],
        leaves=[
            3,
            4,
            7,
            8,
        ],
        attachment=abjad.Tie(),
    )

    trinton.attach(
        voice=score[voice],
        leaves=[
            3,
            7,
        ],
        attachment=abjad.StartHairpin("o<"),
    )

    trinton.attach_multiple(
        score=score,
        voice=voice,
        leaves=[
            4,
        ],
        attachments=[abjad.Dynamic("mf"), abjad.StartHairpin(">o")],
    )

    trinton.attach(
        voice=score[voice],
        leaves=[
            5,
            9,
        ],
        attachment=abjad.StopHairpin(),
    )

    trinton.attach_multiple(
        score=score,
        voice=voice,
        leaves=[
            8,
        ],
        attachments=[abjad.Dynamic("fff"), abjad.StartHairpin(">o")],
    )

    sel = [
        abjad.select(score[voice]).leaf(7),
        abjad.select(score[voice]).leaf(8),
        abjad.select(score[voice]).leaf(9),
    ]

    trinton.unmeasured_stem_tremolo(sel)

    trinton.attach(
        voice=score[voice],
        leaves=[
            7,
        ],
        attachment=abjad.LilyPondLiteral(
            r'\boxed-markup "Slight OP" 1', format_slot="after"
        ),
    )

# cello attachments

for leaf in [6, 7, 8, 9, 10, 11]:
    sel = abjad.select(score["cello voice"]).leaf(leaf)
    trinton.unmeasured_stem_tremolo([sel])

trinton.change_notehead(
    voice=score["cello voice"],
    leaves=[
        6,
        7,
        8,
    ],
    notehead=r"#'harmonic",
)

trinton.attach(
    voice=score["cello voice"],
    leaves=[
        3,
    ],
    attachment=abjad.LilyPondLiteral(r'\boxed-markup "Norm." 1', format_slot="after"),
)

trinton.attach(
    voice=score["cello voice"],
    leaves=[
        6,
    ],
    attachment=abjad.LilyPondLiteral(r'\boxed-markup "Flaut." 1', format_slot="after"),
)

trinton.attach(
    voice=score["cello voice"],
    leaves=[
        9,
    ],
    attachment=abjad.LilyPondLiteral(
        r'\boxed-markup "Slight OP" 1', format_slot="after"
    ),
)

trinton.attach(
    voice=score["cello voice"],
    leaves=[
        3,
        4,
        6,
        7,
        9,
        10,
    ],
    attachment=abjad.Tie(),
)

trinton.attach(
    voice=score["cello voice"],
    leaves=[
        3,
        9,
    ],
    attachment=abjad.StartHairpin("o<"),
)

trinton.attach(
    voice=score["cello voice"],
    leaves=[
        6,
    ],
    attachment=abjad.StartHairpin("o<|"),
)

trinton.attach_multiple(
    score=score,
    voice="cello voice",
    leaves=[
        4,
    ],
    attachments=[abjad.Dynamic("mf"), abjad.StartHairpin(">o")],
)

trinton.attach_multiple(
    score=score,
    voice="cello voice",
    leaves=[
        7,
    ],
    attachments=[abjad.Dynamic("mf"), abjad.StartHairpin("|>o")],
)

trinton.attach_multiple(
    score=score,
    voice="cello voice",
    leaves=[
        10,
    ],
    attachments=[abjad.Dynamic("fff"), abjad.StartHairpin(">o")],
)

trinton.attach(
    voice=score["cello voice"],
    leaves=[
        5,
        8,
        11,
    ],
    attachment=abjad.StopHairpin(),
)

# extract parts

trinton.extract_parts(score)

# whiteout empty staves

for voice in hexennacht.all_voices:
    trinton.whiteout_empty_staves(score=score, voice=voice, cutaway=True)

# show file

trinton.render_file(
    score=score,
    segment_path="/Users/trintonprater/scores/hexennacht/hexennacht/segments/03",
    build_path="/Users/trintonprater/scores/hexennacht/hexennacht/build",
    segment_name="03",
    includes=[
        "/Users/trintonprater/scores/hexennacht/hexennacht/build/hexennacht-stylesheet.ily",
        "/Users/trintonprater/abjad/docs/source/_stylesheets/abjad.ily",
    ],
)
