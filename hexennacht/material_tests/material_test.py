import abjad
import evans
import trinton
import hexennacht
from abjadext import rmakers
from abjadext import microtones

# make score template

score = hexennacht.score

trinton.write_time_signatures([(4, 4), (6, 4), (6, 4), (6, 4), (6, 4), (6, 4)], score["Global Context"])

# write new material function here

# bass drum

hexennacht.cymbal_swells(
    score=score,
    voice="percussion 2 voice",
    durations=[(1, 8), (3, 8)],
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
    bunch_1_tuplet=29,
    bunch_1_durations=[(3, 8)],
    talea=16,
    smooth_durations=[(3, 4)],
    bunch_2_tuplet=13,
    bunch_2_durations=[(3, 4)],
    pitch_index=None,
    transpose=None,
)

hexennacht.warble(
    score=score,
    voice="percussion 2 voice",
    accel_durations=[(3, 8)],
    rit_durations=[(1, 2)],
    rit_first=False,
    pitched=False,
)

hexennacht.flute_solo(
    score=score,
    voice="percussion 2 voice",
    tuplet_index=3,
    flourish_durations=[(1, 4)],
    talea=32,
    talea_index=2,
    talea_durations=[(3, 8)]
)

trinton.append_rests(
    score=score,
    voice="percussion 2 voice",
    rests=[abjad.Rest("r4")],
)

hexennacht.warble(
    score=score,
    voice="percussion 2 voice",
    accel_durations=[(3, 4)],
    rit_durations=[(2, 4)],
    rit_first=True,
    pitched=False,
)

hexennacht.flute_solo(
    score=score,
    voice="percussion 2 voice",
    tuplet_index=1,
    flourish_durations=[(5, 8)],
    talea=16,
    talea_index=2,
    talea_durations=[(7, 8)]
)

trinton.append_rests(
    score=score,
    voice="percussion 2 voice",
    rests=[abjad.Rest("r8")],
)

hexennacht.incantation(
    score=score,
    voice="percussion 2 voice",
    bunch_1_tuplet=28,
    bunch_1_durations=[(3, 8)],
    talea=16,
    smooth_durations=[(3, 4)],
    bunch_2_tuplet=12,
    bunch_2_durations=[(1, 4)],
    pitch_index=None,
    transpose=None,
)

# violin 1

for voice in ["violin 1 voice", "violin 2 voice", "viola voice", "cello voice",]:
    trinton.append_rests(
        score=score,
        voice=voice,
        rests=[abjad.Rest("r1")],
    )

trinton.handwrite(
    score=score,
    voice="violin 1 voice",
    durations=[(1, 4), (1, 8), (1, 4), (1, 8), (3, 16), (1, 16), (1, 8), (10, 8), (1, 8), (1, 8), (1, 4), (1, 8), (1, 8), (1, 8), (1, 8), (11, 8)],
    pitch_list=hexennacht.violin1_ghost_pitches,
)

trinton.append_rests(
    score=score,
    voice="violin 1 voice",
    rests=[abjad.Rest("r4"), abjad.Rest("r2"), abjad.Rest("r2"), abjad.Rest("r2"), abjad.Rest("r2"), abjad.Rest("r2"),]
)

# violin 2

trinton.handwrite(
    score=score,
    voice="violin 2 voice",
    durations=[(1, 4), (1, 4), (1, 8), (1, 8), (1, 4), (1, 4), (1, 4), (1, 8), (1, 8), (1, 4), (1, 8), (1, 8), (1, 4), (1, 8), (1, 8), (1, 4), (1, 4), (6, 4)],
    pitch_list=hexennacht.violin2_ghost_pitches,
)

trinton.append_rests(
    score=score,
    voice="violin 2 voice",
    rests=[abjad.Rest("r4"), abjad.Rest("r2"), abjad.Rest("r2"), abjad.Rest("r2"), abjad.Rest("r2"), abjad.Rest("r2"),]
)

# viola

trinton.handwrite(
    score=score,
    voice="viola voice",
    durations=[(1, 4), (1, 8), (1, 8), (1, 8), (1, 8), (1, 8), (1, 8), (1, 4), (1, 8), (1, 8), (1, 8), (1, 8), (1, 8), (1, 8), (1, 4), (1, 8), (1, 8), (1, 4), (1, 8), (1, 8), (1, 8), (1, 8), (1, 8), (1, 8), (5, 4),],
    pitch_list=hexennacht.viola_ghost_pitches,
)

trinton.append_rests(
    score=score,
    voice="viola voice",
    rests=[abjad.Rest("r4"), abjad.Rest("r2"), abjad.Rest("r2"), abjad.Rest("r2"), abjad.Rest("r2"), abjad.Rest("r2"),]
)

# cello

trinton.handwrite(
    score=score,
    voice="cello voice",
    durations=[(11, 8), (1, 8), (1, 8), (1, 8), (1, 8), (1, 4), (1, 8), (1, 8), (10, 8), (1, 8), (1, 16), (3, 16), (1, 8), (1, 4), (1, 8), (1, 4),],
    pitch_list=hexennacht.cello_ghost_pitches,
)

trinton.append_rests(
    score=score,
    voice="cello voice",
    rests=[abjad.Rest("r4"), abjad.Rest("r2"), abjad.Rest("r2"), abjad.Rest("r2"), abjad.Rest("r2"), abjad.Rest("r2"),]
)

# all voices

for voice in [
    "flute voice",
    "oboe voice",
    "bass clarinet voice",
    "bassoon voice",
    "horn voice",
    "trumpet voice",
    "tenor trombone voice",
    "tuba voice",
    "piano 1 voice",
    "piano 2 voice",
    "harp voice",
    "marimba voice",
    "percussion 1 voice",
    "contrabass voice"
]:
    trinton.append_rests(
        score=score,
        voice=voice,
        rests=[abjad.Rest("r1"), abjad.Rest("r2"), abjad.Rest("r2"), abjad.Rest("r2"), abjad.Rest("r2"), abjad.Rest("r2"), abjad.Rest("r2"), abjad.Rest("r2"), abjad.Rest("r2"), abjad.Rest("r2"), abjad.Rest("r2"), abjad.Rest("r2"), abjad.Rest("r2"), abjad.Rest("r2"), abjad.Rest("r2"), abjad.Rest("r2"), ]
    )

trinton.rewrite_meter_without_splitting(score)

trinton.beam_score_without_splitting(score)

trinton.annotate_leaves(score)

trinton.write_startmarkups(
    score=score,
    voices=hexennacht.all_staves,
    markups=hexennacht.all_startmarkups
)

trinton.write_marginmarkups(
    score=score,
    voices=hexennacht.all_staves,
    markups=hexennacht.all_marginmarkups
)

hexennacht.bass_clef(
    score["cello voice"],
    [0],
)

hexennacht.alto_clef(
    score["viola voice"],
    [0],
)

hexennacht.percussion_clef(
    score_and_voice=score["percussion 2 voice"],
    leaves=[0],
)

hexennacht.one_line(
    score=score,
    voice="percussion 2 voice",
    leaves=[0]
)

hexennacht.bass_drum(
    score=score,
    voice="percussion 2 voice",
    leaves=[0],
)

trinton.transparent_accidentals(
    score=score,
    voice="percussion 2 voice",
    leaves=all,
)

for voice in ["violin 1 voice", "violin 2 voice", "viola voice" "cello voice",]:
    trinton.attach(
        voice=score[voice],
        leaves=[0],
        attachment=abjad.LilyPondLiteral(
            r'\boxed-markup "CLT, Molto Flaut." 1', format_slot="after"
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
