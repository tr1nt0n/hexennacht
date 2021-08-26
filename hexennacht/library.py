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

def bunched_rhythms(score, voice, bunch_1_tuplet, bunch_1_durations, talea, smooth_durations, bunch_2_tuplet, bunch_2_durations):
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
        rmakers.talea([4, 5, 7, 5, 4, 7, 5, 7], talea),
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

tempo_1 = abjad.MetronomeMark((1, 4), 47)
tempo_2 = abjad.MetronomeMark((1, 4), 60)
tempo_3 = abjad.MetronomeMark((1, 4), 69)
tempo_4 = abjad.MetronomeMark((1, 4), 105)
tempo_5 = abjad.MetronomeMark((1, 4), 130)

ritual_pitches = [0, 1, 3, 8, 3, 0, 7, 5, 3, 11, 6, 7, 2, 1, 3, 8, 3, 3, 2, 3, 3, 5, 0, 6]

dance_pitches = [4, 6, 7, 10, 8, 8, 4, 10, 0, 10, 10, 11, 4, 8, 7, 9, 6, 8, 5, 5, 7, 3]

def octave_up(sel):
    for pitch in sel:
        abjad.mutate.transpose(pitch, 12)

def octave_down(sel):
    for pitch in sel:
        abjad.mutate.transpose(pitch, -12)

def double_octave_up(sel):
    for pitch in sel:
        abjad.mutate.transpose(pitch, 24)

def double_octave_down(sel):
    for pitch in sel:
        abjad.mutate.transpose(pitch, -24)

def transpose_bass_clarinet(voice):
    for leaf in abjad.select(score[voice]).leaves(pitched=True):
        abjad.mutate.transpose(leaf, 14)

def transpose_french_horn(voice):
    for leaf in abjad.select(score[voice]).leaves(pitched=True):
        abjad.mutate.transpose(leaf, 7)

def transpose_trumpet(voice):
    for leaf in abjad.select(score[voice]).leaves(pitched=True):
        abjad.mutate.transpose(leaf, 2)

def transpose_contrabass(voice):
    for leaf in abjad.select(score[voice]).leaves(pitched=True):
        abjad.mutate.transpose(leaf, 12)

def treble_clef(voice, leaf):
    trinton.attach(
        voice=voice,
        leaves=leaf,
        attachment=abjad.Clef("treble")
    )

def alto_clef(voice, leaf):
    trinton.attach(
        voice=voice,
        leaves=leaf,
        attachment=abjad.Clef("alto")
    )

def bass_clef(voice, leaf):
    trinton.attach(
        voice=voice,
        leaves=leaf,
        attachment=abjad.Clef("bass")
    )
