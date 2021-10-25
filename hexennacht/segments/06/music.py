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
