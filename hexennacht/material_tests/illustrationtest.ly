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
            \time 3/4
            s1 * 3/4
            \time 7/8
            s1 * 7/8
            \time 4/4
            s1 * 1
            \time 5/4
            s1 * 5/4
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
                        r2.
                        r2..
                        r1
                        r2.
                        r2
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
                        r2.
                        r8
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
                            [
                            af''32 * 43/32
                            \f
                            - \stopped
                            \>
                            \glissando
                            \(
                            aqf''32 * 51/32
                            - \open
                            \glissando
                            gqs''32 * 65/32
                            - \stopped
                            \glissando
                            af''32 * 85/32
                            - \open
                            \)
                            r32 * 25/8
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
                            a''32 * 99/32
                            \p
                            - \stopped
                            \<
                            \glissando
                            \(
                            aqs''32 * 69/32
                            - \open
                            \glissando
                            aqf''32 * 13/8
                            \f
                            - \stopped
                            \)
                            \glissando
                            r32 * 47/32
                            ]
                        }
                        \revert TupletNumber.text
                        r1
                        r2
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
                            af''32 * 99/32
                            \f
                            - \stopped
                            \>
                            \glissando
                            \(
                            aqf''32 * 69/32
                            - \open
                            \glissando
                            gqs''32 * 13/8
                            - \stopped
                            \)
                            r32 * 47/32
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
                            [
                            af''32 * 43/32
                            \p
                            - \open
                            \<
                            \glissando
                            \(
                            a''32 * 51/32
                            - \stopped
                            \glissando
                            aqs''32 * 65/32
                            - \open
                            \glissando
                            aqf''32 * 85/32
                            \f
                            - \stopped
                            \)
                            r32 * 25/8
                            ]
                        }
                        \revert TupletNumber.text
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
                        r2.
                        r4.
                        r4
                        r8
                        \times 4/7
                        {
                            \override Staff.Stem.stemlet-length = 0.75
                            cs''8
                            \ffff
                            - \marcato
                            ~
                            [
                            \boxed-markup "Overblow" 1
                            cs''32
                            fs'32
                            \revert Staff.Stem.stemlet-length
                            bf'32
                            ]
                        }
                        a'4
                        - \marcato
                        \override Staff.Stem.stemlet-length = 0.75
                        b'16
                        [
                        \revert Staff.Stem.stemlet-length
                        gs'16
                        ]
                        \tweak text #tuplet-number::calc-fraction-text
                        \times 6/7
                        {
                            \override Staff.Stem.stemlet-length = 0.75
                            bf'16
                            - \marcato
                            [
                            g'16
                            g'8.
                            a'16
                            \revert Staff.Stem.stemlet-length
                            f'16
                            ]
                        }
                        \times 4/7
                        {
                            \override Staff.Stem.stemlet-length = 0.75
                            fs'8
                            - \marcato
                            [
                            gs'8
                            a'16
                            c''16
                            \revert Staff.Stem.stemlet-length
                            bf'16
                            ]
                        }
                        bf'2
                        - \marcato
                        \override Staff.Stem.stemlet-length = 0.75
                        fs'8
                        [
                        \revert Staff.Stem.stemlet-length
                        c''8
                        ]
                        \times 4/5
                        {
                            d'4.
                            - \marcato
                            \override Staff.Stem.stemlet-length = 0.75
                            c''8
                            [
                            \revert Staff.Stem.stemlet-length
                            c''8
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
                            \set Staff.instrumentName =
                            \markup { Bassoon }
                            \set Staff.shortInstrumentName =
                            \markup { bsn. }
                            \clef "bass"
                            e4
                            \ffff
                            - \marcato
                            ~
                            \boxed-markup "Overblow" 1
                            \override Staff.Stem.stemlet-length = 0.75
                            e16
                            [
                            fs16
                            \revert Staff.Stem.stemlet-length
                            g16
                            ]
                        }
                        \times 2/3
                        {
                            bf2
                            - \marcato
                            \override Staff.Stem.stemlet-length = 0.75
                            af8
                            [
                            \revert Staff.Stem.stemlet-length
                            af8
                            ]
                        }
                        \tweak text #tuplet-number::calc-fraction-text
                        \times 6/7
                        {
                            \override Staff.Stem.stemlet-length = 0.75
                            e8
                            - \marcato
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
                            - \marcato
                            [
                            e16
                            af32
                            g32
                            \revert Staff.Stem.stemlet-length
                            a32
                            ]
                        }
                        fs4
                        - \marcato
                        \override Staff.Stem.stemlet-length = 0.75
                        af16
                        [
                        \revert Staff.Stem.stemlet-length
                        f16
                        ]
                        \tweak text #tuplet-number::calc-fraction-text
                        \times 3/5
                        {
                            f4.
                            - \marcato
                            \override Staff.Stem.stemlet-length = 0.75
                            g8
                            [
                            \revert Staff.Stem.stemlet-length
                            ef8
                            ]
                        }
                        \times 4/7
                        {
                            \override Staff.Stem.stemlet-length = 0.75
                            e16
                            - \marcato
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
                            e2...
                            - \marcato
                            \override Staff.Stem.stemlet-length = 0.75
                            bf8.
                            [
                            \revert Staff.Stem.stemlet-length
                            c8.
                            ]
                        }
                        \times 2/3
                        {
                            bf2
                            - \marcato
                            \override Staff.Stem.stemlet-length = 0.75
                            bf8
                            [
                            \revert Staff.Stem.stemlet-length
                            b8
                            ]
                        }
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
                    r2.
                    r2..
                    r1
                    r2.
                    r2
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
                        r2.
                        r2..
                        r1
                        r2.
                        r2
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
                        \clef "bass"
                        r2.
                        r2..
                        r1
                        r2.
                        r2
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
                        \clef "bass"
                        r2.
                        r4
                        bf,8
                        \pp
                        \<
                        ~
                        bf,4
                        ~
                        \override Staff.Stem.stemlet-length = 0.75
                        bf,8
                        \mp
                        \>
                        [
                        \revert Staff.Stem.stemlet-length
                        af,8
                        ~
                        ]
                        af,2
                        \pp
                        \<
                        af,2
                        ~
                        af,4
                        \mp
                        \>
                        ~
                        \override Staff.Stem.stemlet-length = 0.75
                        af,8
                        [
                        \revert Staff.Stem.stemlet-length
                        e,8
                        \pp
                        ~
                        ]
                        e,4
                        ~
                        e,4
                        bf,4
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
                        r2.
                        r2..
                        r1
                        r2.
                        r2
                    }
                }
                \context Staff = "piano 2 staff"
                {
                    \context Voice = "piano 2 voice"
                    {
                        \clef "bass"
                        r2.
                        r2..
                        r1
                        r2.
                        r2
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
                    r2.
                    r2..
                    r1
                    r2.
                    r2
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
                        r2.
                        r2..
                        r1
                        r2.
                        r2
                    }
                }
                \context Staff = "percussion 1 staff"
                {
                    \context Voice = "percussion 1 voice"
                    {
                        \staff-line-count 3
                        \set Staff.instrumentName =
                        \markup { Ratchets }
                        \set Staff.shortInstrumentName =
                        \markup { ratch. }
                        \clef "percussion"
                        \override Staff.Stem.stemlet-length = 0.75
                        \tweak Accidental.transparent ##t
                        e'8
                        \mf
                        [
                        \revert Staff.Stem.stemlet-length
                        \tweak Accidental.transparent ##t
                        a8
                        - \accent
                        ]
                        \override Staff.Stem.stemlet-length = 0.75
                        \tweak Accidental.transparent ##t
                        e'8
                        [
                        \revert Staff.Stem.stemlet-length
                        \tweak Accidental.transparent ##t
                        c'8
                        - \accent
                        ]
                        \override Staff.Stem.stemlet-length = 0.75
                        \tweak Accidental.transparent ##t
                        e'8
                        [
                        \revert Staff.Stem.stemlet-length
                        \tweak Accidental.transparent ##t
                        a8
                        - \accent
                        ]
                        r8
                        \tweak text #tuplet-number::calc-fraction-text
                        \times 6/8
                        {
                            \tweak Accidental.transparent ##t
                            a4
                            - \accent
                            \tweak Accidental.transparent ##t
                            c'4.
                            \override Staff.Stem.stemlet-length = 0.75
                            \tweak Accidental.transparent ##t
                            c'8
                            - \accent
                            [
                            \tweak Accidental.transparent ##t
                            e'8
                            \revert Staff.Stem.stemlet-length
                            \tweak Accidental.transparent ##t
                            a8
                            - \accent
                            ]
                        }
                        \tweak Accidental.transparent ##t
                        e'2
                        \override Staff.Stem.stemlet-length = 0.75
                        \tweak Accidental.transparent ##t
                        c'8
                        - \accent
                        [
                        \revert Staff.Stem.stemlet-length
                        \tweak Accidental.transparent ##t
                        e'8
                        ]
                        \override Staff.Stem.stemlet-length = 0.75
                        \tweak Accidental.transparent ##t
                        a8
                        - \accent
                        [
                        \revert Staff.Stem.stemlet-length
                        \tweak Accidental.transparent ##t
                        a8
                        ]
                        r8
                        \tweak text #tuplet-number::calc-fraction-text
                        \times 6/7
                        {
                            \tweak Accidental.transparent ##t
                            c'4
                            - \accent
                            \override Staff.Stem.stemlet-length = 0.75
                            \tweak Accidental.transparent ##t
                            c'16
                            [
                            \revert Staff.Stem.stemlet-length
                            \tweak Accidental.transparent ##t
                            e'8
                            - \accent
                            ]
                        }
                        \tweak Accidental.transparent ##t
                        a4
                        ~
                        \override Staff.Stem.stemlet-length = 0.75
                        \tweak Accidental.transparent ##t
                        a8
                        [
                        \revert Staff.Stem.stemlet-length
                        \tweak Accidental.transparent ##t
                        e'8
                        - \accent
                        ~
                        ]
                        \override Staff.Stem.stemlet-length = 0.75
                        \tweak Accidental.transparent ##t
                        e'16
                        [
                        \revert Staff.Stem.stemlet-length
                        \tweak Accidental.transparent ##t
                        c'8.
                        ]
                    }
                }
            >>
            \context Staff = "percussion 2 staff"
            {
                \context Voice = "percussion 2 voice"
                {
                    \times 4/7
                    {
                        \staff-line-count 3
                        \set Staff.instrumentName =
                        \markup { Percussion 2 }
                        \set Staff.shortInstrumentName =
                        \markup { perc. 2 }
                        \clef "percussion"
                        \tweak Accidental.transparent ##t
                        e'2
                        \ff
                        \boxed-markup "Gongs" 1
                        \tweak Accidental.transparent ##t
                        a8
                        \mp
                        \<
                        \boxed-markup "w/ bow, CLB" 1
                        \tweak Accidental.transparent ##t
                        e'4
                    }
                    \override Staff.Stem.stemlet-length = 0.75
                    \tweak Accidental.transparent ##t
                    c'8
                    [
                    \tweak Accidental.transparent ##t
                    e'16
                    \revert Staff.Stem.stemlet-length
                    \tweak Accidental.transparent ##t
                    a16
                    \f
                    ]
                    r8
                    \tweak Accidental.transparent ##t
                    a4
                    \ff
                    \>
                    \boxed-markup "Crine" 1
                    \tweak Accidental.transparent ##t
                    c'4
                    \tweak Accidental.transparent ##t
                    c'4
                    \tweak Accidental.transparent ##t
                    e'4
                    \mp
                    \tweak Accidental.transparent ##t
                    a4
                    \ff
                    ~
                    \override Staff.Stem.stemlet-length = 0.75
                    \tweak Accidental.transparent ##t
                    a16
                    [
                    \revert Staff.Stem.stemlet-length
                    \tweak Accidental.transparent ##t
                    e'16
                    ]
                    \boxed-markup "CLB" 1
                    \tweak text #tuplet-number::calc-fraction-text
                    \times 6/8
                    {
                        \override Staff.Stem.stemlet-length = 0.75
                        \tweak Accidental.transparent ##t
                        c'8
                        [
                        \tweak Accidental.transparent ##t
                        e'8.
                        \tweak Accidental.transparent ##t
                        a16
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
                    \mp
                    \<
                    \override Staff.Stem.stemlet-length = 0.75
                    \tweak Accidental.transparent ##t
                    e'8
                    [
                    \revert Staff.Stem.stemlet-length
                    \tweak Accidental.transparent ##t
                    a8
                    ]
                    \tweak text #tuplet-number::calc-fraction-text
                    \times 6/10
                    {
                        \override Staff.Stem.stemlet-length = 0.75
                        \tweak Accidental.transparent ##t
                        e'8
                        [
                        \tweak Accidental.transparent ##t
                        c'8
                        \tweak Accidental.transparent ##t
                        e'8
                        \tweak Accidental.transparent ##t
                        a8
                        \tweak Accidental.transparent ##t
                        a8
                        \tweak Accidental.transparent ##t
                        c'8
                        \tweak Accidental.transparent ##t
                        c'8
                        \tweak Accidental.transparent ##t
                        e'8
                        \tweak Accidental.transparent ##t
                        a8
                        \revert Staff.Stem.stemlet-length
                        \tweak Accidental.transparent ##t
                        e'8
                        \ff
                        ]
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
                        r2.
                        r2..
                        r4
                        r8
                        \tweak text #tuplet-number::calc-fraction-text
                        \times 6/5
                        {
                            cqs''4
                            \p
                            - \tenuto
                            _ \markup {
                                \italic
                                    espressivo
                                }
                            \<
                            \(
                            ef''16
                            \)
                        }
                        \times 4/6
                        {
                            fqs''4
                            \mf
                            \>
                            ~
                            \override Staff.Stem.stemlet-length = 0.75
                            fqs''16
                            [
                            \revert Staff.Stem.stemlet-length
                            fs''16
                            - \tenuto
                            ]
                            \(
                        }
                        cqs''2
                        \mp
                        \<
                        ~
                        \override Staff.Stem.stemlet-length = 0.75
                        cqs''8
                        \)
                        [
                        \revert Staff.Stem.stemlet-length
                        ef''8
                        - \tenuto
                        ]
                        \(
                        \times 4/5
                        {
                            \override Staff.Stem.stemlet-length = 0.75
                            dqs''8
                            [
                            f''8
                            \)
                            gqf''8
                            \ff
                            - \tenuto
                            \(
                            fs''8
                            \revert Staff.Stem.stemlet-length
                            gqs''8
                            \)
                            ]
                        }
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
                        r2.
                        r2..
                        r1
                        r2.
                        r2
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
                        r2.
                        r2..
                        r1
                        r2.
                        r2
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
                        r4
                        r8
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \markup { \natural-one-syntonic-comma-up  }
                        \tweak style #'harmonic
                        a'8
                        ^ \markup \center-align { +14 }
                        - \tweak circled-tip ##t
                        \<
                        ~
                        \boxed-markup "MSP, Molto Flaut." 1
                        \override Staff.Stem.stemlet-length = 0.75
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \markup { \natural-one-syntonic-comma-up  }
                        \tweak style #'harmonic
                        a'8
                        \mf
                        ^ \markup \center-align { +14 }
                        - \tweak circled-tip ##t
                        \>
                        [
                        ~
                        \revert Staff.Stem.stemlet-length
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \markup { \natural-one-syntonic-comma-up  }
                        \tweak style #'harmonic
                        a'8
                        \!
                        ^ \markup \center-align { +14 }
                        ]
                        r4
                        \tweak text #tuplet-number::calc-fraction-text
                        \times 3/5
                        {
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \markup { \natural-one-syntonic-comma-up  }
                            \tweak style #'harmonic
                            g4.
                            ^ \markup \center-align { +16 }
                            - \tweak circled-tip ##t
                            \<
                            ~
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \markup { \natural-one-syntonic-comma-up  }
                            \tweak style #'harmonic
                            g8
                            \mf
                            ^ \markup \center-align { +16 }
                            - \tweak circled-tip ##t
                            \>
                            [
                            ~
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \markup { \natural-one-syntonic-comma-up  }
                            \tweak style #'harmonic
                            g8
                            \!
                            ^ \markup \center-align { +16 }
                            ]
                        }
                        r4
                        r2
                        r8
                        \override Staff.Stem.stemlet-length = 0.75
                        \tweak style #'harmonic
                        af16
                        ^ \markup \center-align +33
                        - \tweak circled-tip ##t
                        \<
                        [
                        ~
                        \revert Staff.Stem.stemlet-length
                        \tweak style #'harmonic
                        af16
                        \mf
                        ^ \markup \center-align +33
                        - \tweak circled-tip ##t
                        \>
                        ~
                        ]
                        \override Staff.Stem.stemlet-length = 0.75
                        \tweak style #'harmonic
                        af8.
                        [
                        ~
                        \revert Staff.Stem.stemlet-length
                        \tweak style #'harmonic
                        af16
                        \!
                        ^ \markup \center-align +33
                        ]
                        r2.
                        r8
                        \tweak text #tuplet-number::calc-fraction-text
                        \times 6/7
                        {
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \markup { \abjad-natural  }
                            \tweak style #'harmonic
                            g4
                            ^ \markup \center-align { -2 }
                            - \tweak circled-tip ##t
                            \<
                            ~
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \markup { \abjad-natural  }
                            \tweak style #'harmonic
                            g16
                            \mf
                            ^ \markup \center-align { -2 }
                            - \tweak circled-tip ##t
                            \>
                            [
                            ~
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \markup { \abjad-natural  }
                            \tweak style #'harmonic
                            g8
                            \!
                            ^ \markup \center-align { -2 }
                            ]
                        }
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
                        \clef "bass"
                        r2.
                        r4
                        b,8
                        \pp
                        \<
                        ~
                        b,2
                        a,2.
                        \mp
                        \>
                        ~
                        \override Staff.Stem.stemlet-length = 0.75
                        a,8
                        [
                        \revert Staff.Stem.stemlet-length
                        a,8
                        \pp
                        \<
                        ~
                        ]
                        a,2
                        f,4
                        \mp
                        \>
                        ~
                        f,4
                        b,4
                        \pp
                    }
                }
            >>
        >>
    >>
%! abjad.LilyPondFile._get_formatted_blocks()
}
