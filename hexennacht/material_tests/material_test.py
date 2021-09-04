import abjad
import evans
import trinton
import hexennacht
from abjadext import rmakers
from abjadext import microtones

# make score template

score = hexennacht.score

trinton.write_time_signatures([(5, 4), (4, 4)], score["Global Context"])

# write new material function here

# piano

hexennacht.incantation(
    score=score,
    voice="piano 1 voice",
    bunch_1_tuplet=0,
    bunch_1_durations=[(1, 8)],
    talea=8,
    smooth_durations=[(5, 8)],
    bunch_2_tuplet=29,
    bunch_2_durations=[(1, 4)],
    pitch_index=0,
    transpose=None)

hexennacht.incantation(
    score=score,
    voice="piano 1 voice",
    bunch_1_tuplet=1,
    bunch_1_durations=[(1, 8)],
    talea=16,
    smooth_durations=[(5, 8)],
    bunch_2_tuplet=28,
    bunch_2_durations=[(1, 2)],
    pitch_index=8,
    transpose=None)

trinton.append_rests(
    score=score,
    voice="piano 2 voice",
    rests=[abjad.Rest("r8")]
)

hexennacht.incantation(
    score=score,
    voice="piano 2 voice",
    bunch_1_tuplet=1,
    bunch_1_durations=[(1, 8)],
    talea=16,
    smooth_durations=[(4, 8)],
    bunch_2_tuplet=28,
    bunch_2_durations=[(1, 2)],
    pitch_index=8,
    transpose=-11)

hexennacht.bass_clef(
    score_and_voice=score["piano 2 voice"],
    leaves=[0]
)

hexennacht.incantation(
    score=score,
    voice="piano 2 voice",
    bunch_1_tuplet=0,
    bunch_1_durations=[(1, 8)],
    talea=8,
    smooth_durations=[(3, 4)],
    bunch_2_tuplet=29,
    bunch_2_durations=[(1, 8)],
    pitch_index=0,
    transpose=-11)

# harp

trinton.append_rests(
    score=score,
    voice="harp voice",
    rests=[abjad.Rest("r4.")]
)

hexennacht.incantation(
    score=score,
    voice="harp voice",
    bunch_1_tuplet=2,
    bunch_1_durations=[(1, 4)],
    talea=8,
    smooth_durations=[(5, 8)],
    bunch_2_tuplet=26,
    bunch_2_durations=[(1, 8)],
    pitch_index=2,
    transpose=2)

hexennacht.incantation(
    score=score,
    voice="harp voice",
    bunch_1_tuplet=3,
    bunch_1_durations=[(1, 8)],
    talea=16,
    smooth_durations=[(5, 8)],
    bunch_2_tuplet=25,
    bunch_2_durations=[(1, 8)],
    pitch_index=10,
    transpose=2)

hexennacht.transpose_harp(
    score=score,
    voice="harp voice",
)

sel = [
    abjad.select(score["harp voice"]).leaf(4),
    abjad.select(score["harp voice"]).leaf(12),
    abjad.select(score["harp voice"]).leaf(14),
    abjad.select(score["harp voice"]).leaf(17),
]
hexennacht.octave_up(sel)

# flute and oboe

for voice in ["flute voice", "oboe voice",]:
    trinton.append_rests(
        score=score,
        voice=voice,
        rests=[abjad.Rest("r2."), abjad.Rest("r2"), abjad.Rest("r8")]
    )

    hexennacht.woodwind_swells(
        score=score,
        voice=voice,
        durations=[(3, 8)]
    )

    trinton.append_rests(
        score=score,
        voice=voice,
        rests=[abjad.Rest("r4")]
    )

    hexennacht.woodwind_swells(
        score=score,
        voice=voice,
        durations=[(1, 4)]
    )

hexennacht.flute_multiphonics(
    score=score,
    voice="flute voice",
    leaves=[3],
    multiphonic=3,
    markup=True
)

hexennacht.flute_multiphonics(
    score=score,
    voice="flute voice",
    leaves=[5],
    multiphonic=4,
    markup=True
)

hexennacht.oboe_harmonies(
    score=score,
    voice="oboe voice",
    leaves=[3],
    flute_multiphonic=3
)

hexennacht.oboe_harmonies(
    score=score,
    voice="oboe voice",
    leaves=[5],
    flute_multiphonic=4
)

# bass clarinet

trinton.append_rests(
    score=score,
    voice="bass clarinet voice",
    rests=[abjad.Rest("r2."), abjad.Rest("r2"), abjad.Rest("r4")]
)

hexennacht.woodwind_swells(
    score=score,
    voice="bass clarinet voice",
    durations=[(3, 8)]
)

trinton.append_rests(
    score=score,
    voice="bass clarinet voice",
    rests=[abjad.Rest("r4")]
)

hexennacht.woodwind_swells(
    score=score,
    voice="bass clarinet voice",
    durations=[(1, 8)]
)

hexennacht.clarinet_multiphonics(
    score=score,
    voice="bass clarinet voice",
    multiphonic=1,
    markup=True,
    leaves=[3]
)

hexennacht.clarinet_multiphonics(
    score=score,
    voice="bass clarinet voice",
    multiphonic=2,
    markup=True,
    leaves=[5]
)

# bassoon

trinton.append_rests(
    score=score,
    voice="bassoon voice",
    rests=[abjad.Rest("r8")],
)

hexennacht.woodwind_swells(
    score=score,
    voice="bassoon voice",
    durations=[(3, 8)]
)

trinton.append_rests(
    score=score,
    voice="bassoon voice",
    rests=[abjad.Rest("r4"), abjad.Rest("r4.")],
)

hexennacht.woodwind_swells(
    score=score,
    voice="bassoon voice",
    durations=[(1, 8)]
)

trinton.append_rests(
    score=score,
    voice="bassoon voice",
    rests=[abjad.Rest("r1")],
)

hexennacht.bassoon_multiphonics(
    score=score,
    voice="bassoon voice",
    multiphonic=1,
    leaves=[1],
    markup=True,
)

hexennacht.bassoon_multiphonics(
    score=score,
    voice="bassoon voice",
    multiphonic=2,
    leaves=[4],
    markup=True,
)

hexennacht.bass_clef(
    score_and_voice=score["bassoon voice"],
    leaves=[0]
)

# strings

for voice in ["violin 1 voice", "violin 2 voice", "viola voice", "cello voice"]:
    trinton.append_rests(
        score=score,
        voice=voice,
        rests=[abjad.Rest("r2")],
    )

    hexennacht.string_swells(
        score=score,
        voice=voice,
        tuplet_index=0,
        durations=[(3, 4)],
        pitch_index=15
    )

    hexennacht.string_swells(
        score=score,
        voice=voice,
        tuplet_index=0,
        durations=[(1, 2)],
        pitch_index=18
    )

    trinton.append_rests(
        score=score,
        voice=voice,
        rests=[abjad.Rest("r2")],
    )

hexennacht.alto_clef(
    score_and_voice=score["viola voice"],
    leaves=[0],
)

hexennacht.bass_clef(
    score_and_voice=score["cello voice"],
    leaves=[0],
)

# percussion

trinton.append_rests(
    score=score,
    voice="percussion 2 voice",
    rests=[abjad.Rest("r2."), abjad.Rest("r2"), abjad.Rest("r8")]
)

hexennacht.cymbal_swells(
    score=score,
    voice="percussion 2 voice",
    durations=[(3, 8)],
    tuplet_index=2
)

trinton.append_rests(
    score=score,
    voice="percussion 2 voice",
    rests=[abjad.Rest("r4")]
)

hexennacht.cymbal_swells(
    score=score,
    voice="percussion 2 voice",
    durations=[(1, 4)],
    tuplet_index=3
)

trinton.append_rests(
    score=score,
    voice="marimba voice",
    rests=[abjad.Rest("r8")],
)

hexennacht.marimba_shakes(
    score=score,
    voice="marimba voice",
    note_value=32,
    durations=[(1, 4)],
    pitched=True,
    pitch_index=2,
    high=False,
)

hexennacht.bass_clef(
    score_and_voice=score["marimba voice"],
    leaves=[0]
)

trinton.append_rests(
    score=score,
    voice="marimba voice",
    rests=[abjad.Rest("r2.")],
)

hexennacht.marimba_shakes(
    score=score,
    voice="marimba voice",
    note_value=32,
    durations=[(3, 8)],
    pitched=True,
    pitch_index=8,
    high=True,
)

trinton.append_rests(
    score=score,
    voice="marimba voice",
    rests=[abjad.Rest("r2.")],
)

# others

for voice in ["horn voice", "trumpet voice", "tenor trombone voice", "tuba voice", "percussion 1 voice", "contrabass voice",]:
    trinton.append_rests(
        score=score,
        voice=voice,
        rests=[abjad.Rest("r2."), abjad.Rest("r2"), abjad.Rest("r1")]
    )

# rewrite meter

trinton.rewrite_meter_without_splitting(score)

# attachments

trinton.attach(
    voice=score["flute voice"],
    leaves=[0],
    attachment=hexennacht.tempo_2,
)

for voice in ["flute voice", "oboe voice"]:
    trinton.attach(
        voice=score[voice],
        leaves=[3],
        attachment=abjad.Dynamic("p")
    )

    trinton.attach(
        voice=score[voice],
        leaves=[6],
        attachment=abjad.Dynamic("mp")
    )

    trinton.attach(
        voice=score[voice],
        leaves=[3],
        attachment=abjad.StartHairpin("--")
    )

    trinton.attach(
        voice=score[voice],
        leaves=[4],
        attachment=abjad.StopHairpin()
    )

trinton.attach(
    voice=score["bass clarinet voice"],
    leaves=[3],
    attachment=abjad.Dynamic("p")
)

trinton.attach(
    voice=score["bassoon voice"],
    leaves=[1],
    attachment=abjad.Dynamic("mp")
)

trinton.attach(
    voice=score["bassoon voice"],
    leaves=[1],
    attachment=abjad.StartHairpin("--")
)

trinton.attach(
    voice=score["bassoon voice"],
    leaves=[6],
    attachment=abjad.StopHairpin()
)

trinton.attach(
    voice=score["piano 1 voice"],
    leaves=[0, 6, 14, 24],
    attachment=abjad.Dynamic("p")
)

trinton.attach(
    voice=score["piano 1 voice"],
    leaves=[3,],
    attachment=abjad.Dynamic("mf")
)

trinton.attach(
    voice=score["piano 1 voice"],
    leaves=[7, 22],
    attachment=abjad.Dynamic("f")
)

trinton.attach(
    voice=score["piano 1 voice"],
    leaves=[0, 18],
    attachment=abjad.StartHairpin("<")
)

trinton.attach(
    voice=score["piano 1 voice"],
    leaves=[7,],
    attachment=abjad.StartHairpin(">")
)

trinton.write_slur(
    voice=score["piano 1 voice"],
    start_slur=[0, 3, 7, 14, 18, 22,],
    stop_slur=[2, 6, 13, 17, 21, 24,],
)

trinton.write_slur(
    voice=score["piano 2 voice"],
    start_slur=[1, 4, 6, 11, 14, 19,],
    stop_slur=[3, 5, 8, 13, 18, 22,],
)

trinton.attach(
    voice=score["harp voice"],
    leaves=[9, 21, 28,],
    attachment=abjad.Dynamic("p")
)

trinton.attach(
    voice=score["harp voice"],
    leaves=[2, 16, 22,],
    attachment=abjad.Dynamic("f")
)

trinton.attach(
    voice=score["harp voice"],
    leaves=[20,],
    attachment=abjad.Dynamic("mf")
)

trinton.attach(
    voice=score["harp voice"],
    leaves=[12,],
    attachment=abjad.StartHairpin("<")
)

trinton.attach(
    voice=score["harp voice"],
    leaves=[22,],
    attachment=abjad.StartHairpin(">")
)

trinton.write_slur(
    voice=score["harp voice"],
    start_slur=[2, 9, 12, 17, 20, 22,],
    stop_slur=[8, 11, 16, 19, 21, 28,],
)

trinton.attach(
    voice=score["marimba voice"],
    leaves=[1,],
    attachment=abjad.Dynamic("ff"),
)

trinton.write_slur(
    voice=score["marimba voice"],
    start_slur=[1, 13,],
    stop_slur=[8, 24,],
)

hexennacht.treble_clef(
    score_and_voice=score["marimba voice"],
    leaves=[13]
)

trinton.attach(
    voice=score["percussion 2 voice"],
    leaves=[3, 5, 8, 9,],
    attachment=abjad.Tie(),
)

trinton.attach(
    voice=score["percussion 2 voice"],
    leaves=[3, 8,],
    attachment=abjad.StartHairpin("o<"),
)

trinton.attach(
    voice=score["percussion 2 voice"],
    leaves=[4, 9,],
    attachment=abjad.Dynamic("mf"),
)

trinton.attach(
    voice=score["percussion 2 voice"],
    leaves=[4, 9,],
    attachment=abjad.StartHairpin(">o"),
)

trinton.attach(
    voice=score["percussion 2 voice"],
    leaves=[6, 10,],
    attachment=abjad.StopHairpin(),
)

for voice in ["violin 1 voice", "violin 2 voice", "viola voice", "cello voice",]:
    trinton.attach(
        voice=score[voice],
        leaves=[1, 2, 4, 5,],
        attachment=abjad.Tie()
    )

    trinton.attach(
        voice=score[voice],
        leaves=[2],
        attachment=abjad.Dynamic("mp")
    )

    trinton.attach(
        voice=score[voice],
        leaves=[5],
        attachment=abjad.Dynamic("mf")
    )

    trinton.attach(
        voice=score[voice],
        leaves=[1, 4,],
        attachment=abjad.StartHairpin("o<")
    )

    trinton.attach(
        voice=score[voice],
        leaves=[2, 5,],
        attachment=abjad.StartHairpin(">o")
    )

    trinton.attach(
        voice=score[voice],
        leaves=[3, 6],
        attachment=abjad.StopHairpin()
    )

# tuplet brackets

staves = ["flute staff", "oboe staff", "bass clarinet staff", "bassoon staff", "horn staff", "trumpet staff", "tenor trombone staff", "tuba staff", "piano 1 staff", "piano 2 staff", "harp staff", "marimba staff", "percussion 1 staff", "percussion 2 staff", "violin 1 staff", "violin 2 staff", "viola staff", "cello staff", "contrabass staff"]
new_brackets = evans.NoteheadBracketMaker()

for staff in staves:
    new_brackets(score[staff])

# beaming

trinton.beam_score_without_splitting(score)

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
