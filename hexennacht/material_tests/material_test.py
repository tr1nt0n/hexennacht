import abjad
import evans
import trinton
import hexennacht
from abjadext import rmakers
from abjadext import microtones

# make score template

score = hexennacht.score

trinton.write_time_signatures([(3, 4), (4, 4), (5, 4),], score["Global Context"])

# write new material function here

# brass

for index, voice in zip([0, 1, 2, 3], ["trumpet voice", "horn voice", "tenor trombone voice", "tuba voice"],):
    hexennacht.brass_shrieks(
        score=score,
        voice=voice,
        talea_index=index,
        talea=16,
        durations=[(10, 4)],
        pitched=True,
        pitch_index=0,
    )

    trinton.append_rests(
        score=score,
        voice=voice,
        rests=[abjad.Rest("r2")]
    )

# piano

for voice in ["flute voice", "oboe voice", "piano 1 voice", "piano 2 voice", "harp voice",]:
    trinton.append_rests(
        score=score,
        voice=voice,
        rests=[abjad.Rest("r2."), abjad.Rest("r1"), abjad.Rest("r4"),]
    )

hexennacht.incantation(
    score=score,
    voice="piano 1 voice",
    bunch_1_tuplet=14,
    bunch_1_durations=[(3, 8)],
    talea=32,
    smooth_durations=[(2, 4)],
    bunch_2_tuplet=20,
    bunch_2_durations=[(1, 8)],
    pitch_index=4,
    transpose=24,
)

trinton.append_rests(
    score=score,
    voice="piano 2 voice",
    rests=[(abjad.Rest("r2"))]
)

hexennacht.incantation(
    score=score,
    voice="piano 2 voice",
    bunch_1_tuplet=20,
    bunch_1_durations=[(1, 8)],
    talea=16,
    smooth_durations=[(1, 4)],
    bunch_2_tuplet=14,
    bunch_2_durations=[(1, 8)],
    pitch_index=7,
    transpose=-20,
)

# harp

hexennacht.incantation(
    score=score,
    voice="harp voice",
    bunch_1_tuplet=21,
    bunch_1_durations=[(2, 4)],
    talea=32,
    smooth_durations=[(3, 8)],
    bunch_2_tuplet=13,
    bunch_2_durations=[(1, 8)],
    pitch_index=10,
    transpose=-7
)

hexennacht.transpose_harp(score=score, voice="harp voice")

# oboe

hexennacht.warble(
    score=score,
    voice="oboe voice",
    accel_durations=[(1, 2)],
    rit_durations=[(3, 8)],
    rit_first=False,
    pitched=True
)

trinton.append_rests(
    score=score,
    voice="oboe voice",
    rests=[abjad.Rest("r8")],
)

# flute

hexennacht.flute_solo(
    score=score,
    voice="flute voice",
    tuplet_index=3,
    flourish_durations=[(1, 4)],
    talea=16,
    talea_index=0,
    talea_durations=[(3, 4)]
)

hexennacht.pitch_flute_flourishes(
    score=score,
    voice="flute voice",
    start_index=0,
    leaves=[3, 4, 5, 6]
)

hexennacht.pitch_flute_pf(
    score=score,
    voice="flute voice",
    leaves=[7, 8, 9, 11, 12,]
)

# all voices

for voice in [
    "bass clarinet voice",
    "bassoon voice",
    "marimba voice",
    "percussion 1 voice",
    "percussion 2 voice",
    "violin 1 voice",
    "violin 2 voice",
    "viola voice",
    "cello voice",
    "contrabass voice",
]:
    trinton.append_rests(
        score=score,
        voice=voice,
        rests=[abjad.Rest("r2."), abjad.Rest("r1"), abjad.Rest("r2."), abjad.Rest("r2"),]
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

# beaming and meter rewriting

trinton.rewrite_meter(score)

trinton.beam_score(score)

# trinton.annotate_leaves(score)

# clefs

hexennacht.bass_clef(
    score_and_voice=score["tuba voice"],
    leaves=[0]
)

hexennacht.bass_clef(
    score_and_voice=score["piano 2 voice"],
    leaves=[0]
)

hexennacht.bass_clef(
    score_and_voice=score["harp voice"],
    leaves=[0]
)

hexennacht.bass_clef(
    score_and_voice=score["tenor trombone voice"],
    leaves=[4, 12, ]
)

hexennacht.treble_clef(
    score_and_voice=score["tenor trombone voice"],
    leaves=[0, 9, 14,]
)

# flute attachments

trinton.write_slur(
    voice=score["flute voice"],
    start_slur=[3, 7, 9,],
    stop_slur=[6, 8, 11,]
)

trinton.attach(
    voice=score["flute voice"],
    leaves=[3, 8, 11,],
    attachment=abjad.Dynamic("ffff"),
)

trinton.attach(
    voice=score["flute voice"],
    leaves=[7, 9],
    attachment=abjad.Dynamic("p"),
)

trinton.attach(
    voice=score["flute voice"],
    leaves=[7, 9],
    attachment=abjad.StartHairpin("<|"),
)

trinton.write_text_span(
    voice=score["flute voice"],
    begin_text=r"90",
    end_text=r"0",
    start_leaf=[7, 9],
    stop_leaf=[8, 11],
    padding=1)

# oboe attachments

trinton.attach(
    voice=score["oboe voice"],
    leaves=[4, 5, 6, 10, 11, 12, 13,],
    attachment=abjad.Glissando()
)

trinton.attach(
    voice=score["oboe voice"],
    leaves=[4, 6, 11, 13],
    attachment=abjad.Articulation("open")
)

trinton.attach(
    voice=score["oboe voice"],
    leaves=[5, 7, 10, 12,],
    attachment=abjad.Articulation("stopped")
)

trinton.write_slur(
    voice=score["oboe voice"],
    start_slur=[4, 10,],
    stop_slur=[7, 13,],
)

trinton.attach(
    voice=score["oboe voice"],
    leaves=[7],
    attachment=abjad.Dynamic("mf"),
)

trinton.attach(
    voice=score["oboe voice"],
    leaves=[4],
    attachment=abjad.StartHairpin("o<")
)

trinton.attach(
    voice=score["oboe voice"],
    leaves=[10],
    attachment=abjad.StartHairpin(">o")
)

trinton.attach(
    voice=score["oboe voice"],
    leaves=[14],
    attachment=abjad.StopHairpin(),
)

# horn attachments

trinton.attach(
    voice=score["horn voice"],
    leaves=[0],
    attachment=abjad.LilyPondLiteral(
        r'\boxed-markup "Rapid hand changes, fluttering valves, fluttertongue" 1', format_slot="after"
    ),
)

for voice in ["horn voice", "tenor trombone voice",]:
    trinton.unmeasured_stem_tremolo(abjad.select(score[voice]).leaves(pitched=True))

trinton.attach(
    voice=score["horn voice"],
    leaves=[0],
    attachment=abjad.Dynamic("ff"),
)

trinton.attach(
    voice=score["horn voice"],
    leaves=[9],
    attachment=abjad.StartHairpin(">"),
)

trinton.attach(
    voice=score["horn voice"],
    leaves=[15],
    attachment=abjad.Dynamic("pp"),
)

# trumpet attachments

trinton.write_trill_span(
    score=score,
    voice="trumpet voice",
    pitch=16.5,
    start_leaf=[0],
    stop_leaf=[1]
)

trinton.write_trill_span(
    score=score,
    voice="trumpet voice",
    pitch=22,
    start_leaf=[2],
    stop_leaf=[3]
)

trinton.write_trill_span(
    score=score,
    voice="trumpet voice",
    pitch=14.5,
    start_leaf=[4],
    stop_leaf=[6]
)

trinton.write_trill_span(
    score=score,
    voice="trumpet voice",
    pitch=19.5,
    start_leaf=[7],
    stop_leaf=[9]
)

trinton.write_trill_span(
    score=score,
    voice="trumpet voice",
    pitch=15,
    start_leaf=[12],
    stop_leaf=[13]
)

trinton.attach(
    voice=score["trumpet voice"],
    leaves=[0],
    attachment=abjad.Dynamic("ff"),
)

trinton.attach(
    voice=score["trumpet voice"],
    leaves=[13],
    attachment=abjad.Dynamic("pp"),
)

trinton.attach(
    voice=score["trumpet voice"],
    leaves=[8],
    attachment=abjad.StartHairpin(">"),
)

trinton.attach(
    voice=score["trumpet voice"],
    leaves=[1, 6,],
    attachment=abjad.Glissando(),
)

# trombone voice

trinton.attach(
    voice=score["tenor trombone voice"],
    leaves=[1],
    attachment=abjad.LilyPondLiteral(
        r'\boxed-markup "Rapidly switch between 1st and 7th, fluttertongue" 1', format_slot="after"
    ),
)

trinton.attach(
    voice=score["tenor trombone voice"],
    leaves=[1],
    attachment=abjad.Dynamic("ff")
)

trinton.attach(
    voice=score["tenor trombone voice"],
    leaves=[14],
    attachment=abjad.Dynamic("pp")
)

trinton.attach(
    voice=score["tenor trombone voice"],
    leaves=[9],
    attachment=abjad.StartHairpin(">")
)

# tuba voice

trinton.attach(
    voice=score["tuba voice"],
    leaves=[0],
    attachment=abjad.LilyPondLiteral(
        r'\boxed-markup "Overblow" 1', format_slot="after"
    ),
)

trinton.attach(
    voice=score["tuba voice"],
    leaves=[0],
    attachment=abjad.Dynamic("ffff")
)

trinton.attach(
    voice=score["tuba voice"],
    leaves=[0, 2, 6, 8, 10],
    attachment=abjad.Articulation(">")
)

# piano attachments

trinton.write_slur(
    voice=score["piano 1 voice"],
    start_slur=[3, 8, 12,],
    stop_slur=[7, 11, 17,],
)

trinton.write_slur(
    voice=score["piano 2 voice"],
    start_slur=[3, 11,],
    stop_slur=[8, 14,],
)

trinton.attach(
    voice=score["piano 1 voice"],
    leaves=[3],
    attachment=abjad.Dynamic("p")
)

trinton.attach(
    voice=score["piano 1 voice"],
    leaves=[3],
    attachment=abjad.StartHairpin("<")
)

trinton.attach(
    voice=score["piano 1 voice"],
    leaves=[8],
    attachment=abjad.Dynamic("mp")
)

trinton.attach(
    voice=score["piano 1 voice"],
    leaves=[12],
    attachment=abjad.Dynamic("f")
)

# harp attachments

trinton.write_slur(
    voice=score["harp voice"],
    start_slur=[3, 9, 13,],
    stop_slur=[8, 12, 17,],
)

trinton.attach(
    voice=score["harp voice"],
    leaves=[3],
    attachment=abjad.Dynamic("p")
)

trinton.attach(
    voice=score["harp voice"],
    leaves=[3],
    attachment=abjad.StartHairpin("<")
)

trinton.attach(
    voice=score["harp voice"],
    leaves=[9],
    attachment=abjad.Dynamic("mp")
)

trinton.attach(
    voice=score["harp voice"],
    leaves=[13],
    attachment=abjad.Dynamic("f")
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
