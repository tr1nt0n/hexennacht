import abjad
import trinton

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
