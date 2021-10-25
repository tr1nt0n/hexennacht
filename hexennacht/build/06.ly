    \context Score = "Score"
    <<
        \context TimeSignatureContext = "Global Context"
        {
            \time 4/4
            s1 * 1
            \time 3/8
            s1 * 3/8
            \time 5/4
            s1 * 5/4
            \time 1/4
            s1 * 1/4
            \time 6/4
            s1 * 3/2
            \time 1/8
            s1 * 1/8
            \time 3/4
            s1 * 3/4
            \time 3/8
            s1 * 3/8
            \time 2/4
            s1 * 1/2
            \time 2/4
            s1 * 1/2
        }
        \context ChoirStaff = "Staff Group"
        <<
            \context PianoStaff = "sub group 1"
            <<
                \context Staff = "flute staff"
                {
                    \context Voice = "flute voice"
                    {
                        \set Staff.shortInstrumentName =
                        \markup { fl. }
                        r1
                        r4.
                        r2.
                        r2
                        r4
                        r1.
                        r8
                        r2.
                        r4.
                        r2
                        r2
                    }
                }
                \context Staff = "oboe staff"
                {
                    \context Voice = "oboe voice"
                    {
                        \set Staff.shortInstrumentName =
                        \markup { ob. }
                        r1
                        r4.
                        r4
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
                            [
                            af''32 * 25/16
                            aqf''32 * 7/4
                            gqs''32 * 65/32
                            af''32 * 79/32
                            a''32 * 49/16
                            r32 * 29/8
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
                            [
                            aqs''32 * 99/32
                            aqf''32 * 69/32
                            af''32 * 13/8
                            r32 * 47/32
                            ]
                        }
                        \revert TupletNumber.text
                        r8
                        r4
                        r1.
                        r8
                        r2.
                        r4.
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
                            [
                            aqf''32 * 25/16
                            gqs''32 * 7/4
                            af''32 * 65/32
                            a''32 * 79/32
                            aqs''32 * 49/16
                            r32 * 29/8
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
                            \once \override Beam.grow-direction = #right
                            r32 * 63/16
                            [
                            aqf''32 * 115/32
                            af''32 * 91/32
                            aqf''32 * 35/16
                            gqs''32 * 29/16
                            r32 * 13/8
                            ]
                        }
                        \revert TupletNumber.text
                    }
                }
                \context Staff = "bass clarinet staff"
                {
                    \context Voice = "bass clarinet voice"
                    {
                        \set Staff.shortInstrumentName =
                        \markup { bcl. }
                        r1
                        r4.
                        r2.
                        \times 2/3
                        {
                            gs'2
                            \override Staff.Stem.stemlet-length = 0.75
                            bf'8
                            [
                            \revert Staff.Stem.stemlet-length
                            g'8
                            ]
                        }
                        \times 4/7
                        {
                            \override Staff.Stem.stemlet-length = 0.75
                            g'16
                            [
                            a'16
                            f'8.
                            fs'16
                            \revert Staff.Stem.stemlet-length
                            gs'16
                            ]
                        }
                        \tweak text #tuplet-number::calc-fraction-text
                        \times 6/7
                        {
                            a'4
                            c''4
                            \override Staff.Stem.stemlet-length = 0.75
                            bf'8
                            [
                            bf'8
                            \revert Staff.Stem.stemlet-length
                            fs'8
                            ]
                        }
                        c''2
                        \override Staff.Stem.stemlet-length = 0.75
                        d'8
                        [
                        \revert Staff.Stem.stemlet-length
                        c''8
                        ]
                        \times 4/5
                        {
                            \override Staff.Stem.stemlet-length = 0.75
                            c''16.
                            [
                            cs''32
                            \revert Staff.Stem.stemlet-length
                            fs'32
                            ]
                        }
                        \times 4/7
                        {
                            \override Staff.Stem.stemlet-length = 0.75
                            bf'8
                            [
                            a'8
                            \revert Staff.Stem.stemlet-length
                            b'8
                            ]
                            gs'4
                            \override Staff.Stem.stemlet-length = 0.75
                            bf'8
                            [
                            \revert Staff.Stem.stemlet-length
                            g'8
                            ]
                        }
                        \times 4/7
                        {
                            g'4
                            ~
                            \override Staff.Stem.stemlet-length = 0.75
                            g'16
                            [
                            a'16
                            \revert Staff.Stem.stemlet-length
                            f'16
                            ]
                        }
                        fs'4
                        \override Staff.Stem.stemlet-length = 0.75
                        gs'16
                        [
                        \revert Staff.Stem.stemlet-length
                        a'16
                        ]
                        \times 4/7
                        {
                            \override Staff.Stem.stemlet-length = 0.75
                            c''16
                            [
                            bf'16
                            bf'8.
                            fs'16
                            \revert Staff.Stem.stemlet-length
                            c''16
                            ]
                        }
                        \times 4/7
                        {
                            \override Staff.Stem.stemlet-length = 0.75
                            d'8
                            [
                            c''8
                            c''16
                            cs''16
                            \revert Staff.Stem.stemlet-length
                            fs'16
                            ]
                        }
                        \times 2/3
                        {
                            bf'4
                            \override Staff.Stem.stemlet-length = 0.75
                            a'16
                            [
                            \revert Staff.Stem.stemlet-length
                            b'16
                            ]
                        }
                        \times 4/5
                        {
                            \override Staff.Stem.stemlet-length = 0.75
                            gs'8.
                            [
                            bf'16
                            \revert Staff.Stem.stemlet-length
                            g'16
                            ]
                        }
                    }
                }
                \context Staff = "bassoon staff"
                {
                    \context Voice = "bassoon voice"
                    {
                        \times 4/7
                        {
                            \set Staff.shortInstrumentName =
                            \markup { bsn. }
                            \clef "bass"
                            \override Staff.Stem.stemlet-length = 0.75
                            e8
                            [
                            \revert Staff.Stem.stemlet-length
                            fs8
                            ]
                            g4.
                            \override Staff.Stem.stemlet-length = 0.75
                            bf8
                            [
                            \revert Staff.Stem.stemlet-length
                            af8
                            ]
                        }
                        \times 4/7
                        {
                            af4
                            e4
                            \override Staff.Stem.stemlet-length = 0.75
                            bf8
                            [
                            c8
                            \revert Staff.Stem.stemlet-length
                            bf8
                            ]
                        }
                        bf4
                        \override Staff.Stem.stemlet-length = 0.75
                        b16
                        [
                        \revert Staff.Stem.stemlet-length
                        e16
                        ]
                        \tweak text #tuplet-number::calc-fraction-text
                        \times 3/5
                        {
                            af2.
                            g4
                            a4
                        }
                        \times 4/7
                        {
                            \override Staff.Stem.stemlet-length = 0.75
                            fs8
                            [
                            af8
                            \revert Staff.Stem.stemlet-length
                            f8
                            ]
                            f4
                            \override Staff.Stem.stemlet-length = 0.75
                            g8
                            [
                            \revert Staff.Stem.stemlet-length
                            ef8
                            ]
                        }
                        \times 4/7
                        {
                            e4
                            ~
                            \override Staff.Stem.stemlet-length = 0.75
                            e16
                            [
                            fs16
                            \revert Staff.Stem.stemlet-length
                            g16
                            ]
                        }
                        bf2
                        \override Staff.Stem.stemlet-length = 0.75
                        af8
                        [
                        \revert Staff.Stem.stemlet-length
                        af8
                        ]
                        \tweak text #tuplet-number::calc-fraction-text
                        \times 6/7
                        {
                            \override Staff.Stem.stemlet-length = 0.75
                            e8
                            [
                            \revert Staff.Stem.stemlet-length
                            bf8
                            ]
                            c4.
                            \override Staff.Stem.stemlet-length = 0.75
                            bf8
                            [
                            \revert Staff.Stem.stemlet-length
                            bf8
                            ]
                        }
                        \times 4/7
                        {
                            \override Staff.Stem.stemlet-length = 0.75
                            b16
                            [
                            e16
                            af32
                            g32
                            \revert Staff.Stem.stemlet-length
                            a32
                            ]
                        }
                        \times 2/3
                        {
                            fs2
                            \override Staff.Stem.stemlet-length = 0.75
                            af8
                            [
                            \revert Staff.Stem.stemlet-length
                            f8
                            ]
                        }
                        \times 4/5
                        {
                            \override Staff.Stem.stemlet-length = 0.75
                            f8.
                            [
                            g16
                            \revert Staff.Stem.stemlet-length
                            ef16
                            ]
                        }
                        \tweak text #tuplet-number::calc-fraction-text
                        \times 6/7
                        {
                            \override Staff.Stem.stemlet-length = 0.75
                            e16
                            [
                            fs16
                            g16
                            bf8
                            af16
                            \revert Staff.Stem.stemlet-length
                            af16
                            ]
                        }
                        \times 4/7
                        {
                            e4
                            ~
                            \override Staff.Stem.stemlet-length = 0.75
                            e16
                            [
                            bf16
                            \revert Staff.Stem.stemlet-length
                            c16
                            ]
                        }
                        \times 2/3
                        {
                            bf4
                            \override Staff.Stem.stemlet-length = 0.75
                            bf16
                            [
                            \revert Staff.Stem.stemlet-length
                            b16
                            ]
                        }
                        \times 4/7
                        {
                            \override Staff.Stem.stemlet-length = 0.75
                            e16
                            [
                            af16
                            g8.
                            a16
                            \revert Staff.Stem.stemlet-length
                            fs16
                            ]
                        }
                        \times 4/7
                        {
                            \override Staff.Stem.stemlet-length = 0.75
                            af8
                            [
                            f8
                            f16
                            g16
                            \revert Staff.Stem.stemlet-length
                            ef16
                            ]
                        }
                    }
                }
            >>
            \context Staff = "horn staff"
            {
                \context Voice = "horn voice"
                {
                    \set Staff.shortInstrumentName =
                    \markup { hrn. }
                    r1
                    r4.
                    r2.
                    r2
                    r4
                    r1.
                    r8
                    r2.
                    r4.
                    r2
                    b'16.
                    r32
                    r32
                    bf''16.
                    ~
                    bf''8
                    r8
                }
            }
            \context PianoStaff = "sub group 2"
            <<
                \context Staff = "trumpet staff"
                {
                    \context Voice = "trumpet voice"
                    {
                        \set Staff.shortInstrumentName =
                        \markup { tpt. }
                        r1
                        r4.
                        r2.
                        r2
                        r4
                        r1.
                        gqf''8
                        r2.
                        r4.
                        r2
                        a''16.
                        r32
                        r32
                        dqf''16.
                        ~
                        dqf''8
                        r8
                    }
                }
                \context Staff = "tenor trombone staff"
                {
                    \context Voice = "tenor trombone voice"
                    {
                        \set Staff.shortInstrumentName =
                        \markup { tbn. }
                        \clef "bass"
                        r1
                        r4.
                        r2.
                        r2
                        r4
                        r1.
                        r8
                        r2.
                        r8.
                        ef8.
                        r2
                        ef16.
                        r32
                        r32
                        bf''16.
                        ~
                        bf''8
                        r8
                    }
                }
                \context Staff = "tuba staff"
                {
                    \context Voice = "tuba voice"
                    {
                        \set Staff.shortInstrumentName =
                        \markup { tb. }
                        \clef "bass"
                        r1
                        r4.
                        r2.
                        r2
                        r4
                        r1.
                        r8
                        r2.
                        r4.
                        r2
                        e,,16.
                        r32
                        r32
                        e,,16.
                        ~
                        e,,8
                        r8
                    }
                }
            >>
            \context PianoStaff = "sub group 3"
            <<
                \context Staff = "piano 1 staff"
                {
                    \context Voice = "piano 1 voice"
                    {
                        \set Staff.shortInstrumentName =
                        \markup { pno. }
                        r1
                        r4.
                        r2.
                        r2
                        r4
                        r1.
                        r8
                        r2.
                        r4.
                        r2
                        r2
                    }
                }
                \context Staff = "piano 2 staff"
                {
                    \context Voice = "piano 2 voice"
                    {
                        \clef "bass"
                        r1
                        r4.
                        r2.
                        r2
                        r4
                        r1.
                        r8
                        r2.
                        r4.
                        r2
                        r2
                    }
                }
            >>
            \context Staff = "harp staff"
            {
                \context Voice = "harp voice"
                {
                    \set Staff.shortInstrumentName =
                    \markup { harp }
                    r1
                    r4.
                    r2.
                    r2
                    r4
                    r1.
                    r8
                    r2.
                    r4.
                    r2
                    r2
                }
            }
            \context PianoStaff = "sub group 4"
            <<
                \context Staff = "marimba staff"
                {
                    \context Voice = "marimba voice"
                    {
                        \set Staff.shortInstrumentName =
                        \markup { mar. }
                        r1
                        r4.
                        r2.
                        r2
                        r4
                        r1.
                        r8
                        r2.
                        r4.
                        r2
                        r2
                    }
                }
                \context Staff = "percussion 1 staff"
                {
                    \context Voice = "percussion 1 voice"
                    {
                        \set Staff.shortInstrumentName =
                        \markup { ratch. }
                        \clef "percussion"
                        \override Staff.Stem.stemlet-length = 0.75
                        \tweak Accidental.transparent ##t
                        e'8
                        [
                        \revert Staff.Stem.stemlet-length
                        \tweak Accidental.transparent ##t
                        a8
                        ]
                        \override Staff.Stem.stemlet-length = 0.75
                        \tweak Accidental.transparent ##t
                        e'8
                        [
                        \revert Staff.Stem.stemlet-length
                        \tweak Accidental.transparent ##t
                        c'8
                        ]
                        \override Staff.Stem.stemlet-length = 0.75
                        \tweak Accidental.transparent ##t
                        e'8
                        [
                        \revert Staff.Stem.stemlet-length
                        \tweak Accidental.transparent ##t
                        a8
                        ]
                        \override Staff.Stem.stemlet-length = 0.75
                        \tweak Accidental.transparent ##t
                        a8
                        [
                        \revert Staff.Stem.stemlet-length
                        \tweak Accidental.transparent ##t
                        c'8
                        ]
                        \override Staff.Stem.stemlet-length = 0.75
                        \tweak Accidental.transparent ##t
                        c'8
                        [
                        \tweak Accidental.transparent ##t
                        e'8
                        \revert Staff.Stem.stemlet-length
                        \tweak Accidental.transparent ##t
                        a8
                        ]
                        r8
                        \tweak text #tuplet-number::calc-fraction-text
                        \times 6/8
                        {
                            \override Staff.Stem.stemlet-length = 0.75
                            \tweak Accidental.transparent ##t
                            e'8
                            [
                            \tweak Accidental.transparent ##t
                            c'8.
                            \tweak Accidental.transparent ##t
                            e'16
                            \tweak Accidental.transparent ##t
                            a16
                            \revert Staff.Stem.stemlet-length
                            \tweak Accidental.transparent ##t
                            a16
                            ]
                        }
                        \tweak Accidental.transparent ##t
                        c'4
                        \tweak Accidental.transparent ##t
                        c'4
                        ~
                        \override Staff.Stem.stemlet-length = 0.75
                        \tweak Accidental.transparent ##t
                        c'16
                        [
                        \revert Staff.Stem.stemlet-length
                        \tweak Accidental.transparent ##t
                        e'8.
                        ]
                        \times 2/3
                        {
                            \override Staff.Stem.stemlet-length = 0.75
                            \tweak Accidental.transparent ##t
                            a8
                            [
                            \tweak Accidental.transparent ##t
                            e'8
                            \revert Staff.Stem.stemlet-length
                            \tweak Accidental.transparent ##t
                            c'8
                            ]
                        }
                        r8
                        \override TupletNumber.text = \markup \scale #'(1 . 1) \italic 7:10
                        \times 30/21
                        {
                            \override Staff.Stem.stemlet-length = 0.75
                            \tweak Accidental.transparent ##t
                            e'8
                            [
                            \tweak Accidental.transparent ##t
                            a8
                            \tweak Accidental.transparent ##t
                            a16
                            \tweak Accidental.transparent ##t
                            c'16
                            \revert Staff.Stem.stemlet-length
                            \tweak Accidental.transparent ##t
                            c'16
                            ]
                        }
                        \revert TupletNumber.text
                        \override Staff.Stem.stemlet-length = 0.75
                        \tweak Accidental.transparent ##t
                        e'8
                        [
                        \revert Staff.Stem.stemlet-length
                        \tweak Accidental.transparent ##t
                        a8
                        ]
                        \override Staff.Stem.stemlet-length = 0.75
                        \tweak Accidental.transparent ##t
                        e'8
                        [
                        \revert Staff.Stem.stemlet-length
                        \tweak Accidental.transparent ##t
                        c'8
                        ]
                        \override Staff.Stem.stemlet-length = 0.75
                        \tweak Accidental.transparent ##t
                        e'8
                        [
                        \revert Staff.Stem.stemlet-length
                        \tweak Accidental.transparent ##t
                        a8
                        ]
                        \tweak Accidental.transparent ##t
                        a8
                        r8
                        \tweak Accidental.transparent ##t
                        c'8
                        \override Staff.Stem.stemlet-length = 0.75
                        \tweak Accidental.transparent ##t
                        c'16
                        [
                        \tweak Accidental.transparent ##t
                        e'16
                        \tweak Accidental.transparent ##t
                        a16
                        \revert Staff.Stem.stemlet-length
                        \tweak Accidental.transparent ##t
                        e'16
                        ]
                        \tweak Accidental.transparent ##t
                        c'4
                        \tweak text #tuplet-number::calc-fraction-text
                        \times 6/8
                        {
                            \override Staff.Stem.stemlet-length = 0.75
                            \tweak Accidental.transparent ##t
                            e'8
                            [
                            \tweak Accidental.transparent ##t
                            a8.
                            \tweak Accidental.transparent ##t
                            a16
                            \tweak Accidental.transparent ##t
                            c'16
                            \revert Staff.Stem.stemlet-length
                            \tweak Accidental.transparent ##t
                            c'16
                            ]
                        }
                        r8
                        \tweak Accidental.transparent ##t
                        e'8
                        \override Staff.Stem.stemlet-length = 0.75
                        \tweak Accidental.transparent ##t
                        a8
                        [
                        \revert Staff.Stem.stemlet-length
                        \tweak Accidental.transparent ##t
                        e'8
                        ]
                        \override Staff.Stem.stemlet-length = 0.75
                        \tweak Accidental.transparent ##t
                        c'8
                        [
                        \revert Staff.Stem.stemlet-length
                        \tweak Accidental.transparent ##t
                        e'8
                        ]
                        \override Staff.Stem.stemlet-length = 0.75
                        \tweak Accidental.transparent ##t
                        a8
                        [
                        \revert Staff.Stem.stemlet-length
                        \tweak Accidental.transparent ##t
                        a8
                        ]
                    }
                }
            >>
            \context Staff = "percussion 2 staff"
            {
                \context Voice = "percussion 2 voice"
                {
                    \set Staff.shortInstrumentName =
                    \markup { perc. 2 }
                    \clef "percussion"
                    \override Staff.Stem.stemlet-length = 0.75
                    \tweak Accidental.transparent ##t
                    c'16
                    [
                    \tweak Accidental.transparent ##t
                    c'16
                    ~
                    \tweak Accidental.transparent ##t
                    c'32
                    \tweak Accidental.transparent ##t
                    e'32
                    \tweak Accidental.transparent ##t
                    a32
                    \revert Staff.Stem.stemlet-length
                    \tweak Accidental.transparent ##t
                    e'32
                    ]
                    \tweak Accidental.transparent ##t
                    c'4
                    \tweak Accidental.transparent ##t
                    e'4
                    ~
                    \override Staff.Stem.stemlet-length = 0.75
                    \tweak Accidental.transparent ##t
                    e'16
                    [
                    \revert Staff.Stem.stemlet-length
                    \tweak Accidental.transparent ##t
                    a8.
                    ]
                    \override Staff.Stem.stemlet-length = 0.75
                    \tweak Accidental.transparent ##t
                    a8.
                    [
                    \tweak Accidental.transparent ##t
                    c'16
                    ~
                    \tweak Accidental.transparent ##t
                    c'32
                    \revert Staff.Stem.stemlet-length
                    \tweak Accidental.transparent ##t
                    c'16.
                    ]
                    r8
                    \override TupletNumber.text = \markup \scale #'(1 . 1) \italic 6:5
                    \times 15/18
                    {
                        \tweak Accidental.transparent ##t
                        e'2
                        \override Staff.Stem.stemlet-length = 0.75
                        \tweak Accidental.transparent ##t
                        a8
                        [
                        \revert Staff.Stem.stemlet-length
                        \tweak Accidental.transparent ##t
                        e'8
                        ]
                    }
                    \revert TupletNumber.text
                    \override Staff.Stem.stemlet-length = 0.75
                    \tweak Accidental.transparent ##t
                    c'16
                    [
                    \tweak Accidental.transparent ##t
                    e'16
                    \tweak Accidental.transparent ##t
                    a16
                    \revert Staff.Stem.stemlet-length
                    \tweak Accidental.transparent ##t
                    a16
                    ]
                    \override Staff.Stem.stemlet-length = 0.75
                    \tweak Accidental.transparent ##t
                    c'16
                    [
                    \tweak Accidental.transparent ##t
                    c'16
                    \tweak Accidental.transparent ##t
                    e'16
                    \revert Staff.Stem.stemlet-length
                    \tweak Accidental.transparent ##t
                    a16
                    ]
                    \override Staff.Stem.stemlet-length = 0.75
                    \tweak Accidental.transparent ##t
                    e'16
                    [
                    \tweak Accidental.transparent ##t
                    c'16
                    \tweak Accidental.transparent ##t
                    e'16
                    \revert Staff.Stem.stemlet-length
                    \tweak Accidental.transparent ##t
                    a16
                    ]
                    r8
                    \tweak text #tuplet-number::calc-fraction-text
                    \times 5/8
                    {
                        \tweak Accidental.transparent ##t
                        a4
                        \tweak Accidental.transparent ##t
                        c'4.
                        \override Staff.Stem.stemlet-length = 0.75
                        \tweak Accidental.transparent ##t
                        c'8
                        [
                        \tweak Accidental.transparent ##t
                        e'8
                        \revert Staff.Stem.stemlet-length
                        \tweak Accidental.transparent ##t
                        a8
                        ]
                    }
                    \tweak Accidental.transparent ##t
                    e'4
                    \tweak Accidental.transparent ##t
                    c'4
                    ~
                    \override Staff.Stem.stemlet-length = 0.75
                    \tweak Accidental.transparent ##t
                    c'16
                    [
                    \revert Staff.Stem.stemlet-length
                    \tweak Accidental.transparent ##t
                    e'8.
                    ]
                    \times 2/3
                    {
                        \override Staff.Stem.stemlet-length = 0.75
                        \tweak Accidental.transparent ##t
                        a16
                        [
                        \tweak Accidental.transparent ##t
                        a16
                        \revert Staff.Stem.stemlet-length
                        \tweak Accidental.transparent ##t
                        c'16
                        ]
                    }
                    r8
                    \tweak Accidental.transparent ##t
                    c'8
                    ~
                    \override Staff.Stem.stemlet-length = 0.75
                    \tweak Accidental.transparent ##t
                    c'8
                    [
                    \revert Staff.Stem.stemlet-length
                    \tweak Accidental.transparent ##t
                    e'8
                    ~
                    ]
                    \override Staff.Stem.stemlet-length = 0.75
                    \tweak Accidental.transparent ##t
                    e'8
                    [
                    \revert Staff.Stem.stemlet-length
                    \tweak Accidental.transparent ##t
                    a8
                    ~
                    ]
                    \tweak Accidental.transparent ##t
                    a8
                    \tweak Accidental.transparent ##t
                    e'4
                    r8
                    \tweak Accidental.transparent ##t
                    c'8
                    ~
                    \tweak Accidental.transparent ##t
                    c'4
                    ~
                    \tweak Accidental.transparent ##t
                    c'2
                }
            }
            \context PianoStaff = "sub group 5"
            <<
                \context Staff = "violin 1 staff"
                {
                    \context Voice = "violin 1 voice"
                    {
                        \set Staff.shortInstrumentName =
                        \markup { vln. 1 }
                        r1
                        r4.
                        r2.
                        r2
                        r4
                        r1.
                        r8
                        cqs'2
                        ef'4
                        \tweak text #tuplet-number::calc-fraction-text
                        \times 3/4
                        {
                            fqs'4.
                            fs'8
                        }
                        \times 2/3
                        {
                            cqs'4
                            ef'4
                            dqs'4
                        }
                        \times 4/5
                        {
                            f'2
                            gqf'8
                        }
                    }
                }
                \context Staff = "violin 2 staff"
                {
                    \context Voice = "violin 2 voice"
                    {
                        \set Staff.shortInstrumentName =
                        \markup { vln. 2 }
                        r1
                        r4.
                        r2.
                        r2
                        r4
                        r1.
                        r8
                        r2.
                        r4.
                        r2
                        r2
                    }
                }
                \context Staff = "viola staff"
                {
                    \context Voice = "viola voice"
                    {
                        \set Staff.shortInstrumentName =
                        \markup { vla. }
                        \clef "alto"
                        r1
                        r4.
                        r2.
                        r2
                        r4
                        r1.
                        r8
                        r2.
                        r4.
                        r2
                        r2
                    }
                }
                \context Staff = "cello staff"
                {
                    \context Voice = "cello voice"
                    {
                        \times 2/3
                        {
                            \set Staff.shortInstrumentName =
                            \markup { vc. }
                            \clef "bass"
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \markup { \natural-one-syntonic-comma-up  }
                            a'2
                            ^ \markup \center-align { +14 }
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \markup { \natural-one-syntonic-comma-up  }
                            a'2
                            ^ \markup \center-align { +14 }
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \markup { \natural-one-syntonic-comma-up  }
                            a'2
                            ^ \markup \center-align { +14 }
                        }
                        r4.
                        r2.
                        r2
                        r4
                        r2.
                        \tweak text #tuplet-number::calc-fraction-text
                        \times 3/5
                        {
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \markup { \natural-one-syntonic-comma-up  }
                            g2.
                            ^ \markup \center-align { +16 }
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \markup { \natural-one-syntonic-comma-up  }
                            g4
                            ^ \markup \center-align { +16 }
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \markup { \natural-one-syntonic-comma-up  }
                            g4
                            ^ \markup \center-align { +16 }
                        }
                        r8
                        \override Staff.Stem.stemlet-length = 0.75
                        af8
                        ^ \markup \center-align +33
                        [
                        \revert Staff.Stem.stemlet-length
                        af8
                        ^ \markup \center-align +33
                        ~
                        ]
                        af4
                        ~
                        \override Staff.Stem.stemlet-length = 0.75
                        af8
                        [
                        \revert Staff.Stem.stemlet-length
                        af8
                        ^ \markup \center-align +33
                        ]
                        r4.
                        r2
                        \times 4/7
                        {
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \markup { \abjad-natural  }
                            g2
                            ^ \markup \center-align { -2 }
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \markup { \abjad-natural  }
                            g8
                            ^ \markup \center-align { -2 }
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \markup { \abjad-natural  }
                            g4
                            ^ \markup \center-align { -2 }
                        }
                    }
                }
                \context Staff = "contrabass staff"
                {
                    \context Voice = "contrabass voice"
                    {
                        \set Staff.shortInstrumentName =
                        \markup { cb. }
                        \clef "bass"
                        r1
                        r4.
                        r2.
                        r2
                        r4
                        r1.
                        r8
                        r4
                        r8
                        c8
                        ~
                        \override Staff.Stem.stemlet-length = 0.75
                        c8.
                        [
                        \revert Staff.Stem.stemlet-length
                        f,16
                        ~
                        ]
                        f,4.
                        a,4
                        ~
                        \override Staff.Stem.stemlet-length = 0.75
                        a,16
                        [
                        \revert Staff.Stem.stemlet-length
                        af,8.
                        ~
                        ]
                        \override Staff.Stem.stemlet-length = 0.75
                        af,16
                        [
                        \revert Staff.Stem.stemlet-length
                        bf,8.
                        ~
                        ]
                        bf,4
                    }
                }
            >>
        >>
    >>
%! abjad.LilyPondFile._get_formatted_blocks()
