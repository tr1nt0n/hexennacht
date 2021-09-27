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
        (7, 8),
        (7, 8),
    ],
    score["Global Context"],
)

# piano

hexennacht.incantation(
    score=score,
    voice="piano 1 voice",
    bunch_1_tuplet=7,
    bunch_1_durations=[(1, 4)],
    talea=16,
    smooth_durations=[(9, 8)],
    bunch_2_tuplet=8,
    bunch_2_durations=[(1, 4)],
    pitch_index=8,
    transpose=2
)

trinton.append_rests(
    score=score,
    voice="piano 2 voice",
    rests=[abjad.Rest("r4.")]
)

hexennacht.incantation(
    score=score,
    voice="piano 2 voice",
    bunch_1_tuplet=9,
    bunch_1_durations=[(1, 8)],
    talea=16,
    smooth_durations=[(5, 8)],
    bunch_2_tuplet=10,
    bunch_2_durations=[(2, 4)],
    pitch_index=17,
    transpose=-5
)

# harp

trinton.append_rests(
    score=score,
    voice="harp voice",
    rests=[abjad.Rest("r8")]
)

hexennacht.incantation(
    score=score,
    voice="harp voice",
    bunch_1_tuplet=11,
    bunch_1_durations=[(3, 8)],
    talea=16,
    smooth_durations=[(5, 8)],
    bunch_2_tuplet=12,
    bunch_2_durations=[(2, 4)],
    pitch_index=17,
    transpose=None
)

hexennacht.transpose_harp(
    score=score,
    voice="harp voice",
)

# flute and oboe

for voice in ["flute voice", "oboe voice",]:
    trinton.append_rests(
        score=score,
        voice=voice,
        rests=[abjad.Rest("r4")],
    )

    hexennacht.woodwind_swells(
        score=score,
        voice=voice,
        durations=[(1, 8)]
    )

    trinton.append_rests(
        score=score,
        voice=voice,
        rests=[abjad.Rest("r8"), abjad.Rest("r4."),],
    )

    hexennacht.woodwind_swells(
        score=score,
        voice=voice,
        durations=[(1, 8)]
    )

    trinton.append_rests(
        score=score,
        voice=voice,
        rests=[abjad.Rest("r8"), abjad.Rest("r2"),],
    )

    hexennacht.woodwind_swells(
        score=score,
        voice=voice,
        durations=[(7, 8)]
    )

# clarinet

trinton.append_rests(
    score=score,
    voice="bass clarinet voice",
    rests=[abjad.Rest("r2"), abjad.Rest("r8")],
)

hexennacht.woodwind_swells(
    score=score,
    voice="bass clarinet voice",
    durations=[(1, 8)]
)

trinton.append_rests(
    score=score,
    voice="bass clarinet voice",
    rests=[abjad.Rest("r8"), abjad.Rest("r2.")],
)

hexennacht.dance(
    score=score,
    voice="bass clarinet voice",
    tuplet_index=6,
    durations=[(7, 8)],
    pitch_index=5,
    transpose=None
)

# strings

for voice in ["violin 1 voice", "violin 2 voice", "viola voice", "cello voice"]:
    trinton.append_rests(
        score=score,
        voice=voice,
        rests=[abjad.Rest("r2"), abjad.Rest("r4."), abjad.Rest("r4")]
    )

    hexennacht.string_swells(
        score=score,
        voice=voice,
        tuplet_index=3,
        durations=[(1, 2)],
        pitch_index=3,
    )

    hexennacht.string_swells(
        score=score,
        voice=voice,
        tuplet_index=0,
        durations=[(7, 8)],
        pitch_index=0
    )

# all voices

for voice in ["bassoon voice", "horn voice", "trumpet voice", "tenor trombone voice", "tuba voice", "marimba voice", "percussion 1 voice", "percussion 2 voice", "contrabass voice",]:
    trinton.append_rests(
        score=score,
        voice=voice,
        rests=[
            abjad.Rest("r2"),
            abjad.Rest("r4."),
            abjad.Rest("r2.")
        ],
    )

trinton.write_marginmarkups(
    score=score,
    voices=hexennacht.all_staves,
    markups=hexennacht.all_marginmarkups,
)

hexennacht.standard_cleffing(score=score,)

# bassoon

hexennacht.woodwind_swells(
    score=score,
    voice="bassoon voice",
    durations=[(7, 8),]
)

# horn

hexennacht.brass_shrieks(
    score=score,
    voice="horn voice",
    talea_index=0,
    talea=32,
    durations=[(7, 8)],
    pitched=True,
    pitch_index=9
)

# trombone, tuba, bass

for voice, index in zip(["tenor trombone voice", "tuba voice", "contrabass voice"], [0, 3, 8]):
    hexennacht.drone(
        score=score,
        voice=voice,
        talea=16,
        pitch_index=index,
        durations=[(7, 8),]
    )

# percussion 1

trinton.handwrite(
    score=score,
    voice="percussion 1 voice",
    durations=[(5, 8), (1, 4),],
    pitch_list=trinton.rotated_sequence(
        pitch_list=hexennacht.ratchet_pitches,
        start_index=1
    )
)

for voice in ["piano 1 voice", "piano 2 voice", "harp voice", "marimba voice", "trumpet voice",]:
    trinton.append_rests(
        score=score,
        voice=voice,
        rests=[abjad.Rest("r2"), abjad.Rest("r4.")]
    )

# percussion 2

hexennacht.drumming(
    score=score,
    voice="percussion 2 voice",
    durations=[(1, 2), (3, 8)],
    pitched=False,
)

# all voices

for voice in hexennacht.all_voices:
    trinton.append_rests(
        score=score,
        voice=voice,
        rests=[abjad.Rest("r2"), abjad.Rest("r4.")]
    )

trinton.rewrite_meter(score)

trinton.beam_score(score)

trinton.annotate_leaves(score)

# tempi

trinton.attach(
    voice=score["Global Context"],
    leaves=[4,],
    attachment=hexennacht.tempo_3
)

# piano attachments

trinton.write_slur(
    voice=score["piano 1 voice"],
    start_slur=[0, 3, 10,],
    stop_slur=[2, 9, 12,],
)

trinton.write_slur(
    voice=score["piano 2 voice"],
    start_slur=[2, 8, 12,],
    stop_slur=[7, 11, 16,],
)

trinton.attach(
    voice=score["piano 1 voice"],
    leaves=[0, 3, 10,],
    attachment=abjad.Articulation("tenuto")
)

trinton.attach(
    voice=score["piano 2 voice"],
    leaves=[2, 8, 12,],
    attachment=abjad.Articulation("tenuto")
)

trinton.attach(
    voice=score["piano 1 voice"],
    leaves=[0],
    attachment=abjad.Dynamic("mf")
)

trinton.attach_multiple(
    score=score,
    voice="piano 1 voice",
    leaves=[3,],
    attachments=[abjad.Dynamic("p"), abjad.StartHairpin("<")]
)

trinton.attach(
    voice=score["piano 1 voice"],
    leaves=[6,],
    attachment=abjad.Dynamic("mf")
)

trinton.attach(
    voice=score["piano 1 voice"],
    leaves=[10,],
    attachment=abjad.Dynamic("f")
)

# harp attachments

trinton.write_slur(
    voice=score["harp voice"],
    start_slur=[1, 7, 11,],
    stop_slur=[6, 10, 15,],
)

trinton.attach(
    voice=score["harp voice"],
    leaves=[1, 7, 11,],
    attachment=abjad.Articulation("tenuto")
)

trinton.attach_multiple(
    score=score,
    voice="harp voice",
    leaves=[1,],
    attachments=[abjad.Dynamic("mf"), abjad.StartHairpin("<")]
)

trinton.attach_multiple(
    score=score,
    voice="harp voice",
    leaves=[7,],
    attachments=[abjad.Dynamic("f"), abjad.StartHairpin(">")]
)

for leaf, attachment in zip([10, 11,], [abjad.Dynamic("p"), abjad.Dynamic("f")]):
    trinton.attach(
        voice=score["harp voice"],
        leaves=[leaf],
        attachment=attachment
    )

# show file

trinton.render_file(
    score=score,
    segment_path="/Users/trintonprater/scores/hexennacht/hexennacht/segments/03",
    build_path="/Users/trintonprater/scores/hexennacht/hexennacht/build",
    segment_name="03",
    includes=[
        "/Users/trintonprater/scores/hexennacht/hexennacht/build/hexennacht-stylesheet.ily",
        "/Users/trintonprater/abjad/docs/source/_stylesheets/abjad.ily",
    ]
)
