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
        (7, 4),
        (3, 4),
        (3, 4),
        (2, 4),
        (3, 4),
        (3, 4),
        (2, 4),
        (3, 4),
        (3, 4),
        (2, 4),
        (4, 4),
    ],
    score["Global Context"]
)

# brass

for voice, index in zip(["horn voice", "trumpet voice", "tenor trombone voice", "tuba voice"], [1, 0, 3, 2,]):
    hexennacht.brass_shrieks(
        score=score,
        voice=voice,
        talea_index=index,
        talea=16,
        durations=[(11, 4)],
        pitched=True,
        pitch_index=1
    )

for voice in ["horn voice", "trumpet voice", "tenor trombone voice", "tuba voice"]:
    trinton.append_rests(
        score=score,
        voice=voice,
        rests=[abjad.Rest("r2"), abjad.Rest("r2"), abjad.Rest("r2."), abjad.Rest("r2."), abjad.Rest("r2"), abjad.Rest("r2."), abjad.Rest("r2."), abjad.Rest("r2"), abjad.Rest("r1")]
    )

# harp and piano

for voice in ["piano 1 voice", "piano 2 voice", "harp voice", "oboe voice", "flute voice"]:
    trinton.append_rests(
        score=score,
        voice=voice,
        rests=[abjad.Rest("r1..")]
    )

for voice, index in zip(["piano 1 voice", "piano 2 voice", "harp voice"], [0, 1, 2]):
    hexennacht.incantation(
        score=score,
        voice=voice,
        bunch_1_tuplet=18,
        bunch_1_durations=[(1, 4)],
        talea=16,
        smooth_durations=[(5, 4)],
        bunch_2_tuplet=11,
        bunch_2_durations=[(1, 8)],
        pitch_index=index,
        transpose=False
    )

for voice in ["piano 1 voice", "piano 2 voice", "harp voice",]:
    trinton.append_rests(
        score=score,
        voice=voice,
        rests=[abjad.Rest("r4."), abjad.Rest("r2."), abjad.Rest("r2."), abjad.Rest("r2"), abjad.Rest("r2."), abjad.Rest("r2."), abjad.Rest("r2"), abjad.Rest("r1")]
    )

hexennacht.transpose_harp(
    score=score,
    voice="harp voice"
)

# flute

for voice in ["oboe voice", "flute voice"]:
    trinton.append_rests(
        score=score,
        voice=voice,
        rests=[abjad.Rest("r4.")]
    )

hexennacht.flute_solo(
    score=score,
    voice="flute voice",
    tuplet_index=0,
    flourish_durations=[(1, 4)],
    talea=16,
    talea_index=0,
    talea_durations=[(7, 8)],
)

trinton.append_rests(
    score=score,
    voice="flute voice",
    rests=[abjad.Rest("r8")]
)

hexennacht.flute_solo(
    score=score,
    voice="flute voice",
    tuplet_index=1,
    flourish_durations=[(1, 4)],
    talea=16,
    talea_index=6,
    talea_durations=[(7, 8)],
)

hexennacht.flute_solo(
    score=score,
    voice="flute voice",
    tuplet_index=2,
    flourish_durations=[(1, 2)],
    talea=16,
    talea_index=0,
    talea_durations=[(5, 4)],
)

hexennacht.flute_solo(
    score=score,
    voice="flute voice",
    tuplet_index=3,
    flourish_durations=[(1, 4)],
    talea=32,
    talea_index=7,
    talea_durations=[(5, 4)],
)

trinton.append_rests(
    score=score,
    voice="flute voice",
    rests=[abjad.Rest("r1")]
)

# oboe

hexennacht.warble(
    score=score,
    voice="oboe voice",
    accel_durations=[(3, 8)],
    rit_durations=[(3, 4)],
    rit_first=False,
    pitched=True
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
    pitched=True
)

trinton.append_rests(
    score=score,
    voice="oboe voice",
    rests=[abjad.Rest("r4.")]
)

hexennacht.warble(
    score=score,
    voice="oboe voice",
    accel_durations=[(3, 4)],
    rit_durations=[(1, 2)],
    rit_first=False,
    pitched=True
)

trinton.append_rests(
    score=score,
    voice="oboe voice",
    rests=[abjad.Rest("r2."), abjad.Rest("r2."), abjad.Rest("r2"), abjad.Rest("r1")]
)

# bassoon and cello

for voice in ["bassoon voice", "percussion 2 voice", "cello voice"]:
    trinton.append_rests(
        score=score,
        voice=voice,
        rests=[abjad.Rest("r1.."), abjad.Rest("r2."), abjad.Rest("r2."), abjad.Rest("r2"), abjad.Rest("r2."), abjad.Rest("r2."), abjad.Rest("r2"), abjad.Rest("r2."), abjad.Rest("r2."), abjad.Rest("r2"), abjad.Rest("r2.")]
    )

for voice, index in zip(["bassoon voice", "cello voice"], [0, 6]):
    hexennacht.marimba_shakes(
        score=score,
        voice= voice,
        note_value=64,
        durations=[(1, 4)],
        pitched=True,
        pitch_index=index,
        high=False
    )

# percussion 2

trinton.handwrite(
    score=score,
    voice="percussion 2 voice",
    durations=[(1, 4)],
    pitch_list=[4]
)

trinton.transparent_accidentals(
    score=score,
    voice="percussion 2 voice",
    leaves=all
)

# all voices

for voice in ["bass clarinet voice", "marimba voice", "percussion 1 voice", "violin 1 voice", "violin 2 voice", "viola voice", "contrabass voice"]:
    trinton.append_rests(
        score=score,
        voice=voice,
        rests=[abjad.Rest("r1.."), abjad.Rest("r2."), abjad.Rest("r2."), abjad.Rest("r2"), abjad.Rest("r2."), abjad.Rest("r2."), abjad.Rest("r2"), abjad.Rest("r2."), abjad.Rest("r2."), abjad.Rest("r2"), abjad.Rest("r1")]
    )

trinton.rewrite_meter(score)

trinton.beam_score(score)

hexennacht.standard_cleffing(score)

trinton.write_marginmarkups(
    score=score,
    voices=hexennacht.all_staves,
    markups=hexennacht.all_marginmarkups,
)

# trinton.annotate_leaves(score)

# global context

trinton.tempo_ramp_span(
    score=score,
    voice="Global Context",
    begin_text=r'\italic \abs-fontsize #12 { "Rit." }',
    end_text=r".",
    start_leaf=[0, 3, 6,],
    stop_leaf=[1, 4, 7,],
    padding=7.15
)

for tempo, leaf, in zip([hexennacht.tempo_3, hexennacht.tempo_2, hexennacht.tempo_1], [1, 4, 7,]):
    trinton.attach(
        voice=score["Global Context"],
        leaves=[leaf],
        attachment=tempo
    )

markup = abjad.Markup(r'\abs-fontsize #14 { "x3" }', direction=abjad.Up)
abjad.tweak(markup).padding = 10.15

trinton.attach_multiple(
    score=score,
    voice="Global Context",
    leaves=[0],
    attachments=[abjad.BarLine(":|."), markup]
)

trinton.attach(
    voice=score["Global Context"],
    leaves=[10],
    attachment=abjad.BarLine("|.")
)

# flute attachments

hexennacht.pitch_flute_flourishes(
    score=score,
    voice="flute voice",
    start_index=0,
    leaves=[3, 4, 5, 6, 7, 8, 18, 19, 20, 21, 22, 23, 31, 32, 33, 34, 45, 46, 47, 48,]
)

hexennacht.pitch_flute_pf(
    score=score,
    voice="flute voice",
    leaves=[9, 11, 12, 14, 15, 16, 24, 27, 28, 30, 35, 36, 37, 39, 40, 42, 43, 49, 50, 52, 53, 55, 56, 58, 59, 60, 61, 63, 64, 66, 67, 69, 70,]
)

trinton.write_slur(
    voice=score["flute voice"],
    start_slur=[3, 9, 12, 15, 18, 24, 28, 31, 35, 37, 40, 45, 50, 53, 56, 59, 61, 64, 67,],
    stop_slur=[8, 11, 14, 16, 23, 27, 30, 34, 36, 39, 42, 48, 52, 55, 58, 60, 63, 66, 69,],
)

trinton.attach(
    voice=score["flute voice"],
    leaves=[9, 12, 15, 24, 28, 35, 37, 40, 50, 53, 56, 59, 61, 64, 67,],
    attachment=abjad.StartHairpin("o<|")
)

trinton.attach_multiple(
    score=score,
    voice="flute voice",
    leaves=[11, 14, 16, 27, 30, 36, 39, 42, 49, 52, 55, 58, 60, 63, 66, 69,],
    attachments=[abjad.Dynamic("ffff"), abjad.Articulation("marcato")]
)

trinton.attach(
    voice=score["flute voice"],
    leaves=[3, 18, 31, 45,],
    attachment=abjad.Dynamic("ff")
)

trinton.attach(
    voice=score["flute voice"],
    leaves=[43,],
    attachment=abjad.StartHairpin("o<")
)

trinton.attach(
    voice=score["flute voice"],
    leaves=[70,],
    attachment=abjad.Articulation("marcato")
)

trinton.write_text_span(
    voice=score["flute voice"],
    begin_text=r"90˚",
    end_text=r"0˚",
    start_leaf=[9, 12, 15, 24, 28, 35, 37, 40, 50, 53, 56, 59, 61, 64, 67,],
    stop_leaf=[11, 14, 16, 27, 30, 36, 39, 42, 52, 55, 58, 60, 63, 66, 69,],
    padding=3
)

trinton.write_markup(
    voice=score["flute voice"],
    leaf=[43,],
    string=r"\italic 90˚",
    down=False,
)

trinton.write_markup(
    voice=score["flute voice"],
    leaf=[49,],
    string=r"\italic 0˚",
    down=False,
)

trinton.write_markup(
    voice=score["flute voice"],
    leaf=[3, 18, 31, 45,],
    string=r"\italic 45˚",
    down=False,
)

# oboe attachments

trinton.attach(
    voice=score["oboe voice"],
    leaves=[4,],
    attachment=abjad.LilyPondLiteral(
        r'\boxed-markup "Norm." 1', format_slot="after"
    ),
)

trinton.write_slur(
    voice=score["oboe voice"],
    start_slur=[4, 9, 20, 26, 33, 43,],
    stop_slur=[6, 16, 23, 28, 40, 47,],
)

trinton.attach(
    voice=score["oboe voice"],
    leaves=[4, 5, 6, 9, 10, 11, 12, 13, 14, 15, 20, 21, 22, 26, 27, 33, 34, 35, 36, 37, 38, 39, 43, 44, 45, 46,],
    attachment=abjad.Glissando()
)

trinton.attach(
    voice=score["oboe voice"],
    leaves=[4, 26, 33, ],
    attachment=abjad.StartHairpin("o<")
)

trinton.attach_multiple(
    score=score,
    voice="oboe voice",
    leaves=[9,],
    attachments=[abjad.Dynamic("mf"), abjad.StartHairpin(">o")]
)

trinton.attach_multiple(
    score=score,
    voice="oboe voice",
    leaves=[20,],
    attachments=[abjad.Dynamic("f"), abjad.StartHairpin(">o")]
)

trinton.attach_multiple(
    score=score,
    voice="oboe voice",
    leaves=[40,],
    attachments=[abjad.Dynamic("p"), abjad.StartHairpin(">o")]
)

trinton.attach(
    voice=score["oboe voice"],
    leaves=[17, 24, 48,],
    attachment=abjad.StopHairpin()
)

trinton.attach(
    voice=score["oboe voice"],
    leaves=[28],
    attachment=abjad.Dynamic("ff")
)

# horn attachments

for voice in ["horn voice", "tenor trombone voice", "tuba voice", "bassoon voice", "percussion 2 voice"]:
    trinton.unmeasured_stem_tremolo(
        abjad.select(score[voice]).leaves(pitched=True)
    )

trinton.attach(
    voice=score["horn voice"],
    leaves=[3,],
    attachment=abjad.StartHairpin("<")
)

trinton.attach(
    voice=score["horn voice"],
    leaves=[5,],
    attachment=abjad.Dynamic("ffff")
)

trinton.attach(
    voice=score["horn voice"],
    leaves=[13,],
    attachment=abjad.StartHairpin(">o")
)

trinton.attach(
    voice=score["horn voice"],
    leaves=[16,],
    attachment=abjad.StopHairpin()
)

trinton.attach(
    voice=score["horn voice"],
    leaves=[0, 3, 5, 9,],
    attachment=abjad.Articulation(">")
)

# trumpet attachments

trinton.write_trill_span(
    score=score,
    voice="trumpet voice",
    pitch=16.5,
    start_leaf=[12,],
    stop_leaf=[14,]
)

trinton.write_trill_span(
    score=score,
    voice="trumpet voice",
    pitch=22,
    start_leaf=[0, 15,],
    stop_leaf=[2, 17,]
)

trinton.write_trill_span(
    score=score,
    voice="trumpet voice",
    pitch=15,
    start_leaf=[7,],
    stop_leaf=[10,]
)

trinton.write_trill_span(
    score=score,
    voice="trumpet voice",
    pitch=14.5,
    start_leaf=[2,],
    stop_leaf=[3,]
)

trinton.write_trill_span(
    score=score,
    voice="trumpet voice",
    pitch=19.5,
    start_leaf=[4,],
    stop_leaf=[7,]
)

trinton.attach(
    voice=score["trumpet voice"],
    leaves=[1, 6,],
    attachment=abjad.Glissando()
)

trinton.attach(
    voice=score["trumpet voice"],
    leaves=[4,],
    attachment=abjad.StartHairpin("<")
)

trinton.attach(
    voice=score["trumpet voice"],
    leaves=[7,],
    attachment=abjad.Dynamic("ffff")
)

trinton.attach(
    voice=score["trumpet voice"],
    leaves=[12,],
    attachment=abjad.StartHairpin(">o")
)

trinton.attach(
    voice=score["trumpet voice"],
    leaves=[17,],
    attachment=abjad.StopHairpin()
)

trinton.attach(
    voice=score["trumpet voice"],
    leaves=[0, 4,],
    attachment=abjad.Articulation(">")
)

# trombone attachments

hexennacht.treble_clef(
    score["tenor trombone voice"],
    [2, 8,]
)

hexennacht.bass_clef(
    score["tenor trombone voice"],
    [6, 10,]
)

trinton.attach(
    voice=score["tenor trombone voice"],
    leaves=[0,],
    attachment=abjad.StartHairpin("<")
)

trinton.attach(
    voice=score["tenor trombone voice"],
    leaves=[2,],
    attachment=abjad.Dynamic("ffff")
)

trinton.attach(
    voice=score["tenor trombone voice"],
    leaves=[10,],
    attachment=abjad.StartHairpin(">o")
)

trinton.attach(
    voice=score["tenor trombone voice"],
    leaves=[15,],
    attachment=abjad.StopHairpin()
)

trinton.attach(
    voice=score["tenor trombone voice"],
    leaves=[0, 2, 6, 8,],
    attachment=abjad.Articulation(">")
)

# tuba attachments

trinton.attach(
    voice=score["tuba voice"],
    leaves=[1,],
    attachment=abjad.StartHairpin("<")
)

trinton.attach(
    voice=score["tuba voice"],
    leaves=[4,],
    attachment=abjad.Dynamic("ffff")
)

trinton.attach(
    voice=score["tuba voice"],
    leaves=[12,],
    attachment=abjad.StartHairpin(">o")
)

trinton.attach(
    voice=score["tuba voice"],
    leaves=[15,],
    attachment=abjad.StopHairpin()
)

trinton.attach(
    voice=score["tuba voice"],
    leaves=[1, 4, 9,],
    attachment=abjad.Articulation(">")
)

# harp and piano attachments

for leaf in abjad.select(score["piano 2 voice"]).leaves(pitched=True):
    abjad.mutate.transpose(leaf, -6)

for number in [6, 10, 11,]:
    sel = abjad.select(score["piano 2 voice"]).leaf(number)
    hexennacht.octave_down([sel])

for number in [1, 10, 11, 12, 14, 15,]:
    sel = abjad.select(score["piano 2 voice"]).leaf(number)
    abjad.iterpitches.respell_with_flats(sel)

for voice in ["piano 1 voice", "piano 2 voice", "harp voice"]:
    trinton.write_slur(
        voice=score[voice],
        start_slur=[1, 13,],
        stop_slur=[6, 17,],
    )

for voice in ["piano 1 voice", "harp voice"]:
    trinton.write_markup(
        voice=score[voice],
        leaf=[1],
        string=r"\italic Dolcissimo",
        down=True
    )

    trinton.attach_multiple(
        score=score,
        voice=voice,
        leaves=[1,],
        attachments=[abjad.Dynamic("pp"), abjad.StartHairpin("<")]
    )

    trinton.attach_multiple(
        score=score,
        voice=voice,
        leaves=[10,],
        attachments=[abjad.Dynamic("mp"), abjad.StartHairpin(">")]
    )

    trinton.attach(
        voice=score[voice],
        leaves=[13,],
        attachment=abjad.Dynamic("ppp")
    )

    trinton.attach(
        voice=score[voice],
        leaves=[7, 8, 10, 12,],
        attachment=abjad.Articulation("tenuto")
    )

# bassoon attachments

for voice in ["bassoon voice", "cello voice"]:
    trinton.write_slur(
        voice=score[voice],
        start_slur=[11,],
        stop_slur=[26,],
    )

    trinton.attach(
        voice=score[voice],
        leaves=[11,],
        attachment=abjad.StartHairpin("o<|")
    )

    trinton.attach_multiple(
        score=score,
        voice=voice,
        leaves=[19,],
        attachments=[abjad.Dynamic("mp"), abjad.StartHairpin("|>o")]
    )

    trinton.attach(
        voice=score[voice],
        leaves=[26,],
        attachment=abjad.StopHairpin()
    )

trinton.attach(
    voice=score["bassoon voice"],
    leaves=[11,],
    attachment=abjad.LilyPondLiteral(
        r'\boxed-markup "Norm." 1', format_slot="after"
    ),
)

# cello attachments

trinton.attach(
    voice=score["cello voice"],
    leaves=[11,],
    attachment=abjad.LilyPondLiteral(
        r'\boxed-markup "MSP, Molto Flaut." 1', format_slot="after"
    ),
)

trinton.change_notehead(
    voice=score["cello voice"],
    leaves=all,
    notehead=r"#'harmonic"
)

# percussion 2 attachments

hexennacht.three_lines(
    score=score,
    voice="percussion 2 voice",
    leaves=[11,]
)

trinton.attach_multiple(
    score=score,
    voice="percussion 2 voice",
    leaves=[11,],
    attachments=[
        abjad.LilyPondLiteral(
            r'\boxed-markup "Gongs, scrape w/ triangle beater" 1', format_slot="after"
        ),
        abjad.Dynamic("pp"),
    ]
)

# show file

trinton.render_file(
    score=score,
    segment_path="/Users/trintonprater/scores/hexennacht/hexennacht/segments/09",
    build_path="/Users/trintonprater/scores/hexennacht/hexennacht/build",
    segment_name="09",
    includes=[
        "/Users/trintonprater/scores/hexennacht/hexennacht/build/hexennacht-stylesheet.ily",
        "/Users/trintonprater/abjad/docs/source/_stylesheets/abjad.ily",
    ]
)
