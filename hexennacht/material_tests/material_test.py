import abjad
import evans
import trinton
import hexennacht
from abjadext import rmakers
from abjadext import microtones

# make score template

score = hexennacht.score

trinton.write_time_signatures([(4, 4), (4, 4), (4, 4), (4, 4),], score["Global Context"])

# write new material function here

# bass drum

hexennacht.drumming(
    score=score,
    voice="percussion 2 voice",
    durations=[(1, 4), (1, 4), (3, 8), (1, 8), (5, 16), (3, 16), (1, 2), (1, 8), (3, 8), (1, 4), (1, 4), (1, 2), (5, 16), (3, 16),],
    pitched=False,
)

# cello

hexennacht.drumming(
    score=score,
    voice="cello voice",
    durations=[(1, 1), (1, 1), (1, 1), (1, 1),],
    pitched=True,
)

# viola

hexennacht.drumming(
    score=score,
    voice="viola voice",
    durations=[(1, 4), (1, 4), (1, 4), (1, 4), (1, 4), (1, 4), (1, 4), (1, 4), (1, 4), (1, 4), (1, 4), (1, 4), (1, 4), (1, 4), (1, 4), (1, 4),],
    pitched=True,
)

# violin 2

hexennacht.drumming(
    score=score,
    voice="violin 2 voice",
    durations=[(1, 4), (1, 4), (1, 4), (1, 4), (1, 4), (1, 4), (1, 4), (1, 4), (1, 4), (1, 4), (1, 4), (1, 4), (1, 4), (1, 4), (1, 4), (1, 4),],
    pitched=True,
)

# violin 1

trinton.append_rests(
    score=score,
    voice="violin 1 voice",
    rests=[abjad.Rest("r1"), abjad.Rest("r4.")]
)

hexennacht.violin_solo(
    score=score,
    voice="violin 1 voice",
    tuplet_index=0,
    durations=[(5, 8), (1, 2), (1, 4), (1, 4), (3, 4), (1, 8), (1, 8),],
    pitched=True,
    pitch_index=0
)

# piano

trinton.append_rests(
    score=score,
    voice="piano 1 voice",
    rests=[abjad.Rest("r1"), abjad.Rest("r1"), abjad.Rest("r1"), abjad.Rest("r1"),]
)

trinton.append_rests(
    score=score,
    voice="piano 2 voice",
    rests=[abjad.Rest("r1"), abjad.Rest("r1"), abjad.Rest("r16"),]
)

trinton.handwrite(
    score=score,
    voice="piano 2 voice",
    durations=[(8, 16), (7, 16),],
    pitch_list=[[-39, -38, -37], [-39, -38, -37, -35]],
)

trinton.append_rests(
    score=score,
    voice="piano 2 voice",
    rests=[abjad.Rest("r8")],
)

trinton.handwrite(
    score=score,
    voice="piano 2 voice",
    durations=[(1, 8), (3, 8), (3, 8),],
    pitch_list=[[-39, -38, -37], [-39, -38, -37, -35]],
)

hexennacht.bass_clef(
    score_and_voice=score["piano 2 voice"],
    leaves=[0]
)

# harp

trinton.append_rests(
    score=score,
    voice="harp voice",
    rests=[abjad.Rest("r1"), abjad.Rest("r8.")]
)

trinton.handwrite(
    score=score,
    voice="harp voice",
    durations=[(13, 16), (1, 1), (1, 1),],
    pitch_list=[[-18, -17, -16, -13, -11]],
)

hexennacht.bass_clef(
    score_and_voice=score["harp voice"],
    leaves=[0]
)

# bassoon + bass clarinet

for voice in ["bassoon voice", "bass clarinet voice",]:
    trinton.append_rests(
    score=score,
    voice=voice,
    rests=[abjad.Rest("r1"), abjad.Rest("r1"), abjad.Rest("r4.")]
    )

    hexennacht.woodwind_swells(
        score=score,
        voice=voice,
        durations=[(3, 8), (1, 2),]
    )

    trinton.append_rests(
    score=score,
    voice=voice,
    rests=[abjad.Rest("r8."),]
    )

    hexennacht.woodwind_swells(
        score=score,
        voice=voice,
        durations=[(5, 16), (1, 4),]
    )

hexennacht.bass_clef(
    score_and_voice=score["bassoon voice"],
    leaves=[0],
)

# oboe

trinton.append_rests(
    score=score,
    voice="oboe voice",
    rests=[abjad.Rest("r1"), abjad.Rest("r1"), abjad.Rest("r1"), abjad.Rest("r4"), abjad.Rest("r16"),]
)

hexennacht.warble(
    score=score,
    voice="oboe voice",
    accel_durations=[(6, 16)],
    rit_durations=[(5, 16)],
    rit_first=True,
    pitched=True,
)

# flute

trinton.append_rests(
    score=score,
    voice="flute voice",
    rests=[abjad.Rest("r1"), abjad.Rest("r1"), abjad.Rest("r8.")]
)

hexennacht.flute_solo(
    score=score,
    voice="flute voice",
    tuplet_index=2,
    flourish_durations=[(5, 16)],
    talea=16,
    talea_index=2,
    talea_durations=[(3, 4)],
)

hexennacht.flute_solo(
    score=score,
    voice="flute voice",
    tuplet_index=1,
    flourish_durations=[(1, 4)],
    talea=16,
    talea_index=4,
    talea_durations=[(1, 2)],
)

# percussion 2

trinton.append_rests(
    score=score,
    voice="marimba voice",
    rests=[abjad.Rest("r1"), abjad.Rest("r8")]
)

hexennacht.marimba_shakes(
    score=score,
    voice="marimba voice",
    note_value=16,
    durations=[(5, 8)],
    pitched=True,
    pitch_index=4,
    high=True
)

trinton.append_rests(
    score=score,
    voice="marimba voice",
    rests=[abjad.Rest("r4"), abjad.Rest("r16")]
)

hexennacht.marimba_shakes(
    score=score,
    voice="marimba voice",
    note_value=16,
    durations=[(9, 16)],
    pitched=True,
    pitch_index=5,
    high=True
)

trinton.append_rests(
    score=score,
    voice="marimba voice",
    rests=[abjad.Rest("r4."), abjad.Rest("r4"), abjad.Rest("r4.")]
)

hexennacht.marimba_shakes(
    score=score,
    voice="marimba voice",
    note_value=16,
    durations=[(3, 8)],
    pitched=True,
    pitch_index=6,
    high=True
)

trinton.append_rests(
    score=score,
    voice="percussion 1 voice",
    rests=[abjad.Rest("r1"), abjad.Rest("r1"), abjad.Rest("r2."),]
)

trinton.handwrite(
    score=score,
    voice="percussion 1 voice",
    durations=[(3, 8), (1, 4), (2, 16), (1, 16)],
    pitch_list=hexennacht.ratchet_pitches
)

trinton.append_rests(
    score=score,
    voice="percussion 1 voice",
    rests=[abjad.Rest("r8."), abjad.Rest("r4")]
)

# brass

for voice, index in zip(["tenor trombone voice", "trumpet voice", "horn voice", "tenor trombone voice", "trumpet voice", "horn voice"], [1, 3, 4,]):
    trinton.append_rests(
        score=score,
        voice=voice,
        rests=[abjad.Rest("r1"), abjad.Rest("r1"), abjad.Rest("r1"), abjad.Rest("r8")],
    )

    hexennacht.brass_shrieks(
        score=score,
        voice=voice,
        talea_index=index,
        talea=16,
        durations=[(7, 8)],
        pitched=True,
        pitch_index=1,

    )

# bass and tuba

for voice in ["contrabass voice", "tuba voice"]:
    trinton.append_rests(
        score=score,
        voice=voice,
        rests=[abjad.Rest("r1"), abjad.Rest("r4")]
    )

for voice, index in zip(["contrabass voice", "tuba voice",], [0, 3]):
    hexennacht.drone(
        score=score,
        voice=voice,
        talea=16,
        pitch_index=index,
        durations=[(3, 4), (2, 1),]
    )

# meter rewriting and beaming

trinton.rewrite_meter(score)

trinton.beam_score(score)

# trinton.annotate_leaves(score)

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

# pitch flute and attachments

hexennacht.pitch_flute_flourishes(
    score=score,
    voice="flute voice",
    start_index=3,
    leaves=[3, 5, 6, 7, 15, 16, 17, 18, 19, 20,]
)

hexennacht.pitch_flute_pf(
    score=score,
    voice="flute voice",
    leaves=[8, 10, 11, 13, 14, 21, 22, 23,]
)

trinton.write_slur(
    voice=score["flute voice"],
    start_slur=[3, 8, 11, 15, 21,],
    stop_slur=[7, 10, 13, 20, 22,],
)

trinton.attach(
    voice=score["flute voice"],
    leaves=[8, 11, 14, 21, 23],
    attachment=abjad.Dynamic("mp")
)

trinton.attach(
    voice=score["flute voice"],
    leaves=[8, 11, 21,],
    attachment=abjad.StartHairpin("<|")
)

trinton.attach(
    voice=score["flute voice"],
    leaves=[3, 15,],
    attachment=abjad.Dynamic("ff")
)

trinton.attach(
    voice=score["flute voice"],
    leaves=[10, 13, 22,],
    attachment=abjad.Dynamic("ffff")
)

trinton.write_text_span(
    voice=score["flute voice"],
    begin_text=r"90",
    end_text=r"0",
    start_leaf=[8, 11, 21,],
    stop_leaf=[10, 13, 22,],
    padding=1
)

trinton.write_markup(
    voice=score["flute voice"],
    leaf=[14, 23],
    string=r"0",
    down=False,
)

# oboe attachments

trinton.write_slur(
    voice=score["oboe voice"],
    start_slur=[6, 11,],
    stop_slur=[8, 13,],
)

trinton.attach(
    voice=score["oboe voice"],
    leaves=[6, 7, 11, 12,],
    attachment=abjad.Glissando(),
)

trinton.attach(
    voice=score["oboe voice"],
    leaves=[7, 12,],
    attachment=abjad.Articulation("open")
)

trinton.attach(
    voice=score["oboe voice"],
    leaves=[6, 8, 11, 13,],
    attachment=abjad.Articulation("stopped")
)

trinton.attach(
    voice=score["oboe voice"],
    leaves=[6, 13,],
    attachment=abjad.Dynamic("mp"),
)

trinton.attach(
    voice=score["oboe voice"],
    leaves=[8,],
    attachment=abjad.Dynamic("ff"),
)

trinton.attach(
    voice=score["oboe voice"],
    leaves=[6],
    attachment=abjad.StartHairpin("<"),
)

trinton.attach(
    voice=score["oboe voice"],
    leaves=[11],
    attachment=abjad.StartHairpin(">"),
)

trinton.attach(
    voice=score["oboe voice"],
    leaves=[13],
    attachment=abjad.StopHairpin(),
)

# clarinet and bassoon pitch and attachments

for leaf, multiphonic in zip([4, 6, 9, 11], [1, 2, 3, 4,]):
    hexennacht.clarinet_multiphonics(
        score=score,
        voice="bass clarinet voice",
        leaves=[leaf],
        multiphonic=multiphonic,
        markup=True,
    )

for leaf, multiphonic in zip([4, 6, 9, 11,], [2, 3, 4, 5,]):
    hexennacht.bassoon_multiphonics(
        score=score,
        voice="bassoon voice",
        leaves=[leaf],
        multiphonic=multiphonic,
        markup=True,
    )

for voice in ["bass clarinet voice", "bassoon voice"]:
    trinton.attach(
        voice=score[voice],
        leaves=[4],
        attachment=abjad.Dynamic("fff")
    )

    trinton.attach(
        voice=score[voice],
        leaves=[4, 6, 9, 11,],
        attachment=abjad.Articulation(">")
    )

# horn attachments

for voice in ["horn voice", "trumpet voice",]:
    trinton.attach(
        voice=score[voice],
        leaves=[4,],
        attachment=abjad.Dynamic("mf")
    )

    trinton.attach(
        voice=score[voice],
        leaves=[6,],
        attachment=abjad.Dynamic("p")
    )

    trinton.attach(
        voice=score[voice],
        leaves=[4,],
        attachment=abjad.StartHairpin(">")
    )

for voice in ["horn voice", "tenor trombone voice",]:
    trinton.unmeasured_stem_tremolo(
        selections=abjad.select(score[voice]).leaves(pitched=True)
    )

trinton.attach(
    voice=score["horn voice"],
    leaves=[4],
    attachment=abjad.LilyPondLiteral(
        r'\boxed-markup "Rapid hand changes, fluttering valves, fluttertongue" 1', format_slot="after"
    ),
)

# trumpet attachments

trinton.write_trill_span(
    score=score,
    voice="trumpet voice",
    pitch=22,
    start_leaf=[4],
    stop_leaf=[6],
)

# trombone attachments

hexennacht.bass_clef(
    score_and_voice=score["tenor trombone voice"],
    leaves=[0],
)

hexennacht.treble_clef(
    score_and_voice=score["tenor trombone voice"],
    leaves=[8],
)

trinton.attach(
    voice=score["tenor trombone voice"],
    leaves=[4,],
    attachment=abjad.LilyPondLiteral(
        r'\boxed-markup "Rapidly switch between 1st and 7th, fluttertongue" 1', format_slot="after"
    ),
)

trinton.attach(
    voice=score["tenor trombone voice"],
    leaves=[4,],
    attachment=abjad.Dynamic("mf")
)

trinton.attach(
    voice=score["tenor trombone voice"],
    leaves=[8,],
    attachment=abjad.Dynamic("f")
)

# bass and tuba attachments

for voice in ["contrabass voice", "tuba voice"]:
    hexennacht.bass_clef(
        score_and_voice=score[voice],
        leaves=[0],
    )

    trinton.attach(
        voice=score[voice],
        leaves=[2, 9, 13,],
        attachment=abjad.Dynamic("mp")
    )

    trinton.attach(
        voice=score[voice],
        leaves=[5, 11, 16],
        attachment=abjad.Dynamic("f")
    )

    trinton.attach(
        voice=score[voice],
        leaves=[2, 9, 13,],
        attachment=abjad.StartHairpin("<")
    )

    trinton.attach(
        voice=score[voice],
        leaves=[5, 11,],
        attachment=abjad.StartHairpin(">")
    )

    if voice == "tuba voice":
        trinton.unmeasured_stem_tremolo(
            abjad.select(score[voice]).leaves(pitched=True)
        )

        trinton.attach(
            voice=score[voice],
            leaves=[2,],
            attachment=abjad.LilyPondLiteral(
                r'\boxed-markup "Fluttertongue" 1', format_slot="after"
            ),
        )

    else:
        trinton.attach(
            voice=score[voice],
            leaves=[2,],
            attachment=abjad.LilyPondLiteral(
                r'\boxed-markup "Slight OP" 1', format_slot="after"
            ),
        )

# piano attachments

trinton.attach(
    voice=score["piano 2 voice"],
    leaves=[3, 9,],
    attachment=abjad.Dynamic("ff", direction=abjad.Up,),
)

trinton.attach(
    voice=score["piano 2 voice"],
    leaves=[6, 12,],
    attachment=abjad.Dynamic("mf", direction=abjad.Up,),
)

trinton.attach(
    voice=score["piano 2 voice"],
    leaves=[3, 9, 10,],
    attachment=abjad.Articulation(">"),
)

# harp attachments

trinton.attach(
    voice=score["harp voice"],
    leaves=[2],
    attachment=abjad.Dynamic("ff"),
)

trinton.attach(
    voice=score["harp voice"],
    leaves=[2,],
    attachment=abjad.LilyPondLiteral(
        r'\boxed-markup "Circular scrape w/ plastic card" 1', format_slot="after"
    ),
)

trinton.unmeasured_stem_tremolo(
    selections=abjad.select(score["harp voice"]).leaves(pitched=True)
)

# percussion 1 attachments

trinton.write_slur(
    voice=score["marimba voice"],
    start_slur=[2, 14, 27,],
    stop_slur=[11, 22, 32,],
)

trinton.attach(
    voice=score["marimba voice"],
    leaves=[2],
    attachment=abjad.Dynamic("f")
)

trinton.attach(
    voice=score["marimba voice"],
    leaves=[2],
    attachment=abjad.LilyPondLiteral(
        r'\boxed-markup "Pitches approx., w/ drumsticks" 1', format_slot="after"
    ),
)

hexennacht.three_lines(
    score=score,
    voice="percussion 1 voice",
    leaves=[0],
)

trinton.transparent_accidentals(
    score=score,
    voice="percussion 1 voice",
    leaves=all,
)

hexennacht.percussion_clef(
    score_and_voice=score["percussion 1 voice"],
    leaves=[0],
)

trinton.unmeasured_stem_tremolo(
    abjad.select(score["percussion 1 voice"]).leaves(pitched=True)
)

trinton.attach(
    voice=score["percussion 1 voice"],
    leaves=[3],
    attachment=abjad.Dynamic("f"),
)

# bass drum attachments

hexennacht.percussion_clef(
    score_and_voice=score["percussion 2 voice"],
    leaves=[0],
)

hexennacht.one_line(
    score=score,
    voice="percussion 2 voice",
    leaves=[0],
)

trinton.transparent_accidentals(
    score=score,
    voice="percussion 2 voice",
    leaves=all,
)

hexennacht.bass_drum(
    score=score,
    voice="percussion 2 voice",
    leaves=[0]
)

trinton.attach(
    voice=score["percussion 2 voice"],
    leaves=[0],
    attachment=abjad.Dynamic("ff"),
)

trinton.attach(
    voice=score["percussion 2 voice"],
    leaves=[0, 2, 4, 7, 10, 12, 14, 16, 18, 21, 24, 26, 29, 31, 33,],
    attachment=abjad.Articulation(">"),
)

# violin 1 attachments

hexennacht.octave_up(
    abjad.select(score["violin 1 voice"]).leaves(pitched=True),
)

trinton.attach(
    voice=score["violin 1 voice"],
    leaves=[3],
    attachment=abjad.LilyPondLiteral(
        r'\boxed-markup "Slight OP" 1', format_slot="after"
    ),
)

trinton.write_markup(
    voice=score["violin 1 voice"],
    leaf=[3,],
    string=r"\italic espressivo",
    down=True,
)

trinton.write_slur(
    voice=score["violin 1 voice"],
    start_slur=[7, 11, 15, 18,],
    stop_slur=[10, 12, 17, 23,],
)

trinton.attach(
    voice=score["violin 1 voice"],
    leaves=[3, 4, 5, 7, 11, 15, 18,],
    attachment=abjad.Articulation("tenuto")
)

trinton.attach(
    voice=score["violin 1 voice"],
    leaves=[5, 15,],
    attachment=abjad.Dynamic("ff")
)

trinton.attach(
    voice=score["violin 1 voice"],
    leaves=[3, 11, 23,],
    attachment=abjad.Dynamic("mf")
)

trinton.attach(
    voice=score["violin 1 voice"],
    leaves=[3, 13,],
    attachment=abjad.StartHairpin("<"),
)

trinton.attach(
    voice=score["violin 1 voice"],
    leaves=[7, 18,],
    attachment=abjad.StartHairpin(">"),
)

# violin 2 attachments

for voice in ["violin 2 voice", "viola voice", "cello voice",]:
    trinton.change_notehead(
        voice=score[voice],
        leaves=all,
        notehead=r"#'cross"
    )

trinton.attach(
    voice=score["violin 2 voice"],
    leaves=[3, 11, 19, 27, 35, 43, 51, 59,],
    attachment=abjad.Tie()
)

for attachment in [abjad.Articulation("downbow"), abjad.Articulation(">"), abjad.Dynamic("ff")]:
    trinton.attach(
        voice=score["violin 2 voice"],
        leaves=[0, 2, 5, 8, 11, 14, 17, 19, 22, 25, 29, 31, 34, 37, 39, 42, 46, 48, 51, 54, 56, 59, 63,],
        attachment=attachment
    )

trinton.attach(
    voice=score["violin 2 voice"],
    leaves=[1, 3, 6, 9, 13, 15, 18, 21, 23, 26, 30, 32, 35, 38, 40, 43, 47, 49, 53, 55, 57, 61,],
    attachment=abjad.Dynamic("mp"),
)

trinton.attach(
    voice=score["violin 2 voice"],
    leaves=[1, 3, 6, 7, 9, 10, 13, 15, 16, 24, 27, 33, 41, 45, 50, 58, 62, 18, 21, 23, 26, 30, 32, 35, 38, 40, 43, 47, 49, 53, 55, 57, 61,],
    attachment=abjad.Articulation("upbow"),
)

trinton.attach(
    voice=score["violin 2 voice"],
    leaves=[0],
    attachment=abjad.LilyPondLiteral(
        r'\boxed-markup "OP" 1', format_slot="after"
    ),
)

# viola attachments

hexennacht.alto_clef(
    score_and_voice=score["viola voice"],
    leaves=[0],
)

trinton.attach(
    voice=score["viola voice"],
    leaves=[1, 5, 9, 13, 17, 21, 25, 29,],
    attachment=abjad.Tie()
)

for attachment in [abjad.Articulation("downbow"), abjad.Articulation(">"), abjad.Dynamic("ff")]:
    trinton.attach(
        voice=score["viola voice"],
        leaves=[0, 3, 5, 9, 13, 16, 20, 23, 25, 29,],
        attachment=attachment
    )

trinton.attach(
    voice=score["viola voice"],
    leaves=[1, 4, 7, 11, 15, 17, 21, 27, 31,],
    attachment=abjad.Dynamic("mp")
)

trinton.attach(
    voice=score["viola voice"],
    leaves=[8, 12, 19, 24, 28, 1, 4, 7, 11, 15, 17, 21, 27, 31,],
    attachment=abjad.Articulation("upbow")
)

trinton.attach(
    voice=score["viola voice"],
    leaves=[0],
    attachment=abjad.LilyPondLiteral(
        r'\boxed-markup "OP" 1', format_slot="after"
    ),
)

# cello attachments

hexennacht.bass_clef(
    score_and_voice=score["cello voice"],
    leaves=[0],
)

for attachment in [abjad.Articulation("downbow"), abjad.Articulation(">"), abjad.Dynamic("ff")]:
    trinton.attach(
        voice=score["cello voice"],
        leaves=[0, 2, 4, 7, 10, 12, 15, 17, 19, 22, 25, 28, 31,],
        attachment=attachment
    )

trinton.attach(
    voice=score["cello voice"],
    leaves=[1, 3, 5, 8, 11, 13, 16, 18, 20, 23, 26, 29,],
    attachment=abjad.Dynamic("mp")
)

trinton.attach(
    voice=score["cello voice"],
    leaves=[1, 3, 5, 6, 8, 9, 11, 13, 14, 16, 18, 20, 21, 23, 24, 26, 27, 29, 30,],
    attachment=abjad.Articulation("upbow")
)

trinton.attach(
    voice=score["cello voice"],
    leaves=[0],
    attachment=abjad.LilyPondLiteral(
        r'\boxed-markup "OP" 1', format_slot="after"
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
