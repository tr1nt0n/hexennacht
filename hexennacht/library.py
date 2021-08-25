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
    [4, 1, 3, 2, 1, 2, 5],
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

def bunched_rhythms(score, voice, bunch_1_tuplet, bunch_1_durations, smooth_durations, bunch_2_tuplet, bunch_2_durations):
    bunch_1 = rmakers.stack(
        rmakers.tuplet(
            [
                [(1, 1, 1)],
                [(2, 1, 1)],
                [(1, 2, 1)],
                [(1, 1, 1, 1, 1)],
                [(2, 1, 1, 1)],
                [(1, 2, 1, 1)],
                [(1, 1, 2, 1)],
                [(3, 1, 1)],
                [(1, 3, 1)],
                [(1, 1, 1, 1, 1, 1)],
                [(2, 1, 1, 1, 1)],
                [(1, 2, 1, 1, 1)],
                [(1, 1, 2, 1, 1)],
                [(1, 1, 1, 2, 1)],
                [(1, 3, 1, 1)],
                [(1, 1, 3, 1)],
                [(1, 1, 1, 1, 1, 1, 1)],
                [(2, 1, 1, 1, 1, 1)],
                [(1, 2, 1, 1, 1, 1)],
                [(1, 1, 2, 1, 1, 1)],
                [(1, 1, 1, 2, 1, 1)],
                [(1, 1, 1, 1, 2, 1)],
                [(3, 1, 1, 1, 1)],
                [(1, 3, 1, 1, 1)],
                [(1, 1, 3, 1, 1)],
                [(1, 1, 1, 3, 1)],
                [(2, 3, 1, 1, 1)],
                [(1, 2, 3, 1, 1)],
                [(1, 1, 2, 3, 1)],
                [(3, 1, 2, 1)],
                [(2, 1, 3, 1)],
            ][bunch_1_tuplet]
        ),
        rmakers.trivialize(abjad.select().tuplets()),
        rmakers.extract_trivial(abjad.select().tuplets()),
        rmakers.rewrite_rest_filled(abjad.select().tuplets()),
        rmakers.rewrite_sustained(abjad.select().tuplets()),
    )
    bunch_2 = rmakers.stack(
        rmakers.tuplet(
            [
                [(1, 1, 1)],
                [(2, 1, 1)],
                [(1, 2, 1)],
                [(1, 1, 1, 1, 1)],
                [(2, 1, 1, 1)],
                [(1, 2, 1, 1)],
                [(1, 1, 2, 1)],
                [(3, 1, 1)],
                [(1, 3, 1)],
                [(1, 1, 1, 1, 1, 1)],
                [(2, 1, 1, 1, 1)],
                [(1, 2, 1, 1, 1)],
                [(1, 1, 2, 1, 1)],
                [(1, 1, 1, 2, 1)],
                [(1, 3, 1, 1)],
                [(1, 1, 3, 1)],
                [(1, 1, 1, 1, 1, 1, 1)],
                [(2, 1, 1, 1, 1, 1)],
                [(1, 2, 1, 1, 1, 1)],
                [(1, 1, 2, 1, 1, 1)],
                [(1, 1, 1, 2, 1, 1)],
                [(1, 1, 1, 1, 2, 1)],
                [(3, 1, 1, 1, 1)],
                [(1, 3, 1, 1, 1)],
                [(1, 1, 3, 1, 1)],
                [(1, 1, 1, 3, 1)],
                [(2, 3, 1, 1, 1)],
                [(1, 2, 3, 1, 1)],
                [(1, 1, 2, 3, 1)],
                [(3, 1, 2, 1)],
                [(2, 1, 3, 1)],
            ][bunch_2_tuplet]
        ),
        rmakers.trivialize(abjad.select().tuplets()),
        rmakers.extract_trivial(abjad.select().tuplets()),
        rmakers.rewrite_rest_filled(abjad.select().tuplets()),
        rmakers.rewrite_sustained(abjad.select().tuplets()),
    )
    smooth = rmakers.stack(
        rmakers.talea([4, 5, 7, 5, 4, 7, 5, 7], 16),
        rmakers.trivialize(abjad.select().tuplets()),
        rmakers.extract_trivial(abjad.select().tuplets()),
        rmakers.rewrite_rest_filled(abjad.select().tuplets()),
        rmakers.rewrite_sustained(abjad.select().tuplets()),
    )

    trinton.append_rhythm_selections(
        stack=bunch_1,
        durations=bunch_1_durations,
        voice_name=voice,
        score=score,)

    trinton.append_rhythm_selections(
        stack=smooth,
        durations=smooth_durations,
        voice_name=voice,
        score=score,)

    trinton.append_rhythm_selections(
        stack=bunch_2,
        durations=bunch_2_durations,
        voice_name=voice,
        score=score,)
