%! abjad.LilyPondFile._get_format_pieces()
\version "2.20.0"
%! abjad.LilyPondFile._get_format_pieces()
\language "english"
%! abjad.LilyPondFile._get_formatted_includes()
\include "/Users/trintonprater/scores/hexennacht/hexennacht/build/hexennacht-stylesheet.ily"
%! abjad.LilyPondFile._get_formatted_includes()
\include "/Users/trintonprater/abjad/docs/source/_stylesheets/abjad.ily"

%! abjad.LilyPondFile._get_formatted_blocks()
\score
%! abjad.LilyPondFile._get_formatted_blocks()
{
    \context Score = "Score"
    <<
        \context TimeSignatureContext = "Global Context"
        {
            \time 4/4
            s1 * 1
            \time 6/4
            s1 * 3/2
            \time 6/4
            s1 * 3/2
            \time 6/4
            s1 * 3/2
            \time 6/4
            s1 * 3/2
            \time 6/4
            s1 * 3/2
        }
        \context ChoirStaff = "Staff Group"
        <<
            \context PianoStaff = "sub group 1"
            <<
                \context Staff = "flute staff"
                {
                    \context Voice = "flute voice"
                    {
                        \set Staff.instrumentName =
                        \markup { Flute }
                        \set Staff.shortInstrumentName =
                        \markup { fl. }
                        r1
                        ^ \markup { 0 }
                        r2
                        ^ \markup { 1 }
                        r2
                        ^ \markup { 2 }
                        r2
                        ^ \markup { 3 }
                        r2
                        ^ \markup { 4 }
                        r2
                        ^ \markup { 5 }
                        r2
                        ^ \markup { 6 }
                        r2
                        ^ \markup { 7 }
                        r2
                        ^ \markup { 8 }
                        r2
                        ^ \markup { 9 }
                        r2
                        ^ \markup { 10 }
                        r2
                        ^ \markup { 11 }
                        r2
                        ^ \markup { 12 }
                        r2
                        ^ \markup { 13 }
                        r2
                        ^ \markup { 14 }
                        r2
                        ^ \markup { 15 }
                    }
                }
                \context Staff = "oboe staff"
                {
                    \context Voice = "oboe voice"
                    {
                        \set Staff.instrumentName =
                        \markup { Oboe }
                        \set Staff.shortInstrumentName =
                        \markup { ob. }
                        r1
                        ^ \markup { 0 }
                        r2
                        ^ \markup { 1 }
                        r2
                        ^ \markup { 2 }
                        r2
                        ^ \markup { 3 }
                        r2
                        ^ \markup { 4 }
                        r2
                        ^ \markup { 5 }
                        r2
                        ^ \markup { 6 }
                        r2
                        ^ \markup { 7 }
                        r2
                        ^ \markup { 8 }
                        r2
                        ^ \markup { 9 }
                        r2
                        ^ \markup { 10 }
                        r2
                        ^ \markup { 11 }
                        r2
                        ^ \markup { 12 }
                        r2
                        ^ \markup { 13 }
                        r2
                        ^ \markup { 14 }
                        r2
                        ^ \markup { 15 }
                    }
                }
                \context Staff = "bass clarinet staff"
                {
                    \context Voice = "bass clarinet voice"
                    {
                        \set Staff.instrumentName =
                        \markup { Bass Clarinet }
                        \set Staff.shortInstrumentName =
                        \markup { bcl. }
                        r1
                        ^ \markup { 0 }
                        r2
                        ^ \markup { 1 }
                        r2
                        ^ \markup { 2 }
                        r2
                        ^ \markup { 3 }
                        r2
                        ^ \markup { 4 }
                        r2
                        ^ \markup { 5 }
                        r2
                        ^ \markup { 6 }
                        r2
                        ^ \markup { 7 }
                        r2
                        ^ \markup { 8 }
                        r2
                        ^ \markup { 9 }
                        r2
                        ^ \markup { 10 }
                        r2
                        ^ \markup { 11 }
                        r2
                        ^ \markup { 12 }
                        r2
                        ^ \markup { 13 }
                        r2
                        ^ \markup { 14 }
                        r2
                        ^ \markup { 15 }
                    }
                }
                \context Staff = "bassoon staff"
                {
                    \context Voice = "bassoon voice"
                    {
                        \set Staff.instrumentName =
                        \markup { Bassoon }
                        \set Staff.shortInstrumentName =
                        \markup { bsn. }
                        r1
                        ^ \markup { 0 }
                        r2
                        ^ \markup { 1 }
                        r2
                        ^ \markup { 2 }
                        r2
                        ^ \markup { 3 }
                        r2
                        ^ \markup { 4 }
                        r2
                        ^ \markup { 5 }
                        r2
                        ^ \markup { 6 }
                        r2
                        ^ \markup { 7 }
                        r2
                        ^ \markup { 8 }
                        r2
                        ^ \markup { 9 }
                        r2
                        ^ \markup { 10 }
                        r2
                        ^ \markup { 11 }
                        r2
                        ^ \markup { 12 }
                        r2
                        ^ \markup { 13 }
                        r2
                        ^ \markup { 14 }
                        r2
                        ^ \markup { 15 }
                    }
                }
            >>
            \context Staff = "horn staff"
            {
                \context Voice = "horn voice"
                {
                    \set Staff.instrumentName =
                    \markup { French Horn }
                    \set Staff.shortInstrumentName =
                    \markup { hrn. }
                    r1
                    ^ \markup { 0 }
                    r2
                    ^ \markup { 1 }
                    r2
                    ^ \markup { 2 }
                    r2
                    ^ \markup { 3 }
                    r2
                    ^ \markup { 4 }
                    r2
                    ^ \markup { 5 }
                    r2
                    ^ \markup { 6 }
                    r2
                    ^ \markup { 7 }
                    r2
                    ^ \markup { 8 }
                    r2
                    ^ \markup { 9 }
                    r2
                    ^ \markup { 10 }
                    r2
                    ^ \markup { 11 }
                    r2
                    ^ \markup { 12 }
                    r2
                    ^ \markup { 13 }
                    r2
                    ^ \markup { 14 }
                    r2
                    ^ \markup { 15 }
                }
            }
            \context PianoStaff = "sub group 2"
            <<
                \context Staff = "trumpet staff"
                {
                    \context Voice = "trumpet voice"
                    {
                        \set Staff.instrumentName =
                        \markup { Trumpet in C }
                        \set Staff.shortInstrumentName =
                        \markup { tpt. }
                        r1
                        ^ \markup { 0 }
                        r2
                        ^ \markup { 1 }
                        r2
                        ^ \markup { 2 }
                        r2
                        ^ \markup { 3 }
                        r2
                        ^ \markup { 4 }
                        r2
                        ^ \markup { 5 }
                        r2
                        ^ \markup { 6 }
                        r2
                        ^ \markup { 7 }
                        r2
                        ^ \markup { 8 }
                        r2
                        ^ \markup { 9 }
                        r2
                        ^ \markup { 10 }
                        r2
                        ^ \markup { 11 }
                        r2
                        ^ \markup { 12 }
                        r2
                        ^ \markup { 13 }
                        r2
                        ^ \markup { 14 }
                        r2
                        ^ \markup { 15 }
                    }
                }
                \context Staff = "tenor trombone staff"
                {
                    \context Voice = "tenor trombone voice"
                    {
                        \set Staff.instrumentName =
                        \markup { Tenor Trombone }
                        \set Staff.shortInstrumentName =
                        \markup { tbn. }
                        r1
                        ^ \markup { 0 }
                        r2
                        ^ \markup { 1 }
                        r2
                        ^ \markup { 2 }
                        r2
                        ^ \markup { 3 }
                        r2
                        ^ \markup { 4 }
                        r2
                        ^ \markup { 5 }
                        r2
                        ^ \markup { 6 }
                        r2
                        ^ \markup { 7 }
                        r2
                        ^ \markup { 8 }
                        r2
                        ^ \markup { 9 }
                        r2
                        ^ \markup { 10 }
                        r2
                        ^ \markup { 11 }
                        r2
                        ^ \markup { 12 }
                        r2
                        ^ \markup { 13 }
                        r2
                        ^ \markup { 14 }
                        r2
                        ^ \markup { 15 }
                    }
                }
                \context Staff = "tuba staff"
                {
                    \context Voice = "tuba voice"
                    {
                        \set Staff.instrumentName =
                        \markup { Tuba }
                        \set Staff.shortInstrumentName =
                        \markup { tb. }
                        r1
                        ^ \markup { 0 }
                        r2
                        ^ \markup { 1 }
                        r2
                        ^ \markup { 2 }
                        r2
                        ^ \markup { 3 }
                        r2
                        ^ \markup { 4 }
                        r2
                        ^ \markup { 5 }
                        r2
                        ^ \markup { 6 }
                        r2
                        ^ \markup { 7 }
                        r2
                        ^ \markup { 8 }
                        r2
                        ^ \markup { 9 }
                        r2
                        ^ \markup { 10 }
                        r2
                        ^ \markup { 11 }
                        r2
                        ^ \markup { 12 }
                        r2
                        ^ \markup { 13 }
                        r2
                        ^ \markup { 14 }
                        r2
                        ^ \markup { 15 }
                    }
                }
            >>
            \context PianoStaff = "sub group 3"
            <<
                \context Staff = "piano 1 staff"
                {
                    \context Voice = "piano 1 voice"
                    {
                        \set Staff.instrumentName =
                        \markup { Piano }
                        \set Staff.shortInstrumentName =
                        \markup { pno. }
                        r1
                        ^ \markup { 0 }
                        r2
                        ^ \markup { 1 }
                        r2
                        ^ \markup { 2 }
                        r2
                        ^ \markup { 3 }
                        r2
                        ^ \markup { 4 }
                        r2
                        ^ \markup { 5 }
                        r2
                        ^ \markup { 6 }
                        r2
                        ^ \markup { 7 }
                        r2
                        ^ \markup { 8 }
                        r2
                        ^ \markup { 9 }
                        r2
                        ^ \markup { 10 }
                        r2
                        ^ \markup { 11 }
                        r2
                        ^ \markup { 12 }
                        r2
                        ^ \markup { 13 }
                        r2
                        ^ \markup { 14 }
                        r2
                        ^ \markup { 15 }
                    }
                }
                \context Staff = "piano 2 staff"
                {
                    \context Voice = "piano 2 voice"
                    {
                        r1
                        ^ \markup { 0 }
                        r2
                        ^ \markup { 1 }
                        r2
                        ^ \markup { 2 }
                        r2
                        ^ \markup { 3 }
                        r2
                        ^ \markup { 4 }
                        r2
                        ^ \markup { 5 }
                        r2
                        ^ \markup { 6 }
                        r2
                        ^ \markup { 7 }
                        r2
                        ^ \markup { 8 }
                        r2
                        ^ \markup { 9 }
                        r2
                        ^ \markup { 10 }
                        r2
                        ^ \markup { 11 }
                        r2
                        ^ \markup { 12 }
                        r2
                        ^ \markup { 13 }
                        r2
                        ^ \markup { 14 }
                        r2
                        ^ \markup { 15 }
                    }
                }
            >>
            \context Staff = "harp staff"
            {
                \context Voice = "harp voice"
                {
                    \set Staff.instrumentName =
                    \markup { Harp }
                    \set Staff.shortInstrumentName =
                    \markup { harp }
                    r1
                    ^ \markup { 0 }
                    r2
                    ^ \markup { 1 }
                    r2
                    ^ \markup { 2 }
                    r2
                    ^ \markup { 3 }
                    r2
                    ^ \markup { 4 }
                    r2
                    ^ \markup { 5 }
                    r2
                    ^ \markup { 6 }
                    r2
                    ^ \markup { 7 }
                    r2
                    ^ \markup { 8 }
                    r2
                    ^ \markup { 9 }
                    r2
                    ^ \markup { 10 }
                    r2
                    ^ \markup { 11 }
                    r2
                    ^ \markup { 12 }
                    r2
                    ^ \markup { 13 }
                    r2
                    ^ \markup { 14 }
                    r2
                    ^ \markup { 15 }
                }
            }
            \context PianoStaff = "sub group 4"
            <<
                \context Staff = "marimba staff"
                {
                    \context Voice = "marimba voice"
                    {
                        \set Staff.instrumentName =
                        \markup { Marimba }
                        \set Staff.shortInstrumentName =
                        \markup { mar. }
                        r1
                        ^ \markup { 0 }
                        r2
                        ^ \markup { 1 }
                        r2
                        ^ \markup { 2 }
                        r2
                        ^ \markup { 3 }
                        r2
                        ^ \markup { 4 }
                        r2
                        ^ \markup { 5 }
                        r2
                        ^ \markup { 6 }
                        r2
                        ^ \markup { 7 }
                        r2
                        ^ \markup { 8 }
                        r2
                        ^ \markup { 9 }
                        r2
                        ^ \markup { 10 }
                        r2
                        ^ \markup { 11 }
                        r2
                        ^ \markup { 12 }
                        r2
                        ^ \markup { 13 }
                        r2
                        ^ \markup { 14 }
                        r2
                        ^ \markup { 15 }
                    }
                }
                \context Staff = "percussion 1 staff"
                {
                    \context Voice = "percussion 1 voice"
                    {
                        \set Staff.instrumentName =
                        \markup { Ratchets }
                        \set Staff.shortInstrumentName =
                        \markup { ratch. }
                        r1
                        ^ \markup { 0 }
                        r2
                        ^ \markup { 1 }
                        r2
                        ^ \markup { 2 }
                        r2
                        ^ \markup { 3 }
                        r2
                        ^ \markup { 4 }
                        r2
                        ^ \markup { 5 }
                        r2
                        ^ \markup { 6 }
                        r2
                        ^ \markup { 7 }
                        r2
                        ^ \markup { 8 }
                        r2
                        ^ \markup { 9 }
                        r2
                        ^ \markup { 10 }
                        r2
                        ^ \markup { 11 }
                        r2
                        ^ \markup { 12 }
                        r2
                        ^ \markup { 13 }
                        r2
                        ^ \markup { 14 }
                        r2
                        ^ \markup { 15 }
                    }
                }
            >>
            \context Staff = "percussion 2 staff"
            {
                \context Voice = "percussion 2 voice"
                {
                    \times 4/7
                    {
                        \staff-line-count 1
                        \set Staff.instrumentName =
                        \markup { Percussion 2 }
                        \set Staff.shortInstrumentName =
                        \markup { perc. 2 }
                        \clef "percussion"
                        \tweak Accidental.transparent ##t
                        c'8
                        ^ \markup { 0 }
                        \boxed-markup "Bass Drum" 1
                        \tweak Accidental.transparent ##t
                        c'32
                        ^ \markup { 1 }
                        \tweak Accidental.transparent ##t
                        c'16
                        ^ \markup { 2 }
                    }
                    \tweak Accidental.transparent ##t
                    c'8.
                    ^ \markup { 3 }
                    \override Staff.Stem.stemlet-length = 0.75
                    \tweak Accidental.transparent ##t
                    c'16.
                    ^ \markup { 4 }
                    [
                    \revert Staff.Stem.stemlet-length
                    \tweak Accidental.transparent ##t
                    c'16.
                    ^ \markup { 5 }
                    ]
                    r8
                    ^ \markup { 6 }
                    \tweak text #tuplet-number::calc-fraction-text
                    \times 6/7
                    {
                        \tweak Accidental.transparent ##t
                        c'8.
                        ^ \markup { 7 }
                        \tweak Accidental.transparent ##t
                        c'16
                        ^ \markup { 8 }
                        \tweak Accidental.transparent ##t
                        c'8
                        ^ \markup { 9 }
                        \tweak Accidental.transparent ##t
                        c'16
                        ^ \markup { 10 }
                    }
                    \tweak Accidental.transparent ##t
                    c'4
                    ^ \markup { 11 }
                    \tweak Accidental.transparent ##t
                    c'4
                    ^ \markup { 12 }
                    ~
                    \override Staff.Stem.stemlet-length = 0.75
                    \tweak Accidental.transparent ##t
                    c'16
                    ^ \markup { 13 }
                    [
                    \revert Staff.Stem.stemlet-length
                    \tweak Accidental.transparent ##t
                    c'8.
                    ^ \markup { 14 }
                    ]
                    \override Staff.Stem.stemlet-length = 0.75
                    \tweak Accidental.transparent ##t
                    c'8
                    ^ \markup { 15 }
                    [
                    \revert Staff.Stem.stemlet-length
                    \tweak Accidental.transparent ##t
                    c'8
                    ^ \markup { 16 }
                    ]
                    \tweak Accidental.transparent ##t
                    c'8
                    ^ \markup { 17 }
                    \tweak Accidental.transparent ##t
                    c'4
                    ^ \markup { 18 }
                    \tweak Accidental.transparent ##t
                    c'8
                    ^ \markup { 19 }
                    \override TupletNumber.text = \markup \scale #'(0.75 . 0.75) \score
                        {
                            \new Score
                            \with
                            {
                                \override SpacingSpanner.spacing-increment = 0.5
                                proportionalNotationDuration = ##f
                            }
                            <<
                                \new RhythmicStaff
                                \with
                                {
                                    \remove Time_signature_engraver
                                    \remove Staff_symbol_engraver
                                    \override Stem.direction = #up
                                    \override Stem.length = 5
                                    \override TupletBracket.bracket-visibility = ##t
                                    \override TupletBracket.direction = #up
                                    \override TupletBracket.minimum-length = 4
                                    \override TupletBracket.padding = 1.25
                                    \override TupletBracket.shorten-pair = #'(-1 . -1.5)
                                    \override TupletBracket.springs-and-rods = #ly:spanner::set-spacing-rods
                                    \override TupletNumber.font-size = 0
                                    \override TupletNumber.text = #tuplet-number::calc-fraction-text
                                    tupletFullLength = ##t
                                }
                                {
                                    c'4.
                                }
                            >>
                            \layout
                            {
                                indent = 0
                                ragged-right = ##t
                            }
                        }
                    \times 1/1
                    {
                        \once \override Beam.grow-direction = #right
                        r32 * 117/32
                        ^ \markup { 20 }
                        [
                        \tweak Accidental.transparent ##t
                        c'32 * 99/32
                        ^ \markup { 21 }
                        \tweak Accidental.transparent ##t
                        c'32 * 69/32
                        ^ \markup { 22 }
                        \tweak Accidental.transparent ##t
                        c'32 * 13/8
                        ^ \markup { 23 }
                        r32 * 47/32
                        ^ \markup { 24 }
                        ]
                    }
                    \revert TupletNumber.text
                    \override TupletNumber.text = \markup \scale #'(0.75 . 0.75) \score
                        {
                            \new Score
                            \with
                            {
                                \override SpacingSpanner.spacing-increment = 0.5
                                proportionalNotationDuration = ##f
                            }
                            <<
                                \new RhythmicStaff
                                \with
                                {
                                    \remove Time_signature_engraver
                                    \remove Staff_symbol_engraver
                                    \override Stem.direction = #up
                                    \override Stem.length = 5
                                    \override TupletBracket.bracket-visibility = ##t
                                    \override TupletBracket.direction = #up
                                    \override TupletBracket.minimum-length = 4
                                    \override TupletBracket.padding = 1.25
                                    \override TupletBracket.shorten-pair = #'(-1 . -1.5)
                                    \override TupletBracket.springs-and-rods = #ly:spanner::set-spacing-rods
                                    \override TupletNumber.font-size = 0
                                    \override TupletNumber.text = #tuplet-number::calc-fraction-text
                                    tupletFullLength = ##t
                                }
                                {
                                    c'2
                                }
                            >>
                            \layout
                            {
                                indent = 0
                                ragged-right = ##t
                            }
                        }
                    \times 1/1
                    {
                        \once \override Beam.grow-direction = #left
                        r32 * 3/2
                        ^ \markup { 25 }
                        [
                        \tweak Accidental.transparent ##t
                        c'32 * 25/16
                        ^ \markup { 26 }
                        \tweak Accidental.transparent ##t
                        c'32 * 7/4
                        ^ \markup { 27 }
                        \tweak Accidental.transparent ##t
                        c'32 * 65/32
                        ^ \markup { 28 }
                        \tweak Accidental.transparent ##t
                        c'32 * 79/32
                        ^ \markup { 29 }
                        \tweak Accidental.transparent ##t
                        c'32 * 49/16
                        ^ \markup { 30 }
                        r32 * 29/8
                        ^ \markup { 31 }
                        ]
                    }
                    \revert TupletNumber.text
                    \times 4/5
                    {
                        \tweak Accidental.transparent ##t
                        c'16
                        ^ \markup { 32 }
                        \tweak Accidental.transparent ##t
                        c'16
                        ^ \markup { 33 }
                        \tweak Accidental.transparent ##t
                        c'16
                        ^ \markup { 34 }
                        \tweak Accidental.transparent ##t
                        c'8
                        ^ \markup { 35 }
                    }
                    \tweak Accidental.transparent ##t
                    c'8
                    ^ \markup { 36 }
                    ~
                    \override Staff.Stem.stemlet-length = 0.75
                    \tweak Accidental.transparent ##t
                    c'32
                    ^ \markup { 37 }
                    [
                    \tweak Accidental.transparent ##t
                    c'32
                    ^ \markup { 38 }
                    \tweak Accidental.transparent ##t
                    c'16.
                    ^ \markup { 39 }
                    \tweak Accidental.transparent ##t
                    c'32
                    ^ \markup { 40 }
                    \revert Staff.Stem.stemlet-length
                    \tweak Accidental.transparent ##t
                    c'16
                    ^ \markup { 41 }
                    ]
                    r4
                    ^ \markup { 42 }
                    \override TupletNumber.text = \markup \scale #'(0.75 . 0.75) \score
                        {
                            \new Score
                            \with
                            {
                                \override SpacingSpanner.spacing-increment = 0.5
                                proportionalNotationDuration = ##f
                            }
                            <<
                                \new RhythmicStaff
                                \with
                                {
                                    \remove Time_signature_engraver
                                    \remove Staff_symbol_engraver
                                    \override Stem.direction = #up
                                    \override Stem.length = 5
                                    \override TupletBracket.bracket-visibility = ##t
                                    \override TupletBracket.direction = #up
                                    \override TupletBracket.minimum-length = 4
                                    \override TupletBracket.padding = 1.25
                                    \override TupletBracket.shorten-pair = #'(-1 . -1.5)
                                    \override TupletBracket.springs-and-rods = #ly:spanner::set-spacing-rods
                                    \override TupletNumber.font-size = 0
                                    \override TupletNumber.text = #tuplet-number::calc-fraction-text
                                    tupletFullLength = ##t
                                }
                                {
                                    c'2
                                }
                            >>
                            \layout
                            {
                                indent = 0
                                ragged-right = ##t
                            }
                        }
                    \times 1/1
                    {
                        \once \override Beam.grow-direction = #left
                        r32 * 3/2
                        ^ \markup { 43 }
                        [
                        \tweak Accidental.transparent ##t
                        c'32 * 25/16
                        ^ \markup { 44 }
                        \tweak Accidental.transparent ##t
                        c'32 * 7/4
                        ^ \markup { 45 }
                        \tweak Accidental.transparent ##t
                        c'32 * 65/32
                        ^ \markup { 46 }
                        \tweak Accidental.transparent ##t
                        c'32 * 79/32
                        ^ \markup { 47 }
                        \tweak Accidental.transparent ##t
                        c'32 * 49/16
                        ^ \markup { 48 }
                        r32 * 29/8
                        ^ \markup { 49 }
                        ]
                    }
                    \revert TupletNumber.text
                    \override TupletNumber.text = \markup \scale #'(0.75 . 0.75) \score
                        {
                            \new Score
                            \with
                            {
                                \override SpacingSpanner.spacing-increment = 0.5
                                proportionalNotationDuration = ##f
                            }
                            <<
                                \new RhythmicStaff
                                \with
                                {
                                    \remove Time_signature_engraver
                                    \remove Staff_symbol_engraver
                                    \override Stem.direction = #up
                                    \override Stem.length = 5
                                    \override TupletBracket.bracket-visibility = ##t
                                    \override TupletBracket.direction = #up
                                    \override TupletBracket.minimum-length = 4
                                    \override TupletBracket.padding = 1.25
                                    \override TupletBracket.shorten-pair = #'(-1 . -1.5)
                                    \override TupletBracket.springs-and-rods = #ly:spanner::set-spacing-rods
                                    \override TupletNumber.font-size = 0
                                    \override TupletNumber.text = #tuplet-number::calc-fraction-text
                                    tupletFullLength = ##t
                                }
                                {
                                    c'2.
                                }
                            >>
                            \layout
                            {
                                indent = 0
                                ragged-right = ##t
                            }
                        }
                    \times 1/1
                    {
                        \once \override Beam.grow-direction = #right
                        r32 * 15/4
                        ^ \markup { 50 }
                        [
                        \tweak Accidental.transparent ##t
                        c'32 * 115/32
                        ^ \markup { 51 }
                        \tweak Accidental.transparent ##t
                        c'32 * 103/32
                        ^ \markup { 52 }
                        \tweak Accidental.transparent ##t
                        c'32 * 11/4
                        ^ \markup { 53 }
                        \tweak Accidental.transparent ##t
                        c'32 * 37/16
                        ^ \markup { 54 }
                        \tweak Accidental.transparent ##t
                        c'32 * 2
                        ^ \markup { 55 }
                        \tweak Accidental.transparent ##t
                        c'32 * 7/4
                        ^ \markup { 56 }
                        \tweak Accidental.transparent ##t
                        c'32 * 13/8
                        ^ \markup { 57 }
                        \tweak Accidental.transparent ##t
                        c'32 * 49/32
                        ^ \markup { 58 }
                        r32 * 47/32
                        ^ \markup { 59 }
                        ]
                    }
                    \revert TupletNumber.text
                    \tweak text #tuplet-number::calc-fraction-text
                    \times 20/21
                    {
                        \tweak Accidental.transparent ##t
                        c'8.
                        ^ \markup { 60 }
                        \tweak Accidental.transparent ##t
                        c'16.
                        ^ \markup { 61 }
                        \tweak Accidental.transparent ##t
                        c'16.
                        ^ \markup { 62 }
                        \tweak Accidental.transparent ##t
                        c'16.
                        ^ \markup { 63 }
                        \tweak Accidental.transparent ##t
                        c'16.
                        ^ \markup { 64 }
                        \tweak Accidental.transparent ##t
                        c'16.
                        ^ \markup { 65 }
                    }
                    \tweak Accidental.transparent ##t
                    c'4
                    ^ \markup { 66 }
                    ~
                    \override Staff.Stem.stemlet-length = 0.75
                    \tweak Accidental.transparent ##t
                    c'16
                    ^ \markup { 67 }
                    [
                    \revert Staff.Stem.stemlet-length
                    \tweak Accidental.transparent ##t
                    c'16
                    ^ \markup { 68 }
                    ]
                    \override Staff.Stem.stemlet-length = 0.75
                    \tweak Accidental.transparent ##t
                    c'8.
                    ^ \markup { 69 }
                    [
                    \revert Staff.Stem.stemlet-length
                    \tweak Accidental.transparent ##t
                    c'16
                    ^ \markup { 70 }
                    ]
                    \tweak Accidental.transparent ##t
                    c'4
                    ^ \markup { 71 }
                    r8
                    ^ \markup { 72 }
                    \tweak text #tuplet-number::calc-fraction-text
                    \times 6/8
                    {
                        \tweak Accidental.transparent ##t
                        c'16
                        ^ \markup { 73 }
                        \tweak Accidental.transparent ##t
                        c'16
                        ^ \markup { 74 }
                        \tweak Accidental.transparent ##t
                        c'8
                        ^ \markup { 75 }
                        \tweak Accidental.transparent ##t
                        c'8.
                        ^ \markup { 76 }
                        \tweak Accidental.transparent ##t
                        c'16
                        ^ \markup { 77 }
                    }
                    \tweak Accidental.transparent ##t
                    c'4
                    ^ \markup { 78 }
                    \tweak Accidental.transparent ##t
                    c'4
                    ^ \markup { 79 }
                    ~
                    \override Staff.Stem.stemlet-length = 0.75
                    \tweak Accidental.transparent ##t
                    c'16
                    ^ \markup { 80 }
                    [
                    \revert Staff.Stem.stemlet-length
                    \tweak Accidental.transparent ##t
                    c'8.
                    ^ \markup { 81 }
                    ]
                    \times 2/3
                    {
                        \tweak Accidental.transparent ##t
                        c'16
                        ^ \markup { 82 }
                        \tweak Accidental.transparent ##t
                        c'16
                        ^ \markup { 83 }
                        \tweak Accidental.transparent ##t
                        c'8
                        ^ \markup { 84 }
                        \tweak Accidental.transparent ##t
                        c'16
                        ^ \markup { 85 }
                        \tweak Accidental.transparent ##t
                        c'16
                        ^ \markup { 86 }
                    }
                }
            }
            \context PianoStaff = "sub group 5"
            <<
                \context Staff = "violin 1 staff"
                {
                    \context Voice = "violin 1 voice"
                    {
                        \set Staff.instrumentName =
                        \markup { Violin 1 }
                        \set Staff.shortInstrumentName =
                        \markup { vln. 1 }
                        r1
                        ^ \markup { 0 }
                        \boxed-markup "CLT, Molto Flaut." 1
                        c''4
                        ^ \markup { 1 }
                        cqs''8
                        ^ \markup { 2 }
                        g''4
                        ^ \markup { 3 }
                        gqf''8
                        ^ \markup { 4 }
                        \override Staff.Stem.stemlet-length = 0.75
                        d''8.
                        ^ \markup { 5 }
                        [
                        \revert Staff.Stem.stemlet-length
                        eqf''16
                        ^ \markup { 6 }
                        ]
                        d''8
                        ^ \markup { 7 }
                        bqs'1
                        ^ \markup { 8 }
                        ~
                        bqs'4
                        ^ \markup { 9 }
                        \override Staff.Stem.stemlet-length = 0.75
                        g''8
                        ^ \markup { 10 }
                        [
                        \revert Staff.Stem.stemlet-length
                        bqf''8
                        ^ \markup { 11 }
                        ]
                        c'''4
                        ^ \markup { 12 }
                        aqs''8
                        ^ \markup { 13 }
                        \override Staff.Stem.stemlet-length = 0.75
                        g''8
                        ^ \markup { 14 }
                        [
                        \revert Staff.Stem.stemlet-length
                        aqs''8
                        ^ \markup { 15 }
                        ]
                        f''8
                        ^ \markup { 16 }
                        gqf''1
                        ^ \markup { 17 }
                        ~
                        gqf''4.
                        ^ \markup { 18 }
                        r4
                        ^ \markup { 19 }
                        r2
                        ^ \markup { 20 }
                        r2
                        ^ \markup { 21 }
                        r2
                        ^ \markup { 22 }
                        r2
                        ^ \markup { 23 }
                        r2
                        ^ \markup { 24 }
                    }
                }
                \context Staff = "violin 2 staff"
                {
                    \context Voice = "violin 2 voice"
                    {
                        \set Staff.instrumentName =
                        \markup { Violin 2 }
                        \set Staff.shortInstrumentName =
                        \markup { vln. 2 }
                        r1
                        ^ \markup { 0 }
                        \boxed-markup "CLT, Molto Flaut." 1
                        cqs'4
                        ^ \markup { 1 }
                        ef'4
                        ^ \markup { 2 }
                        \override Staff.Stem.stemlet-length = 0.75
                        fqs'8
                        ^ \markup { 3 }
                        [
                        \revert Staff.Stem.stemlet-length
                        fs'8
                        ^ \markup { 4 }
                        ]
                        cqs'4
                        ^ \markup { 5 }
                        ef'4
                        ^ \markup { 6 }
                        dqs'4
                        ^ \markup { 7 }
                        \override Staff.Stem.stemlet-length = 0.75
                        f'8
                        ^ \markup { 8 }
                        [
                        \revert Staff.Stem.stemlet-length
                        gqf'8
                        ^ \markup { 9 }
                        ]
                        fs'4
                        ^ \markup { 10 }
                        \override Staff.Stem.stemlet-length = 0.75
                        gqs'8
                        ^ \markup { 11 }
                        [
                        \revert Staff.Stem.stemlet-length
                        bf'8
                        ^ \markup { 12 }
                        ]
                        bqf'4
                        ^ \markup { 13 }
                        \override Staff.Stem.stemlet-length = 0.75
                        af'8
                        ^ \markup { 14 }
                        [
                        \revert Staff.Stem.stemlet-length
                        fqs'8
                        ^ \markup { 15 }
                        ]
                        f'4
                        ^ \markup { 16 }
                        eqf'4
                        ^ \markup { 17 }
                        cqs'1.
                        ^ \markup { 18 }
                        r4
                        ^ \markup { 19 }
                        r2
                        ^ \markup { 20 }
                        r2
                        ^ \markup { 21 }
                        r2
                        ^ \markup { 22 }
                        r2
                        ^ \markup { 23 }
                        r2
                        ^ \markup { 24 }
                    }
                }
                \context Staff = "viola staff"
                {
                    \context Voice = "viola voice"
                    {
                        \set Staff.instrumentName =
                        \markup { Viola }
                        \set Staff.shortInstrumentName =
                        \markup { vla. }
                        \clef "alto"
                        r1
                        ^ \markup { 0 }
                        \boxed-markup "CLT, Molto Flaut." 1
                        ef4
                        ^ \markup { 1 }
                        \override Staff.Stem.stemlet-length = 0.75
                        aqf8
                        ^ \markup { 2 }
                        [
                        \revert Staff.Stem.stemlet-length
                        ef8
                        ^ \markup { 3 }
                        ]
                        \override Staff.Stem.stemlet-length = 0.75
                        bqf8
                        ^ \markup { 4 }
                        [
                        \revert Staff.Stem.stemlet-length
                        ef8
                        ^ \markup { 5 }
                        ]
                        \override Staff.Stem.stemlet-length = 0.75
                        aqf8
                        ^ \markup { 6 }
                        [
                        \revert Staff.Stem.stemlet-length
                        ef8
                        ^ \markup { 7 }
                        ]
                        eqf4
                        ^ \markup { 8 }
                        \override Staff.Stem.stemlet-length = 0.75
                        af8
                        ^ \markup { 9 }
                        [
                        \revert Staff.Stem.stemlet-length
                        eqs8
                        ^ \markup { 10 }
                        ]
                        \override Staff.Stem.stemlet-length = 0.75
                        b8
                        ^ \markup { 11 }
                        [
                        \revert Staff.Stem.stemlet-length
                        eqf8
                        ^ \markup { 12 }
                        ]
                        \override Staff.Stem.stemlet-length = 0.75
                        af8
                        ^ \markup { 13 }
                        [
                        \revert Staff.Stem.stemlet-length
                        ef8
                        ^ \markup { 14 }
                        ]
                        aqf4
                        ^ \markup { 15 }
                        \override Staff.Stem.stemlet-length = 0.75
                        ef8
                        ^ \markup { 16 }
                        [
                        \revert Staff.Stem.stemlet-length
                        bqf8
                        ^ \markup { 17 }
                        ]
                        ef4
                        ^ \markup { 18 }
                        \override Staff.Stem.stemlet-length = 0.75
                        aqf8
                        ^ \markup { 19 }
                        [
                        \revert Staff.Stem.stemlet-length
                        ef8
                        ^ \markup { 20 }
                        ]
                        \override Staff.Stem.stemlet-length = 0.75
                        eqf8
                        ^ \markup { 21 }
                        [
                        \revert Staff.Stem.stemlet-length
                        af8
                        ^ \markup { 22 }
                        ]
                        \override Staff.Stem.stemlet-length = 0.75
                        eqs8
                        ^ \markup { 23 }
                        [
                        \revert Staff.Stem.stemlet-length
                        b8
                        ^ \markup { 24 }
                        ]
                        eqf1
                        ^ \markup { 25 }
                        ~
                        eqf4
                        ^ \markup { 26 }
                        r4
                        ^ \markup { 27 }
                        r2
                        ^ \markup { 28 }
                        r2
                        ^ \markup { 29 }
                        r2
                        ^ \markup { 30 }
                        r2
                        ^ \markup { 31 }
                        r2
                        ^ \markup { 32 }
                    }
                }
                \context Staff = "cello staff"
                {
                    \context Voice = "cello voice"
                    {
                        \set Staff.instrumentName =
                        \markup { Violoncello }
                        \set Staff.shortInstrumentName =
                        \markup { vc. }
                        \clef "bass"
                        r1
                        ^ \markup { 0 }
                        \boxed-markup "CLT, Molto Flaut." 1
                        cs,1
                        ^ \markup { 1 }
                        ~
                        cs,4.
                        ^ \markup { 2 }
                        dqf,8
                        ^ \markup { 3 }
                        \override Staff.Stem.stemlet-length = 0.75
                        af,8
                        ^ \markup { 4 }
                        [
                        \revert Staff.Stem.stemlet-length
                        gqs,8
                        ^ \markup { 5 }
                        ]
                        ef,8
                        ^ \markup { 6 }
                        eqs,4
                        ^ \markup { 7 }
                        ef,8
                        ^ \markup { 8 }
                        cqs,8
                        ^ \markup { 9 }
                        af,1
                        ^ \markup { 10 }
                        ~
                        af,4
                        ^ \markup { 11 }
                        \override Staff.Stem.stemlet-length = 0.75
                        bqs,8
                        ^ \markup { 12 }
                        [
                        \revert Staff.Stem.stemlet-length
                        cs16
                        ^ \markup { 13 }
                        ]
                        bqf,8.
                        ^ \markup { 14 }
                        af,8
                        ^ \markup { 15 }
                        bqf,4
                        ^ \markup { 16 }
                        fs,8
                        ^ \markup { 17 }
                        gqs,4
                        ^ \markup { 18 }
                        r4
                        ^ \markup { 19 }
                        r2
                        ^ \markup { 20 }
                        r2
                        ^ \markup { 21 }
                        r2
                        ^ \markup { 22 }
                        r2
                        ^ \markup { 23 }
                        r2
                        ^ \markup { 24 }
                    }
                }
                \context Staff = "contrabass staff"
                {
                    \context Voice = "contrabass voice"
                    {
                        \set Staff.instrumentName =
                        \markup { Contrabass }
                        \set Staff.shortInstrumentName =
                        \markup { cb. }
                        r1
                        ^ \markup { 0 }
                        r2
                        ^ \markup { 1 }
                        r2
                        ^ \markup { 2 }
                        r2
                        ^ \markup { 3 }
                        r2
                        ^ \markup { 4 }
                        r2
                        ^ \markup { 5 }
                        r2
                        ^ \markup { 6 }
                        r2
                        ^ \markup { 7 }
                        r2
                        ^ \markup { 8 }
                        r2
                        ^ \markup { 9 }
                        r2
                        ^ \markup { 10 }
                        r2
                        ^ \markup { 11 }
                        r2
                        ^ \markup { 12 }
                        r2
                        ^ \markup { 13 }
                        r2
                        ^ \markup { 14 }
                        r2
                        ^ \markup { 15 }
                    }
                }
            >>
        >>
    >>
%! abjad.LilyPondFile._get_formatted_blocks()
}
