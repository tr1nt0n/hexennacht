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
            \time 2/4
            s1 * 1/2
            \time 3/8
            s1 * 3/8
            \time 3/4
            s1 * 3/4
            \time 4/4
            s1 * 1
            \time 7/8
            s1 * 7/8
            \time 3/4
            s1 * 3/4
            \time 7/8
            s1 * 7/8
            \time 3/4
            s1 * 3/4
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
                        r4
                        ^ \markup { 0 }
                        r8
                        ^ \markup { 1 }
                        c'8
                        ^ \markup { 2 }
                        ~
                        c'4
                        ^ \markup { 3 }
                        r8
                        ^ \markup { 4 }
                        r2
                        ^ \markup { 5 }
                        r8
                        ^ \markup { 6 }
                        c'8
                        ^ \markup { 7 }
                        ~
                        c'8
                        ^ \markup { 8 }
                        r8
                        ^ \markup { 9 }
                        r2.
                        ^ \markup { 10 }
                        \override Staff.Stem.stemlet-length = 0.75
                        ef'''32
                        ^ \markup { 11 }
                        [
                        g'''32
                        ^ \markup { 12 }
                        af'''32
                        ^ \markup { 13 }
                        bf'''32
                        ^ \markup { 14 }
                        ef'''32
                        ^ \markup { 15 }
                        af'''32
                        ^ \markup { 16 }
                        c'''32
                        ^ \markup { 17 }
                        af'''32
                        ^ \markup { 18 }
                        g'''32
                        ^ \markup { 19 }
                        e'''32
                        ^ \markup { 20 }
                        f'''32
                        ^ \markup { 21 }
                        \revert Staff.Stem.stemlet-length
                        bf'''32
                        ^ \markup { 22 }
                        ]
                        r4
                        ^ \markup { 23 }
                        \override Staff.Stem.stemlet-length = 0.75
                        ef'''32
                        ^ \markup { 24 }
                        [
                        c'''32
                        ^ \markup { 25 }
                        b'''32
                        ^ \markup { 26 }
                        bf'''32
                        ^ \markup { 27 }
                        fs'''32
                        ^ \markup { 28 }
                        bf'''32
                        ^ \markup { 29 }
                        g'''32
                        ^ \markup { 30 }
                        \revert Staff.Stem.stemlet-length
                        b'''32
                        ^ \markup { 31 }
                        ]
                        r8
                        ^ \markup { 32 }
                        \override Staff.Stem.stemlet-length = 0.75
                        d'''32
                        ^ \markup { 33 }
                        [
                        e'''32
                        ^ \markup { 34 }
                        cs'''32
                        ^ \markup { 35 }
                        \revert Staff.Stem.stemlet-length
                        af'''32
                        ^ \markup { 36 }
                        ]
                        \override Staff.Stem.stemlet-length = 0.75
                        ef'''32
                        ^ \markup { 37 }
                        [
                        g'''32
                        ^ \markup { 38 }
                        af'''32
                        ^ \markup { 39 }
                        a'''32
                        ^ \markup { 40 }
                        ef'''32
                        ^ \markup { 41 }
                        fs'''32
                        ^ \markup { 42 }
                        ef'''32
                        ^ \markup { 43 }
                        \revert Staff.Stem.stemlet-length
                        af'''32
                        ^ \markup { 44 }
                        ]
                        r4
                        ^ \markup { 45 }
                        r2..
                        ^ \markup { 46 }
                        r2.
                        ^ \markup { 47 }
                    }
                }
                \context Staff = "oboe staff"
                {
                    \context Voice = "oboe voice"
                    {
                        \set Staff.shortInstrumentName =
                        \markup { ob. }
                        r4
                        ^ \markup { 0 }
                        r8
                        ^ \markup { 1 }
                        af''8
                        ^ \markup { 2 }
                        ~
                        af''4
                        ^ \markup { 3 }
                        r8
                        ^ \markup { 4 }
                        r2
                        ^ \markup { 5 }
                        r8
                        ^ \markup { 6 }
                        aqf''8
                        ^ \markup { 7 }
                        ~
                        aqf''8
                        ^ \markup { 8 }
                        r8
                        ^ \markup { 9 }
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
                            ^ \markup { 10 }
                            [
                            gqs''32 * 99/32
                            ^ \markup { 11 }
                            af''32 * 69/32
                            ^ \markup { 12 }
                            a''32 * 13/8
                            ^ \markup { 13 }
                            r32 * 47/32
                            ^ \markup { 14 }
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
                            \once \override Beam.grow-direction = #left
                            r32 * 5/4
                            ^ \markup { 15 }
                            [
                            aqs''32 * 43/32
                            ^ \markup { 16 }
                            aqf''32 * 51/32
                            ^ \markup { 17 }
                            af''32 * 65/32
                            ^ \markup { 18 }
                            aqf''32 * 85/32
                            ^ \markup { 19 }
                            r32 * 25/8
                            ^ \markup { 20 }
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
                                        c'2..
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
                            ^ \markup { 21 }
                            [
                            gqs''32 * 3/2
                            ^ \markup { 22 }
                            af''32 * 25/16
                            ^ \markup { 23 }
                            a''32 * 53/32
                            ^ \markup { 24 }
                            aqs''32 * 29/16
                            ^ \markup { 25 }
                            aqf''32 * 63/32
                            ^ \markup { 26 }
                            af''32 * 71/32
                            ^ \markup { 27 }
                            aqf''32 * 5/2
                            ^ \markup { 28 }
                            gqs''32 * 91/32
                            ^ \markup { 29 }
                            af''32 * 51/16
                            ^ \markup { 30 }
                            a''32 * 7/2
                            ^ \markup { 31 }
                            r32 * 15/4
                            ^ \markup { 32 }
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
                            ^ \markup { 33 }
                            [
                            aqs''32 * 115/32
                            ^ \markup { 34 }
                            aqf''32 * 103/32
                            ^ \markup { 35 }
                            af''32 * 11/4
                            ^ \markup { 36 }
                            aqf''32 * 37/16
                            ^ \markup { 37 }
                            gqs''32 * 2
                            ^ \markup { 38 }
                            af''32 * 7/4
                            ^ \markup { 39 }
                            a''32 * 13/8
                            ^ \markup { 40 }
                            aqs''32 * 49/32
                            ^ \markup { 41 }
                            r32 * 47/32
                            ^ \markup { 42 }
                            ]
                        }
                        \revert TupletNumber.text
                        r2..
                        ^ \markup { 43 }
                        r2.
                        ^ \markup { 44 }
                    }
                }
                \context Staff = "bass clarinet staff"
                {
                    \context Voice = "bass clarinet voice"
                    {
                        \set Staff.shortInstrumentName =
                        \markup { bcl. }
                        r2
                        ^ \markup { 0 }
                        r4.
                        ^ \markup { 1 }
                        c'4
                        ^ \markup { 2 }
                        ~
                        c'16
                        ^ \markup { 3 }
                        r8.
                        ^ \markup { 4 }
                        r4
                        ^ \markup { 5 }
                        r1
                        ^ \markup { 6 }
                        c'4
                        ^ \markup { 7 }
                        c'8
                        ^ \markup { 8 }
                        ~
                        \override Staff.Stem.stemlet-length = 0.75
                        c'8
                        ^ \markup { 9 }
                        [
                        \revert Staff.Stem.stemlet-length
                        c'8
                        ^ \markup { 10 }
                        ~
                        ]
                        \override Staff.Stem.stemlet-length = 0.75
                        c'8
                        ^ \markup { 11 }
                        [
                        \revert Staff.Stem.stemlet-length
                        c'8
                        ^ \markup { 12 }
                        ~
                        ]
                        \override Staff.Stem.stemlet-length = 0.75
                        c'8
                        ^ \markup { 13 }
                        [
                        \revert Staff.Stem.stemlet-length
                        c'8
                        ^ \markup { 14 }
                        ~
                        ]
                        \override Staff.Stem.stemlet-length = 0.75
                        c'8
                        ^ \markup { 15 }
                        [
                        \revert Staff.Stem.stemlet-length
                        c'8
                        ^ \markup { 16 }
                        ~
                        ]
                        \override Staff.Stem.stemlet-length = 0.75
                        c'8
                        ^ \markup { 17 }
                        [
                        \revert Staff.Stem.stemlet-length
                        c'8
                        ^ \markup { 18 }
                        ]
                        r2..
                        ^ \markup { 19 }
                        r2.
                        ^ \markup { 20 }
                    }
                }
                \context Staff = "bassoon staff"
                {
                    \context Voice = "bassoon voice"
                    {
                        \set Staff.shortInstrumentName =
                        \markup { bsn. }
                        \clef "bass"
                        r2
                        ^ \markup { 0 }
                        r4.
                        ^ \markup { 1 }
                        c'4
                        ^ \markup { 2 }
                        ~
                        c'16
                        ^ \markup { 3 }
                        r8.
                        ^ \markup { 4 }
                        \times 2/3
                        {
                            e,4
                            ^ \markup { 5 }
                            \override Staff.Stem.stemlet-length = 0.75
                            fs,16
                            ^ \markup { 6 }
                            [
                            \revert Staff.Stem.stemlet-length
                            g,16
                            ^ \markup { 7 }
                            ]
                        }
                        \times 4/7
                        {
                            \override Staff.Stem.stemlet-length = 0.75
                            bf,8
                            ^ \markup { 8 }
                            [
                            \revert Staff.Stem.stemlet-length
                            af,8
                            ^ \markup { 9 }
                            ]
                            af,4.
                            ^ \markup { 10 }
                            \override Staff.Stem.stemlet-length = 0.75
                            e,8
                            ^ \markup { 11 }
                            [
                            \revert Staff.Stem.stemlet-length
                            bf,8
                            ^ \markup { 12 }
                            ]
                        }
                        \times 4/7
                        {
                            \override Staff.Stem.stemlet-length = 0.75
                            c,8
                            ^ \markup { 13 }
                            [
                            bf,8
                            ^ \markup { 14 }
                            bf,16
                            ^ \markup { 15 }
                            b,16
                            ^ \markup { 16 }
                            \revert Staff.Stem.stemlet-length
                            e,16
                            ^ \markup { 17 }
                            ]
                        }
                        \times 2/3
                        {
                            af,4
                            ^ \markup { 18 }
                            \override Staff.Stem.stemlet-length = 0.75
                            g,16
                            ^ \markup { 19 }
                            [
                            \revert Staff.Stem.stemlet-length
                            a,16
                            ^ \markup { 20 }
                            ]
                        }
                        \times 4/5
                        {
                            fs,4.
                            ^ \markup { 21 }
                            \override Staff.Stem.stemlet-length = 0.75
                            af,8
                            ^ \markup { 22 }
                            [
                            \revert Staff.Stem.stemlet-length
                            f,8
                            ^ \markup { 23 }
                            ]
                        }
                        \tweak text #tuplet-number::calc-fraction-text
                        \times 6/7
                        {
                            \override Staff.Stem.stemlet-length = 0.75
                            f,16
                            ^ \markup { 24 }
                            [
                            g,16
                            ^ \markup { 25 }
                            ef,16
                            ^ \markup { 26 }
                            e,8
                            ^ \markup { 27 }
                            fs,16
                            ^ \markup { 28 }
                            \revert Staff.Stem.stemlet-length
                            g,16
                            ^ \markup { 29 }
                            ]
                        }
                        \times 4/7
                        {
                            bf,4
                            ^ \markup { 30 }
                            ~
                            \override Staff.Stem.stemlet-length = 0.75
                            bf,16
                            ^ \markup { 31 }
                            [
                            af,16
                            ^ \markup { 32 }
                            \revert Staff.Stem.stemlet-length
                            af,16
                            ^ \markup { 33 }
                            ]
                        }
                        \times 2/3
                        {
                            e,2
                            ^ \markup { 34 }
                            \override Staff.Stem.stemlet-length = 0.75
                            bf,8
                            ^ \markup { 35 }
                            [
                            \revert Staff.Stem.stemlet-length
                            c,8
                            ^ \markup { 36 }
                            ]
                        }
                        r2..
                        ^ \markup { 37 }
                        r2.
                        ^ \markup { 38 }
                    }
                }
            >>
            \context Staff = "horn staff"
            {
                \context Voice = "horn voice"
                {
                    \set Staff.shortInstrumentName =
                    \markup { hrn. }
                    r2
                    ^ \markup { 0 }
                    r4.
                    ^ \markup { 1 }
                    r2.
                    ^ \markup { 2 }
                    r2.
                    ^ \markup { 3 }
                    r8
                    ^ \markup { 4 }
                    b'8
                    ^ \markup { 5 }
                    ~
                    b'8
                    ^ \markup { 6 }
                    r8
                    ^ \markup { 7 }
                    bf''8
                    ^ \markup { 8 }
                    ~
                    \override Staff.Stem.stemlet-length = 0.75
                    bf''8.
                    ^ \markup { 9 }
                    [
                    \revert Staff.Stem.stemlet-length
                    cs''16
                    ^ \markup { 10 }
                    ~
                    ]
                    cs''8
                    ^ \markup { 11 }
                    r8
                    ^ \markup { 12 }
                    c'''4
                    ^ \markup { 13 }
                    ~
                    c'''8.
                    ^ \markup { 14 }
                    r16
                    ^ \markup { 15 }
                    r4
                    ^ \markup { 16 }
                    r2..
                    ^ \markup { 17 }
                    r2.
                    ^ \markup { 18 }
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
                        r2
                        ^ \markup { 0 }
                        r4.
                        ^ \markup { 1 }
                        r2.
                        ^ \markup { 2 }
                        r2
                        ^ \markup { 3 }
                        r8
                        ^ \markup { 4 }
                        a''8
                        ^ \markup { 5 }
                        ~
                        a''4
                        ^ \markup { 6 }
                        ~
                        \override Staff.Stem.stemlet-length = 0.75
                        a''16
                        ^ \markup { 7 }
                        [
                        \revert Staff.Stem.stemlet-length
                        dqf''16
                        ^ \markup { 8 }
                        ~
                        ]
                        dqf''4
                        ^ \markup { 9 }
                        ~
                        dqf''4
                        ^ \markup { 10 }
                        r4
                        ^ \markup { 11 }
                        gqf''4
                        ^ \markup { 12 }
                        r8
                        ^ \markup { 13 }
                        d''8
                        ^ \markup { 14 }
                        ~
                        d''8.
                        ^ \markup { 15 }
                        r16
                        ^ \markup { 16 }
                        r2..
                        ^ \markup { 17 }
                        r2.
                        ^ \markup { 18 }
                    }
                }
                \context Staff = "tenor trombone staff"
                {
                    \context Voice = "tenor trombone voice"
                    {
                        \set Staff.shortInstrumentName =
                        \markup { tbn. }
                        \clef "bass"
                        r2
                        ^ \markup { 0 }
                        r4.
                        ^ \markup { 1 }
                        r2.
                        ^ \markup { 2 }
                        r1
                        ^ \markup { 3 }
                        g,4
                        ^ \markup { 4 }
                        ~
                        \override Staff.Stem.stemlet-length = 0.75
                        g,16
                        ^ \markup { 5 }
                        [
                        \revert Staff.Stem.stemlet-length
                        af,16
                        ^ \markup { 6 }
                        ~
                        ]
                        af,4
                        ^ \markup { 7 }
                        ~
                        \override Staff.Stem.stemlet-length = 0.75
                        af,8
                        ^ \markup { 8 }
                        [
                        \revert Staff.Stem.stemlet-length
                        b,8
                        ^ \markup { 9 }
                        ~
                        ]
                        \override Staff.Stem.stemlet-length = 0.75
                        b,8.
                        ^ \markup { 10 }
                        [
                        \revert Staff.Stem.stemlet-length
                        a,16
                        ^ \markup { 11 }
                        ~
                        ]
                        \override Staff.Stem.stemlet-length = 0.75
                        a,8.
                        ^ \markup { 12 }
                        [
                        \revert Staff.Stem.stemlet-length
                        a,16
                        ^ \markup { 13 }
                        ~
                        ]
                        a,4
                        ^ \markup { 14 }
                        r2..
                        ^ \markup { 15 }
                        r2.
                        ^ \markup { 16 }
                    }
                }
                \context Staff = "tuba staff"
                {
                    \context Voice = "tuba voice"
                    {
                        \set Staff.shortInstrumentName =
                        \markup { tb. }
                        \clef "bass"
                        r2
                        ^ \markup { 0 }
                        r4.
                        ^ \markup { 1 }
                        r4
                        ^ \markup { 2 }
                        af,4
                        ^ \markup { 3 }
                        e,4
                        ^ \markup { 4 }
                        ~
                        \override Staff.Stem.stemlet-length = 0.75
                        e,16
                        ^ \markup { 5 }
                        [
                        \revert Staff.Stem.stemlet-length
                        bf,8.
                        ^ \markup { 6 }
                        ~
                        ]
                        bf,4
                        ^ \markup { 7 }
                        c,4
                        ^ \markup { 8 }
                        ~
                        \override Staff.Stem.stemlet-length = 0.75
                        c,16
                        ^ \markup { 9 }
                        [
                        \revert Staff.Stem.stemlet-length
                        bf,8.
                        ^ \markup { 10 }
                        ]
                        e,,4.
                        ^ \markup { 11 }
                        ~
                        \override Staff.Stem.stemlet-length = 0.75
                        e,,16
                        ^ \markup { 12 }
                        [
                        \revert Staff.Stem.stemlet-length
                        e,,8.
                        ^ \markup { 13 }
                        ~
                        ]
                        e,,4
                        ^ \markup { 14 }
                        ~
                        e,,8
                        ^ \markup { 15 }
                        r8
                        ^ \markup { 16 }
                        r8
                        ^ \markup { 17 }
                        e,,8
                        ^ \markup { 18 }
                        ~
                        e,,8
                        ^ \markup { 19 }
                        r8
                        ^ \markup { 20 }
                        r2..
                        ^ \markup { 21 }
                        r2.
                        ^ \markup { 22 }
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
                        r4
                        \f
                        ^ \markup { 0 }
                        \override Staff.Stem.stemlet-length = 0.75
                        bf'8
                        - \tenuto
                        ^ \markup { 1 }
                        [
                        \(
                        b'16
                        ^ \markup { 2 }
                        \revert Staff.Stem.stemlet-length
                        b'16
                        ^ \markup { 3 }
                        \)
                        ]
                        cs''4
                        - \accent
                        ^ \markup { 4 }
                        af'8
                        - \accent
                        ^ \markup { 5 }
                        ~
                        \override Staff.Stem.stemlet-length = 0.75
                        af'8.
                        ^ \markup { 6 }
                        [
                        \revert Staff.Stem.stemlet-length
                        d''16
                        - \accent
                        ^ \markup { 7 }
                        ~
                        ]
                        d''4
                        \mp
                        ^ \markup { 8 }
                        \<
                        \times 4/7
                        {
                            \override Staff.Stem.stemlet-length = 0.75
                            af'8
                            - \tenuto
                            ^ \markup { 9 }
                            [
                            \(
                            a'16
                            ^ \markup { 10 }
                            b'16
                            ^ \markup { 11 }
                            e''16
                            ^ \markup { 12 }
                            b'16
                            ^ \markup { 13 }
                            \revert Staff.Stem.stemlet-length
                            af'16
                            ^ \markup { 14 }
                            ]
                        }
                        \override Staff.Stem.stemlet-length = 0.75
                        bf'16
                        ^ \markup { 15 }
                        [
                        f''16
                        ^ \markup { 16 }
                        ~
                        f''16
                        ^ \markup { 17 }
                        \revert Staff.Stem.stemlet-length
                        ef''16
                        ^ \markup { 18 }
                        \)
                        ]
                        cs''4
                        \fff
                        - \accent
                        ^ \markup { 19 }
                        a''4
                        - \accent
                        ^ \markup { 20 }
                        \times 4/7
                        {
                            \override Staff.Stem.stemlet-length = 0.75
                            e''16
                            - \tenuto
                            ^ \markup { 21 }
                            - \tweak circled-tip ##t
                            \>
                            [
                            \(
                            f''8
                            ^ \markup { 22 }
                            c''16
                            ^ \markup { 23 }
                            b'16
                            ^ \markup { 24 }
                            cs''16
                            ^ \markup { 25 }
                            \revert Staff.Stem.stemlet-length
                            fs''16
                            \!
                            ^ \markup { 26 }
                            \)
                            ]
                        }
                        r2..
                        ^ \markup { 27 }
                        r2.
                        ^ \markup { 28 }
                        r2..
                        ^ \markup { 29 }
                        r2.
                        ^ \markup { 30 }
                    }
                }
                \context Staff = "piano 2 staff"
                {
                    \context Voice = "piano 2 voice"
                    {
                        \times 2/3
                        {
                            \clef "bass"
                            d4
                            - \accent
                            ^ \markup { 0 }
                            ^ \markup {
                                \italic
                                    Con
                                fuoco
                                }
                            a4
                            - \accent
                            ^ \markup { 1 }
                            g4
                            - \accent
                            ^ \markup { 2 }
                        }
                        f4.
                        - \accent
                        - \tenuto
                        ^ \markup { 3 }
                        ~
                        \(
                        \override Staff.Stem.stemlet-length = 0.75
                        f8
                        ^ \markup { 4 }
                        [
                        \revert Staff.Stem.stemlet-length
                        cs'8
                        ^ \markup { 5 }
                        \)
                        ]
                        \times 4/7
                        {
                            \override Staff.Stem.stemlet-length = 0.75
                            af8.
                            - \tenuto
                            ^ \markup { 6 }
                            [
                            \(
                            a16
                            ^ \markup { 7 }
                            e8
                            ^ \markup { 8 }
                            \revert Staff.Stem.stemlet-length
                            ef16
                            ^ \markup { 9 }
                            ]
                        }
                        \override Staff.Stem.stemlet-length = 0.75
                        e32
                        ^ \markup { 10 }
                        [
                        a16
                        ^ \markup { 11 }
                        e32
                        ^ \markup { 12 }
                        ~
                        e16
                        ^ \markup { 13 }
                        e32
                        ^ \markup { 14 }
                        \revert Staff.Stem.stemlet-length
                        ef32
                        ^ \markup { 15 }
                        \)
                        ]
                        e2
                        - \accent
                        ^ \markup { 16 }
                        e4
                        - \accent
                        ^ \markup { 17 }
                        \override Staff.Stem.stemlet-length = 0.75
                        fs32
                        - \tenuto
                        ^ \markup { 18 }
                        [
                        \(
                        cs32
                        ^ \markup { 19 }
                        g16
                        ^ \markup { 20 }
                        cs16.
                        ^ \markup { 21 }
                        \revert Staff.Stem.stemlet-length
                        d32
                        ^ \markup { 22 }
                        \)
                        ]
                        r2..
                        ^ \markup { 23 }
                        r2.
                        ^ \markup { 24 }
                        r2..
                        ^ \markup { 25 }
                        r2.
                        ^ \markup { 26 }
                    }
                }
            >>
            \context Staff = "harp staff"
            {
                \context Voice = "harp voice"
                {
                    \times 4/7
                    {
                        \set Staff.shortInstrumentName =
                        \markup { harp }
                        \override Staff.Stem.stemlet-length = 0.75
                        af'8
                        \f
                        ^ \markup { 0 }
                        _ \markup {
                            \italic
                                Con
                            fuoco
                            }
                        [
                        \(
                        ef'16
                        ^ \markup { 1 }
                        d'16
                        ^ \markup { 2 }
                        ef'16
                        ^ \markup { 3 }
                        af'16
                        ^ \markup { 4 }
                        \revert Staff.Stem.stemlet-length
                        ef'16
                        ^ \markup { 5 }
                        \)
                        ]
                    }
                    ef''4
                    - \accent
                    ^ \markup { 6 }
                    ef'4
                    - \accent
                    ^ \markup { 7 }
                    ~
                    \override Staff.Stem.stemlet-length = 0.75
                    ef'16
                    ^ \markup { 8 }
                    [
                    \revert Staff.Stem.stemlet-length
                    ef''16
                    - \accent
                    ^ \markup { 9 }
                    ~
                    ]
                    ef''4
                    ^ \markup { 10 }
                    ~
                    \override Staff.Stem.stemlet-length = 0.75
                    ef''8
                    ^ \markup { 11 }
                    [
                    \revert Staff.Stem.stemlet-length
                    ef'8
                    - \accent
                    ^ \markup { 12 }
                    ~
                    ]
                    \override Staff.Stem.stemlet-length = 0.75
                    ef'8.
                    ^ \markup { 13 }
                    [
                    \revert Staff.Stem.stemlet-length
                    fs'16
                    \mp
                    ^ \markup { 14 }
                    \<
                    ]
                    \(
                    \times 4/7
                    {
                        \override Staff.Stem.stemlet-length = 0.75
                        cs'16
                        ^ \markup { 15 }
                        [
                        g'16
                        ^ \markup { 16 }
                        cs'16
                        ^ \markup { 17 }
                        d'8.
                        ^ \markup { 18 }
                        \revert Staff.Stem.stemlet-length
                        ef'16
                        ^ \markup { 19 }
                        ]
                    }
                    \override Staff.Stem.stemlet-length = 0.75
                    cs'16
                    ^ \markup { 20 }
                    [
                    fs'32
                    ^ \markup { 21 }
                    cs'32
                    ^ \markup { 22 }
                    \)
                    \revert Staff.Stem.stemlet-length
                    af8
                    \ff
                    - \accent
                    ^ \markup { 23 }
                    ~
                    ]
                    \override Staff.Stem.stemlet-length = 0.75
                    af8
                    ^ \markup { 24 }
                    [
                    \revert Staff.Stem.stemlet-length
                    ef''8
                    - \accent
                    ^ \markup { 25 }
                    ]
                    \times 2/3
                    {
                        \override Staff.Stem.stemlet-length = 0.75
                        d'16
                        ^ \markup { 26 }
                        - \tweak circled-tip ##t
                        \>
                        [
                        \(
                        cs'8.
                        ^ \markup { 27 }
                        af'16
                        ^ \markup { 28 }
                        \revert Staff.Stem.stemlet-length
                        ef'16
                        \!
                        ^ \markup { 29 }
                        \)
                        ]
                    }
                    r2..
                    ^ \markup { 30 }
                    r2.
                    ^ \markup { 31 }
                    r2..
                    ^ \markup { 32 }
                    r2.
                    ^ \markup { 33 }
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
                        r2
                        ^ \markup { 0 }
                        r4.
                        ^ \markup { 1 }
                        r2
                        ^ \markup { 2 }
                        r8
                        ^ \markup { 3 }
                        \override Staff.Stem.stemlet-length = 0.75
                        c'''32
                        ^ \markup { 4 }
                        [
                        e'''32
                        ^ \markup { 5 }
                        cs'''32
                        ^ \markup { 6 }
                        \revert Staff.Stem.stemlet-length
                        fs'''32
                        ^ \markup { 7 }
                        ]
                        r8
                        ^ \markup { 8 }
                        \override Staff.Stem.stemlet-length = 0.75
                        ef'''32
                        ^ \markup { 9 }
                        [
                        g'''32
                        ^ \markup { 10 }
                        af'''32
                        ^ \markup { 11 }
                        \revert Staff.Stem.stemlet-length
                        bf'''32
                        ^ \markup { 12 }
                        ]
                        \override Staff.Stem.stemlet-length = 0.75
                        ef'''32
                        ^ \markup { 13 }
                        [
                        \revert Staff.Stem.stemlet-length
                        af'''32
                        ^ \markup { 14 }
                        ]
                        r8.
                        ^ \markup { 15 }
                        r4
                        ^ \markup { 16 }
                        \override Staff.Stem.stemlet-length = 0.75
                        c'''32
                        ^ \markup { 17 }
                        [
                        af'''32
                        ^ \markup { 18 }
                        g'''32
                        ^ \markup { 19 }
                        e'''32
                        ^ \markup { 20 }
                        f'''32
                        ^ \markup { 21 }
                        bf'''32
                        ^ \markup { 22 }
                        ef'''32
                        ^ \markup { 23 }
                        \revert Staff.Stem.stemlet-length
                        c'''32
                        ^ \markup { 24 }
                        ]
                        \override Staff.Stem.stemlet-length = 0.75
                        b'''32
                        ^ \markup { 25 }
                        [
                        bf'''32
                        ^ \markup { 26 }
                        fs'''32
                        ^ \markup { 27 }
                        \revert Staff.Stem.stemlet-length
                        bf'''32
                        ^ \markup { 28 }
                        ]
                        r4
                        ^ \markup { 29 }
                        \override Staff.Stem.stemlet-length = 0.75
                        g'''32
                        ^ \markup { 30 }
                        [
                        b'''32
                        ^ \markup { 31 }
                        d'''32
                        ^ \markup { 32 }
                        e'''32
                        ^ \markup { 33 }
                        cs'''32
                        ^ \markup { 34 }
                        af'''32
                        ^ \markup { 35 }
                        ef'''32
                        ^ \markup { 36 }
                        \revert Staff.Stem.stemlet-length
                        g'''32
                        ^ \markup { 37 }
                        ]
                        r4
                        ^ \markup { 38 }
                        \override Staff.Stem.stemlet-length = 0.75
                        af'''32
                        ^ \markup { 39 }
                        [
                        a'''32
                        ^ \markup { 40 }
                        ef'''32
                        ^ \markup { 41 }
                        \revert Staff.Stem.stemlet-length
                        fs'''32
                        ^ \markup { 42 }
                        ]
                        r8
                        ^ \markup { 43 }
                        r4
                        ^ \markup { 44 }
                        \override Staff.Stem.stemlet-length = 0.75
                        ef'''32
                        ^ \markup { 45 }
                        [
                        af'''32
                        ^ \markup { 46 }
                        d'''32
                        ^ \markup { 47 }
                        f'''32
                        ^ \markup { 48 }
                        ef'''32
                        ^ \markup { 49 }
                        f'''32
                        ^ \markup { 50 }
                        ef'''32
                        ^ \markup { 51 }
                        \revert Staff.Stem.stemlet-length
                        g'''32
                        ^ \markup { 52 }
                        ]
                        r2..
                        ^ \markup { 53 }
                        r2.
                        ^ \markup { 54 }
                    }
                }
                \context Staff = "percussion 1 staff"
                {
                    \context Voice = "percussion 1 voice"
                    {
                        \set Staff.shortInstrumentName =
                        \markup { ratch. }
                        \clef "percussion"
                        r2
                        ^ \markup { 0 }
                        r4.
                        ^ \markup { 1 }
                        r4
                        ^ \markup { 2 }
                        r8
                        ^ \markup { 3 }
                        \tweak Accidental.transparent ##t
                        e'8
                        ^ \markup { 4 }
                        r4
                        ^ \markup { 5 }
                        r4
                        ^ \markup { 6 }
                        r8
                        ^ \markup { 7 }
                        \tweak Accidental.transparent ##t
                        a8
                        ^ \markup { 8 }
                        r8
                        ^ \markup { 9 }
                        \tweak Accidental.transparent ##t
                        e'8
                        ^ \markup { 10 }
                        r4
                        ^ \markup { 11 }
                        r2..
                        ^ \markup { 12 }
                        r2.
                        ^ \markup { 13 }
                        r2..
                        ^ \markup { 14 }
                        r2.
                        ^ \markup { 15 }
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
                    r2
                    ^ \markup { 0 }
                    r4.
                    ^ \markup { 1 }
                    r16
                    ^ \markup { 2 }
                    \tweak text #tuplet-number::calc-fraction-text
                    \times 9/8
                    {
                        c'4
                        ^ \markup { 3 }
                        c'8
                        ^ \markup { 4 }
                        [
                        c'8
                        ^ \markup { 5 }
                        ]
                    }
                    r8
                    ^ \markup { 6 }
                    r4
                    ^ \markup { 7 }
                    \times 4/7
                    {
                        c'2
                        ^ \markup { 8 }
                        c'8
                        ^ \markup { 9 }
                        c'4
                        ^ \markup { 10 }
                    }
                    r4
                    ^ \markup { 11 }
                    \tweak text #tuplet-number::calc-fraction-text
                    \times 7/6
                    {
                        c'8
                        ^ \markup { 12 }
                        c'2
                        ^ \markup { 13 }
                        c'8
                        ^ \markup { 14 }
                    }
                    \tweak text #tuplet-number::calc-fraction-text
                    \times 6/7
                    {
                        c'2
                        ^ \markup { 15 }
                        c'8
                        ^ \markup { 16 }
                        c'4
                        ^ \markup { 17 }
                    }
                    r2..
                    ^ \markup { 18 }
                    r2.
                    ^ \markup { 19 }
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
                        r2
                        ^ \markup { 0 }
                        r4.
                        ^ \markup { 1 }
                        r16
                        ^ \markup { 2 }
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \markup \concat { \one-septimal-comma-down \hspace #0.125 \double-flat-one-syntonic-comma-up  }
                        eff''8.
                        ^ \markup \center-align { -17 }
                        ^ \markup { 3 }
                        \override Staff.Stem.stemlet-length = 0.75
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \markup \concat { \one-septimal-comma-down \hspace #0.125 \double-flat-one-syntonic-comma-up  }
                        eff''8.
                        ^ \markup \center-align { -17 }
                        ^ \markup { 4 }
                        [
                        \revert Staff.Stem.stemlet-length
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \markup \concat { \one-septimal-comma-down \hspace #0.125 \double-flat-one-syntonic-comma-up  }
                        eff''16
                        ^ \markup \center-align { -17 }
                        ^ \markup { 5 }
                        ~
                        ]
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \markup \concat { \one-septimal-comma-down \hspace #0.125 \double-flat-one-syntonic-comma-up  }
                        eff''8
                        ^ \markup { 6 }
                        r8
                        ^ \markup { 7 }
                        r4
                        ^ \markup { 8 }
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \markup \concat { \one-seventeen-limit-schisma-down \hspace #0.125 \one-septimal-comma-up \hspace #0.125 \abjad-sharp  }
                        ds''4
                        ^ \markup \center-align { +34 }
                        ^ \markup { 9 }
                        \override Staff.Stem.stemlet-length = 0.75
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \markup \concat { \one-seventeen-limit-schisma-down \hspace #0.125 \one-septimal-comma-up \hspace #0.125 \abjad-sharp  }
                        ds''8
                        ^ \markup \center-align { +34 }
                        ^ \markup { 10 }
                        [
                        \revert Staff.Stem.stemlet-length
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \markup \concat { \one-seventeen-limit-schisma-down \hspace #0.125 \one-septimal-comma-up \hspace #0.125 \abjad-sharp  }
                        ds''8
                        ^ \markup \center-align { +34 }
                        ^ \markup { 11 }
                        ]
                        r4
                        ^ \markup { 12 }
                        \override Staff.Stem.stemlet-length = 0.75
                        c'8
                        ^ \markup { 13 }
                        [
                        c'8
                        ^ \markup { 14 }
                        \revert Staff.Stem.stemlet-length
                        c'8
                        ^ \markup { 15 }
                        ]
                        \override Staff.Stem.stemlet-length = 0.75
                        c'8
                        ^ \markup { 16 }
                        [
                        \revert Staff.Stem.stemlet-length
                        c'8
                        ^ \markup { 17 }
                        ]
                        \override Staff.Stem.stemlet-length = 0.75
                        c'8
                        ^ \markup { 18 }
                        [
                        \revert Staff.Stem.stemlet-length
                        c'8
                        ^ \markup { 19 }
                        ]
                        \times 2/3
                        {
                            c'8
                            ^ \markup { 20 }
                            [
                            c'8
                            ^ \markup { 21 }
                            c'8
                            ^ \markup { 22 }
                            ]
                        }
                        \override Staff.Stem.stemlet-length = 0.75
                        c'8
                        ^ \markup { 23 }
                        [
                        \revert Staff.Stem.stemlet-length
                        c'8
                        ^ \markup { 24 }
                        ]
                        \override Staff.Stem.stemlet-length = 0.75
                        c'8
                        ^ \markup { 25 }
                        [
                        \revert Staff.Stem.stemlet-length
                        c'8
                        ^ \markup { 26 }
                        ]
                        r2..
                        ^ \markup { 27 }
                        r2.
                        ^ \markup { 28 }
                    }
                }
                \context Staff = "violin 2 staff"
                {
                    \context Voice = "violin 2 voice"
                    {
                        \set Staff.shortInstrumentName =
                        \markup { vln. 2 }
                        r2
                        ^ \markup { 0 }
                        r4.
                        ^ \markup { 1 }
                        r16
                        ^ \markup { 2 }
                        \tweak text #tuplet-number::calc-fraction-text
                        \times 9/5
                        {
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \markup { \flat-one-syntonic-comma-up  }
                            cf'8.
                            ^ \markup \center-align { +16 }
                            ^ \markup { 3 }
                            [
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \markup { \flat-one-syntonic-comma-up  }
                            cf'16
                            ^ \markup \center-align { +16 }
                            ^ \markup { 4 }
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \markup { \flat-one-syntonic-comma-up  }
                            cf'16
                            ^ \markup \center-align { +16 }
                            ^ \markup { 5 }
                            ]
                        }
                        r8
                        ^ \markup { 6 }
                        r4
                        ^ \markup { 7 }
                        \times 2/3
                        {
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \markup \concat { \one-septimal-comma-down \hspace #0.125 \abjad-flat  }
                            bf''4
                            ^ \markup \center-align { -33 }
                            ^ \markup { 8 }
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \markup \concat { \one-septimal-comma-down \hspace #0.125 \abjad-flat  }
                            bf''4
                            ^ \markup \center-align { -33 }
                            ^ \markup { 9 }
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \markup \concat { \one-septimal-comma-down \hspace #0.125 \abjad-flat  }
                            bf''4
                            ^ \markup \center-align { -33 }
                            ^ \markup { 10 }
                        }
                        r4
                        ^ \markup { 11 }
                        \times 4/7
                        {
                            \override Staff.Stem.stemlet-length = 0.75
                            g16
                            ^ \markup { 12 }
                            [
                            g16
                            ^ \markup { 13 }
                            g16
                            ^ \markup { 14 }
                            \revert Staff.Stem.stemlet-length
                            g32
                            ^ \markup { 15 }
                            ]
                        }
                        \times 4/7
                        {
                            \override Staff.Stem.stemlet-length = 0.75
                            g32
                            ^ \markup { 16 }
                            [
                            g16
                            ^ \markup { 17 }
                            g16
                            ^ \markup { 18 }
                            \revert Staff.Stem.stemlet-length
                            g16
                            ^ \markup { 19 }
                            ]
                        }
                        \times 4/7
                        {
                            \override Staff.Stem.stemlet-length = 0.75
                            g16
                            ^ \markup { 20 }
                            [
                            g16
                            ^ \markup { 21 }
                            g16
                            ^ \markup { 22 }
                            \revert Staff.Stem.stemlet-length
                            g32
                            ^ \markup { 23 }
                            ]
                        }
                        \times 4/7
                        {
                            \override Staff.Stem.stemlet-length = 0.75
                            g32
                            ^ \markup { 24 }
                            [
                            g16
                            ^ \markup { 25 }
                            g16
                            ^ \markup { 26 }
                            \revert Staff.Stem.stemlet-length
                            g16
                            ^ \markup { 27 }
                            ]
                        }
                        \times 4/7
                        {
                            \override Staff.Stem.stemlet-length = 0.75
                            g16
                            ^ \markup { 28 }
                            [
                            g16
                            ^ \markup { 29 }
                            g16
                            ^ \markup { 30 }
                            \revert Staff.Stem.stemlet-length
                            g32
                            ^ \markup { 31 }
                            ]
                        }
                        \times 4/7
                        {
                            \override Staff.Stem.stemlet-length = 0.75
                            g32
                            ^ \markup { 32 }
                            [
                            g16
                            ^ \markup { 33 }
                            g16
                            ^ \markup { 34 }
                            \revert Staff.Stem.stemlet-length
                            g16
                            ^ \markup { 35 }
                            ]
                        }
                        \times 4/7
                        {
                            \override Staff.Stem.stemlet-length = 0.75
                            g16
                            ^ \markup { 36 }
                            [
                            g16
                            ^ \markup { 37 }
                            g16
                            ^ \markup { 38 }
                            \revert Staff.Stem.stemlet-length
                            g32
                            ^ \markup { 39 }
                            ]
                        }
                        \times 4/7
                        {
                            \override Staff.Stem.stemlet-length = 0.75
                            g16
                            ^ \markup { 40 }
                            [
                            g8
                            ^ \markup { 41 }
                            g8
                            ^ \markup { 42 }
                            \revert Staff.Stem.stemlet-length
                            g8
                            ^ \markup { 43 }
                            ]
                        }
                        \times 4/7
                        {
                            \override Staff.Stem.stemlet-length = 0.75
                            g8
                            ^ \markup { 44 }
                            [
                            g8
                            ^ \markup { 45 }
                            g8
                            ^ \markup { 46 }
                            \revert Staff.Stem.stemlet-length
                            g16
                            ^ \markup { 47 }
                            ]
                        }
                        \times 4/7
                        {
                            \override Staff.Stem.stemlet-length = 0.75
                            g16
                            ^ \markup { 48 }
                            [
                            g8
                            ^ \markup { 49 }
                            g8
                            ^ \markup { 50 }
                            \revert Staff.Stem.stemlet-length
                            g8
                            ^ \markup { 51 }
                            ]
                        }
                        r2..
                        ^ \markup { 52 }
                        r2.
                        ^ \markup { 53 }
                    }
                }
                \context Staff = "viola staff"
                {
                    \context Voice = "viola voice"
                    {
                        \set Staff.shortInstrumentName =
                        \markup { vla. }
                        \clef "alto"
                        r2
                        ^ \markup { 0 }
                        r4.
                        ^ \markup { 1 }
                        r16
                        ^ \markup { 2 }
                        \override Staff.Stem.stemlet-length = 0.75
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \markup \concat { \one-septimal-comma-down \hspace #0.125 \flat-one-syntonic-comma-up  }
                        gf16
                        ^ \markup \center-align { -17 }
                        ^ \markup { 3 }
                        ~
                        [
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \markup \concat { \one-septimal-comma-down \hspace #0.125 \flat-one-syntonic-comma-up  }
                        gf32
                        ^ \markup { 4 }
                        \revert Staff.Stem.stemlet-length
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \markup \concat { \one-septimal-comma-down \hspace #0.125 \flat-one-syntonic-comma-up  }
                        gf16.
                        ^ \markup \center-align { -17 }
                        ^ \markup { 5 }
                        ~
                        ]
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \markup \concat { \one-septimal-comma-down \hspace #0.125 \flat-one-syntonic-comma-up  }
                        gf4
                        ^ \markup { 6 }
                        ~
                        \override Staff.Stem.stemlet-length = 0.75
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \markup \concat { \one-septimal-comma-down \hspace #0.125 \flat-one-syntonic-comma-up  }
                        gf32
                        ^ \markup { 7 }
                        [
                        \revert Staff.Stem.stemlet-length
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \markup \concat { \one-septimal-comma-down \hspace #0.125 \flat-one-syntonic-comma-up  }
                        gf16.
                        ^ \markup \center-align { -17 }
                        ^ \markup { 8 }
                        ]
                        r8
                        ^ \markup { 9 }
                        r4
                        ^ \markup { 10 }
                        \times 4/5
                        {
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \markup \concat { \one-seventeen-limit-schisma-down \hspace #0.125 \one-septimal-comma-up \hspace #0.125 \abjad-sharp  }
                            cs'4.
                            ^ \markup \center-align { +34 }
                            ^ \markup { 11 }
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \markup \concat { \one-seventeen-limit-schisma-down \hspace #0.125 \one-septimal-comma-up \hspace #0.125 \abjad-sharp  }
                            cs'8
                            ^ \markup \center-align { +34 }
                            ^ \markup { 12 }
                            [
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \markup \concat { \one-seventeen-limit-schisma-down \hspace #0.125 \one-septimal-comma-up \hspace #0.125 \abjad-sharp  }
                            cs'8
                            ^ \markup \center-align { +34 }
                            ^ \markup { 13 }
                            ]
                        }
                        r4
                        ^ \markup { 14 }
                        \times 2/3
                        {
                            \override Staff.Stem.stemlet-length = 0.75
                            c8
                            ^ \markup { 15 }
                            [
                            \revert Staff.Stem.stemlet-length
                            c16
                            ^ \markup { 16 }
                            ]
                        }
                        \times 2/3
                        {
                            \override Staff.Stem.stemlet-length = 0.75
                            c16
                            ^ \markup { 17 }
                            [
                            \revert Staff.Stem.stemlet-length
                            c8
                            ^ \markup { 18 }
                            ]
                        }
                        \times 2/3
                        {
                            \override Staff.Stem.stemlet-length = 0.75
                            c8
                            ^ \markup { 19 }
                            [
                            \revert Staff.Stem.stemlet-length
                            c16
                            ^ \markup { 20 }
                            ]
                        }
                        \times 2/3
                        {
                            \override Staff.Stem.stemlet-length = 0.75
                            c16
                            ^ \markup { 21 }
                            [
                            \revert Staff.Stem.stemlet-length
                            c8
                            ^ \markup { 22 }
                            ]
                        }
                        \times 2/3
                        {
                            \override Staff.Stem.stemlet-length = 0.75
                            c8
                            ^ \markup { 23 }
                            [
                            \revert Staff.Stem.stemlet-length
                            c16
                            ^ \markup { 24 }
                            ]
                        }
                        \times 2/3
                        {
                            \override Staff.Stem.stemlet-length = 0.75
                            c16
                            ^ \markup { 25 }
                            [
                            \revert Staff.Stem.stemlet-length
                            c8
                            ^ \markup { 26 }
                            ]
                        }
                        \times 2/3
                        {
                            \override Staff.Stem.stemlet-length = 0.75
                            c8
                            ^ \markup { 27 }
                            [
                            \revert Staff.Stem.stemlet-length
                            c16
                            ^ \markup { 28 }
                            ]
                        }
                        \times 2/3
                        {
                            c8
                            ^ \markup { 29 }
                            c4
                            ^ \markup { 30 }
                        }
                        \times 2/3
                        {
                            c4
                            ^ \markup { 31 }
                            c8
                            ^ \markup { 32 }
                        }
                        \times 2/3
                        {
                            c8
                            ^ \markup { 33 }
                            c4
                            ^ \markup { 34 }
                        }
                        r2..
                        ^ \markup { 35 }
                        r2.
                        ^ \markup { 36 }
                    }
                }
                \context Staff = "cello staff"
                {
                    \context Voice = "cello voice"
                    {
                        \set Staff.shortInstrumentName =
                        \markup { vc. }
                        \clef "bass"
                        r2
                        ^ \markup { 0 }
                        r4.
                        ^ \markup { 1 }
                        r16
                        ^ \markup { 2 }
                        \tweak text #tuplet-number::calc-fraction-text
                        \times 9/7
                        {
                            af4
                            ^ \markup \center-align +33
                            ^ \markup { 3 }
                            af16
                            ^ \markup \center-align +33
                            ^ \markup { 4 }
                            [
                            af8
                            ^ \markup \center-align +33
                            ^ \markup { 5 }
                            ]
                        }
                        r8
                        ^ \markup { 6 }
                        r4
                        ^ \markup { 7 }
                        \times 2/3
                        {
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \markup { \natural-one-syntonic-comma-down  }
                            d'8
                            ^ \markup \center-align { -16 }
                            ^ \markup { 8 }
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \markup { \natural-one-syntonic-comma-down  }
                            d'2
                            ^ \markup \center-align { -16 }
                            ^ \markup { 9 }
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \markup { \natural-one-syntonic-comma-down  }
                            d'8
                            ^ \markup \center-align { -16 }
                            ^ \markup { 10 }
                        }
                        r4
                        ^ \markup { 11 }
                        \override Staff.Stem.stemlet-length = 0.75
                        c,8
                        ^ \markup { 12 }
                        [
                        c,8
                        ^ \markup { 13 }
                        \revert Staff.Stem.stemlet-length
                        c,8
                        ^ \markup { 14 }
                        ]
                        \override Staff.Stem.stemlet-length = 0.75
                        c,8
                        ^ \markup { 15 }
                        [
                        \revert Staff.Stem.stemlet-length
                        c,8
                        ^ \markup { 16 }
                        ]
                        \override Staff.Stem.stemlet-length = 0.75
                        c,8
                        ^ \markup { 17 }
                        [
                        \revert Staff.Stem.stemlet-length
                        c,8
                        ^ \markup { 18 }
                        ]
                        \override Staff.Stem.stemlet-length = 0.75
                        c,8
                        ^ \markup { 19 }
                        [
                        \revert Staff.Stem.stemlet-length
                        c,8
                        ^ \markup { 20 }
                        ]
                        \override Staff.Stem.stemlet-length = 0.75
                        c,8
                        ^ \markup { 21 }
                        [
                        \revert Staff.Stem.stemlet-length
                        c,8
                        ^ \markup { 22 }
                        ]
                        \override Staff.Stem.stemlet-length = 0.75
                        c,8
                        ^ \markup { 23 }
                        [
                        \revert Staff.Stem.stemlet-length
                        c,8
                        ^ \markup { 24 }
                        ]
                        r2..
                        ^ \markup { 25 }
                        r2.
                        ^ \markup { 26 }
                    }
                }
                \context Staff = "contrabass staff"
                {
                    \context Voice = "contrabass voice"
                    {
                        \set Staff.shortInstrumentName =
                        \markup { cb. }
                        \clef "bass"
                        r2
                        ^ \markup { 0 }
                        r4.
                        ^ \markup { 1 }
                        r4
                        ^ \markup { 2 }
                        a,4
                        ^ \markup { 3 }
                        ~
                        \override Staff.Stem.stemlet-length = 0.75
                        a,16
                        ^ \markup { 4 }
                        [
                        \revert Staff.Stem.stemlet-length
                        f,8.
                        ^ \markup { 5 }
                        ~
                        ]
                        f,4
                        ^ \markup { 6 }
                        b,4
                        ^ \markup { 7 }
                        ~
                        \override Staff.Stem.stemlet-length = 0.75
                        b,16
                        ^ \markup { 8 }
                        [
                        \revert Staff.Stem.stemlet-length
                        cs,8.
                        ^ \markup { 9 }
                        ~
                        ]
                        \override Staff.Stem.stemlet-length = 0.75
                        cs,16
                        ^ \markup { 10 }
                        [
                        \revert Staff.Stem.stemlet-length
                        b,8.
                        ^ \markup { 11 }
                        ~
                        ]
                        b,4
                        ^ \markup { 12 }
                        b,8
                        ^ \markup { 13 }
                        ~
                        \override Staff.Stem.stemlet-length = 0.75
                        b,8.
                        ^ \markup { 14 }
                        [
                        \revert Staff.Stem.stemlet-length
                        c16
                        ^ \markup { 15 }
                        ~
                        ]
                        c4
                        ^ \markup { 16 }
                        ~
                        \override Staff.Stem.stemlet-length = 0.75
                        c8
                        ^ \markup { 17 }
                        [
                        \revert Staff.Stem.stemlet-length
                        f,8
                        ^ \markup { 18 }
                        ~
                        ]
                        \override Staff.Stem.stemlet-length = 0.75
                        f,8
                        ^ \markup { 19 }
                        [
                        \revert Staff.Stem.stemlet-length
                        a,8
                        ^ \markup { 20 }
                        ~
                        ]
                        \override Staff.Stem.stemlet-length = 0.75
                        a,8.
                        ^ \markup { 21 }
                        [
                        \revert Staff.Stem.stemlet-length
                        af,16
                        ^ \markup { 22 }
                        ]
                        r2..
                        ^ \markup { 23 }
                        r2.
                        ^ \markup { 24 }
                    }
                }
            >>
        >>
    >>
%! abjad.LilyPondFile._get_formatted_blocks()
}
