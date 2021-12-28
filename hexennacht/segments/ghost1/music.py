import abjad
import evans
import trinton
import hexennacht
from abjadext import rmakers
from abjadext import microtones

# make score template

score = hexennacht.score

trinton.write_time_signatures(
    [(4, 4), (6, 4), (6, 4), (6, 4), (6, 4), (6, 4)], score["Global Context"]
)

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
    talea_durations=[(3, 8)],
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
    talea_durations=[(7, 8)],
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

for voice in [
    "violin 1 voice",
    "violin 2 voice",
    "viola voice",
    "cello voice",
]:
    trinton.append_rests(
        score=score,
        voice=voice,
        rests=[abjad.Rest("r1")],
    )

trinton.handwrite(
    score=score,
    voice="violin 1 voice",
    durations=[
        (1, 4),
        (1, 8),
        (1, 4),
        (1, 8),
        (3, 16),
        (1, 16),
        (1, 8),
        (10, 8),
        (1, 8),
        (1, 8),
        (1, 4),
        (1, 8),
        (1, 8),
        (1, 8),
        (1, 8),
        (11, 8),
    ],
    pitch_list=hexennacht.violin1_ghost_pitches,
)

trinton.append_rests(
    score=score,
    voice="violin 1 voice",
    rests=[
        abjad.Rest("r4"),
        abjad.Rest("r2"),
        abjad.Rest("r2"),
        abjad.Rest("r2"),
        abjad.Rest("r2"),
        abjad.Rest("r2"),
    ],
)

# violin 2

trinton.handwrite(
    score=score,
    voice="violin 2 voice",
    durations=[
        (1, 4),
        (1, 4),
        (1, 8),
        (1, 8),
        (1, 4),
        (1, 4),
        (1, 4),
        (1, 8),
        (1, 8),
        (1, 4),
        (1, 8),
        (1, 8),
        (1, 4),
        (1, 8),
        (1, 8),
        (1, 4),
        (1, 4),
        (6, 4),
    ],
    pitch_list=hexennacht.violin2_ghost_pitches,
)

trinton.append_rests(
    score=score,
    voice="violin 2 voice",
    rests=[
        abjad.Rest("r4"),
        abjad.Rest("r2"),
        abjad.Rest("r2"),
        abjad.Rest("r2"),
        abjad.Rest("r2"),
        abjad.Rest("r2"),
    ],
)

# # viola

trinton.handwrite(
    score=score,
    voice="viola voice",
    durations=[
        (1, 4),
        (1, 8),
        (1, 8),
        (1, 8),
        (1, 8),
        (1, 8),
        (1, 8),
        (1, 4),
        (1, 8),
        (1, 8),
        (1, 8),
        (1, 8),
        (1, 8),
        (1, 8),
        (1, 4),
        (1, 8),
        (1, 8),
        (1, 4),
        (1, 8),
        (1, 8),
        (1, 8),
        (1, 8),
        (1, 8),
        (1, 8),
        (5, 4),
    ],
    pitch_list=hexennacht.viola_ghost_pitches,
)

trinton.append_rests(
    score=score,
    voice="viola voice",
    rests=[
        abjad.Rest("r4"),
        abjad.Rest("r2"),
        abjad.Rest("r2"),
        abjad.Rest("r2"),
        abjad.Rest("r2"),
        abjad.Rest("r2"),
    ],
)

# cello

trinton.handwrite(
    score=score,
    voice="cello voice",
    durations=[
        (11, 8),
        (1, 8),
        (1, 8),
        (1, 8),
        (1, 8),
        (1, 4),
        (1, 8),
        (1, 8),
        (10, 8),
        (1, 8),
        (1, 16),
        (3, 16),
        (1, 8),
        (1, 4),
        (1, 8),
        (1, 4),
    ],
    pitch_list=hexennacht.cello_ghost_pitches,
)

trinton.append_rests(
    score=score,
    voice="cello voice",
    rests=[
        abjad.Rest("r4"),
        abjad.Rest("r2"),
        abjad.Rest("r2"),
        abjad.Rest("r2"),
        abjad.Rest("r2"),
        abjad.Rest("r2"),
    ],
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
    "contrabass voice",
]:
    trinton.append_rests(
        score=score,
        voice=voice,
        rests=[
            abjad.Rest("r1"),
            abjad.Rest("r2"),
            abjad.Rest("r2"),
            abjad.Rest("r2"),
            abjad.Rest("r2"),
            abjad.Rest("r2"),
            abjad.Rest("r2"),
            abjad.Rest("r2"),
            abjad.Rest("r2"),
            abjad.Rest("r2"),
            abjad.Rest("r2"),
            abjad.Rest("r2"),
            abjad.Rest("r2"),
            abjad.Rest("r2"),
            abjad.Rest("r2"),
            abjad.Rest("r2"),
        ],
    )

trinton.rewrite_meter(score)

trinton.beam_score(score)

trinton.write_marginmarkups(
    score=score, voices=hexennacht.all_staves, markups=hexennacht.all_marginmarkups
)

# tempi

trinton.attach(voice=score["Global Context"], leaves=[0], attachment=hexennacht.tempo_1)

trinton.write_text_span(
    voice=score["Global Context"],
    begin_text=r'\italic \abs-fontsize #12 { "Accel." }',
    end_text=r".",
    start_leaf=[
        4,
    ],
    stop_leaf=[
        5,
    ],
    padding=7.15,
)

trinton.attach(voice=score["Global Context"], leaves=[5], attachment=hexennacht.tempo_5)

# strings attachments

hexennacht.bass_clef(
    score["cello voice"],
    [0],
)

hexennacht.alto_clef(
    score["viola voice"],
    [0],
)

for voice in [
    "violin 1 voice",
    "violin 2 voice",
    "viola voice",
    "cello voice",
]:
    trinton.attach(
        voice=score[voice],
        leaves=[1],
        attachment=abjad.LilyPondLiteral(
            r'\boxed-markup "CLT, SP, Molto Flaut." 1', format_slot="after"
        ),
    )

    trinton.attach(
        voice=score[voice],
        leaves=[1],
        attachment=abjad.StartHairpin("o<"),
    )

    trinton.attach(
        voice=score[voice],
        leaves=[3],
        attachment=abjad.Dynamic("p"),
    )

    trinton.attach(
        voice=score[voice],
        leaves=[3],
        attachment=abjad.StartHairpin("--"),
    )

    trinton.unmeasured_stem_tremolo(abjad.select(score[voice]).leaves(pitched=True))


# violin 1 attachments

trinton.attach(
    voice=score["violin 1 voice"],
    leaves=[21],
    attachment=abjad.StopHairpin(),
)

trinton.attach(
    voice=score["violin 1 voice"],
    leaves=[21],
    attachment=abjad.StartHairpin(">o"),
)

trinton.attach(
    voice=score["violin 1 voice"], leaves=[25], attachment=abjad.StopHairpin()
)

# violin 2 attachments

trinton.attach(
    voice=score["violin 2 voice"],
    leaves=[18],
    attachment=abjad.StopHairpin(),
)

trinton.attach(
    voice=score["violin 2 voice"],
    leaves=[18],
    attachment=abjad.StartHairpin(">o"),
)

trinton.attach(
    voice=score["violin 2 voice"], leaves=[21], attachment=abjad.StopHairpin()
)

# viola attachments

trinton.attach(
    voice=score["viola voice"],
    leaves=[25],
    attachment=abjad.StopHairpin(),
)

trinton.attach(
    voice=score["viola voice"],
    leaves=[25],
    attachment=abjad.StartHairpin(">o"),
)

trinton.attach(voice=score["viola voice"], leaves=[27], attachment=abjad.StopHairpin())

# cello attachments

trinton.attach(
    voice=score["cello voice"],
    leaves=[16],
    attachment=abjad.StopHairpin(),
)

trinton.attach(
    voice=score["cello voice"],
    leaves=[16],
    attachment=abjad.StartHairpin(">o"),
)

trinton.attach(voice=score["cello voice"], leaves=[24], attachment=abjad.StopHairpin())

# bass drum attachments

tuplet = abjad.select(score["percussion 2 voice"]).tuplet(7)
string = r"\italic 7:10"
markup = abjad.Markup(
    rf"\markup \scale #'(1 . 1) {string}",
    literal=True,
)
abjad.override(tuplet).TupletNumber.text = markup

hexennacht.percussion_clef(
    score_and_voice=score["percussion 2 voice"],
    leaves=[0],
)

hexennacht.one_line(score=score, voice="percussion 2 voice", leaves=[0])

trinton.transparent_accidentals(
    score=score,
    voice="percussion 2 voice",
    leaves=all,
)

hexennacht.with_hand(
    score=score,
    voice="percussion 2 voice",
    leaves=[
        3,
        14,
        20,
        39,
        42,
        70,
        83,
    ],
)

hexennacht.with_mallets(
    score=score,
    voice="percussion 2 voice",
    leaves=[
        7,
        16,
        22,
        41,
        44,
        72,
        85,
    ],
)

trinton.attach(
    voice=score["percussion 2 voice"],
    leaves=[0, 7, 10, 12, 16, 18, 22, 38, 41, 44, 64, 72, 79, 80, 82, 85, 88, 90],
    attachment=abjad.Articulation(">"),
)

trinton.attach(
    voice=score["percussion 2 voice"],
    leaves=[0, 7, 10, 12, 16, 18, 22, 38, 41, 44, 64, 72, 79, 80, 82, 85, 88, 90],
    attachment=abjad.Dynamic("fff"),
)

trinton.attach(
    voice=score["percussion 2 voice"],
    leaves=[1, 9, 11, 13, 15, 17, 19, 35, 45, 52, 65, 73, 81, 86, 89],
    attachment=abjad.Dynamic("f"),
)

trinton.attach(
    voice=score["percussion 2 voice"],
    leaves=[
        14,
        20,
        24,
        33,
        39,
        42,
        48,
        62,
        70,
        83,
    ],
    attachment=abjad.Dynamic("mp"),
)

trinton.attach(
    voice=score["percussion 2 voice"],
    leaves=[
        29,
    ],
    attachment=abjad.Dynamic("mf"),
)

trinton.attach(
    voice=score["percussion 2 voice"],
    leaves=[
        14,
        20,
        24,
        39,
        42,
        48,
        70,
        83,
    ],
    attachment=abjad.StartHairpin("<"),
)

trinton.attach(
    voice=score["percussion 2 voice"],
    leaves=[
        29,
        55,
    ],
    attachment=abjad.StartHairpin(">"),
)

trinton.attach(
    voice=score["percussion 2 voice"],
    leaves=[
        24,
        25,
        26,
        29,
        30,
        31,
        32,
        33,
        48,
        49,
        50,
        51,
        52,
        55,
        56,
        57,
        58,
        59,
        60,
        61,
        62,
    ],
    attachment=abjad.Articulation("staccato"),
)

trinton.write_slur(
    voice=score["percussion 2 voice"],
    start_slur=[
        24,
        29,
        48,
        55,
    ],
    stop_slur=[
        26,
        33,
        52,
        62,
    ],
)

# extract parts

trinton.extract_parts(score)

# whiteout empty staves

for voice in hexennacht.all_voices:
    trinton.whiteout_empty_staves(score=score, voice=voice, cutaway=True)

# show file

trinton.render_file(
    score=score,
    segment_path="/Users/trintonprater/scores/hexennacht/hexennacht/segments/ghost1",
    build_path="/Users/trintonprater/scores/hexennacht/hexennacht/build",
    segment_name="ghost1",
    includes=[
        "/Users/trintonprater/scores/hexennacht/hexennacht/build/hexennacht-stylesheet.ily",
        "/Users/trintonprater/abjad/docs/source/_stylesheets/abjad.ily",
    ],
)
