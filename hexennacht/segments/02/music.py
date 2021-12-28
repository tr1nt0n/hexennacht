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
        (5, 8),
        (2, 4),
    ],
    score["Global Context"],
)

# piano

hexennacht.incantation(
    score=score,
    voice="piano 1 voice",
    bunch_1_tuplet=0,
    bunch_1_durations=[(1, 8)],
    talea=16,
    smooth_durations=[(2, 4)],
    bunch_2_tuplet=1,
    bunch_2_durations=[(1, 4)],
    pitch_index=0,
    transpose=None,
)

trinton.append_rests(score=score, voice="piano 2 voice", rests=[abjad.Rest("r8")])

hexennacht.incantation(
    score=score,
    voice="piano 2 voice",
    bunch_1_tuplet=2,
    bunch_1_durations=[(1, 8)],
    talea=16,
    smooth_durations=[(1, 4)],
    bunch_2_tuplet=3,
    bunch_2_durations=[(3, 8)],
    pitch_index=7,
    transpose=-4,
)

# harp

trinton.append_rests(score=score, voice="harp voice", rests=[abjad.Rest("r4.")])

hexennacht.incantation(
    score=score,
    voice="harp voice",
    bunch_1_tuplet=6,
    bunch_1_durations=[(1, 8)],
    talea=16,
    smooth_durations=[(1, 4)],
    bunch_2_tuplet=7,
    bunch_2_durations=[(1, 8)],
    pitch_index=15,
    transpose=-1,
)

hexennacht.transpose_harp(
    score=score,
    voice="harp voice",
)

for voice in ["piano 1 voice", "piano 2 voice", "harp voice"]:
    trinton.append_rests(
        score=score,
        voice=voice,
        rests=[
            abjad.Rest("r2"),
        ],
    )

# all voices

for voice in [
    "flute voice",
    "oboe voice",
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
        rests=[
            abjad.Rest("r2"),
            abjad.Rest("r4."),
        ],
    )

for voice in [
    "bass clarinet voice",
    "bassoon voice",
    "violin 1 voice",
    "violin 2 voice",
    "viola voice",
    "cello voice",
]:
    trinton.append_rests(
        score=score, voice=voice, rests=[abjad.Rest("r2"), abjad.Rest("r8.")]
    )

trinton.write_marginmarkups(
    score=score,
    voices=hexennacht.all_staves,
    markups=hexennacht.all_marginmarkups,
)

hexennacht.standard_cleffing(
    score=score,
)

# strings

for voice in ["violin 1 voice", "violin 2 voice", "viola voice", "cello voice"]:
    hexennacht.string_swells(
        score=score, voice=voice, tuplet_index=0, durations=[(3, 16)], pitch_index=0
    )

    hexennacht.drumming(
        score=score,
        voice=voice,
        durations=[
            (1, 4),
            (1, 4),
        ],
        pitched=True,
    )

hexennacht.string_swells(
    score=score, voice="cello voice", tuplet_index=0, durations=[(1, 8)], pitch_index=15
)

# flute

trinton.handwrite(
    score=score,
    voice="flute voice",
    durations=[
        (3, 16),
        (1, 16),
    ],
    pitch_list=[
        0,
    ],
)

trinton.append_rests(score=score, voice="flute voice", rests=[abjad.Rest("r16")])

trinton.handwrite(
    score=score,
    voice="flute voice",
    durations=[
        (1, 8),
        (1, 16),
    ],
    pitch_list=[2],
)

# oboe

trinton.handwrite(
    score=score,
    voice="oboe voice",
    durations=[
        (1, 4),
        (1, 4),
    ],
    pitch_list=None,
)

# clarinet and bassoon

for voice in ["bass clarinet voice", "bassoon voice"]:
    hexennacht.woodwind_swells(
        score=score,
        voice=voice,
        durations=[
            (3, 32),
            (1, 16),
            (1, 32),
            (1, 4),
            (1, 4),
        ],
    )

hexennacht.marimba_shakes(
    score=score,
    voice="bassoon voice",
    note_value=32,
    durations=[(1, 8)],
    pitched=False,
    pitch_index=None,
    high=False,
)

# brass

for voice in ["horn voice", "trumpet voice", "tenor trombone voice", "tuba voice"]:
    hexennacht.brass_shrieks(
        score=score,
        voice=voice,
        talea_index=0,
        talea=32,
        durations=[
            (2, 4),
        ],
        pitched=True,
        pitch_index=0,
    )

# percussion 1

hexennacht.marimba_shakes(
    score=score,
    voice="marimba voice",
    note_value=64,
    durations=[
        (2, 4),
    ],
    pitched=True,
    pitch_index=0,
    high=False,
)

trinton.append_rests(score=score, voice="percussion 1 voice", rests=[abjad.Rest("r2")])

# percussion 2

hexennacht.drumming(
    score=score,
    voice="percussion 2 voice",
    durations=[
        (1, 2),
    ],
    pitched=False,
)

trinton.handwrite(
    score=score,
    voice="percussion 2 voice",
    durations=[(3, 32), (1, 32)],
    pitch_list=trinton.rotated_sequence(hexennacht.ratchet_pitches, 0),
)

# contrabass

hexennacht.drone(
    score=score,
    voice="contrabass voice",
    talea=32,
    pitch_index=5,
    durations=[
        (1, 2),
    ],
)

# meter rewrite and beam

for voice in hexennacht.all_voices:
    if voice == "bassoon voice":
        pass
    elif voice == "percussion 2 voice":
        pass
    elif voice == "cello voice":
        pass
    else:
        trinton.append_rests(score=score, voice=voice, rests=[abjad.Rest("r8")])

for voice in hexennacht.all_voices:
    trinton.append_rests(score=score, voice=voice, rests=[abjad.Rest("r2")])

trinton.rewrite_meter(score)

trinton.beam_score(score)

# trinton.annotate_leaves(score)

# tempi

trinton.attach(voice=score["Global Context"], leaves=[0], attachment=hexennacht.tempo_1)

trinton.attach(voice=score["Global Context"], leaves=[3], attachment=hexennacht.tempo_2)

# multiphonics

for voice in ["bass clarinet voice", "bassoon voice"]:
    trinton.attach(
        voice=score[voice],
        leaves=[
            3,
            4,
        ],
        attachment=abjad.Tie(),
    )

for leaf, multiphonic in zip(
    [2, 6, 7],
    [1, 2, 3],
):
    hexennacht.clarinet_multiphonics(
        score=score,
        voice="bass clarinet voice",
        leaves=[leaf],
        multiphonic=multiphonic,
        markup=True,
    )

for leaf, multiphonic in zip(
    [2, 6, 7],
    [1, 2, 3],
):
    hexennacht.bassoon_multiphonics(
        score=score,
        voice="bassoon voice",
        leaves=[leaf],
        multiphonic=multiphonic,
        markup=True,
    )

for number in [2, 3]:
    hexennacht.oboe_harmonies(
        score=score,
        voice="oboe voice",
        leaves=[number],
        flute_multiphonic=number,
    )

# violin pitching

handler = evans.PitchHandler(
    pitch_list=[-5],
    forget=False,
)
handler(abjad.select(score["violin 1 voice"]).leaves(pitched=True))

# flute attachments

trinton.write_slur(
    voice=score["flute voice"],
    start_slur=[
        2,
        5,
    ],
    stop_slur=[
        3,
        7,
    ],
)

trinton.attach(
    voice=score["flute voice"], leaves=[2, 5], attachment=abjad.StartHairpin("o<|")
)

trinton.attach_multiple(
    score=score,
    voice="flute voice",
    leaves=[
        3,
        7,
    ],
    attachments=[abjad.Articulation("marcato"), abjad.Dynamic("ffff")],
)

trinton.write_text_span(
    voice=score["flute voice"],
    begin_text=r"90˚",
    end_text=r"0˚",
    start_leaf=[2, 5],
    stop_leaf=[3, 7],
    padding=5,
)

# oboe attachments

trinton.attach_multiple(
    score=score,
    voice="oboe voice",
    leaves=[
        2,
    ],
    attachments=[
        abjad.Dynamic("fff"),
        abjad.LilyPondLiteral(r'\boxed-markup "Overblow" 1', format_slot="after"),
    ],
)

trinton.attach(
    voice=score["oboe voice"],
    leaves=[
        2,
        3,
    ],
    attachment=abjad.Articulation("marcato"),
)

# clarinet and bassoon attachments

for voice in ["bass clarinet voice", "bassoon voice"]:
    trinton.attach(
        voice=score[voice],
        leaves=[
            2,
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
        ],
        attachment=abjad.StopHairpin(),
    )

    trinton.attach(
        voice=score[voice],
        leaves=[
            6,
        ],
        attachment=abjad.Dynamic("fff"),
    )

    trinton.attach(
        voice=score[voice],
        leaves=[
            6,
            7,
        ],
        attachment=abjad.Articulation("marcato"),
    )

trinton.attach(
    voice=score["bassoon voice"],
    leaves=[
        2,
    ],
    attachment=abjad.LilyPondLiteral(r'\boxed-markup "Norm." 1', format_slot="after"),
)

handler = evans.PitchHandler(
    pitch_list=trinton.transpose(
        trinton.rotated_sequence(hexennacht.dance_pitches, 6), -13
    ),
    forget=False,
)

for number in [
    9,
    10,
    11,
    12,
]:
    sel = abjad.select(score["bassoon voice"]).leaf(number)
    handler(sel)

trinton.attach(
    voice=score["bassoon voice"],
    leaves=[
        9,
        10,
        11,
        12,
    ],
    attachment=abjad.StemTremolo(256),
)

trinton.write_slur(
    voice=score["bassoon voice"],
    start_slur=[9],
    stop_slur=[
        12,
    ],
)

trinton.attach(
    voice=score["bassoon voice"], leaves=[9], attachment=abjad.StartHairpin("o<|")
)

trinton.attach_multiple(
    score=score,
    voice="bassoon voice",
    leaves=[11],
    attachments=[abjad.Dynamic("mp"), abjad.StartHairpin("|>o")],
)

trinton.attach(
    voice=score["bassoon voice"], leaves=[12], attachment=abjad.StopHairpin()
)

# brass attachments

for voice in ["horn voice", "tenor trombone voice"]:
    trinton.unmeasured_stem_tremolo(abjad.select(score[voice]).leaves(pitched=True))

for voice in [
    "horn voice",
    "trumpet voice",
    "tuba voice",
]:
    trinton.attach_multiple(
        score=score,
        voice=voice,
        leaves=[2],
        attachments=[abjad.Dynamic("p"), abjad.StartHairpin("<")],
    )

    trinton.attach_multiple(
        score=score,
        voice=voice,
        leaves=[
            4,
        ],
        attachments=[
            abjad.Dynamic("mp"),
            abjad.StartHairpin(">o"),
        ],
    )

    trinton.attach(
        voice=score[voice],
        leaves=[
            5,
        ],
        attachment=abjad.StopHairpin(),
    )

# horn attachments

trinton.attach(
    voice=score["horn voice"],
    leaves=[
        2,
    ],
    attachment=abjad.LilyPondLiteral(
        r'\boxed-markup "Fluttering valves, fluttertongue" 1', format_slot="after"
    ),
)

# trumpet attachments

trinton.attach(
    voice=score["trumpet voice"],
    leaves=[
        3,
    ],
    attachment=abjad.Glissando(),
)

trinton.write_trill_span(
    score=score,
    voice="trumpet voice",
    pitch=16.5,
    start_leaf=[
        2,
    ],
    stop_leaf=[
        4,
    ],
)

trinton.write_trill_span(
    score=score,
    voice="trumpet voice",
    pitch=22,
    start_leaf=[
        4,
    ],
    stop_leaf=[
        5,
    ],
)

# trombone attachments

trinton.attach_multiple(
    score=score,
    voice="tenor trombone voice",
    leaves=[
        2,
    ],
    attachments=[
        abjad.Clef("treble"),
        abjad.Dynamic("ff"),
        abjad.StartHairpin(">o"),
        abjad.LilyPondLiteral(
            r'\boxed-markup "Fluttertongue, switch rapidly between 1st and 7th" 1',
            format_slot="after",
        ),
    ],
)

trinton.attach(
    voice=score["tenor trombone voice"],
    leaves=[
        4,
    ],
    attachment=abjad.Clef("bass"),
)

trinton.attach(
    voice=score["tenor trombone voice"],
    leaves=[
        5,
    ],
    attachment=abjad.StopHairpin(),
)

# piano attachments

trinton.write_slur(
    voice=score["piano 1 voice"],
    start_slur=[
        0,
        3,
        7,
    ],
    stop_slur=[
        2,
        6,
        9,
    ],
)

trinton.write_slur(
    voice=score["piano 2 voice"],
    start_slur=[
        1,
        5,
    ],
    stop_slur=[
        3,
        9,
    ],
)

trinton.attach(
    voice=score["piano 1 voice"],
    leaves=[
        0,
        3,
        7,
    ],
    attachment=abjad.Articulation("tenuto"),
)

trinton.attach(
    voice=score["piano 2 voice"],
    leaves=[1, 4, 5],
    attachment=abjad.Articulation("tenuto"),
)

trinton.attach_multiple(
    score=score,
    voice="piano 1 voice",
    leaves=[0],
    attachments=[
        abjad.Dynamic("p"),
        abjad.StartHairpin("<"),
    ],
)

trinton.attach_multiple(
    score=score,
    voice="piano 1 voice",
    leaves=[
        3,
    ],
    attachments=[abjad.Dynamic("mf"), abjad.StartHairpin(">")],
)

trinton.attach(voice=score["piano 1 voice"], leaves=[7], attachment=abjad.Dynamic("mp"))

trinton.write_markup(
    voice=score["piano 1 voice"], leaf=[0], string=r"\italic Dolcissimo", down=True
)

# harp attachments

trinton.write_markup(
    voice=score["harp voice"], leaf=[2], string=r"\italic Dolcissimo", down=True
)

trinton.write_slur(
    voice=score["harp voice"],
    start_slur=[
        2,
        7,
    ],
    stop_slur=[
        5,
        9,
    ],
)

trinton.attach(
    voice=score["harp voice"],
    leaves=[
        2,
        6,
        7,
    ],
    attachment=abjad.Articulation("tenuto"),
)

trinton.attach_multiple(
    score=score,
    voice="harp voice",
    leaves=[
        2,
    ],
    attachments=[
        abjad.Dynamic("pp"),
        abjad.StartHairpin("<"),
    ],
)

trinton.attach(
    voice=score["harp voice"],
    leaves=[
        7,
    ],
    attachment=abjad.Dynamic("mf"),
)

# marimba attachments

trinton.write_slur(
    voice=score["marimba voice"],
    start_slur=[
        2,
    ],
    stop_slur=[
        33,
    ],
)

trinton.attach_multiple(
    score=score,
    voice="marimba voice",
    leaves=[
        2,
    ],
    attachments=[
        abjad.Dynamic("fff"),
        abjad.LilyPondLiteral(
            r'\boxed-markup "w/ drumsticks, pitches approx." 1', format_slot="after"
        ),
    ],
)

# percussion 2 attachments

hexennacht.one_line(
    score=score,
    voice="percussion 2 voice",
    leaves=[
        2,
    ],
)

hexennacht.three_lines(
    score=score,
    voice="percussion 2 voice",
    leaves=[
        6,
    ],
)

trinton.transparent_accidentals(
    score=score,
    voice="percussion 2 voice",
    leaves=all,
)

trinton.attach_multiple(
    score=score,
    voice="percussion 2 voice",
    leaves=[
        6,
    ],
    attachments=[
        abjad.Dynamic("p"),
        abjad.LilyPondLiteral(
            r'\boxed-markup "Gongs, scrape w/ triangle beater" 1', format_slot="after"
        ),
    ],
)

trinton.attach_multiple(
    score=score,
    voice="percussion 2 voice",
    leaves=[
        2,
        4,
    ],
    attachments=[
        abjad.Dynamic("ff"),
        abjad.Articulation(">"),
    ],
)

trinton.attach(
    voice=score["percussion 2 voice"],
    leaves=[
        3,
        5,
    ],
    attachment=abjad.Dynamic("mp"),
)

hexennacht.bass_drum(
    score=score,
    voice="percussion 2 voice",
    leaves=[
        2,
    ],
)

# strings attachments

for voice in ["violin 1 voice", "violin 2 voice", "viola voice", "cello voice"]:
    trinton.attach(
        voice=score[voice],
        leaves=[
            2,
            3,
        ],
        attachment=abjad.Tie(),
    )

    trinton.attach(
        voice=score[voice],
        leaves=[
            2,
        ],
        attachment=abjad.StartHairpin("o<"),
    )

    trinton.attach_multiple(
        score=score,
        voice=voice,
        leaves=[
            3,
        ],
        attachments=[abjad.Dynamic("mf"), abjad.StartHairpin(">o")],
    )

    trinton.attach(
        voice=score[voice],
        leaves=[
            4,
        ],
        attachment=abjad.StopHairpin(),
    )

    trinton.attach_multiple(
        score=score,
        voice=voice,
        leaves=[
            5,
        ],
        attachments=[
            abjad.Dynamic("ff"),
            abjad.Articulation("downbow"),
            abjad.LilyPondLiteral(r'\boxed-markup "OP" 1', format_slot="after"),
            abjad.Articulation(">"),
        ],
    )

trinton.change_notehead(
    voice=score["cello voice"],
    leaves=[
        9,
        10,
        11,
    ],
    notehead=r"#'harmonic",
)

trinton.attach(voice=score["cello voice"], leaves=[9, 10], attachment=abjad.Tie())

trinton.attach_multiple(
    score=score,
    voice="cello voice",
    leaves=[9],
    attachments=[
        abjad.StartHairpin("o<|"),
        abjad.LilyPondLiteral(r'\boxed-markup "Flaut." 1', format_slot="after"),
    ],
)

trinton.attach_multiple(
    score=score,
    voice="cello voice",
    leaves=[
        10,
    ],
    attachments=[abjad.Dynamic("mf"), abjad.StartHairpin("|>o")],
)

trinton.attach(voice=score["cello voice"], leaves=[11], attachment=abjad.StopHairpin())

# violin 1 and cello attachments

for voice in [
    "violin 1 voice",
    "cello voice",
]:
    trinton.attach_multiple(
        score=score,
        voice=voice,
        leaves=[
            7,
        ],
        attachments=[
            abjad.Articulation(">"),
            abjad.Articulation("downbow"),
            abjad.Dynamic("ff"),
        ],
    )

    trinton.attach_multiple(
        score=score,
        voice=voice,
        leaves=[6, 8],
        attachments=[
            abjad.Articulation("upbow"),
            abjad.Dynamic("mp"),
        ],
    )

    trinton.change_notehead(
        voice=score[voice],
        leaves=[
            5,
            6,
            7,
            8,
        ],
        notehead=r"#'cross",
    )

# violin 2 attachments

trinton.attach(voice=score["violin 2 voice"], leaves=[8], attachment=abjad.Tie())

trinton.attach_multiple(
    score=score,
    voice="violin 2 voice",
    leaves=[
        7,
        10,
    ],
    attachments=[
        abjad.Articulation("downbow"),
        abjad.Articulation(">"),
        abjad.Dynamic("ff"),
    ],
)

trinton.attach_multiple(
    score=score,
    voice="violin 2 voice",
    leaves=[
        6,
        8,
        11,
    ],
    attachments=[
        abjad.Articulation("upbow"),
        abjad.Dynamic("mp"),
    ],
)

trinton.attach(
    voice=score["violin 2 voice"], leaves=[12], attachment=abjad.Articulation("upbow")
)

trinton.change_notehead(
    voice=score["violin 2 voice"],
    leaves=[
        5,
        6,
        7,
        8,
        9,
        10,
        11,
        12,
    ],
    notehead=r"#'cross",
)

# viola attachments

trinton.attach_multiple(
    score=score,
    voice="viola voice",
    leaves=[
        6,
    ],
    attachments=[
        abjad.Tie(),
        abjad.Articulation("upbow"),
        abjad.Dynamic("mp"),
    ],
)

trinton.attach_multiple(
    score=score,
    voice="viola voice",
    leaves=[
        8,
    ],
    attachments=[
        abjad.Articulation("downbow"),
        abjad.Dynamic("ff"),
        abjad.Articulation(">"),
    ],
)

trinton.change_notehead(
    voice=score["viola voice"],
    leaves=[
        5,
        6,
        7,
        8,
    ],
    notehead=r"#'cross",
)

# contrabass attachments

trinton.attach_multiple(
    score=score,
    voice="contrabass voice",
    leaves=[
        2,
    ],
    attachments=[
        abjad.Dynamic("ff"),
        abjad.LilyPondLiteral(r'\boxed-markup "Slight OP" 1', format_slot="after"),
    ],
)

trinton.attach(
    voice=score["contrabass voice"],
    leaves=[
        2,
        4,
        5,
    ],
    attachment=abjad.Articulation(">"),
)

# extract parts

trinton.extract_parts(score)

# whiteout empty staves

for voice in hexennacht.all_voices:
    trinton.whiteout_empty_staves(score=score, voice=voice, cutaway=True)

# show file

trinton.render_file(
    score=score,
    segment_path="/Users/trintonprater/scores/hexennacht/hexennacht/segments/02",
    build_path="/Users/trintonprater/scores/hexennacht/hexennacht/build",
    segment_name="02",
    includes=[
        "/Users/trintonprater/scores/hexennacht/hexennacht/build/hexennacht-stylesheet.ily",
        "/Users/trintonprater/abjad/docs/source/_stylesheets/abjad.ily",
    ],
)
