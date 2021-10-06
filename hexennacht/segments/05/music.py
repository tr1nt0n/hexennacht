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
        (7, 8),
        (3, 4),
        (4, 4),
        (5, 4),
        (6, 4),
        (7, 8),
        (3, 4),
        (4, 4),
    ],
    score["Global Context"],
)

# new rests

for voice in ["piano 1 voice", "piano 2 voice", "harp voice", "flute voice", "oboe voice", "bass clarinet voice", "horn voice", "trumpet voice", "tenor trombone voice", "tuba voice", "marimba voice", "percussion 1 voice", "violin 1 voice", "violin 2 voice", "viola voice", "contrabass voice"]:
    trinton.append_rests(
        score=score,
        voice=voice,
        rests=[abjad.Rest("r2")]
    )

# piano

hexennacht.incantation(
    score=score,
    voice="piano 1 voice",
    bunch_1_tuplet=9,
    bunch_1_durations=[(3, 8)],
    talea=16,
    smooth_durations=[(3, 4)],
    bunch_2_tuplet=3,
    bunch_2_durations=[(1, 4)],
    pitch_index=16,
    transpose=16,
)

hexennacht.incantation(
    score=score,
    voice="piano 1 voice",
    bunch_1_tuplet=9,
    bunch_1_durations=[(1, 4)],
    talea=16,
    smooth_durations=[(4, 4)],
    bunch_2_tuplet=8,
    bunch_2_durations=[(1, 4)],
    pitch_index=5,
    transpose=18,
)

hexennacht.incantation(
    score=score,
    voice="piano 1 voice",
    bunch_1_tuplet=15,
    bunch_1_durations=[(1, 4)],
    talea=16,
    smooth_durations=[(3, 4)],
    bunch_2_tuplet=2,
    bunch_2_durations=[(1, 4)],
    pitch_index=17,
    transpose=19,
)

hexennacht.incantation(
    score=score,
    voice="piano 1 voice",
    bunch_1_tuplet=0,
    bunch_1_durations=[(3, 8)],
    talea=16,
    smooth_durations=[(1, 2)],
    bunch_2_tuplet=12,
    bunch_2_durations=[(3, 8)],
    pitch_index=2,
    transpose=21,
)

# last measure displace octaves

hexennacht.incantation(
    score=score,
    voice="piano 2 voice",
    bunch_1_tuplet=3,
    bunch_1_durations=[(3, 8)],
    talea=16,
    smooth_durations=[(3, 4)],
    bunch_2_tuplet=14,
    bunch_2_durations=[(1, 4)],
    pitch_index=1,
    transpose=-15,
)

hexennacht.incantation(
    score=score,
    voice="piano 2 voice",
    bunch_1_tuplet=5,
    bunch_1_durations=[(1, 4)],
    talea=8,
    smooth_durations=[(4, 4)],
    bunch_2_tuplet=29,
    bunch_2_durations=[(1, 4)],
    pitch_index=13,
    transpose=-21,
)

hexennacht.incantation(
    score=score,
    voice="piano 2 voice",
    bunch_1_tuplet=15,
    bunch_1_durations=[(3, 8)],
    talea=16,
    smooth_durations=[(3, 8)],
    bunch_2_tuplet=30,
    bunch_2_durations=[(1, 4)],
    pitch_index=23,
    transpose=-25,
)

trinton.append_rests(
    score=score,
    voice="piano 2 voice",
    rests=[abjad.Rest("r1.")]
)

# harp

hexennacht.incantation(
    score=score,
    voice="harp voice",
    bunch_1_tuplet=2,
    bunch_1_durations=[(3, 8)],
    talea=16,
    smooth_durations=[(3, 4)],
    bunch_2_tuplet=30,
    bunch_2_durations=[(1, 4)],
    pitch_index=11,
    transpose=0,
)

hexennacht.incantation(
    score=score,
    voice="harp voice",
    bunch_1_tuplet=29,
    bunch_1_durations=[(1, 4)],
    talea=16,
    smooth_durations=[(4, 4)],
    bunch_2_tuplet=8,
    bunch_2_durations=[(3, 8)],
    pitch_index=21,
    transpose=0,
)

hexennacht.incantation(
    score=score,
    voice="harp voice",
    bunch_1_tuplet=9,
    bunch_1_durations=[(3, 8)],
    talea=16,
    smooth_durations=[(1, 4)],
    bunch_2_tuplet=7,
    bunch_2_durations=[(1, 4)],
    pitch_index=6,
    transpose=0,
)

hexennacht.incantation(
    score=score,
    voice="harp voice",
    bunch_1_tuplet=16,
    bunch_1_durations=[(3, 4)],
    talea=32,
    smooth_durations=[(1, 2)],
    bunch_2_tuplet=1,
    bunch_2_durations=[(1, 4)],
    pitch_index=16,
    transpose=0,
)

hexennacht.transpose_harp(
    score=score,
    voice="harp voice"
)

# last measure octave up

# bassoon

trinton.handwrite(
    score=score,
    voice="bassoon voice",
    durations=[(1, 4), (1, 8), (1, 8),],
    pitch_list=None
)

# woodwinds

for voice in ["flute voice", "oboe voice"]:
    trinton.append_rests(
        score=score,
        voice=voice,
        rests=[abjad.Rest("r4."), abjad.Rest("r2"), abjad.Rest("r2."), abjad.Rest("r2")]
    )

trinton.append_rests(
    score=score,
    voice="bass clarinet voice",
    rests=[abjad.Rest("r4."), abjad.Rest("r2"), abjad.Rest("r4.")]
)

trinton.append_rests(
    score=score,
    voice="bassoon voice",
    rests=[abjad.Rest("r4."), abjad.Rest("r2"), abjad.Rest("r2."), abjad.Rest("r1"), abjad.Rest("r2.")]
)

for voice, duration in zip(["flute voice", "oboe voice", "bass clarinet voice", "bassoon voice"], [(1, 2), (1, 2), (3, 8), (1, 2)]):
    hexennacht.woodwind_swells(
        score=score,
        voice=voice,
        durations=[duration]
    )

# flute

for voice in ["flute voice", "oboe voice"]:
    trinton.append_rests(
        score=score,
        voice=voice,
        rests=[abjad.Rest("r2."), abjad.Rest("r2"), abjad.Rest("r4.")]
    )

    hexennacht.woodwind_swells(
        score=score,
        voice=voice,
        durations=[(9, 8)]
    )

    hexennacht.woodwind_swells(
        score=score,
        voice=voice,
        durations=[(5, 8)],
    )

    trinton.append_rests(
        score=score,
        voice=voice,
        rests=[abjad.Rest("r4"), abjad.Rest("r8")]
    )

    hexennacht.woodwind_swells(
        score=score,
        voice=voice,
        durations=[(5, 8)],
    )

    trinton.append_rests(
        score=score,
        voice=voice,
        rests=[abjad.Rest("r4."),]
    )

    hexennacht.woodwind_swells(
        score=score,
        voice=voice,
        durations=[(5, 8)],
    )

# bass clarinet

trinton.append_rests(
    score=score,
    voice="bass clarinet voice",
    rests=[abjad.Rest("r1"), abjad.Rest("r2."), abjad.Rest("r2"), abjad.Rest("r2.")]
)

hexennacht.woodwind_swells(
    score=score,
    voice="bass clarinet voice",
    durations=[(3, 4)]
)

trinton.append_rests(
    score=score,
    voice="bass clarinet voice",
    rests=[abjad.Rest("r8")]
)

hexennacht.woodwind_swells(
    score=score,
    voice="bass clarinet voice",
    durations=[(3, 4)]
)

trinton.append_rests(
    score=score,
    voice="bass clarinet voice",
    rests=[abjad.Rest("r4.")]
)

hexennacht.woodwind_swells(
    score=score,
    voice="bass clarinet voice",
    durations=[(3, 4)]
)

trinton.append_rests(
    score=score,
    voice="bass clarinet voice",
    rests=[abjad.Rest("r8")]
)

hexennacht.woodwind_swells(
    score=score,
    voice="bass clarinet voice",
    durations=[(1, 2)]
)

# bassoon

trinton.append_rests(
    score=score,
    voice="bassoon voice",
    rests=[abjad.Rest("r1")]
)

hexennacht.woodwind_swells(
    score=score,
    voice="bassoon voice",
    durations=[(1, 2)]
)

trinton.append_rests(
    score=score,
    voice="bassoon voice",
    rests=[abjad.Rest("r4.")]
)

hexennacht.woodwind_swells(
    score=score,
    voice="bassoon voice",
    durations=[(1, 4)]
)

trinton.append_rests(
    score=score,
    voice="bassoon voice",
    rests=[abjad.Rest("r8")]
)

hexennacht.woodwind_swells(
    score=score,
    voice="bassoon voice",
    durations=[(1, 4)]
)

trinton.append_rests(
    score=score,
    voice="bassoon voice",
    rests=[abjad.Rest("r2")]
)

hexennacht.woodwind_swells(
    score=score,
    voice="bassoon voice",
    durations=[(1, 4)]
)

trinton.append_rests(
    score=score,
    voice="bassoon voice",
    rests=[abjad.Rest("r2"), abjad.Rest("r8")]
)

hexennacht.woodwind_swells(
    score=score,
    voice="bassoon voice",
    durations=[(1, 4)]
)

# percussion

trinton.handwrite(
    score=score,
    voice="percussion 2 voice",
    durations=[(1, 8), (1, 8), (1, 4)],
    pitch_list=hexennacht.ratchet_pitches
)

for voice in ["percussion 2 voice", "marimba voice"]:
    hexennacht.cymbal_swells(
        score=score,
        voice=voice,
        tuplet_index=0,
        durations=[(1, 2)]
    )

trinton.append_rests(
    score=score,
    voice="marimba voice",
    rests=[abjad.Rest("r4."), abjad.Rest("r2."), abjad.Rest("r8")]
)

hexennacht.cymbal_swells(
    score=score,
    voice="marimba voice",
    tuplet_index=1,
    durations=[(7, 8)]
)

trinton.append_rests(
    score=score,
    voice="marimba voice",
    rests=[abjad.Rest("r2."), abjad.Rest("r8"),]
)

hexennacht.cymbal_swells(
    score=score,
    voice="marimba voice",
    tuplet_index=2,
    durations=[(3, 4)]
)

trinton.append_rests(
    score=score,
    voice="marimba voice",
    rests=[abjad.Rest("r8"), abjad.Rest("r1"),]
)

hexennacht.cymbal_swells(
    score=score,
    voice="marimba voice",
    tuplet_index=3,
    durations=[(7, 8)]
)

hexennacht.cymbal_swells(
    score=score,
    voice="marimba voice",
    tuplet_index=2,
    durations=[(3, 4)]
)

trinton.append_rests(
    score=score,
    voice="marimba voice",
    rests=[abjad.Rest("r2."),]
)

hexennacht.cymbal_swells(
    score=score,
    voice="marimba voice",
    tuplet_index=1,
    durations=[(1, 4)]
)

trinton.append_rests(
    score=score,
    voice="percussion 1 voice",
    rests=[abjad.Rest("r2"), abjad.Rest("r4")]
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
    rests=[abjad.Rest("r2"), abjad.Rest("r8")]
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
    rests=[abjad.Rest("r1"), abjad.Rest("r4")]
)

trinton.handwrite(
    score=score,
    voice="percussion 1 voice",
    durations=[(1, 8), (1, 8), (1, 8),],
    pitch_list=trinton.rotated_sequence(hexennacht.ratchet_pitches, 2)
)

trinton.append_rests(
    score=score,
    voice="percussion 1 voice",
    rests=[abjad.Rest("r8"), abjad.Rest("r2"), abjad.Rest("r2")]
)

trinton.handwrite(
    score=score,
    voice="percussion 1 voice",
    durations=[(1, 8), (1, 8), (1, 8), (1, 8), (1, 8),],
    pitch_list=trinton.rotated_sequence(hexennacht.ratchet_pitches, 5)
)

trinton.append_rests(
    score=score,
    voice="percussion 1 voice",
    rests=[abjad.Rest("r8"), abjad.Rest("r4"),]
)

# strings

hexennacht.marimba_shakes(
    score=score,
    voice="cello voice",
    note_value=16,
    durations=[(1, 2)],
    pitched=False,
    pitch_index=None,
    high=False
)

for voice, index in zip(["violin 1 voice", "violin 2 voice", "viola voice", "cello voice",], [1, 4, 3, 2,]):
    hexennacht.string_swells(
        score=score,
        voice=voice,
        tuplet_index=index,
        durations=[(1, 2)],
        pitch_index=18
    )

for voice in ["violin 1 voice", "violin 2 voice", "viola voice", "cello voice", "percussion 2 voice"]:
    trinton.append_rests(
        score=score,
        voice=voice,
        rests=[abjad.Rest("r4."), abjad.Rest("r2."), abjad.Rest("r1"), abjad.Rest("r2."), abjad.Rest("r2"), abjad.Rest("r4")]
    )

for voice, index in zip(["violin 1 voice", "violin 2 voice", "viola voice", "cello voice",], [2, 3, 4, 0,]):
    hexennacht.string_swells(
        score=score,
        voice=voice,
        tuplet_index=index,
        durations=[(5, 4)],
        pitch_index=15
    )

tuplet = abjad.select(score["violin 1 voice"]).tuplet(1)
string = r"\italic 6:5"
markup = abjad.Markup(
    rf"\markup \scale #'(1 . 1) {string}",
    literal=True,
)
abjad.override(tuplet).TupletNumber.text = markup

tuplet = abjad.select(score["violin 2 voice"]).tuplet(0)
string = r"\italic 7:10"
markup = abjad.Markup(
    rf"\markup \scale #'(1 . 1) {string}",
    literal=True,
)
abjad.override(tuplet).TupletNumber.text = markup

tuplet = abjad.select(score["viola voice"]).tuplet(1)
string = r"\italic 4:5"
markup = abjad.Markup(
    rf"\markup \scale #'(1 . 1) {string}",
    literal=True,
)
abjad.override(tuplet).TupletNumber.text = markup

tuplet = abjad.select(score["cello voice"]).tuplet(1)
string = r"\italic 6:5"
markup = abjad.Markup(
    rf"\markup \scale #'(1 . 1) {string}",
    literal=True,
)
abjad.override(tuplet).TupletNumber.text = markup

for voice in ["violin 1 voice", "violin 2 voice", "viola voice", "cello voice",]:
    trinton.append_rests(
        score=score,
        voice=voice,
        rests=[abjad.Rest("r2"),]
    )

for voice, index in zip(["violin 1 voice", "violin 2 voice", "viola voice", "cello voice",], [0, 4, 3, 2,]):
    hexennacht.string_swells(
        score=score,
        voice=voice,
        tuplet_index=index,
        durations=[(3, 8)],
        pitch_index=12
    )

for voice, index in zip(["violin 1 voice", "violin 2 voice", "viola voice", "cello voice",], [1, 0, 2, 3,]):
    hexennacht.string_swells(
        score=score,
        voice=voice,
        tuplet_index=index,
        durations=[(3, 8)],
        pitch_index=9
    )

for voice in ["violin 1 voice", "violin 2 voice", "viola voice", "cello voice",]:
    trinton.append_rests(
        score=score,
        voice=voice,
        rests=[abjad.Rest("r4."),]
    )

for voice, index in zip(["violin 1 voice", "violin 2 voice", "viola voice", "cello voice",], [4, 3, 2, 1]):
    hexennacht.string_swells(
        score=score,
        voice=voice,
        tuplet_index=index,
        durations=[(1, 1)],
        pitch_index=18
    )

# percussion 2

hexennacht.cymbal_swells(
    score=score,
    voice="percussion 2 voice",
    tuplet_index=1,
    durations=[(5, 4)],
)

trinton.append_rests(
    score=score,
    voice="percussion 2 voice",
    rests=[abjad.Rest("r2.."), abjad.Rest("r2.")]
)

trinton.handwrite(
    score=score,
    voice="percussion 2 voice",
    durations=[(1, 4), (1, 4), (1, 4), (1, 4),],
    pitch_list=[-3]
)

for voice in ["percussion 1 voice", "percussion 2 voice"]:
    trinton.transparent_accidentals(
        score=score,
        voice=voice,
        leaves=all
    )

# bass and tuba

for voice, talea in zip(["contrabass voice", "tuba voice"], [8, 16]):
    hexennacht.drone(
        score=score,
        voice=voice,
        talea=talea,
        pitch_index=9,
        durations=[(43, 8)]
    )

# horn

trinton.append_rests(
    score=score,
    voice="horn voice",
    rests=[abjad.Rest("r2.."), abjad.Rest("r2.")]
)

hexennacht.brass_shrieks(
    score=score,
    voice="horn voice",
    talea_index=0,
    talea=8,
    durations=[(1, 1)],
    pitched=True,
    pitch_index=3
)

trinton.append_rests(
    score=score,
    voice="horn voice",
    rests=[abjad.Rest("r2."), abjad.Rest("r2"), abjad.Rest("r4")]
)

# brass

for voice in ["trumpet voice", "tenor trombone voice"]:
    trinton.append_rests(
        score=score,
        voice=voice,
        rests=[abjad.Rest("r2.."), abjad.Rest("r2."), abjad.Rest("r1"), abjad.Rest("r2."), abjad.Rest("r2"), abjad.Rest("r4")]
    )

for voice, index in zip(["horn voice", "trumpet voice", "tenor trombone voice"], [0, 1, 2]):
    hexennacht.brass_shrieks(
        score=score,
        voice=voice,
        talea_index=index,
        talea=16,
        pitched=True,
        pitch_index=1,
        durations=[(5, 4)]
    )

# all voices

for voice in ["piano 1 voice", "piano 2 voice", "harp voice", "horn voice", "trumpet voice", "tenor trombone voice", "tuba voice", "percussion 1 voice", "contrabass voice"]:
    trinton.append_rests(
        score=score,
        voice=voice,
        rests=[abjad.Rest("r2.."), abjad.Rest("r2."), abjad.Rest("r1")]
    )

hexennacht.standard_cleffing(score=score)

trinton.write_marginmarkups(
    score=score,
    voices=hexennacht.all_staves,
    markups=hexennacht.all_marginmarkups,
)

trinton.rewrite_meter(score)

trinton.beam_score(score)

trinton.annotate_leaves(score)

# piano attachments

trinton.write_slur(
    voice=score["piano 1 voice"],
    start_slur=[1, 7, 11, 22, 27, 34,],
    stop_slur=[6, 10, 21, 26, 33, 37,],
)

trinton.write_slur(
    voice=score["piano 2 voice"],
    start_slur=[1, 6, 10, 20, 24, 32,],
    stop_slur=[5, 9, 17, 23, 31, 35,],
)

trinton.attach(
    voice=score["piano 1 voice"],
    leaves=[1, 11, 27, 38],
    attachment=abjad.Dynamic("fff")
)

trinton.attach(
    voice=score["piano 1 voice"],
    leaves=[1, 2, 3, 4, 5, 6, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 27, 28, 29, 30, 31, 32, 33, 38, 39, 41, 42, 43, 44, 45, 47, 49, 50, 51, 52, 53,],
    attachment=abjad.Articulation(">")
)

trinton.attach(
    voice=score["piano 2 voice"],
    leaves=[1, 2, 3, 4, 5, 10, 11, 12, 13, 14, 15, 16, 17, 20, 21, 22, 23, 32, 33, 34, 35,],
    attachment=abjad.Articulation(">")
)

trinton.attach(
    voice=score["piano 1 voice"],
    leaves=[7, 22, 34,],
    attachment=abjad.Dynamic("mp"),
)

trinton.attach(
    voice=score["piano 2 voice"],
    leaves=[24,],
    attachment=abjad.Dynamic("mp"),
)

trinton.attach(
    voice=score["piano 2 voice"],
    leaves=[32,],
    attachment=abjad.Dynamic("fff"),
)

for number in [38, 42, 45, 46, 50, 53,]:
    sel = abjad.select(score["piano 1 voice"]).leaf(number)
    hexennacht.octave_down([sel])

for number in [41, 44, 49, 52]:
    sel = abjad.select(score["piano 1 voice"]).leaf(number)
    hexennacht.double_octave_down([sel])

for number in [41, 44, 49, 52]:
    sel = abjad.select(score["piano 1 voice"]).leaf(number)
    hexennacht.octave_down([sel])

hexennacht.bass_clef(
    score["piano 1 voice"],
    [41, 44, 49, 52]
)

hexennacht.treble_clef(
    score["piano 1 voice"],
    [42, 45, 50, 53]
)

# harp attachments

trinton.write_slur(
    voice=score["harp voice"],
    start_slur=[1, 6, 10, 18, 23, 33,],
    stop_slur=[5, 9, 17, 22, 31, 35,]
)

trinton.attach(
    voice=score["harp voice"],
    leaves=[1, 2, 5, 10, 11, 12, 13, 14, 15, 16, 17, 23, 24, 25, 26, 27, 28, 29, 30, 31, 33, 34, 35,],
    attachment=abjad.Articulation(">")
)

trinton.attach(
    voice=score["harp voice"],
    leaves=[1, 10, 23, 33,],
    attachment=abjad.Dynamic("fff")
)

trinton.attach(
    voice=score["harp voice"],
    leaves=[6, 18, 32,],
    attachment=abjad.Dynamic("mp")
)

for number in [36, 39, 42, 46, 49]:
    sel = abjad.select(score["harp voice"]).leaf(number)
    hexennacht.double_octave_up([sel])

for number in [37, 40, 43, 47]:
    sel = abjad.select(score["harp voice"]).leaf(number)
    hexennacht.double_octave_down([sel])

hexennacht.bass_clef(
    score["harp voice"],
    [37, 40, 43, 47,]
)

hexennacht.treble_clef(
    score["harp voice"],
    [38, 41, 44, 48,]
)

# flute and oboe attachments

for leaf, multiphonic in zip([4, 9, 12, 16, 20,], [1, 2, 3, 4, 5,]):
    hexennacht.flute_multiphonics(
        score=score,
        voice="flute voice",
        leaves=[leaf],
        multiphonic=multiphonic,
        markup=True
    )

for leaf, multiphonic in zip([4, 9, 12, 16, 20,], [1, 2, 3, 4, 5,]):
    hexennacht.oboe_harmonies(
        score=score,
        voice="oboe voice",
        leaves=[leaf],
        flute_multiphonic=multiphonic,
    )

for voice in ["flute voice", "oboe voice"]:
    trinton.attach(
        voice=score[voice],
        leaves=[4,],
        attachment=abjad.Dynamic("p")
    )

    trinton.attach(
        voice=score[voice],
        leaves=[12,],
        attachment=abjad.Dynamic("f")
    )

    trinton.attach(
        voice=score[voice],
        leaves=[4, 9, 12, 16, 20,],
        attachment=abjad.Articulation("tenuto")
    )

# clarinet attachments

for leaf, multiphonic in zip([4, 10, 12, 16, 21,], [1, 2, 3, 4, 5,]):
    hexennacht.clarinet_multiphonics(
        score=score,
        voice="bass clarinet voice",
        leaves=[leaf],
        multiphonic=multiphonic,
        markup=True
    )

trinton.attach(
    voice=score["bass clarinet voice"],
    leaves=[4],
    attachment=abjad.Dynamic("p")
)

trinton.attach(
    voice=score["bass clarinet voice"],
    leaves=[12,],
    attachment=abjad.Dynamic("f")
)

trinton.attach(
    voice=score["bass clarinet voice"],
    leaves=[4, 10, 12, 16, 21,],
    attachment=abjad.Articulation("tenuto")
)

# bassoon attachments

trinton.attach(
    voice=score["bassoon voice"],
    leaves=[0, 1,],
    attachment=abjad.Tie()
)

for leaf, multiphonic in zip([0, 7, 9, 11, 13, 18, 22,], [1, 2, 3, 4, 5, 1, 2]):
    hexennacht.bassoon_multiphonics(
        score=score,
        voice="bassoon voice",
        leaves=[leaf],
        multiphonic=multiphonic,
        markup=True
    )

trinton.attach(
    voice=score["bassoon voice"],
    leaves=[0,],
    attachment=abjad.StartHairpin("o<|")
)

trinton.attach_multiple(
    score=score,
    voice="bassoon voice",
    leaves=[1],
    attachments=[
        abjad.Dynamic("f"),
        abjad.StartHairpin("|>o")
    ]
)

trinton.attach(
    voice=score["bassoon voice"],
    leaves=[3,],
    attachment=abjad.StopHairpin()
)

trinton.attach(
    voice=score["bassoon voice"],
    leaves=[7,],
    attachment=abjad.Dynamic("p")
)

trinton.attach(
    voice=score["bassoon voice"],
    leaves=[11,],
    attachment=abjad.Dynamic("f")
)

trinton.attach(
    voice=score["bassoon voice"],
    leaves=[7, 9, 11, 13, 18, 22,],
    attachment=abjad.Articulation("tenuto")
)

# horn attachments



# trumpet attachments



# trombone attachments



# tuba attachments



# percussion 1 attachments

trinton.attach(
    voice=score["marimba voice"],
    leaves=[1, 2, 8, 9, 13, 15, 21, 22, 24, 27, 30, 31,],
    attachment=abjad.Tie()
)

handler = evans.PitchHandler(
    pitch_list=[[-19, -21], [-21, -22,], [-24, -26], [-17, -18], [-27, -29]],
    forget=False
)

handler(abjad.select(score["marimba voice"]).leaves(pitched=True))

hexennacht.bass_clef(
    score["marimba voice"],
    [1,]
)

trinton.attach(
    voice=score["marimba voice"],
    leaves=[1, 8, 13, 20, 24, 30,],
    attachment=abjad.StartHairpin("o<")
)

trinton.attach_multiple(
    score=score,
    voice="marimba voice",
    leaves=[2, 9, 14,],
    attachments=[abjad.Dynamic("p"), abjad.StartHairpin(">o")]
)

trinton.attach_multiple(
    score=score,
    voice="marimba voice",
    leaves=[21, 25, 31,],
    attachments=[abjad.Dynamic("f"), abjad.StartHairpin(">o")]
)

trinton.attach(
    voice=score["marimba voice"],
    leaves=[3, 10, 16, 23, 28, 30,],
    attachment=abjad.StopHairpin()
)

hexennacht.with_bow(
    score=score,
    voice="marimba voice",
    leaves=[1]
)



# show file

trinton.render_file(
    score=score,
    segment_path="/Users/trintonprater/scores/hexennacht/hexennacht/segments/05",
    build_path="/Users/trintonprater/scores/hexennacht/hexennacht/build",
    segment_name="05",
    includes=[
        "/Users/trintonprater/scores/hexennacht/hexennacht/build/hexennacht-stylesheet.ily",
        "/Users/trintonprater/abjad/docs/source/_stylesheets/abjad.ily",
    ]
)
