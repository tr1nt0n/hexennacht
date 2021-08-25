import abjad
import evans
import trinton
import hexennacht
from abjadext import rmakers

# make score template

score = hexennacht.score

trinton.write_time_signatures([(2, 1)], score["Global Context"])

# write new material function here

hexennacht.warble(
    score=score,
    voice="violin 1 voice",
    accel_durations=[(3, 4)],
    rit_durations=[(2, 4)],
    rit_first=True,
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
