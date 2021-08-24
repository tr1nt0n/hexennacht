import abjad
import trinton
import evans
from abjadext import rmakers

score = trinton.make_score_template(
    [
        abjad.Flute(),
        abjad.Oboe(),
        abjad.BassClarinet(),
        abjad.Bassoon(),
        abjad.FrenchHorn(),
        abjad.Trumpet(),
        abjad.TenorTrombone(),
        abjad.Tuba(),
        abjad.Piano(),
        abjad.Piano(),
        abjad.Harp(),
        abjad.Percussion(),
        abjad.Percussion(),
        abjad.Violin(),
        abjad.Violin(),
        abjad.Viola(),
        abjad.Cello(),
        abjad.Contrabass(),
    ],
    [4, 2, 3, 2, 1, 2, 5],
)

def warble(score, voice, accel_durations, rit_durations, rit_first):
    accelerando = rmakers.stack(
        rmakers.accelerando([(1, 8), (1, 20), (1, 32)]),
        rmakers.force_rest(lambda _: abjad.select(_).leaves().get([0, -1])),
        rmakers.feather_beam(
            beam_rests=True,
            stemlet_length=0.75,
        ),
        rmakers.duration_bracket(),
    )

    ritardando = rmakers.stack(
        rmakers.accelerando([(1, 20), (1, 8), (1, 32)]),
        rmakers.force_rest(lambda _: abjad.select(_).leaves().get([0, -1])),
        rmakers.feather_beam(
            beam_rests=True,
            stemlet_length=0.75,
        ),
        rmakers.duration_bracket(),
    )

    if accel_durations == None:
        trinton.append_rhythm_selections(
            stack=ritardando,
            durations=rit_durations,
            voice_name=voice,
            score=score,
        )

    elif rit_durations == None:
        trinton.append_rhythm_selections(
            stack=accelerando,
            durations=accel_durations,
            voice_name=voice,
            score=score,
        )

    elif rit_first == True:
        trinton.append_rhythm_selections(
            stack=ritardando,
            durations=rit_durations,
            voice_name=voice,
            score=score,
        )

        trinton.append_rhythm_selections(
            stack=accelerando,
            durations=accel_durations,
            voice_name=voice,
            score=score,
        )

    else:
        trinton.append_rhythm_selections(
            stack=accelerando,
            durations=accel_durations,
            voice_name=voice,
            score=score,
        )

        trinton.append_rhythm_selections(
            stack=ritardando,
            durations=rit_durations,
            voice_name=voice,
            score=score,
        )

    handler = evans.PitchHandler(
        pitch_list=[20, 20.5, 19.5, 20, 21, 21.5, 20.5],
        forget=False
    )
    handler(abjad.select(score[voice]).leaves(pitched=True))
