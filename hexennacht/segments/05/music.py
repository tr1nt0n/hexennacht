import abjad
import evans
import trinton
from abjadext import rmakers
import hexennacht

# make score template

score = hexennacht.score

trinton.write_time_signatures(
    [
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

# oboe



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

# percussion 1

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

# percussion 2

hexennacht.cymbal_swells(
    score=score,
    voice="percussion 2 voice",
    tuplet_index=1,
    durations=[(5, 4)],
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

hexennacht.standard_cleffing(score=score)

trinton.write_marginmarkups(
    score=score,
    voices=hexennacht.all_staves,
    markups=hexennacht.all_marginmarkups,
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
