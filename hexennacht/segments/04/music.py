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
    transpose=-10
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
    transpose=-11
)

trinton.append_rests(
    score=score,
    voice="piano 1 voice",
    rests=[abjad.Rest("r4")]
)

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
    transpose=8
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
    transpose=10
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
    transpose=1
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
    transpose=-3
)

hexennacht.transpose_harp(
    score=score,
    voice="harp voice"
)

# remember to transpose stragglers by hand!!!

for voice in ["piano 1 voice", "piano 2 voice", "harp voice"]:
    trinton.append_rests(
        score=score,
        voice=voice,
        rests=[abjad.Rest("r2.."), abjad.Rest("r2.")]
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
        durations=[(3, 8),]
    )

    trinton.append_rests(
        score=score,
        voice=voice,
        rests=[abjad.Rest("r8"), abjad.Rest("r2"), abjad.Rest("r8"),],
    )

    hexennacht.woodwind_swells(
        score=score,
        voice=voice,
        durations=[(1, 4),]
    )

    trinton.append_rests(
        score=score,
        voice=voice,
        rests=[abjad.Rest("r8"),],
    )

trinton.append_rests(
    score=score,
    voice="flute voice",
    rests=[abjad.Rest("r2.")]
)

hexennacht.marimba_shakes(
    score=score,
    voice="flute voice",
    note_value=32,
    durations=[(3, 8)],
    pitched=True,
    pitch_index=4,
    high=True
)

trinton.append_rests(
    score=score,
    voice="flute voice",
    rests=[abjad.Rest("r4")]
)

hexennacht.marimba_shakes(
    score=score,
    voice="flute voice",
    note_value=32,
    durations=[(1, 4)],
    pitched=True,
    pitch_index=16,
    high=True
)

trinton.append_rests(
    score=score,
    voice="flute voice",
    rests=[abjad.Rest("r8")]
)

hexennacht.marimba_shakes(
    score=score,
    voice="flute voice",
    note_value=32,
    durations=[(3, 8)],
    pitched=True,
    pitch_index=24,
    high=True
)

trinton.append_rests(
    score=score,
    voice="flute voice",
    rests=[abjad.Rest("r4")]
)

# oboe

hexennacht.warble(
    score=score,
    voice="oboe voice",
    accel_durations=[(3, 8)],
    rit_durations=[(3, 8)],
    rit_first=False,
    pitched=True
)

hexennacht.warble(
    score=score,
    voice="oboe voice",
    accel_durations=[(3, 4)],
    rit_durations=[(7, 8)],
    rit_first=True,
    pitched=True
)

# clarinet

for voice in ["bass clarinet voice", "bassoon voice"]:
    trinton.append_rests(
        score=score,
        voice=voice,
        rests=[abjad.Rest("r2"), abjad.Rest("r4."),]
    )

    hexennacht.woodwind_swells(
        score=score,
        voice=voice,
        durations=[(5, 16),]
    )

    trinton.append_rests(
        score=score,
        voice=voice,
        rests=[abjad.Rest("r8."),]
    )

trinton.append_rests(
    score=score,
    voice="bass clarinet voice",
    rests=[abjad.Rest("r4"), abjad.Rest("r1")]
)

trinton.handwrite(
    score=score,
    voice="bass clarinet voice",
    durations=[(1, 4), (1, 4), (1, 4), (1, 4), (1, 4), (1, 4), (1, 8),],
    pitch_list=None,
)

# bassoon

hexennacht.dance(
    score=score,
    voice="bassoon voice",
    tuplet_index=1,
    durations=[(1, 4)],
    pitch_index=0,
    transpose=-24
)

hexennacht.dance(
    score=score,
    voice="bassoon voice",
    tuplet_index=2,
    durations=[(2, 4)],
    pitch_index=3,
    transpose=-24
)

hexennacht.dance(
    score=score,
    voice="bassoon voice",
    tuplet_index=3,
    durations=[(1, 4)],
    pitch_index=8,
    transpose=-24
)

hexennacht.dance(
    score=score,
    voice="bassoon voice",
    tuplet_index=4,
    durations=[(1, 4)],
    pitch_index=13,
    transpose=-24
)

hexennacht.dance(
    score=score,
    voice="bassoon voice",
    tuplet_index=5,
    durations=[(1, 2)],
    pitch_index=16,
    transpose=-24
)

hexennacht.dance(
    score=score,
    voice="bassoon voice",
    tuplet_index=6,
    durations=[(3, 8)],
    pitch_index=19,
    transpose=-24
)

hexennacht.dance(
    score=score,
    voice="bassoon voice",
    tuplet_index=0,
    durations=[(1, 4)],
    pitch_index=3,
    transpose=-24
)

hexennacht.dance(
    score=score,
    voice="bassoon voice",
    tuplet_index=1,
    durations=[(1, 2)],
    pitch_index=6,
    transpose=-24
)

# strings

for voice in ["violin 1 voice", "violin 2 voice", "viola voice", "cello voice", "percussion 2 voice"]:
    trinton.append_rests(
        score=score,
        voice=voice,
        rests=[abjad.Rest("r2"), abjad.Rest("r4."), abjad.Rest("r16")]
    )

for voice, tuplet in zip(["violin 1 voice", "violin 2 voice", "viola voice", "cello voice",], [0, 1, 2, 3,]):
    hexennacht.string_swells(
        score=score,
        voice=voice,
        tuplet_index=tuplet,
        durations=[(9, 16)],
        pitch_index=6
    )

hexennacht.cymbal_swells(
    score=score,
    voice="percussion 2 voice",
    durations=[(9, 16)],
    tuplet_index=4
)

for voice in ["violin 1 voice", "violin 2 voice", "viola voice", "cello voice", "percussion 2 voice"]:
    trinton.append_rests(
        score=score,
        voice=voice,
        rests=[abjad.Rest("r8"), abjad.Rest("r4")]
    )

for voice, tuplet in zip(["violin 1 voice", "violin 2 voice", "viola voice", "cello voice",], [4, 0, 1, 2,]):
    hexennacht.string_swells(
        score=score,
        voice=voice,
        tuplet_index=tuplet,
        durations=[(1, 2)],
        pitch_index=12
    )

hexennacht.cymbal_swells(
    score=score,
    voice="percussion 2 voice",
    durations=[(1, 2)],
    tuplet_index=3
)

for voice in ["violin 1 voice", "violin 2 voice", "viola voice", "cello voice", "percussion 2 voice"]:
    trinton.append_rests(
        score=score,
        voice=voice,
        rests=[abjad.Rest("r4")]
    )

for voice in ["violin 1 voice", "violin 2 voice", "viola voice", "cello voice"]:
    hexennacht.drumming(
        score=score,
        voice=voice,
        durations=[(1, 8), (1, 8), (1, 8), (1, 8), (1, 8), (1, 8), (1, 8), (1, 4), (1, 4), (1, 4),],
        pitched=True
    )

# all voices

for voice in ["horn voice", "trumpet voice", "tenor trombone voice", "tuba voice", "marimba voice", "percussion 1 voice", "contrabass voice",]:
    trinton.append_rests(
        score=score,
        voice=voice,
        rests=[abjad.Rest("r2"), abjad.Rest("r4."),]
    )

trinton.write_marginmarkups(
    score=score,
    voices=hexennacht.all_staves,
    markups=hexennacht.all_marginmarkups,
)

hexennacht.standard_cleffing(score=score)

# tuba

for voice in ["tuba voice", "contrabass voice"]:
    trinton.append_rests(
        score=score,
        voice=voice,
        rests=[abjad.Rest("r4")]
    )

hexennacht.drone(
    score=score,
    voice="tuba voice",
    talea=16,
    pitch_index=5,
    durations=[(6, 4)]
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

trinton.append_rests(
    score=score,
    voice="percussion 1 voice",
    rests=[abjad.Rest("r4.")]
)

trinton.handwrite(
    score=score,
    voice="percussion 1 voice",
    durations=[(1, 8)],
    pitch_list=hexennacht.ratchet_pitches
)

trinton.append_rests(
    score=score,
    voice="percussion 1 voice",
    rests=[abjad.Rest("r4"), abjad.Rest("r4.")]
)

trinton.handwrite(
    score=score,
    voice="percussion 1 voice",
    durations=[(1, 8)],
    pitch_list=trinton.rotated_sequence(hexennacht.ratchet_pitches, 1)
)

trinton.append_rests(
    score=score,
    voice="percussion 1 voice",
    rests=[abjad.Rest("r8"),]
)

trinton.handwrite(
    score=score,
    voice="percussion 1 voice",
    durations=[(1, 8)],
    pitch_list=trinton.rotated_sequence(hexennacht.ratchet_pitches, 2)
)

trinton.append_rests(
    score=score,
    voice="percussion 1 voice",
    rests=[abjad.Rest("r4"), abjad.Rest("r2.."), abjad.Rest("r2.")]
)

trinton.transparent_accidentals(
    score=score,
    voice="percussion 1 voice",
    leaves=all
)

trinton.append_rests(
    score=score,
    voice="marimba voice",
    rests=[abjad.Rest("r2"), abjad.Rest("r8")]
)

hexennacht.marimba_shakes(
    score=score,
    voice="marimba voice",
    note_value=32,
    durations=[(1, 8)],
    pitched=True,
    pitch_index=0,
    high=True
)

trinton.append_rests(
    score=score,
    voice="marimba voice",
    rests=[abjad.Rest("r8"),]
)

hexennacht.marimba_shakes(
    score=score,
    voice="marimba voice",
    note_value=32,
    durations=[(3, 16)],
    pitched=True,
    pitch_index=4,
    high=True
)

trinton.append_rests(
    score=score,
    voice="marimba voice",
    rests=[abjad.Rest("r8."), abjad.Rest("r4")]
)

hexennacht.marimba_shakes(
    score=score,
    voice="marimba voice",
    note_value=32,
    durations=[(3, 8)],
    pitched=True,
    pitch_index=10,
    high=True
)

trinton.append_rests(
    score=score,
    voice="marimba voice",
    rests=[abjad.Rest("r4"),]
)

hexennacht.marimba_shakes(
    score=score,
    voice="marimba voice",
    note_value=32,
    durations=[(1, 4)],
    pitched=True,
    pitch_index=22,
    high=True
)

trinton.append_rests(
    score=score,
    voice="marimba voice",
    rests=[abjad.Rest("r4"),]
)

hexennacht.marimba_shakes(
    score=score,
    voice="marimba voice",
    note_value=32,
    durations=[(1, 8)],
    pitched=True,
    pitch_index=30,
    high=True
)

trinton.append_rests(
    score=score,
    voice="marimba voice",
    rests=[abjad.Rest("r4."),]
)

hexennacht.marimba_shakes(
    score=score,
    voice="marimba voice",
    note_value=32,
    durations=[(1, 4)],
    pitched=True,
    pitch_index=34,
    high=True
)

# trumpet and horn

for voice in ["trumpet voice", "horn voice"]:
    trinton.append_rests(
        score=score,
        voice=voice,
        rests=[abjad.Rest("r2."), abjad.Rest("r2"), abjad.Rest("r8")]
    )

for voice, index in zip(["trumpet voice", "horn voice",], [3, 5]):
    hexennacht.brass_shrieks(
        score=score,
        voice=voice,
        talea_index=index,
        talea=16,
        durations=[(16, 8)],
        pitched=True,
        pitch_index=1
    )

# percussion 2

hexennacht.cymbal_swells(
    score=score,
    voice="percussion 2 voice",
    durations=[(7, 8), (3, 4)],
    tuplet_index=2
)

# trombone

trinton.append_rests(
    score=score,
    voice="tenor trombone voice",
    rests=[abjad.Rest("r2."), abjad.Rest("r1")]
)

hexennacht.drone(
    score=score,
    voice="tenor trombone voice",
    talea=16,
    pitch_index=1,
    durations=[(13, 8)]
)

# contrabass

hexennacht.drone(
    score=score,
    voice="contrabass voice",
    talea=16,
    pitch_index=5,
    durations=[(25, 8)]
)

# all voices again

for voice in hexennacht.all_voices:
    trinton.append_rests(
        score=score,
        voice=voice,
        rests=[abjad.Rest("r2.."), abjad.Rest("r2.")]
    )

trinton.rewrite_meter(score)

trinton.beam_score(score)

trinton.annotate_leaves(score)

# piano attachments

trinton.write_slur(
    voice=score["piano 1 voice"],
    start_slur=[1, 9, 21,],
    stop_slur=[3, 18, 26,],
)

trinton.write_slur(
    voice=score["piano 2 voice"],
    start_slur=[6, 3, 18,],
    stop_slur=[15, 5, 22,],
)

trinton.attach(
    voice=score["piano 2 voice"],
    leaves=[0, 1, 2, 3, 16, 17,],
    attachment=abjad.Articulation(">")
)

trinton.attach(
    voice=score["piano 2 voice"],
    leaves=[3, 6, 18,],
    attachment=abjad.Articulation("tenuto")
)

trinton.attach(
    voice=score["piano 1 voice"],
    leaves=[4, 5, 7, 19, 20,],
    attachment=abjad.Articulation(">")
)

trinton.attach(
    voice=score["piano 1 voice"],
    leaves=[1, 9, 21],
    attachment=abjad.Articulation("tenuto")
)

trinton.attach(
    voice=score["piano 1 voice"],
    leaves=[0],
    attachment=abjad.Dynamic("f")
)

trinton.write_markup(
    voice=score["piano 2 voice"],
    leaf=[0],
    string=r"\italic Con fuoco",
    down=False
)

trinton.attach_multiple(
    score=score,
    voice="piano 1 voice",
    leaves=[8,],
    attachments=[
        abjad.Dynamic("mp"),
        abjad.StartHairpin("<")
    ]
)

trinton.attach(
    voice=score["piano 1 voice"],
    leaves=[19],
    attachment=abjad.Dynamic("fff")
)

trinton.attach(
    voice=score["piano 1 voice"],
    leaves=[21],
    attachment=abjad.StartHairpin(">o")
)

trinton.attach(
    voice=score["piano 1 voice"],
    leaves=[26],
    attachment=abjad.StopHairpin()
)

# harp attachments

trinton.write_markup(
    voice=score["harp voice"],
    leaf=[0],
    string=r"\italic Con fuoco",
    down=True
)

for leaf in [23, 24,]:
    sel = abjad.select(score["harp voice"]).leaf(leaf)
    abjad.mutate.transpose(sel, -1)
    hexennacht.with_flats(sel)

for leaf in [6, 9, 10, 11, 25]:
    sel = abjad.select(score["harp voice"]).leaf(leaf)
    hexennacht.octave_up([sel])

trinton.write_slur(
    voice=score["harp voice"],
    start_slur=[0, 14, 26,],
    stop_slur=[5, 22, 29,],
)

trinton.attach(
    voice=score["harp voice"],
    leaves=[6, 7, 9, 12, 23, 25,],
    attachment=abjad.Articulation(">")
)

trinton.attach(
    voice=score["harp voice"],
    leaves=[0],
    attachment=abjad.Dynamic("f")
)

trinton.attach_multiple(
    score=score,
    voice="harp voice",
    leaves=[14,],
    attachments=[abjad.Dynamic("mp"), abjad.StartHairpin("<")]
)

trinton.attach(
    voice=score["harp voice"],
    leaves=[23,],
    attachment=abjad.Dynamic("ff")
)

trinton.attach(
    voice=score["harp voice"],
    leaves=[26,],
    attachment=abjad.StartHairpin(">o")
)

trinton.attach(
    voice=score["harp voice"],
    leaves=[29,],
    attachment=abjad.StopHairpin()
)

# show file

trinton.render_file(
    score=score,
    segment_path="/Users/trintonprater/scores/hexennacht/hexennacht/segments/04",
    build_path="/Users/trintonprater/scores/hexennacht/hexennacht/build",
    segment_name="04",
    includes=[
        "/Users/trintonprater/scores/hexennacht/hexennacht/build/hexennacht-stylesheet.ily",
        "/Users/trintonprater/abjad/docs/source/_stylesheets/abjad.ily",
    ]
)
