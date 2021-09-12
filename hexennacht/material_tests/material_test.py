import abjad
import evans
import trinton
import hexennacht
from abjadext import rmakers
from abjadext import microtones

# make score template

score = hexennacht.score

trinton.write_time_signatures([(3, 4), (7, 8), (4, 4), (5, 4),], score["Global Context"])

# write new material function here

# bassoon

hexennacht.dance(
    score=score,
    voice="bassoon voice",
    tuplet_index=0,
    durations=[(1, 4), (1, 2), (6, 8), (1, 8), (3, 8), (3, 8), (1, 4), (3, 4), (1, 2),],
    pitch_index=0,
    transpose=-12
)

# bass clarinet

trinton.append_rests(
    score=score,
    voice="bass clarinet voice",
    rests=[abjad.Rest("r2."), abjad.Rest("r2.")]
)

hexennacht.dance(
    score=score,
    voice="bass clarinet voice",
    tuplet_index=0,
    durations=[(1, 8), (3, 8), (3, 8), (1, 4), (3, 4), (1, 2),],
    pitch_index=11,
    transpose=-12
)

hexennacht.transpose_bass_clarinet(
    score=score,
    voice="bass clarinet voice",
)

# violin 1

trinton.append_rests(
    score=score,
    voice="violin 1 voice",
    rests=[abjad.Rest("r2."), abjad.Rest("r2"), abjad.Rest("r4."), abjad.Rest("r4."),]
)

hexennacht.violin_solo(
    score=score,
    voice="violin 1 voice",
    tuplet_index=3,
    durations=[(6, 16), (1, 4), (6, 8), (1, 2),],
    pitched=True,
    pitch_index=0,
)

# percussion 1

hexennacht.drumming(
    score=score,
    voice="percussion 1 voice",
    durations=[(1, 2), (1, 4),],
    pitched=False
)

trinton.append_rests(
    score=score,
    voice="percussion 1 voice",
    rests=[abjad.Rest("r8")]
)

hexennacht.incantation(
    score=score,
    voice="percussion 1 voice",
    bunch_1_tuplet=26,
    bunch_1_durations=[(6, 8),],
    talea=8,
    smooth_durations=[(5, 8)],
    bunch_2_tuplet=0,
    bunch_2_durations=[(3, 8)],
    pitch_index=None,
    transpose=None,
)

trinton.append_rests(
    score=score,
    voice="percussion 1 voice",
    rests=[abjad.Rest("r8")],
)

hexennacht.cymbal_swells(
    score=score,
    voice="percussion 1 voice",
    durations=[(3, 8), (3, 4)],
    tuplet_index=3,
)

handler = evans.PitchHandler(
    pitch_list=hexennacht.ratchet_pitches,
    forget=False,
)

handler(abjad.select(score["percussion 1 voice"]).leaves(pitched=True))

# percussion 2

hexennacht.cymbal_swells(
    score=score,
    voice="percussion 2 voice",
    durations=[(1, 2), (1, 4),],
    tuplet_index=3,
)

trinton.append_rests(
    score=score,
    voice="percussion 2 voice",
    rests=[abjad.Rest("r8")],
)

hexennacht.incantation(
    score=score,
    voice="percussion 2 voice",
    bunch_1_tuplet=0,
    bunch_1_durations=[(6, 8),],
    talea=16,
    smooth_durations=[(5, 8)],
    bunch_2_tuplet=26,
    bunch_2_durations=[(3, 8)],
    pitch_index=None,
    transpose=None,
)

trinton.append_rests(
    score=score,
    voice="percussion 2 voice",
    rests=[abjad.Rest("r8")]
)

hexennacht.drumming(
    score=score,
    voice="percussion 2 voice",
    durations=[(3, 8), (3, 4)],
    pitched=False
)

handler = evans.PitchHandler(
    pitch_list=hexennacht.ratchet_pitches,
    forget=False,
)

handler(abjad.select(score["percussion 2 voice"]).leaves(pitched=True))

# tuba and contrabass

for voice in ["tuba voice", "contrabass voice"]:
    trinton.append_rests(
        score=score,
        voice=voice,
        rests=[abjad.Rest("r2."), abjad.Rest("r4")]
    )
    hexennacht.drone(
        score=score,
        voice=voice,
        talea=8,
        pitch_index=3,
        durations=[(5, 8), (4, 4), (5, 4),]
    )

# cello

trinton.append_rests(
    score=score,
    voice="cello voice",
    rests=[abjad.Rest("r4."),]
)

hexennacht.string_swells(
    score=score,
    voice="cello voice",
    tuplet_index=0,
    durations=[(3, 8),],
    pitch_index=0,
)

trinton.append_rests(
    score=score,
    voice="cello voice",
    rests=[abjad.Rest("r4")]
)

hexennacht.string_swells(
    score=score,
    voice="cello voice",
    tuplet_index=1,
    durations=[(3, 8),],
    pitch_index=3,
)

trinton.append_rests(
    score=score,
    voice="cello voice",
    rests=[abjad.Rest("r4"), abjad.Rest("r4"), abjad.Rest("r4.")]
)

hexennacht.string_swells(
    score=score,
    voice="cello voice",
    tuplet_index=2,
    durations=[(3, 8),],
    pitch_index=6,
)

trinton.append_rests(
    score=score,
    voice="cello voice",
    rests=[abjad.Rest("r2."), abjad.Rest("r8"),]
)

hexennacht.string_swells(
    score=score,
    voice="cello voice",
    tuplet_index=3,
    durations=[(3, 8),],
    pitch_index=9,
)

# oboe

trinton.append_rests(
    score=score,
    voice="oboe voice",
    rests=[abjad.Rest("r2."),]
)

trinton.append_rests(
    score=score,
    voice="oboe voice",
    rests=[abjad.Rest("r8")]
)

hexennacht.warble(
    score=score,
    voice="oboe voice",
    accel_durations=[(3, 8)],
    rit_durations=[(3, 8)],
    rit_first=True,
    pitched=True,
)

trinton.append_rests(
    score=score,
    voice="oboe voice",
    rests=[abjad.Rest("r1"), abjad.Rest("r2")]
)

hexennacht.warble(
    score=score,
    voice="oboe voice",
    accel_durations=[(3, 8)],
    rit_durations=[(3, 8)],
    rit_first=False,
    pitched=True,
)

# all voices

for voice in ["flute voice", "trumpet voice", "horn voice", "tenor trombone voice", "piano 1 voice", "piano 2 voice", "harp voice", "violin 2 voice", "viola voice", "marimba voice",]:
    trinton.append_rests(
        score=score,
        voice=voice,
        rests=[abjad.Rest("r2."), abjad.Rest("r2.."), abjad.Rest("r1"), abjad.Rest("r2."), abjad.Rest("r2"),]
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

trinton.rewrite_meter(score),

trinton.beam_score(score),

# trinton.annotate_leaves(score)

# percussion 1 attachments

for voice in ["percussion 1 voice", "percussion 2 voice"]:
    hexennacht.three_lines(
        score=score,
        voice=voice,
        leaves=[0],
    )

    trinton.transparent_accidentals(
        score=score,
        voice=voice,
        leaves=all
    )

trinton.attach(
    voice=score["percussion 1 voice"],
    leaves=[0],
    attachment=abjad.Dynamic("mf")
)

trinton.attach(
    voice=score["percussion 1 voice"],
    leaves=[1, 3, 5, 7, 9, 11, 13, 15, 18, 20, 23,],
    attachment=abjad.Articulation(">")
)

# percussion 2 attachments

hexennacht.gongs(
    score=score,
    voice="percussion 2 voice",
    leaves=[0]
)

trinton.attach(
    voice=score["percussion 2 voice"],
    leaves=[0],
    attachment=abjad.Dynamic("ff")
)

trinton.attach_multiple(
    score=score,
    voice="percussion 2 voice",
    leaves=[1],
    attachments=[
        abjad.LilyPondLiteral(
            r'\boxed-markup "w/ bow, CLB" 1', format_slot="after"
        ),
        abjad.Dynamic("mp"),
        abjad.StartHairpin("<")
    ]
)

trinton.attach(
    voice=score["percussion 2 voice"],
    leaves=[5],
    attachment=abjad.Dynamic("f"),
)

trinton.attach_multiple(
    score=score,
    voice="percussion 2 voice",
    leaves=[7],
    attachments=[
        abjad.LilyPondLiteral(
            r'\boxed-markup "Crine" 1', format_slot="after"
        ),
        abjad.Dynamic("ff"),
        abjad.StartHairpin(">"),
    ]
)

trinton.attach(
    voice=score["percussion 2 voice"],
    leaves=[10],
    attachment=abjad.Dynamic("mp"),
)

trinton.attach(
    voice=score["percussion 2 voice"],
    leaves=[13],
    attachment=abjad.LilyPondLiteral(
        r'\boxed-markup "CLB" 1', format_slot="after"
    ),
)

trinton.attach(
    voice=score["percussion 2 voice"],
    leaves=[11],
    attachment=abjad.Dynamic("ff"),
)

trinton.attach_multiple(
    score=score,
    voice="percussion 2 voice",
    leaves=[20],
    attachments=[
        abjad.Dynamic("mp"),
        abjad.StartHairpin("<"),
    ]
)

trinton.attach(
    voice=score["percussion 2 voice"],
    leaves=[32],
    attachment=abjad.Dynamic("ff"),
)

# oboe attachments

trinton.attach(
    voice=score["oboe voice"],
    leaves=[3, 4, 5, 9, 10, 11, 16, 17, 21, 22, 23,],
    attachment=abjad.Glissando(),
)

trinton.attach(
    voice=score["oboe voice"],
    leaves=[3, 5, 9, 11, 16, 18, 22, 24,],
    attachment=abjad.Articulation("stopped"),
)

trinton.attach(
    voice=score["oboe voice"],
    leaves=[4, 6, 10, 17, 21, 23,],
    attachment=abjad.Articulation("open"),
)

trinton.attach_multiple(
    score=score,
    voice="oboe voice",
    leaves=[3, 16],
    attachments=[
        abjad.Dynamic("f"),
        abjad.StartHairpin(">"),
    ]
)

trinton.attach_multiple(
    score=score,
    voice="oboe voice",
    leaves=[9, 21,],
    attachments=[
        abjad.Dynamic("p"),
        abjad.StartHairpin("<"),
    ]
)

trinton.attach(
    voice=score["oboe voice"],
    leaves=[11, 24,],
    attachment=abjad.Dynamic("f")
)

trinton.write_slur(
    voice=score["oboe voice"],
    start_slur=[3, 9, 16, 21,],
    stop_slur=[6, 11, 18, 24,],
)

# bass clarinet attachments

trinton.attach_multiple(
    score=score,
    voice="bass clarinet voice",
    leaves=[4,],
    attachments=[
        abjad.LilyPondLiteral(
            r'\boxed-markup "Overblow" 1', format_slot="after"
        ),
        abjad.Dynamic("ffff"),
        abjad.Articulation("marcato")
    ]
)

trinton.attach(
    voice=score["bass clarinet voice"],
    leaves=[8, 11, 16, 21, 24,],
    attachment=abjad.Articulation("marcato"),
)

# bassoon attachments

trinton.attach_multiple(
    score=score,
    voice="bassoon voice",
    leaves=[0,],
    attachments=[
        abjad.LilyPondLiteral(
            r'\boxed-markup "Overblow" 1', format_slot="after"
        ),
        abjad.Dynamic("ffff"),
        abjad.Articulation("marcato")
    ]
)

trinton.attach(
    voice=score["bassoon voice"],
    leaves=[4, 7, 12, 17, 20, 23, 29, 32,],
    attachment=abjad.Articulation("marcato"),
)

# tuba and contrabass attachments

for voice in ["tuba voice", "contrabass voice",]:
    trinton.attach_multiple(
        score=score,
        voice=voice,
        leaves=[2, 6,],
        attachments=[
            abjad.Dynamic("pp"),
            abjad.StartHairpin("<")
        ]
    )

    trinton.attach_multiple(
        score=score,
        voice=voice,
        leaves=[4, 8,],
        attachments=[
            abjad.Dynamic("mp"),
            abjad.StartHairpin(">"),
        ],
    )

    trinton.attach(
        voice=score[voice],
        leaves=[10],
        attachment=abjad.Dynamic("pp")
    )

# violin 1 attachments

trinton.write_markup(
    voice=score["violin 1 voice"],
    leaf=[4,],
    string=r"\italic espressivo",
    down=True,
)

trinton.write_slur(
    voice=score["violin 1 voice"],
    start_slur=[4, 8, 11, 14,],
    stop_slur=[5, 10, 13, 16,],
)

trinton.attach(
    voice=score["violin 1 voice"],
    leaves=[4, 8, 11, 14,],
    attachment=abjad.Articulation("tenuto"),
)

trinton.attach_multiple(
    score=score,
    voice="violin 1 voice",
    leaves=[4,],
    attachments=[
        abjad.Dynamic("p"),
        abjad.StartHairpin("<")
    ]
)

trinton.attach_multiple(
    score=score,
    voice="violin 1 voice",
    leaves=[6,],
    attachments=[
        abjad.Dynamic("mf"),
        abjad.StartHairpin(">")
    ]
)

trinton.attach_multiple(
    score=score,
    voice="violin 1 voice",
    leaves=[9,],
    attachments=[
        abjad.Dynamic("mp"),
        abjad.StartHairpin("<")
    ]
)

trinton.attach(
    voice=score["violin 1 voice"],
    leaves=[14],
    attachment=abjad.Dynamic("ff"),
)

hexennacht.octave_up(
    abjad.select(score["violin 1 voice"]).leaves(pitched=True)
)

# cello attachments

trinton.change_notehead(
    voice=score["cello voice"],
    leaves=all,
    notehead=r"#'harmonic",
)

trinton.attach(
    voice=score["cello voice"],
    leaves=[2, 3, 6, 7, 12, 14, 18, 19,],
    attachment=abjad.Tie(),
)

trinton.attach(
    voice=score["cello voice"],
    leaves=[2, 6, 12, 18,],
    attachment=abjad.StartHairpin("o<"),
)

trinton.attach_multiple(
    score=score,
    voice="cello voice",
    leaves=[3, 7, 13, 19,],
    attachments=[
        abjad.Dynamic("mf"),
        abjad.StartHairpin(">o"),
    ]
)

trinton.attach(
    voice=score["cello voice"],
    leaves=[4, 8, 15, 20,],
    attachment=abjad.StopHairpin(),
)

trinton.attach(
    voice=score["cello voice"],
    leaves=[2,],
    attachment=abjad.LilyPondLiteral(
        r'\boxed-markup "MSP, Molto Flaut." 1', format_slot="after"
    ),
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
