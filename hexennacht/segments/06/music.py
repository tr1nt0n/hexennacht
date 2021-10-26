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
        (3, 8),
        (5, 4),
        (1, 4),
        (6, 4),
        (1, 8),
        (3, 4),
        (3, 8),
        (2, 4),
        (2, 4),
    ],
    score["Global Context"],
)

# bassoon

hexennacht.dance(
    score=score,
    voice="bassoon voice",
    tuplet_index=2,
    durations=[
        (1, 2),
        (1, 2),
        (3, 8),
        (3, 4),
        (1, 2),
        (1, 4),
        (3, 4),
        (3, 4),
        (1, 8),
        (1, 2),
        (1, 4),
        (3, 8),
        (1, 4),
        (1, 4),
        (1, 4),
        (1, 4),
    ],
    pitch_index=0,
    transpose=-12
)

# bass clarinet

trinton.append_rests(
    score=score,
    voice="bass clarinet voice",
    rests=[abjad.Rest("r1"), abjad.Rest("r4."), abjad.Rest("r2.")]
)

hexennacht.dance(
    score=score,
    voice="bass clarinet voice",
    tuplet_index=1,
    durations=[
        (1, 2),
        (1, 4),
        (3, 4),
        (3, 4),
        (1, 8),
        (1, 2),
        (1, 4),
        (3, 8),
        (1, 4),
        (1, 4),
        (1, 4),
        (1, 4),
    ],
    pitch_index=16,
    transpose=-12
)

hexennacht.transpose_bass_clarinet(score=score, voice="bass clarinet voice")

# oboe

trinton.append_rests(
    score=score,
    voice="oboe voice",
    rests=[abjad.Rest("r1"), abjad.Rest("r4."), abjad.Rest("r4")]
)

hexennacht.warble(
    score=score,
    voice="oboe voice",
    accel_durations=[(3, 8)],
    rit_durations=[(1, 2)],
    rit_first=True,
    pitched=False
)

trinton.append_rests(
    score=score,
    voice="oboe voice",
    rests=[abjad.Rest("r8"), abjad.Rest("r4"), abjad.Rest("r1."), abjad.Rest("r8"), abjad.Rest("r2."), abjad.Rest("r4.")]
)

hexennacht.warble(
    score=score,
    voice="oboe voice",
    accel_durations=[(1, 2)],
    rit_durations=[(1, 2)],
    rit_first=True,
    pitched=True
)

# trumpet

trinton.append_rests(
    score=score,
    voice="trumpet voice",
    rests=[abjad.Rest("r1"), abjad.Rest("r4."), abjad.Rest("r1"), abjad.Rest("r4"), abjad.Rest("r4"), abjad.Rest("r1."),]
)

hexennacht.brass_shrieks(
    score=score,
    voice="trumpet voice",
    talea_index=6,
    talea=32,
    durations=[(1, 4)],
    pitched=True,
    pitch_index=3
)

trinton.append_rests(
    score=score,
    voice="trumpet voice",
    rests=[abjad.Rest("r8"), abjad.Rest("r2"), abjad.Rest("r4."), abjad.Rest("r2")]
)

# trombone

trinton.append_rests(
    score=score,
    voice="tenor trombone voice",
    rests=[abjad.Rest("r1"), abjad.Rest("r4."), abjad.Rest("r1"), abjad.Rest("r4"), abjad.Rest("r4"), abjad.Rest("r1."), abjad.Rest("r8"), abjad.Rest("r2."), abjad.Rest("r8.")]
)

hexennacht.brass_shrieks(
    score=score,
    voice="tenor trombone voice",
    talea_index=1,
    talea=16,
    durations=[(1, 4)],
    pitched=True,
    pitch_index=1
)

trinton.append_rests(
    score=score,
    voice="tenor trombone voice",
    rests=[abjad.Rest("r8."), abjad.Rest("r4")]
)

# brass

for voice in ["horn voice", "tuba voice"]:
    trinton.append_rests(
        score=score,
        voice=voice,
        rests=[abjad.Rest("r1"), abjad.Rest("r4."), abjad.Rest("r1"), abjad.Rest("r4"), abjad.Rest("r4"), abjad.Rest("r1."), abjad.Rest("r8"), abjad.Rest("r2."), abjad.Rest("r4."), abjad.Rest("r2")]
    )

for voice in ["horn voice", "trumpet voice", "tenor trombone voice", "tuba voice"]:
    hexennacht.brass_shrieks(
        score=score,
        voice=voice,
        talea_index=1,
        talea=32,
        durations=[(1, 2)],
        pitched=True,
        pitch_index=1
    )

# percussion 1

hexennacht.marimba_shakes(
    score=score,
    voice="percussion 1 voice",
    note_value=8,
    durations=[(11, 8)],
    pitched=False,
    pitch_index=0,
    high=False
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
    bunch_1_durations=[(3, 8)],
    talea=16,
    smooth_durations=[(3, 4)],
    bunch_2_tuplet=0,
    bunch_2_durations=[(1, 4)],
    pitch_index=None,
    transpose=None
)

trinton.append_rests(
    score=score,
    voice="percussion 1 voice",
    rests=[abjad.Rest("r8")]
)

hexennacht.dance(
    score=score,
    voice="percussion 1 voice",
    tuplet_index=3,
    durations=[(5, 8)],
    pitch_index=None,
    transpose=None
)

hexennacht.marimba_shakes(
    score=score,
    voice="percussion 1 voice",
    note_value=8,
    durations=[(7, 8)],
    pitched=False,
    pitch_index=0,
    high=False
)

trinton.append_rests(
    score=score,
    voice="percussion 1 voice",
    rests=[abjad.Rest("r8")]
)

hexennacht.incantation(
    score=score,
    voice="percussion 1 voice",
    bunch_1_tuplet=10,
    bunch_1_durations=[(3, 8)],
    talea=16,
    smooth_durations=[(1, 4)],
    bunch_2_tuplet=26,
    bunch_2_durations=[(3, 8)],
    pitch_index=None,
    transpose=None
)

trinton.append_rests(
    score=score,
    voice="percussion 1 voice",
    rests=[abjad.Rest("r8")]
)

hexennacht.marimba_shakes(
    score=score,
    voice="percussion 1 voice",
    note_value=8,
    durations=[(7, 8)],
    pitched=False,
    pitch_index=0,
    high=False
)

tuplet = abjad.select(score["percussion 1 voice"]).tuplet(2)
string = r"\italic 7:10"
markup = abjad.Markup(
    rf"\markup \scale #'(1 . 1) {string}",
    literal=True,
)
abjad.override(tuplet).TupletNumber.text = markup

# percussion 2

hexennacht.incantation(
    score=score,
    voice="percussion 2 voice",
    bunch_1_tuplet=26,
    bunch_1_durations=[(1, 4)],
    talea=16,
    smooth_durations=[(3, 4)],
    bunch_2_tuplet=1,
    bunch_2_durations=[(3, 8)],
    pitch_index=None,
    transpose=None
)

trinton.append_rests(
    score=score,
    voice="percussion 2 voice",
    rests=[abjad.Rest("r8")]
)

hexennacht.dance(
    score=score,
    voice="percussion 2 voice",
    tuplet_index=4,
    durations=[(5, 8),],
    pitch_index=None,
    transpose=None
)

hexennacht.marimba_shakes(
    score=score,
    voice="percussion 2 voice",
    note_value=16,
    durations=[(3, 4)],
    pitched=False,
    pitch_index=0,
    high=False
)

trinton.append_rests(
    score=score,
    voice="percussion 2 voice",
    rests=[abjad.Rest("r8")]
)

hexennacht.incantation(
    score=score,
    voice="percussion 2 voice",
    bunch_1_tuplet=26,
    bunch_1_durations=[(5, 8)],
    talea=16,
    smooth_durations=[(3, 4)],
    bunch_2_tuplet=0,
    bunch_2_durations=[(1, 8)],
    pitch_index=None,
    transpose=None
)

trinton.append_rests(
    score=score,
    voice="percussion 2 voice",
    rests=[abjad.Rest("r8")]
)

hexennacht.marimba_shakes(
    score=score,
    voice="percussion 2 voice",
    note_value=4,
    durations=[(1, 1)],
    pitched=False,
    pitch_index=0,
    high=False
)

trinton.append_rests(
    score=score,
    voice="percussion 2 voice",
    rests=[abjad.Rest("r8")]
)

trinton.handwrite(
    score=score,
    voice="percussion 2 voice",
    durations=[(7, 8)],
    pitch_list=None
)

tuplet = abjad.select(score["percussion 2 voice"]).tuplet(0)
string = r"\italic 6:5"
markup = abjad.Markup(
    rf"\markup \scale #'(1 . 1) {string}",
    literal=True,
)
abjad.override(tuplet).TupletNumber.text = markup

handler = evans.PitchHandler(
    pitch_list=hexennacht.ratchet_pitches,
    forget=False
)

for voice in ["percussion 1 voice", "percussion 2 voice"]:
    handler(abjad.select(score[voice]).leaves(pitched=True))

    trinton.transparent_accidentals(
        score=score,
        voice=voice,
        leaves=all
    )

# violin

trinton.append_rests(
    score=score,
    voice="violin 1 voice",
    rests=[abjad.Rest("r1"), abjad.Rest("r4."), abjad.Rest("r1"), abjad.Rest("r4"), abjad.Rest("r4"), abjad.Rest("r1."), abjad.Rest("r8"),]
)

hexennacht.violin_solo(
    score=score,
    voice="violin 1 voice",
    tuplet_index=0,
    durations=[(3, 4), (3, 8), (1, 2), (1, 2)],
    pitched=True,
    pitch_index=0
)

# cello

hexennacht.string_swells(
    score=score,
    voice="cello voice",
    tuplet_index=0,
    durations=[(1, 1)],
    pitch_index=0
)

trinton.append_rests(
    score=score,
    voice="cello voice",
    rests=[abjad.Rest("r4."), abjad.Rest("r1"), abjad.Rest("r4"), abjad.Rest("r4"), abjad.Rest("r2.")]
)

hexennacht.string_swells(
    score=score,
    voice="cello voice",
    tuplet_index=1,
    durations=[(3, 4)],
    pitch_index=3
)

trinton.append_rests(
    score=score,
    voice="cello voice",
    rests=[abjad.Rest("r8"),]
)

hexennacht.string_swells(
    score=score,
    voice="cello voice",
    tuplet_index=2,
    durations=[(3, 4)],
    pitch_index=6
)

trinton.append_rests(
    score=score,
    voice="cello voice",
    rests=[abjad.Rest("r4."), abjad.Rest("r2")]
)

hexennacht.string_swells(
    score=score,
    voice="cello voice",
    tuplet_index=3,
    durations=[(1, 2)],
    pitch_index=9
)

# contrabass

trinton.append_rests(
    score=score,
    voice="contrabass voice",
    rests=[abjad.Rest("r1"), abjad.Rest("r4."), abjad.Rest("r1"), abjad.Rest("r4"), abjad.Rest("r4"), abjad.Rest("r1."), abjad.Rest("r8"), abjad.Rest("r4.")]
)

hexennacht.drone(
    score=score,
    voice="contrabass voice",
    talea=16,
    pitch_index=11,
    durations=[(7, 4)]
)

# all voices

for voice in ["flute voice", "marimba voice", "piano 1 voice", "piano 2 voice", "harp voice", "violin 2 voice", "viola voice"]:
    trinton.append_rests(
        score=score,
        voice=voice,
        rests=[abjad.Rest("r1"), abjad.Rest("r4."), abjad.Rest("r1"), abjad.Rest("r4"), abjad.Rest("r4"), abjad.Rest("r1."), abjad.Rest("r8"), abjad.Rest("r2."), abjad.Rest("r4."), abjad.Rest("r2"), abjad.Rest("r2")]
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

trinton.attach(
    voice=score["Global Context"],
    leaves=[0],
    attachment=hexennacht.tempo_4
)

# oboe attachments

trinton.write_slur(
    voice=score["oboe voice"],
    start_slur=[4, 11, 22, 29,],
    stop_slur=[8, 13, 26, 32],
)

trinton.attach(
    voice=score["oboe voice"],
    leaves=[4, 5, 6, 7, 11, 12, 22, 23, 24, 25, 29, 30, 31,],
    attachment=abjad.Glissando()
)

trinton.attach(
    voice=score["oboe voice"],
    leaves=[4, 6, 8, 12, 22, 24, 26, 30, 32,],
    attachment=abjad.Articulation("stopped")
)

trinton.attach(
    voice=score["oboe voice"],
    leaves=[5, 7, 11, 13, 23, 25, 29, 31,],
    attachment=abjad.Articulation("open")
)

trinton.attach_multiple(
    score=score,
    voice="oboe voice",
    leaves=[4, 22,],
    attachments=[abjad.Dynamic("fp"), abjad.StartHairpin(">o")]
)

trinton.attach(
    voice=score["oboe voice"],
    leaves=[9, 26,],
    attachment=abjad.StopHairpin()
)

trinton.attach(
    voice=score["oboe voice"],
    leaves=[10, 28,],
    attachment=abjad.StartHairpin("o<|")
)

trinton.attach(
    voice=score["oboe voice"],
    leaves=[13, 32,],
    attachment=abjad.Dynamic("f")
)

# clarinet attachments

trinton.write_slur(
    voice=score["bass clarinet voice"],
    start_slur=[3, 6, 11, 14, 16, 19, 22, 28, 32, 35, 37, 40, 45, 48,],
    stop_slur=[5, 10, 13, 15, 18, 21, 27, 31, 34, 36, 39, 44, 47, 50,],
)

trinton.attach_multiple(
    score=score,
    voice="bass clarinet voice",
    leaves=[3,],
    attachments=[
        abjad.Dynamic("fff"),
        abjad.LilyPondLiteral(
            r'\boxed-markup "Overblow" 1', format_slot="after"
        ),
    ]
)

trinton.attach(
    voice=score["bass clarinet voice"],
    leaves=[3, 6, 11, 14, 16, 19, 22, 28, 32, 35, 37, 40, 45, 48,],
    attachment=abjad.Articulation("marcato")
)

# bassoon attachments

trinton.write_slur(
    voice=score["bassoon voice"],
    start_slur=[0, 5, 10, 13, 16, 19, 22, 26, 29, 34, 39, 42, 45, 51, 56, 58, 63, 65,],
    stop_slur=[4, 9, 12, 15, 18, 21, 25, 27, 32, 38, 41, 44, 49, 54, 57, 62, 64, 67,],
)

trinton.attach(
    voice=score["bassoon voice"],
    leaves=[0, 5, 10, 13, 16, 19, 22, 26, 28, 29, 33, 34, 39, 42, 45, 50, 51, 55, 56, 58, 63, 65,],
    attachment=abjad.Articulation("marcato")
)

trinton.attach_multiple(
    score=score,
    voice="bassoon voice",
    leaves=[0,],
    attachments=[
        abjad.Dynamic("fff"),
        abjad.LilyPondLiteral(
            r'\boxed-markup "Overblow" 1', format_slot="after"
        ),
    ]
)

# trumpet attachments

trinton.attach_multiple(
    score=score,
    voice="trumpet voice",
    leaves=[6,],
    attachments=[
        abjad.Dynamic("mf"),
        abjad.StartHairpin("|>o")
    ]
)

trinton.attach(
    voice=score["trumpet voice"],
    leaves=[7,],
    attachment=abjad.StopHairpin()
)

trinton.write_trill_span(
    score=score,
    voice="trumpet voice",
    pitch=19.5,
    start_leaf=[6],
    stop_leaf=[7]
)

trinton.write_trill_span(
    score=score,
    voice="trumpet voice",
    pitch=22,
    start_leaf=[10],
    stop_leaf=[11]
)

trinton.write_trill_span(
    score=score,
    voice="trumpet voice",
    pitch=14.5,
    start_leaf=[13],
    stop_leaf=[15]
)

# trombone attachments

trinton.unmeasured_stem_tremolo(abjad.select(score["tenor trombone voice"]).leaves(pitched=True))

trinton.attach_multiple(
    score=score,
    voice="tenor trombone voice",
    leaves=[9,],
    attachments=[
        abjad.Dynamic("mf"),
        abjad.StartHairpin("|>o"),
        abjad.LilyPondLiteral(
            r'\boxed-markup "Fluttertongue, switch rapidly between 1st and 7th" 1', format_slot="after"
        ),
    ]
)

trinton.attach(
    voice=score["tenor trombone voice"],
    leaves=[10,],
    attachment=abjad.StopHairpin()
)

trinton.attach(
    voice=score["tenor trombone voice"],
    leaves=[11, 14,],
    attachment=abjad.Articulation(">")
)

hexennacht.treble_clef(
    score_and_voice=score["tenor trombone voice"],
    leaves=[14,]
)

trinton.attach_multiple(
    score=score,
    voice="tenor trombone voice",
    leaves=[11,],
    attachments=[
        abjad.Dynamic("mf"),
        abjad.StartHairpin("<"),
    ]
)

trinton.attach(
    voice=score["tenor trombone voice"],
    leaves=[15,],
    attachment=abjad.Dynamic("ff")
)

# horn attachments

trinton.unmeasured_stem_tremolo(abjad.select(score["horn voice"]).leaves(pitched=True))

trinton.attach(
    voice=score["horn voice"],
    leaves=[10,],
    attachment=abjad.LilyPondLiteral(
        r'\boxed-markup "Fluttering valves, fluttertongue" 1', format_slot="after"
    ),
)

# brass attachments

for voice in ["horn voice", "trumpet voice", "tuba voice"]:
    trinton.attach_multiple(
        score=score,
        voice=voice,
        leaves=[10,],
        attachments=[
            abjad.Dynamic("mf"),
            abjad.StartHairpin("<"),
        ]
    )

    trinton.attach(
        voice=score[voice],
        leaves=[14,],
        attachment=abjad.Dynamic("ff")
    )

    trinton.attach(
        voice=score[voice],
        leaves=[10, 13,],
        attachment=abjad.Articulation(">")
    )

# percussion 1 attachments

trinton.attach(
    voice=score["percussion 1 voice"],
    leaves=[1, 3, 5, 7, 9, 13, 17, 22, 26, 29, 31, 33, 35, 40, 42, 45, 51, 53, 55,],
    attachment=abjad.Articulation(">"),
)

trinton.attach(
    voice=score["percussion 1 voice"],
    leaves=[0],
    attachment=abjad.Dynamic("mf"),
)

for number in [18, 19, 20, 43,]:
    sel = abjad.select(score["percussion 1 voice"]).leaf(number)
    trinton.unmeasured_stem_tremolo([sel])

# percussion 2 attachments

trinton.attach(
    voice=score["percussion 2 voice"],
    leaves=[1, 4, 13, 29, 34, 41,],
    attachment=abjad.Articulation(">"),
)

trinton.attach(
    voice=score["percussion 2 voice"],
    leaves=[0],
    attachment=abjad.LilyPondLiteral(
        r'\boxed-markup "w/ bow, CLB" 1', format_slot="after"
    ),
)

trinton.attach(
    voice=score["percussion 2 voice"],
    leaves=[6, 15, 31, 36, 44,],
    attachment=abjad.LilyPondLiteral(
        r'\boxed-markup "Crine" 1', format_slot="after"
    ),
)

trinton.attach(
    voice=score["percussion 2 voice"],
    leaves=[10, 16, 33, 40, ],
    attachment=abjad.LilyPondLiteral(
        r'\boxed-markup "CLB" 1', format_slot="after"
    ),
)

trinton.attach(
    voice=score["percussion 2 voice"],
    leaves=[52,],
    attachment=abjad.LilyPondLiteral(
        r'\boxed-markup "Bass drum, w/ mallet in RH and palm in LH" 1', format_slot="after"
    ),
)

hexennacht.one_line(
    score=score,
    voice="percussion 2 voice",
    leaves=[52,],
)

trinton.attach_multiple(
    score=score,
    voice="percussion 2 voice",
    leaves=[0, 10, 16, 33, 40, 52,],
    attachments=[abjad.Dynamic("mp"), abjad.StartHairpin("<")]
)

trinton.attach(
    voice=score["percussion 2 voice"],
    leaves=[6, 13, 29, 36, 50,],
    attachment=abjad.Dynamic("f")
)

trinton.attach(
    voice=score["percussion 2 voice"],
    leaves=[54,],
    attachment=abjad.Dynamic("fff")
)

for number in [52, 53, 54,]:
    sel = abjad.select(score["percussion 2 voice"]).leaf(number)
    trinton.unmeasured_stem_tremolo([sel])

# violin attachments

trinton.write_slur(
    voice=score["violin 1 voice"],
    start_slur=[7, 9, 12,],
    stop_slur=[8, 11, 14,],
)

trinton.attach_multiple(
    score=score,
    voice="violin 1 voice",
    leaves=[7,],
    attachments=[
        abjad.Dynamic("mf"),
        abjad.StartHairpin("<"),
        abjad.LilyPondLiteral(
            r'\boxed-markup "Slight OP" 1', format_slot="after"
        ),
    ]
)

trinton.attach_multiple(
    score=score,
    voice="violin 1 voice",
    leaves=[9,],
    attachments=[
        abjad.Dynamic("ff"),
        abjad.StartHairpin(">"),
        abjad.Articulation("tenuto")
    ]
)

trinton.attach_multiple(
    score=score,
    voice="violin 1 voice",
    leaves=[12,],
    attachments=[
        abjad.Dynamic("mf"),
        abjad.StartHairpin("<"),
    ]
)

trinton.attach_multiple(
    score=score,
    voice="violin 1 voice",
    leaves=[15,],
    attachments=[
        abjad.Dynamic("ff"),
        abjad.Articulation("tenuto")
    ]
)

# cello attachments

trinton.attach(
    voice=score["cello voice"],
    leaves=[0],
    attachment=abjad.LilyPondLiteral(
        r'\boxed-markup "MSP, Molto Flaut." 1', format_slot="after"
    ),
)

trinton.attach(
    voice=score["cello voice"],
    leaves=[0, 1, 8, 9, 12, 15, 19, 20,],
    attachment=abjad.Tie()
)

trinton.attach(
    voice=score["cello voice"],
    leaves=[0, 8, 12, 19,],
    attachment=abjad.StartHairpin("o<|")
)

trinton.attach_multiple(
    score=score,
    voice="cello voice",
    leaves=[1, 9, 13, 20,],
    attachments=[abjad.Dynamic("f"), abjad.StartHairpin("|>o")]
)

trinton.attach(
    voice=score["cello voice"],
    leaves=[2, 10, 16, 21,],
    attachment=abjad.StopHairpin()
)

trinton.change_notehead(
    voice=score["cello voice"],
    leaves=all,
    notehead=r"#'harmonic"
)

# contrabass attachments

trinton.attach_multiple(
    score=score,
    voice="contrabass voice",
    leaves=[9,],
    attachments=[
        abjad.Dynamic("mp"),
        abjad.StartHairpin("<")
    ]
)

trinton.attach(
    voice=score["contrabass voice"],
    leaves=[18,],
    attachment=abjad.Dynamic("ff")
)

# show file

trinton.render_file(
    score=score,
    segment_path="/Users/trintonprater/scores/hexennacht/hexennacht/segments/06",
    build_path="/Users/trintonprater/scores/hexennacht/hexennacht/build",
    segment_name="06",
    includes=[
        "/Users/trintonprater/scores/hexennacht/hexennacht/build/hexennacht-stylesheet.ily",
        "/Users/trintonprater/abjad/docs/source/_stylesheets/abjad.ily",
    ]
)
