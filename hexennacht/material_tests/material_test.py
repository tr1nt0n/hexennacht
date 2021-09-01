import abjad
import evans
import trinton
import hexennacht
from abjadext import rmakers
from abjadext import microtones

# make score template

score = hexennacht.score

trinton.write_time_signatures([(2, 1)], score["Global Context"])

# write new material function here

for voice in ["flute voice", "oboe voice"]:
    hexennacht.woodwind_swells(
        score=score,
        voice=voice,
        tuplet_index=0,
        durations=[(1, 4)]
    )

    hexennacht.append_rests(
        score=score,
        voice=voice,
        rests=[abjad.Rest("r2"),]
    )

    hexennacht.woodwind_swells(
        score=score,
        voice=voice,
        tuplet_index=1,
        durations=[(3, 8)]
    )

    hexennacht.append_rests(
        score=score,
        voice=voice,
        rests=[abjad.Rest("r8"),]
    )

    hexennacht.woodwind_swells(
        score=score,
        voice=voice,
        tuplet_index=2,
        durations=[(1, 4)]
    )

hexennacht.flute_multiphonics(
    score=score,
    voice="flute voice",
    leaves=[0],
    multiphonic=1,
    markup=True
)

hexennacht.flute_multiphonics(
    score=score,
    voice="flute voice",
    leaves=[1, 2],
    multiphonic=1,
    markup=False
)

hexennacht.flute_multiphonics(
    score=score,
    voice="flute voice",
    leaves=[4],
    multiphonic=2,
    markup=True
)

hexennacht.flute_multiphonics(
    score=score,
    voice="flute voice",
    leaves=[5, 6],
    multiphonic=2,
    markup=False
)

hexennacht.flute_multiphonics(
    score=score,
    voice="flute voice",
    leaves=[8],
    multiphonic=3,
    markup=True
)

hexennacht.flute_multiphonics(
    score=score,
    voice="flute voice",
    leaves=[9, 10],
    multiphonic=3,
    markup=False
)

hexennacht.oboe_harmonies(
    score=score,
    voice="oboe voice",
    leaves=[0, 1, 2],
    flute_multiphonic=1
)

hexennacht.oboe_harmonies(
    score=score,
    voice="oboe voice",
    leaves=[4, 5, 6],
    flute_multiphonic=2
)

hexennacht.oboe_harmonies(
    score=score,
    voice="oboe voice",
    leaves=[8, 9, 10],
    flute_multiphonic=3
)

hexennacht.append_rests(
    score=score,
    voice="bass clarinet voice",
    rests=[abjad.Rest("r4.")]
)

hexennacht.woodwind_swells(
    score=score,
    voice="bass clarinet voice",
    tuplet_index=4,
    durations=[(5, 8)]
)

hexennacht.append_rests(
    score=score,
    voice="bass clarinet voice",
    rests=[abjad.Rest("r4")]
)

hexennacht.woodwind_swells(
    score=score,
    voice="bass clarinet voice",
    tuplet_index=5,
    durations=[(3, 4)]
)

hexennacht.clarinet_multiphonics(
    score=score,
    voice="bass clarinet voice",
    multiphonic=2,
    markup=True,
    leaves=[1]
)

hexennacht.clarinet_multiphonics(
    score=score,
    voice="bass clarinet voice",
    multiphonic=2,
    markup=False,
    leaves=[2, 3]
)

hexennacht.clarinet_multiphonics(
    score=score,
    voice="bass clarinet voice",
    multiphonic=4,
    markup=True,
    leaves=[5]
)

hexennacht.clarinet_multiphonics(
    score=score,
    voice="bass clarinet voice",
    multiphonic=4,
    markup=False,
    leaves=[6, 7]
)

hexennacht.append_rests(
    score=score,
    voice="bassoon voice",
    rests=[abjad.Rest("r2.")]
)

hexennacht.woodwind_swells(
    score=score,
    voice="bassoon voice",
    tuplet_index=2,
    durations=[(1, 2)]
)

hexennacht.append_rests(
    score=score,
    voice="bassoon voice",
    rests=[abjad.Rest("r8")]
)

hexennacht.woodwind_swells(
    score=score,
    voice="bassoon voice",
    tuplet_index=3,
    durations=[(5, 8)]
)

hexennacht.bassoon_multiphonics(
    score=score,
    voice="bassoon voice",
    multiphonic=1,
    leaves=[1],
    markup=True
)

hexennacht.bassoon_multiphonics(
    score=score,
    voice="bassoon voice",
    multiphonic=1,
    leaves=[2, 3,],
    markup=False
)

hexennacht.bassoon_multiphonics(
    score=score,
    voice="bassoon voice",
    multiphonic=5,
    leaves=[5],
    markup=True
)

hexennacht.bassoon_multiphonics(
    score=score,
    voice="bassoon voice",
    multiphonic=5,
    leaves=[6, 7,],
    markup=False
)

hexennacht.bass_clef(
    score_and_voice=score["bassoon voice"],
    leaves=[1]
)

for voice in ["violin 1 voice", "violin 2 voice", "viola voice", "cello voice"]:
    hexennacht.append_rests(
        score=score,
        voice=voice,
        rests=[abjad.Rest("r4.")]
    )

    hexennacht.string_swells(
        score=score,
        voice=voice,
        pitch_index=3,
        tuplet_index=3,
        durations=[(7, 8)]
    )

    hexennacht.append_rests(
        score=score,
        voice=voice,
        rests=[abjad.Rest("r2")]
    )

    hexennacht.string_swells(
        score=score,
        voice=voice,
        pitch_index=6,
        tuplet_index=4,
        durations=[(1, 4)]
    )

hexennacht.bass_clef(
    score_and_voice=score["cello voice"],
    leaves=[1]
)

# trinton.annotate_leaves(score)

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
